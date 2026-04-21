package com.google.firebase.appcheck.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseException;
import com.google.firebase.appcheck.AppCheckProvider;
import com.google.firebase.appcheck.AppCheckProviderFactory;
import com.google.firebase.appcheck.AppCheckToken;
import com.google.firebase.appcheck.AppCheckTokenResult;
import com.google.firebase.appcheck.FirebaseAppCheck;
import com.google.firebase.appcheck.internal.util.Clock;
import com.google.firebase.appcheck.interop.AppCheckTokenListener;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes22.dex */
public class DefaultFirebaseAppCheck extends FirebaseAppCheck {
    private static final long BUFFER_TIME_MILLIS = 300000;
    private final List<FirebaseAppCheck.AppCheckListener> appCheckListenerList;
    private AppCheckProvider appCheckProvider;
    private AppCheckProviderFactory appCheckProviderFactory;
    private final List<AppCheckTokenListener> appCheckTokenListenerList;
    private final Executor backgroundExecutor;
    private AppCheckToken cachedToken;
    private final Clock clock;
    private final FirebaseApp firebaseApp;
    private final Provider<HeartBeatController> heartbeatControllerProvider;
    private final Executor liteExecutor;
    private final Task<Void> retrieveStoredTokenTask;
    private final StorageHelper storageHelper;
    private final TokenRefreshManager tokenRefreshManager;
    private final Executor uiExecutor;

