package org.ies.tierno.applicationamani.data;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.ResponseBody;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import retrofit2.Response;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$login$2", f = "AuthRepository.kt", i = {1, 1, 2, 2}, l = {33, 41, 44}, m = "invokeSuspend", n = {"response", TtmlNode.TAG_BODY, "response", TtmlNode.TAG_BODY}, s = {"L$0", "L$1", "L$0", "L$1"})
final class AuthRepository$login$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends LoginResponseDTO>>, Object> {
    final /* synthetic */ LoginRequestDTO $request;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AuthRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AuthRepository$login$2(AuthRepository authRepository, LoginRequestDTO loginRequestDTO, Continuation<? super AuthRepository$login$2> continuation) {
        super(2, continuation);
        this.this$0 = authRepository;
        this.$request = loginRequestDTO;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AuthRepository$login$2(this.this$0, this.$request, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends LoginResponseDTO>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<LoginResponseDTO>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<LoginResponseDTO>> continuation) {
        return ((AuthRepository$login$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:7:0x001a, B:31:0x00b3, B:10:0x0027, B:27:0x007d, B:11:0x002b, B:19:0x004b, B:21:0x0053, B:23:0x005b, B:32:0x00ba, B:33:0x00ce, B:35:0x00d4, B:37:0x00da, B:38:0x00de, B:40:0x00e3, B:45:0x00f4, B:47:0x0109, B:16:0x0037), top: B:71:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:7:0x001a, B:31:0x00b3, B:10:0x0027, B:27:0x007d, B:11:0x002b, B:19:0x004b, B:21:0x0053, B:23:0x005b, B:32:0x00ba, B:33:0x00ce, B:35:0x00d4, B:37:0x00da, B:38:0x00de, B:40:0x00e3, B:45:0x00f4, B:47:0x0109, B:16:0x0037), top: B:71:0x0007 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        String errorMsg;
        Object objM8542constructorimpl;
        Object objLogin;
        Response response;
        String errorMessage;
        Response response2;
        LoginResponseDTO body;
        LoginResponseDTO body2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
        } catch (Exception e) {
            String message = e.getMessage();
            if (message != null && StringsKt.contains((CharSequence) message, (CharSequence) HttpHeaders.CONNECTION, true)) {
                errorMsg = "No se puede conectar al servidor. Verifica que el backend este ejecutandose en http://10.0.2.2:8080";
            } else {
                String message2 = e.getMessage();
                if (message2 != null && StringsKt.contains((CharSequence) message2, (CharSequence) "timeout", true)) {
                    errorMsg = "Tiempo de espera agotado. Intenta de nuevo.";
                } else {
                    errorMsg = e.getMessage();
                    if (errorMsg == null) {
                        errorMsg = "Error de conexion";
                    }
                }
            }
            Result.Companion companion = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(new Exception(errorMsg)));
        }
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                objLogin = this.this$0.api.login(this.$request, this);
                if (objLogin == coroutine_suspended) {
                    return coroutine_suspended;
                }
                response = (Response) objLogin;
                if (response.isSuccessful()) {
                    ResponseBody responseBodyErrorBody = response.errorBody();
                    String errorBody = responseBodyErrorBody != null ? responseBodyErrorBody.string() : null;
                    switch (response.code()) {
                        case 401:
                            errorMessage = "Credenciales incorrectas";
                            break;
                        case 403:
                            errorMessage = "Acceso denegado";
                            break;
                        case 404:
                            errorMessage = "Usuario no encontrado";
                            break;
                        case ERROR_VALUE:
                            errorMessage = "Error del servidor";
                            break;
                        default:
                            errorMessage = errorBody != null ? errorBody : "Error HTTP: " + response.code();
                            break;
                    }
                    Result.Companion companion2 = Result.INSTANCE;
                    objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(new Exception(errorMessage)));
                } else {
                    LoginResponseDTO body3 = (LoginResponseDTO) response.body();
                    if (body3 != null) {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(response);
                        this.L$1 = body3;
                        this.label = 2;
                        if (this.this$0.tokenDataStore.saveToken(body3.getToken(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        response2 = response;
                        body = body3;
                        this.L$0 = SpillingKt.nullOutSpilledVariable(response2);
                        this.L$1 = body;
                        this.label = 3;
                        if (this.this$0.userSessionDataStore.saveSession(new UserSession(body.getIdUsuario(), body.getNombre(), body.getRol(), body.getIdPsicologo(), body.getIdPaciente()), this) != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        body2 = body;
                        Result.Companion companion3 = Result.INSTANCE;
                        objM8542constructorimpl = Result.m8542constructorimpl(body2);
                    } else {
                        Result.Companion companion4 = Result.INSTANCE;
                        objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(new Exception("Response body is null")));
                    }
                }
                return Result.m8541boximpl(objM8542constructorimpl);
            case 1:
                ResultKt.throwOnFailure($result);
                objLogin = $result;
                response = (Response) objLogin;
                if (response.isSuccessful()) {
                }
                return Result.m8541boximpl(objM8542constructorimpl);
            case 2:
                body = (LoginResponseDTO) this.L$1;
                response2 = (Response) this.L$0;
                ResultKt.throwOnFailure($result);
                this.L$0 = SpillingKt.nullOutSpilledVariable(response2);
                this.L$1 = body;
                this.label = 3;
                if (this.this$0.userSessionDataStore.saveSession(new UserSession(body.getIdUsuario(), body.getNombre(), body.getRol(), body.getIdPsicologo(), body.getIdPaciente()), this) != coroutine_suspended) {
                }
                break;
            case 3:
                body2 = (LoginResponseDTO) this.L$1;
                ResultKt.throwOnFailure($result);
                Result.Companion companion32 = Result.INSTANCE;
                objM8542constructorimpl = Result.m8542constructorimpl(body2);
                return Result.m8541boximpl(objM8542constructorimpl);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
