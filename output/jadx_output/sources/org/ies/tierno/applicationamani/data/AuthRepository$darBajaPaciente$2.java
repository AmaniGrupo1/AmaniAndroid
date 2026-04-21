package org.ies.tierno.applicationamani.data;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$darBajaPaciente$2", f = "AuthRepository.kt", i = {}, l = {277}, m = "invokeSuspend", n = {}, s = {})
final class AuthRepository$darBajaPaciente$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends String>>, Object> {
    final /* synthetic */ long $id;
    int label;
    final /* synthetic */ AuthRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AuthRepository$darBajaPaciente$2(AuthRepository authRepository, long j, Continuation<? super AuthRepository$darBajaPaciente$2> continuation) {
        super(2, continuation);
        this.this$0 = authRepository;
        this.$id = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AuthRepository$darBajaPaciente$2(this.this$0, this.$id, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends String>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<String>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<String>> continuation) {
        return ((AuthRepository$darBajaPaciente$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object objM8542constructorimpl;
        Object objDarBajaPaciente;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    objDarBajaPaciente = this.this$0.api.darBajaPaciente(this.$id, this);
                    if (objDarBajaPaciente == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    objDarBajaPaciente = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Response response = (Response) objDarBajaPaciente;
            if (response.isSuccessful()) {
                String body = (String) response.body();
                if (body != null) {
                    Result.Companion companion = Result.INSTANCE;
                    objM8542constructorimpl = Result.m8542constructorimpl(body);
                } else {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(new Exception("Response body is null")));
                }
            } else {
                Result.Companion companion3 = Result.INSTANCE;
                objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(new HttpException(response)));
            }
        } catch (Exception e) {
            Result.Companion companion4 = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
        return Result.m8541boximpl(objM8542constructorimpl);
    }
}