    public DefaultFirebaseAppCheck(FirebaseApp firebaseApp, Provider<HeartBeatController> heartBeatController, Executor uiExecutor, Executor liteExecutor, Executor backgroundExecutor, ScheduledExecutorService scheduledExecutorService) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(heartBeatController);
        this.firebaseApp = firebaseApp;
        this.heartbeatControllerProvider = heartBeatController;
        this.appCheckTokenListenerList = new ArrayList();
        this.appCheckListenerList = new ArrayList();
        this.storageHelper = new StorageHelper(firebaseApp.getApplicationContext(), firebaseApp.getPersistenceKey());
        this.tokenRefreshManager = new TokenRefreshManager(firebaseApp.getApplicationContext(), this, liteExecutor, scheduledExecutorService);
        this.uiExecutor = uiExecutor;
        this.liteExecutor = liteExecutor;
        this.backgroundExecutor = backgroundExecutor;
        this.retrieveStoredTokenTask = retrieveStoredAppCheckTokenInBackground(backgroundExecutor);
        this.clock = new Clock.DefaultClock();
    }

    private Task<Void> retrieveStoredAppCheckTokenInBackground(Executor executor) {
        final TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
        executor.execute(new Runnable() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8297x441be3b8(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: lambda$retrieveStoredAppCheckTokenInBackground$0$com-google-firebase-appcheck-internal-DefaultFirebaseAppCheck, reason: not valid java name */
    /* synthetic */ void m8297x441be3b8(TaskCompletionSource taskCompletionSource) {
        AppCheckToken token = this.storageHelper.retrieveAppCheckToken();
        if (token != null) {
            setCachedToken(token);
        }
        taskCompletionSource.setResult(null);
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public void installAppCheckProviderFactory(AppCheckProviderFactory factory) {
        installAppCheckProviderFactory(factory, this.firebaseApp.isDataCollectionDefaultEnabled());
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public void installAppCheckProviderFactory(AppCheckProviderFactory factory, boolean isTokenAutoRefreshEnabled) {
        Preconditions.checkNotNull(factory);
        this.appCheckProviderFactory = factory;
        this.appCheckProvider = factory.create(this.firebaseApp);
        this.tokenRefreshManager.setIsAutoRefreshEnabled(isTokenAutoRefreshEnabled);
    }

    public AppCheckProviderFactory getInstalledAppCheckProviderFactory() {
        return this.appCheckProviderFactory;
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public void setTokenAutoRefreshEnabled(boolean isTokenAutoRefreshEnabled) {
        this.tokenRefreshManager.setIsAutoRefreshEnabled(isTokenAutoRefreshEnabled);
    }

    public void resetAppCheckState() {
        this.appCheckProviderFactory = null;
        this.appCheckProvider = null;
        this.cachedToken = null;
        this.storageHelper.clearSharedPrefs();
    }

    @Override // com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider
    public void addAppCheckTokenListener(AppCheckTokenListener listener) {
        Preconditions.checkNotNull(listener);
        this.appCheckTokenListenerList.add(listener);
        this.tokenRefreshManager.onListenerCountChanged(this.appCheckTokenListenerList.size() + this.appCheckListenerList.size());
        if (hasValidToken()) {
            listener.onAppCheckTokenChanged(DefaultAppCheckTokenResult.constructFromAppCheckToken(this.cachedToken));
        }
    }

    @Override // com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider
    public void removeAppCheckTokenListener(AppCheckTokenListener listener) {
        Preconditions.checkNotNull(listener);
        this.appCheckTokenListenerList.remove(listener);
        this.tokenRefreshManager.onListenerCountChanged(this.appCheckTokenListenerList.size() + this.appCheckListenerList.size());
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public void addAppCheckListener(FirebaseAppCheck.AppCheckListener listener) {
        Preconditions.checkNotNull(listener);
        this.appCheckListenerList.add(listener);
        this.tokenRefreshManager.onListenerCountChanged(this.appCheckTokenListenerList.size() + this.appCheckListenerList.size());
        if (hasValidToken()) {
            listener.onAppCheckTokenChanged(this.cachedToken);
        }
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public void removeAppCheckListener(FirebaseAppCheck.AppCheckListener listener) {
        Preconditions.checkNotNull(listener);
        this.appCheckListenerList.remove(listener);
        this.tokenRefreshManager.onListenerCountChanged(this.appCheckTokenListenerList.size() + this.appCheckListenerList.size());
    }

    @Override // com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider
    public Task<AppCheckTokenResult> getToken(final boolean forceRefresh) {
        return this.retrieveStoredTokenTask.continueWithTask(this.liteExecutor, new Continuation() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda5
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f$0.m8296x47a9aab1(forceRefresh, task);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getToken$2$com-google-firebase-appcheck-internal-DefaultFirebaseAppCheck, reason: not valid java name */
    /* synthetic */ Task m8296x47a9aab1(boolean forceRefresh, Task unused) throws Exception {
        if (!forceRefresh && hasValidToken()) {
            return Tasks.forResult(DefaultAppCheckTokenResult.constructFromAppCheckToken(this.cachedToken));
        }
        if (this.appCheckProvider == null) {
            return Tasks.forResult(DefaultAppCheckTokenResult.constructFromError(new FirebaseException("No AppCheckProvider installed.")));
        }
        return fetchTokenFromProvider().continueWithTask(this.liteExecutor, new Continuation() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return DefaultFirebaseAppCheck.lambda$getToken$1(task);
            }
        });
    }

    static /* synthetic */ Task lambda$getToken$1(Task appCheckTokenTask) throws Exception {
        if (appCheckTokenTask.isSuccessful()) {
            return Tasks.forResult(DefaultAppCheckTokenResult.constructFromAppCheckToken((AppCheckToken) appCheckTokenTask.getResult()));
        }
        return Tasks.forResult(DefaultAppCheckTokenResult.constructFromError(new FirebaseException(appCheckTokenTask.getException().getMessage(), appCheckTokenTask.getException())));
    }

    @Override // com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider
    public Task<AppCheckTokenResult> getLimitedUseToken() {
        return getLimitedUseAppCheckToken().continueWithTask(this.liteExecutor, new Continuation() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return DefaultFirebaseAppCheck.lambda$getLimitedUseToken$3(task);
            }
        });
    }

    static /* synthetic */ Task lambda$getLimitedUseToken$3(Task appCheckTokenTask) throws Exception {
        if (appCheckTokenTask.isSuccessful()) {
            return Tasks.forResult(DefaultAppCheckTokenResult.constructFromAppCheckToken((AppCheckToken) appCheckTokenTask.getResult()));
        }
        return Tasks.forResult(DefaultAppCheckTokenResult.constructFromError(new FirebaseException(appCheckTokenTask.getException().getMessage(), appCheckTokenTask.getException())));
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public Task<AppCheckToken> getAppCheckToken(final boolean forceRefresh) {
        return this.retrieveStoredTokenTask.continueWithTask(this.liteExecutor, new Continuation() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f$0.m8295x96eae50c(forceRefresh, task);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getAppCheckToken$4$com-google-firebase-appcheck-internal-DefaultFirebaseAppCheck, reason: not valid java name */
    /* synthetic */ Task m8295x96eae50c(boolean forceRefresh, Task unused) throws Exception {
        if (!forceRefresh && hasValidToken()) {
            return Tasks.forResult(this.cachedToken);
        }
        if (this.appCheckProvider == null) {
            return Tasks.forException(new FirebaseException("No AppCheckProvider installed."));
        }
        return fetchTokenFromProvider();
    }

    @Override // com.google.firebase.appcheck.FirebaseAppCheck
    public Task<AppCheckToken> getLimitedUseAppCheckToken() {
        if (this.appCheckProvider == null) {
            return Tasks.forException(new FirebaseException("No AppCheckProvider installed."));
        }
        return this.appCheckProvider.getToken();
    }

    Task<AppCheckToken> fetchTokenFromProvider() {
        return this.appCheckProvider.getToken().onSuccessTask(this.uiExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda6
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f$0.m8294x5efa4d2b((AppCheckToken) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$fetchTokenFromProvider$5$com-google-firebase-appcheck-internal-DefaultFirebaseAppCheck, reason: not valid java name */
    /* synthetic */ Task m8294x5efa4d2b(AppCheckToken token) throws Exception {
        updateStoredToken(token);
        for (FirebaseAppCheck.AppCheckListener listener : this.appCheckListenerList) {
            listener.onAppCheckTokenChanged(token);
        }
        AppCheckTokenResult tokenResult = DefaultAppCheckTokenResult.constructFromAppCheckToken(token);
        for (AppCheckTokenListener listener2 : this.appCheckTokenListenerList) {
            listener2.onAppCheckTokenChanged(tokenResult);
        }
        return Tasks.forResult(token);
    }

    Provider<HeartBeatController> getHeartbeatControllerProvider() {
        return this.heartbeatControllerProvider;
    }

    void setCachedToken(AppCheckToken token) {
        this.cachedToken = token;
    }

    private void updateStoredToken(final AppCheckToken token) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.google.firebase.appcheck.internal.DefaultFirebaseAppCheck$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8298xd2625b25(token);
            }
        });
        setCachedToken(token);
        this.tokenRefreshManager.maybeScheduleTokenRefresh(token);
    }

    /* JADX INFO: renamed from: lambda$updateStoredToken$6$com-google-firebase-appcheck-internal-DefaultFirebaseAppCheck, reason: not valid java name */
    /* synthetic */ void m8298xd2625b25(AppCheckToken token) {
        this.storageHelper.saveAppCheckToken(token);
    }

    private boolean hasValidToken() {
        return this.cachedToken != null && this.cachedToken.getExpireTimeMillis() - this.clock.currentTimeMillis() > 300000;
    }
}
