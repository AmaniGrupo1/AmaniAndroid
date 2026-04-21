package com.google.firebase.appcheck.internal;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appcheck.AppCheckToken;
import com.google.firebase.appcheck.internal.util.Clock;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes22.dex */
public final class TokenRefreshManager {
    private static final long FIVE_MINUTES_IN_MILLIS = 300000;
    private static final long REFRESH_BUFFER_ABSOLUTE_MILLIS = 60000;
    private static final double REFRESH_BUFFER_FRACTION = 0.5d;
    private static final long UNSET_REFRESH_TIME = -1;
    private final Clock clock;
    private volatile int currentListenerCount;
    private volatile boolean isAutoRefreshEnabled;
    private volatile boolean isBackgrounded;
    private volatile long nextRefreshTimeMillis;
    private final DefaultTokenRefresher tokenRefresher;

    TokenRefreshManager(Context context, DefaultFirebaseAppCheck firebaseAppCheck, Executor liteExecutor, ScheduledExecutorService scheduledExecutorService) {
        this((Context) Preconditions.checkNotNull(context), new DefaultTokenRefresher((DefaultFirebaseAppCheck) Preconditions.checkNotNull(firebaseAppCheck), liteExecutor, scheduledExecutorService), new Clock.DefaultClock());
    }

    TokenRefreshManager(Context context, final DefaultTokenRefresher tokenRefresher, final Clock clock) {
        this.tokenRefresher = tokenRefresher;
        this.clock = clock;
        this.nextRefreshTimeMillis = -1L;
        BackgroundDetector.initialize((Application) context.getApplicationContext());
        BackgroundDetector.getInstance().addListener(new BackgroundDetector.BackgroundStateChangeListener() { // from class: com.google.firebase.appcheck.internal.TokenRefreshManager.1
            @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
            public void onBackgroundStateChanged(boolean background) {
                TokenRefreshManager.this.isBackgrounded = background;
                if (!background) {
                    if (TokenRefreshManager.this.shouldScheduleRefresh()) {
                        tokenRefresher.scheduleRefresh(TokenRefreshManager.this.nextRefreshTimeMillis - clock.currentTimeMillis());
                        return;
                    }
                    return;
                }
                tokenRefresher.cancel();
            }
        });
    }

    public void maybeScheduleTokenRefresh(AppCheckToken token) {
        DefaultAppCheckToken defaultToken;
        if (token instanceof DefaultAppCheckToken) {
            defaultToken = (DefaultAppCheckToken) token;
        } else {
            defaultToken = DefaultAppCheckToken.constructFromRawToken(token.getToken());
        }
        this.nextRefreshTimeMillis = defaultToken.getReceivedAtTimestamp() + ((long) (defaultToken.getExpiresInMillis() * 0.5d)) + 300000;
        if (this.nextRefreshTimeMillis > defaultToken.getExpireTimeMillis()) {
            this.nextRefreshTimeMillis = defaultToken.getExpireTimeMillis() - 60000;
        }
        if (shouldScheduleRefresh()) {
            this.tokenRefresher.scheduleRefresh(this.nextRefreshTimeMillis - this.clock.currentTimeMillis());
        }
    }

    public void onListenerCountChanged(int newListenerCount) {
        if (this.currentListenerCount == 0 && newListenerCount > 0) {
            this.currentListenerCount = newListenerCount;
            if (shouldScheduleRefresh()) {
                this.tokenRefresher.scheduleRefresh(this.nextRefreshTimeMillis - this.clock.currentTimeMillis());
            }
        } else if (this.currentListenerCount > 0 && newListenerCount == 0) {
            this.tokenRefresher.cancel();
        }
        this.currentListenerCount = newListenerCount;
    }

    public void setIsAutoRefreshEnabled(boolean isAutoRefreshEnabled) {
        this.isAutoRefreshEnabled = isAutoRefreshEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldScheduleRefresh() {
        return this.isAutoRefreshEnabled && !this.isBackgrounded && this.currentListenerCount > 0 && this.nextRefreshTimeMillis != -1;
    }
}
