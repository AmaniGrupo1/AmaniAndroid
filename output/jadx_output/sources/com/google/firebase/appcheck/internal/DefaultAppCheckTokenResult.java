package com.google.firebase.appcheck.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import com.google.firebase.appcheck.AppCheckToken;
import com.google.firebase.appcheck.AppCheckTokenResult;

/* JADX INFO: loaded from: classes22.dex */
public final class DefaultAppCheckTokenResult extends AppCheckTokenResult {
    static final String DUMMY_TOKEN = "eyJlcnJvciI6IlVOS05PV05fRVJST1IifQ==";
    private final FirebaseException error;
    private final String token;

    public static DefaultAppCheckTokenResult constructFromAppCheckToken(AppCheckToken token) {
        Preconditions.checkNotNull(token);
        return new DefaultAppCheckTokenResult(token.getToken(), null);
    }

    public static DefaultAppCheckTokenResult constructFromError(FirebaseException error) {
        return new DefaultAppCheckTokenResult(DUMMY_TOKEN, (FirebaseException) Preconditions.checkNotNull(error));
    }

    private DefaultAppCheckTokenResult(String tokenJwt, FirebaseException error) {
        Preconditions.checkNotEmpty(tokenJwt);
        this.token = tokenJwt;
        this.error = error;
    }

    @Override // com.google.firebase.appcheck.AppCheckTokenResult
    public String getToken() {
        return this.token;
    }

    @Override // com.google.firebase.appcheck.AppCheckTokenResult
    public Exception getError() {
        return this.error;
    }
}
