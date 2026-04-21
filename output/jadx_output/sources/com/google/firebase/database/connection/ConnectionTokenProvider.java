package com.google.firebase.database.connection;

/* JADX INFO: loaded from: classes22.dex */
public interface ConnectionTokenProvider {

    public interface GetTokenCallback {
        void onError(String str);

        void onSuccess(String str);
    }

    void getToken(boolean z, GetTokenCallback getTokenCallback);
}
