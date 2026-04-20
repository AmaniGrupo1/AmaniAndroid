package org.ies.tierno.applicationamani.data;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.ies.tierno.applicationamani.data.local.TokenDataStore;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.data.remoto.AuthApi;
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b\u000f\u0010\u0010J&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0086@¢\u0006\u0004\b\u0016\u0010\u0017J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u0019H\u0086@¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u0019H\u0086@¢\u0006\u0004\b\u001d\u0010\u001bJ\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u001fH\u0086@¢\u0006\u0004\b \u0010!J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u000b2\u0006\u0010\r\u001a\u00020$H\u0086@¢\u0006\u0004\b%\u0010&J\u0012\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)0(J\u0012\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0)0(J\u0012\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0)0(J\u0012\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0)0(J\u001e\u00100\u001a\b\u0012\u0004\u0012\u0002010\u000b2\u0006\u00102\u001a\u00020\u0014H\u0086@¢\u0006\u0004\b3\u00104J\u000e\u00105\u001a\u000206H\u0086@¢\u0006\u0002\u00107R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lorg/ies/tierno/applicationamani/data/AuthRepository;", "", "api", "Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;", "tokenDataStore", "Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;", "userSessionDataStore", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V", "login", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "request", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;", "login-gIAlu-s", "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "asignarPsicologo", "", "idPaciente", "", "idPsicologo", "asignarPsicologo-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPaciente", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;", "registerPaciente-gIAlu-s", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPacienteAdmin", "registerPacienteAdmin-gIAlu-s", "registerAdmin", "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;", "registerAdmin-gIAlu-s", "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPsicologo", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;", "registerPsicologo-gIAlu-s", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPacientesConPsicologo", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "getPaciente", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;", "getPsicologos", "getPacientesByPsicologo", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "darBajaPaciente", "", TtmlNode.ATTR_ID, "darBajaPaciente-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "logout", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AuthRepository {
    public static final int $stable = 8;
    private final AuthApi api;
    private final TokenDataStore tokenDataStore;
    private final UserSessionDataStore userSessionDataStore;

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$logout$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository", f = "AuthRepository.kt", i = {}, l = {298, 299}, m = "logout", n = {}, s = {})
    static final class C07951 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07951(Continuation<? super C07951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AuthRepository.this.logout(this);
        }
    }

    public AuthRepository(AuthApi api, TokenDataStore tokenDataStore, UserSessionDataStore userSessionDataStore) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(tokenDataStore, "tokenDataStore");
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        this.api = api;
        this.tokenDataStore = tokenDataStore;
        this.userSessionDataStore = userSessionDataStore;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: login-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10329logingIAlus(LoginRequestDTO request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        AuthRepository$login$1 authRepository$login$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$login$1) {
            authRepository$login$1 = (AuthRepository$login$1) continuation;
            if ((authRepository$login$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$login$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$login$1 = new AuthRepository$login$1(this, continuation);
            }
        }
        Object $result = authRepository$login$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$login$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$login$2 authRepository$login$2 = new AuthRepository$login$2(this, request, null);
                authRepository$login$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                authRepository$login$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$login$2, authRepository$login$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX INFO: renamed from: asignarPsicologo-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10327asignarPsicologo0E7RQCE(long idPaciente, long idPsicologo, Continuation<? super Result<Boolean>> continuation) {
        AuthRepository$asignarPsicologo$1 authRepository$asignarPsicologo$1;
        Object obj;
        if (continuation instanceof AuthRepository$asignarPsicologo$1) {
            authRepository$asignarPsicologo$1 = (AuthRepository$asignarPsicologo$1) continuation;
            if ((authRepository$asignarPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$asignarPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$asignarPsicologo$1 = new AuthRepository$asignarPsicologo$1(this, continuation);
            }
        }
        Object $result = authRepository$asignarPsicologo$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$asignarPsicologo$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$asignarPsicologo$2 authRepository$asignarPsicologo$2 = new AuthRepository$asignarPsicologo$2(idPaciente, idPsicologo, this, null);
                authRepository$asignarPsicologo$1.J$0 = idPaciente;
                authRepository$asignarPsicologo$1.J$1 = idPsicologo;
                authRepository$asignarPsicologo$1.label = 1;
                Object objWithContext = BuildersKt.withContext(io2, authRepository$asignarPsicologo$2, authRepository$asignarPsicologo$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = objWithContext;
                break;
            case 1:
                long j = authRepository$asignarPsicologo$1.J$1;
                long j2 = authRepository$asignarPsicologo$1.J$0;
                ResultKt.throwOnFailure($result);
                obj = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) obj).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerPaciente-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10331registerPacientegIAlus(PacienteRequest request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        AuthRepository$registerPaciente$1 authRepository$registerPaciente$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$registerPaciente$1) {
            authRepository$registerPaciente$1 = (AuthRepository$registerPaciente$1) continuation;
            if ((authRepository$registerPaciente$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$registerPaciente$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$registerPaciente$1 = new AuthRepository$registerPaciente$1(this, continuation);
            }
        }
        Object $result = authRepository$registerPaciente$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$registerPaciente$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$registerPaciente$2 authRepository$registerPaciente$2 = new AuthRepository$registerPaciente$2(this, request, null);
                authRepository$registerPaciente$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                authRepository$registerPaciente$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$registerPaciente$2, authRepository$registerPaciente$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerPacienteAdmin-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10332registerPacienteAdmingIAlus(PacienteRequest request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        AuthRepository$registerPacienteAdmin$1 authRepository$registerPacienteAdmin$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$registerPacienteAdmin$1) {
            authRepository$registerPacienteAdmin$1 = (AuthRepository$registerPacienteAdmin$1) continuation;
            if ((authRepository$registerPacienteAdmin$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$registerPacienteAdmin$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$registerPacienteAdmin$1 = new AuthRepository$registerPacienteAdmin$1(this, continuation);
            }
        }
        Object $result = authRepository$registerPacienteAdmin$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$registerPacienteAdmin$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$registerPacienteAdmin$2 authRepository$registerPacienteAdmin$2 = new AuthRepository$registerPacienteAdmin$2(this, request, null);
                authRepository$registerPacienteAdmin$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                authRepository$registerPacienteAdmin$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$registerPacienteAdmin$2, authRepository$registerPacienteAdmin$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerAdmin-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10330registerAdmingIAlus(RegistryPacienteDTO request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        AuthRepository$registerAdmin$1 authRepository$registerAdmin$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$registerAdmin$1) {
            authRepository$registerAdmin$1 = (AuthRepository$registerAdmin$1) continuation;
            if ((authRepository$registerAdmin$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$registerAdmin$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$registerAdmin$1 = new AuthRepository$registerAdmin$1(this, continuation);
            }
        }
        Object $result = authRepository$registerAdmin$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$registerAdmin$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$registerAdmin$2 authRepository$registerAdmin$2 = new AuthRepository$registerAdmin$2(this, request, null);
                authRepository$registerAdmin$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                authRepository$registerAdmin$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$registerAdmin$2, authRepository$registerAdmin$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerPsicologo-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10333registerPsicologogIAlus(PsicologoRequestDTO request, Continuation<? super Result<PsicologoSelfResponseDTO>> continuation) {
        AuthRepository$registerPsicologo$1 authRepository$registerPsicologo$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$registerPsicologo$1) {
            authRepository$registerPsicologo$1 = (AuthRepository$registerPsicologo$1) continuation;
            if ((authRepository$registerPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$registerPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$registerPsicologo$1 = new AuthRepository$registerPsicologo$1(this, continuation);
            }
        }
        Object $result = authRepository$registerPsicologo$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$registerPsicologo$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$registerPsicologo$2 authRepository$registerPsicologo$2 = new AuthRepository$registerPsicologo$2(this, request, null);
                authRepository$registerPsicologo$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                authRepository$registerPsicologo$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$registerPsicologo$2, authRepository$registerPsicologo$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$getPacientesConPsicologo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$getPacientesConPsicologo$1", f = "AuthRepository.kt", i = {0, 1, 1, 2, 2, 3, 3, 4, 4}, l = {200, 202, 208, 213, 215}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "response", "$this$flow", "response", "$this$flow", "e", "$this$flow", "e"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    static final class C07931 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends ListaPacientesAndPsicologo>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        C07931(Continuation<? super C07931> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07931 c07931 = AuthRepository.this.new C07931(continuation);
            c07931.L$0 = obj;
            return c07931;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends ListaPacientesAndPsicologo>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<ListaPacientesAndPsicologo>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<ListaPacientesAndPsicologo>> flowCollector, Continuation<? super Unit> continuation) {
            return ((C07931) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0065 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object pacientesConPsicologo;
            Response response;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (HttpException e) {
                if (e.code() == 401) {
                    throw e;
                }
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e);
                this.label = 4;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Exception e2) {
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e2);
                this.label = 5;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    pacientesConPsicologo = AuthRepository.this.api.getPacientesConPsicologo(this);
                    if (pacientesConPsicologo == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    response = (Response) pacientesConPsicologo;
                    if (response.isSuccessful()) {
                        if (response.code() == 401) {
                            throw new HttpException(response);
                        }
                        this.L$0 = $this$flow;
                        this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                        this.label = 3;
                        if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    List listEmptyList = (List) response.body();
                    if (listEmptyList == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    this.L$0 = $this$flow;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                    this.label = 2;
                    if ($this$flow.emit(listEmptyList, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    pacientesConPsicologo = $result;
                    response = (Response) pacientesConPsicologo;
                    if (response.isSuccessful()) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 3:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 4:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 5:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<ListaPacientesAndPsicologo>> getPacientesConPsicologo() {
        return FlowKt.flow(new C07931(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$getPaciente$1, reason: invalid class name */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$getPaciente$1", f = "AuthRepository.kt", i = {0, 1, 1, 2, 2, 3, 3, 4, 4}, l = {221, 223, 229, 234, 236}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "response", "$this$flow", "response", "$this$flow", "e", "$this$flow", "e"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends DatosPacienteAdminDTO>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = AuthRepository.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends DatosPacienteAdminDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<DatosPacienteAdminDTO>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<DatosPacienteAdminDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0065 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object pacientes;
            Response response;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (HttpException e) {
                if (e.code() == 401) {
                    throw e;
                }
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e);
                this.label = 4;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Exception e2) {
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e2);
                this.label = 5;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    pacientes = AuthRepository.this.api.getPacientes(this);
                    if (pacientes == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    response = (Response) pacientes;
                    if (response.isSuccessful()) {
                        if (response.code() == 401) {
                            throw new HttpException(response);
                        }
                        this.L$0 = $this$flow;
                        this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                        this.label = 3;
                        if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    List listEmptyList = (List) response.body();
                    if (listEmptyList == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    this.L$0 = $this$flow;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                    this.label = 2;
                    if ($this$flow.emit(listEmptyList, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    pacientes = $result;
                    response = (Response) pacientes;
                    if (response.isSuccessful()) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 3:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 4:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 5:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<DatosPacienteAdminDTO>> getPaciente() {
        return FlowKt.flow(new AnonymousClass1(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$getPsicologos$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$getPsicologos$1", f = "AuthRepository.kt", i = {0, 1, 1, 2, 2, 3, 3, 4, 4}, l = {242, 244, 250, 255, 257}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "response", "$this$flow", "response", "$this$flow", "e", "$this$flow", "<unused var>"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    static final class C07941 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends PsicologoSelfResponseDTO>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        C07941(Continuation<? super C07941> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07941 c07941 = AuthRepository.this.new C07941(continuation);
            c07941.L$0 = obj;
            return c07941;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends PsicologoSelfResponseDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<PsicologoSelfResponseDTO>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<PsicologoSelfResponseDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return ((C07941) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0065 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[Catch: Exception -> 0x003f, HttpException -> 0x0041, TryCatch #2 {HttpException -> 0x0041, Exception -> 0x003f, blocks: (B:9:0x002d, B:12:0x0036, B:13:0x003a, B:23:0x005d, B:25:0x0065, B:27:0x006d, B:28:0x0071, B:32:0x0087, B:34:0x008d, B:38:0x00a7, B:39:0x00ac, B:20:0x0048), top: B:55:0x000c }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object psicologos;
            Response response;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (HttpException e) {
                if (e.code() == 401) {
                    throw e;
                }
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e);
                this.label = 4;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Exception e2) {
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e2);
                this.label = 5;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    psicologos = AuthRepository.this.api.getPsicologos(this);
                    if (psicologos == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    response = (Response) psicologos;
                    if (response.isSuccessful()) {
                        if (response.code() == 401) {
                            throw new HttpException(response);
                        }
                        this.L$0 = $this$flow;
                        this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                        this.label = 3;
                        if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    List listEmptyList = (List) response.body();
                    if (listEmptyList == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    this.L$0 = $this$flow;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                    this.label = 2;
                    if ($this$flow.emit(listEmptyList, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    psicologos = $result;
                    response = (Response) psicologos;
                    if (response.isSuccessful()) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 3:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 4:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                case 5:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<PsicologoSelfResponseDTO>> getPsicologos() {
        return FlowKt.flow(new C07941(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$getPacientesByPsicologo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$getPacientesByPsicologo$1", f = "AuthRepository.kt", i = {0, 1, 1}, l = {263, 265}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "response"}, s = {"L$0", "L$0", "L$1"})
    static final class C07921 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends PacientePsicologoResponseDTO>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        C07921(Continuation<? super C07921> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07921 c07921 = AuthRepository.this.new C07921(continuation);
            c07921.L$0 = obj;
            return c07921;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends PacientePsicologoResponseDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<PacientePsicologoResponseDTO>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<PacientePsicologoResponseDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return ((C07921) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object pacientesByPsicologo;
            Response response;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    pacientesByPsicologo = AuthRepository.this.api.getPacientesByPsicologo(this);
                    if (pacientesByPsicologo == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    response = (Response) pacientesByPsicologo;
                    if (!response.isSuccessful()) {
                        List listEmptyList = (List) response.body();
                        if (listEmptyList == null) {
                            listEmptyList = CollectionsKt.emptyList();
                        }
                        this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                        this.label = 2;
                        if ($this$flow.emit(listEmptyList, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    throw new HttpException(response);
                case 1:
                    ResultKt.throwOnFailure($result);
                    pacientesByPsicologo = $result;
                    response = (Response) pacientesByPsicologo;
                    if (!response.isSuccessful()) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<PacientePsicologoResponseDTO>> getPacientesByPsicologo() {
        return FlowKt.m10084catch(FlowKt.flow(new C07921(null)), new AnonymousClass2(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.AuthRepository$getPacientesByPsicologo$2, reason: invalid class name */
    /* JADX INFO: compiled from: AuthRepository.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "it", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository$getPacientesByPsicologo$2", f = "AuthRepository.kt", i = {0}, l = {270}, m = "invokeSuspend", n = {"$this$catch"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends PacientePsicologoResponseDTO>>, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends PacientePsicologoResponseDTO>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<PacientePsicologoResponseDTO>>) flowCollector, th, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<PacientePsicologoResponseDTO>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = flowCollector;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            FlowCollector $this$catch = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$catch);
                    this.label = 1;
                    if ($this$catch.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: darBajaPaciente-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10328darBajaPacientegIAlus(long id, Continuation<? super Result<String>> continuation) {
        AuthRepository$darBajaPaciente$1 authRepository$darBajaPaciente$1;
        Object objWithContext;
        if (continuation instanceof AuthRepository$darBajaPaciente$1) {
            authRepository$darBajaPaciente$1 = (AuthRepository$darBajaPaciente$1) continuation;
            if ((authRepository$darBajaPaciente$1.label & Integer.MIN_VALUE) != 0) {
                authRepository$darBajaPaciente$1.label -= Integer.MIN_VALUE;
            } else {
                authRepository$darBajaPaciente$1 = new AuthRepository$darBajaPaciente$1(this, continuation);
            }
        }
        Object $result = authRepository$darBajaPaciente$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (authRepository$darBajaPaciente$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                AuthRepository$darBajaPaciente$2 authRepository$darBajaPaciente$2 = new AuthRepository$darBajaPaciente$2(this, id, null);
                authRepository$darBajaPaciente$1.J$0 = id;
                authRepository$darBajaPaciente$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, authRepository$darBajaPaciente$2, authRepository$darBajaPaciente$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                long id2 = authRepository$darBajaPaciente$1.J$0;
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object logout(Continuation<? super Unit> continuation) {
        C07951 c07951;
        UserSessionDataStore userSessionDataStore;
        if (continuation instanceof C07951) {
            c07951 = (C07951) continuation;
            if ((c07951.label & Integer.MIN_VALUE) != 0) {
                c07951.label -= Integer.MIN_VALUE;
            } else {
                c07951 = new C07951(continuation);
            }
        }
        Object $result = c07951.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c07951.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                TokenDataStore tokenDataStore = this.tokenDataStore;
                c07951.label = 1;
                if (tokenDataStore.clearToken(c07951) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                userSessionDataStore = this.userSessionDataStore;
                c07951.label = 2;
                if (userSessionDataStore.clearSession(c07951) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                userSessionDataStore = this.userSessionDataStore;
                c07951.label = 2;
                if (userSessionDataStore.clearSession(c07951) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
