package org.ies.tierno.applicationamani.data.remoto;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.ies.tierno.applicationamani.data.local.AuthEvent;
import org.ies.tierno.applicationamani.data.local.AuthEventChannel;
import timber.log.Timber;

/* JADX INFO: compiled from: TokenRefreshInterceptor.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;", "Lokhttp3/Interceptor;", "authEventChannel", "Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;", "<init>", "(Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;)V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class TokenRefreshInterceptor implements Interceptor {
    public static final int $stable = 8;
    private final AuthEventChannel authEventChannel;
    private final CoroutineScope scope;

    public TokenRefreshInterceptor(AuthEventChannel authEventChannel) {
        Intrinsics.checkNotNullParameter(authEventChannel, "authEventChannel");
        this.authEventChannel = authEventChannel;
        this.scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)));
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Response response = chain.proceed(request);
        if (response.code() == 401) {
            Timber.INSTANCE.w("HTTP 401 detected - token expired or invalid", new Object[0]);
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
        }
        return response;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor$intercept$1, reason: invalid class name */
    /* JADX INFO: compiled from: TokenRefreshInterceptor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor$intercept$1", f = "TokenRefreshInterceptor.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TokenRefreshInterceptor.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (TokenRefreshInterceptor.this.authEventChannel.sendEvent(AuthEvent.Unauthorized.INSTANCE, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Exception e) {
                Timber.INSTANCE.e(e, "Failed to send unauthorized event", new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }
}
