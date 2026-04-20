package org.ies.tierno.applicationamani.data.remoto;

import com.google.common.net.HttpHeaders;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.ies.tierno.applicationamani.data.local.TokenHolder;

/* JADX INFO: compiled from: AuthInterceptor.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/AuthInterceptor;", "Lokhttp3/Interceptor;", "tokenHolder", "Lorg/ies/tierno/applicationamani/data/local/TokenHolder;", "<init>", "(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AuthInterceptor implements Interceptor {
    public static final int $stable = 8;
    private final TokenHolder tokenHolder;

    public AuthInterceptor(TokenHolder tokenHolder) {
        Intrinsics.checkNotNullParameter(tokenHolder, "tokenHolder");
        this.tokenHolder = tokenHolder;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Request request;
        Intrinsics.checkNotNullParameter(chain, "chain");
        String token = this.tokenHolder.get_token();
        Request originalRequest = chain.request();
        if (token != null) {
            request = originalRequest.newBuilder().header(HttpHeaders.AUTHORIZATION, "Bearer " + token).build();
        } else {
            request = originalRequest;
        }
        return chain.proceed(request);
    }
}
