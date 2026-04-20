package org.ies.tierno.applicationamani.domain.usecases.login;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.AuthRepository;
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest;

/* JADX INFO: compiled from: LoginUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u000b\u0010\fJ\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b\u0012\u0010\u0010J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\u0014H\u0086@¢\u0006\u0004\b\u0015\u0010\u0016J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\t\u001a\u00020\u0019H\u0086@¢\u0006\u0004\b\u001a\u0010\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;", "", "repository", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V", "login", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "request", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;", "login-gIAlu-s", "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPaciente", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;", "registerPaciente-gIAlu-s", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPacienteAdmin", "registerPacienteAdmin-gIAlu-s", "registrarAdmin", "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;", "registrarAdmin-gIAlu-s", "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registrarPsicologo", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;", "registrarPsicologo-gIAlu-s", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class LoginUseCase {
    public static final int $stable = 8;
    private final AuthRepository repository;

    public LoginUseCase(AuthRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: login-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10387logingIAlus(LoginRequestDTO request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        LoginUseCase$login$1 loginUseCase$login$1;
        if (continuation instanceof LoginUseCase$login$1) {
            loginUseCase$login$1 = (LoginUseCase$login$1) continuation;
            if ((loginUseCase$login$1.label & Integer.MIN_VALUE) != 0) {
                loginUseCase$login$1.label -= Integer.MIN_VALUE;
            } else {
                loginUseCase$login$1 = new LoginUseCase$login$1(this, continuation);
            }
        }
        Object $result = loginUseCase$login$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (loginUseCase$login$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                loginUseCase$login$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                loginUseCase$login$1.label = 1;
                Object objM10329logingIAlus = authRepository.m10329logingIAlus(request, loginUseCase$login$1);
                if (objM10329logingIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10329logingIAlus;
            case 1:
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerPaciente-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10388registerPacientegIAlus(PacienteRequest request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        LoginUseCase$registerPaciente$1 loginUseCase$registerPaciente$1;
        if (continuation instanceof LoginUseCase$registerPaciente$1) {
            loginUseCase$registerPaciente$1 = (LoginUseCase$registerPaciente$1) continuation;
            if ((loginUseCase$registerPaciente$1.label & Integer.MIN_VALUE) != 0) {
                loginUseCase$registerPaciente$1.label -= Integer.MIN_VALUE;
            } else {
                loginUseCase$registerPaciente$1 = new LoginUseCase$registerPaciente$1(this, continuation);
            }
        }
        Object $result = loginUseCase$registerPaciente$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (loginUseCase$registerPaciente$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                loginUseCase$registerPaciente$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                loginUseCase$registerPaciente$1.label = 1;
                Object objM10331registerPacientegIAlus = authRepository.m10331registerPacientegIAlus(request, loginUseCase$registerPaciente$1);
                if (objM10331registerPacientegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10331registerPacientegIAlus;
            case 1:
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registerPacienteAdmin-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10389registerPacienteAdmingIAlus(PacienteRequest request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        LoginUseCase$registerPacienteAdmin$1 loginUseCase$registerPacienteAdmin$1;
        if (continuation instanceof LoginUseCase$registerPacienteAdmin$1) {
            loginUseCase$registerPacienteAdmin$1 = (LoginUseCase$registerPacienteAdmin$1) continuation;
            if ((loginUseCase$registerPacienteAdmin$1.label & Integer.MIN_VALUE) != 0) {
                loginUseCase$registerPacienteAdmin$1.label -= Integer.MIN_VALUE;
            } else {
                loginUseCase$registerPacienteAdmin$1 = new LoginUseCase$registerPacienteAdmin$1(this, continuation);
            }
        }
        Object $result = loginUseCase$registerPacienteAdmin$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (loginUseCase$registerPacienteAdmin$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                loginUseCase$registerPacienteAdmin$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                loginUseCase$registerPacienteAdmin$1.label = 1;
                Object objM10332registerPacienteAdmingIAlus = authRepository.m10332registerPacienteAdmingIAlus(request, loginUseCase$registerPacienteAdmin$1);
                if (objM10332registerPacienteAdmingIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10332registerPacienteAdmingIAlus;
            case 1:
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registrarAdmin-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10390registrarAdmingIAlus(RegistryPacienteDTO request, Continuation<? super Result<LoginResponseDTO>> continuation) {
        LoginUseCase$registrarAdmin$1 loginUseCase$registrarAdmin$1;
        if (continuation instanceof LoginUseCase$registrarAdmin$1) {
            loginUseCase$registrarAdmin$1 = (LoginUseCase$registrarAdmin$1) continuation;
            if ((loginUseCase$registrarAdmin$1.label & Integer.MIN_VALUE) != 0) {
                loginUseCase$registrarAdmin$1.label -= Integer.MIN_VALUE;
            } else {
                loginUseCase$registrarAdmin$1 = new LoginUseCase$registrarAdmin$1(this, continuation);
            }
        }
        Object $result = loginUseCase$registrarAdmin$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (loginUseCase$registrarAdmin$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                loginUseCase$registrarAdmin$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                loginUseCase$registrarAdmin$1.label = 1;
                Object objM10330registerAdmingIAlus = authRepository.m10330registerAdmingIAlus(request, loginUseCase$registrarAdmin$1);
                if (objM10330registerAdmingIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10330registerAdmingIAlus;
            case 1:
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: registrarPsicologo-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10391registrarPsicologogIAlus(PsicologoRequestDTO request, Continuation<? super Result<PsicologoSelfResponseDTO>> continuation) {
        LoginUseCase$registrarPsicologo$1 loginUseCase$registrarPsicologo$1;
        if (continuation instanceof LoginUseCase$registrarPsicologo$1) {
            loginUseCase$registrarPsicologo$1 = (LoginUseCase$registrarPsicologo$1) continuation;
            if ((loginUseCase$registrarPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                loginUseCase$registrarPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                loginUseCase$registrarPsicologo$1 = new LoginUseCase$registrarPsicologo$1(this, continuation);
            }
        }
        Object $result = loginUseCase$registrarPsicologo$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (loginUseCase$registrarPsicologo$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                AuthRepository authRepository = this.repository;
                loginUseCase$registrarPsicologo$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                loginUseCase$registrarPsicologo$1.label = 1;
                Object objM10333registerPsicologogIAlus = authRepository.m10333registerPsicologogIAlus(request, loginUseCase$registrarPsicologo$1);
                if (objM10333registerPsicologogIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10333registerPsicologogIAlus;
            case 1:
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
