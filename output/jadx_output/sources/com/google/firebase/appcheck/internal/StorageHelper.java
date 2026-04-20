package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appcheck.AppCheckToken;
import com.google.firebase.appcheck.internal.util.Logger;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes22.dex */
public class StorageHelper {
    static final String PREFS_TEMPLATE = "com.google.firebase.appcheck.store.%s";
    static final String TOKEN_KEY = "com.google.firebase.appcheck.APP_CHECK_TOKEN";
    static final String TOKEN_TYPE_KEY = "com.google.firebase.appcheck.TOKEN_TYPE";
    private static final Logger logger = new Logger(StorageHelper.class.getSimpleName());
    private Lazy<SharedPreferences> sharedPreferences;

    enum TokenType {
        DEFAULT_APP_CHECK_TOKEN,
        UNKNOWN_APP_CHECK_TOKEN
    }

    public StorageHelper(final Context context, String persistenceKey) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotEmpty(persistenceKey);
        final String prefsName = String.format(PREFS_TEMPLATE, persistenceKey);
        this.sharedPreferences = new Lazy<>(new Provider() { // from class: com.google.firebase.appcheck.internal.StorageHelper$$ExternalSyntheticLambda0
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return context.getSharedPreferences(prefsName, 0);
            }
        });
    }

    public void saveAppCheckToken(AppCheckToken appCheckToken) {
        boolean z = appCheckToken instanceof DefaultAppCheckToken;
        Lazy<SharedPreferences> lazy = this.sharedPreferences;
        if (z) {
            lazy.get().edit().putString(TOKEN_KEY, ((DefaultAppCheckToken) appCheckToken).serializeTokenToString()).putString(TOKEN_TYPE_KEY, TokenType.DEFAULT_APP_CHECK_TOKEN.name()).apply();
        } else {
            lazy.get().edit().putString(TOKEN_KEY, appCheckToken.getToken()).putString(TOKEN_TYPE_KEY, TokenType.UNKNOWN_APP_CHECK_TOKEN.name()).apply();
        }
    }

    public AppCheckToken retrieveAppCheckToken() {
        String tokenType = this.sharedPreferences.get().getString(TOKEN_TYPE_KEY, null);
        String serializedToken = this.sharedPreferences.get().getString(TOKEN_KEY, null);
        if (tokenType == null || serializedToken == null) {
            return null;
        }
        try {
            switch (TokenType.valueOf(tokenType)) {
                case DEFAULT_APP_CHECK_TOKEN:
                    return DefaultAppCheckToken.deserializeTokenFromJsonString(serializedToken);
                case UNKNOWN_APP_CHECK_TOKEN:
                    return DefaultAppCheckToken.constructFromRawToken(serializedToken);
                default:
                    logger.e("Reached unreachable section in #retrieveAppCheckToken()");
                    return null;
            }
        } catch (IllegalArgumentException e) {
            logger.e("Failed to parse TokenType of stored token  with type [" + tokenType + "] with exception: " + e.getMessage());
            clearSharedPrefs();
            return null;
        }
    }

    void clearSharedPrefs() {
        this.sharedPreferences.get().edit().remove(TOKEN_KEY).remove(TOKEN_TYPE_KEY).apply();
    }
}
