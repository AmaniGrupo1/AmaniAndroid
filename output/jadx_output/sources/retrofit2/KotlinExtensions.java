package retrofit2;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Method;
import kotlin.KotlinNothingValueException;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: KotlinExtensions.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u00002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0010\u0003\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0004\u001a\"\u0010\u0005\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0086@¢\u0006\u0002\u0010\u0007\u001a(\u0010\u0005\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0006H\u0087@¢\u0006\u0004\b\b\u0010\u0007\u001a\u001a\u0010\u0005\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t0\u0006H\u0087@¢\u0006\u0004\b\n\u0010\u0007\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00010\f\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0086@¢\u0006\u0002\u0010\u0007\u001a\u0012\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0080@¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"create", ExifInterface.GPS_DIRECTION_TRUE, "", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "await", "Lretrofit2/Call;", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "", "awaitUnit", "awaitResponse", "Lretrofit2/Response;", "suspendAndThrow", "", "", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class KotlinExtensions {

    /* JADX INFO: renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1, reason: invalid class name */
    /* JADX INFO: compiled from: KotlinExtensions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", i = {0}, l = {119}, m = "suspendAndThrow", n = {"$this$suspendAndThrow"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    public static final /* synthetic */ <T> T create(Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(retrofit, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        T t = (T) retrofit.create(Object.class);
        Intrinsics.checkNotNullExpressionValue(t, "create(...)");
        return t;
    }

    public static final <T> Object await(final Call<T> call, Continuation<? super T> continuation) {
        CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellable$iv.initCancellability();
        final CancellableContinuationImpl continuation2 = cancellable$iv;
        continuation2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable it) {
                call.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccessful()) {
                    Object body = response.body();
                    if (body == null) {
                        Object objTag = call2.request().tag(Invocation.class);
                        Intrinsics.checkNotNull(objTag);
                        Invocation invocation = (Invocation) objTag;
                        Class<?> clsService = invocation.service();
                        Method method = invocation.method();
                        KotlinNullPointerException e = new KotlinNullPointerException("Response from " + clsService.getName() + '.' + method.getName() + " was null but response body type was declared as non-null");
                        CancellableContinuation<T> cancellableContinuation = continuation2;
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuation.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(e)));
                        return;
                    }
                    CancellableContinuation<T> cancellableContinuation2 = continuation2;
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m8542constructorimpl(body));
                    return;
                }
                CancellableContinuation<T> cancellableContinuation3 = continuation2;
                Result.Companion companion3 = Result.INSTANCE;
                cancellableContinuation3.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(new HttpException(response))));
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation<T> cancellableContinuation = continuation2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellable$iv.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final <T> Object awaitNullable(final Call<T> call, Continuation<? super T> continuation) {
        CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellable$iv.initCancellability();
        final CancellableContinuationImpl continuation2 = cancellable$iv;
        continuation2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$4$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable it) {
                call.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                boolean zIsSuccessful = response.isSuccessful();
                CancellableContinuation<T> cancellableContinuation = continuation2;
                if (zIsSuccessful) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m8542constructorimpl(response.body()));
                } else {
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(new HttpException(response))));
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation<T> cancellableContinuation = continuation2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellable$iv.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object awaitUnit(Call<Unit> call, Continuation<? super Unit> continuation) {
        Intrinsics.checkNotNull(call, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
        return awaitNullable(call, continuation);
    }

    public static final <T> Object awaitResponse(final Call<T> call, Continuation<? super Response<T>> continuation) {
        CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellable$iv.initCancellability();
        final CancellableContinuationImpl continuation2 = cancellable$iv;
        continuation2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable it) {
                call.cancel();
            }
        });
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                CancellableContinuation<Response<T>> cancellableContinuation = continuation2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m8542constructorimpl(response));
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation<Response<T>> cancellableContinuation = continuation2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellable$iv.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object suspendAndThrow(final Throwable $this$suspendAndThrow, Continuation<?> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                anonymousClass1.L$0 = $this$suspendAndThrow;
                anonymousClass1.label = 1;
                final Continuation continuation2 = anonymousClass1;
                Dispatchers.getDefault().mo10112dispatch(continuation2.get$context(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$2$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Continuation continuationIntercepted = IntrinsicsKt.intercepted(continuation2);
                        Result.Companion companion = Result.INSTANCE;
                        continuationIntercepted.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure($this$suspendAndThrow)));
                    }
                });
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (coroutine_suspended2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(anonymousClass1);
                }
                if (coroutine_suspended2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        throw new KotlinNothingValueException();
    }
}
