package org.ies.tierno.applicationamani.domain.usecases.profileUseCase;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository;
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;

/* JADX INFO: compiled from: ProfileUseCaseGeneral.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0086@¢\u0006\u0004\b\r\u0010\u000eJ&\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0015\u001a\u00020\fH\u0086@¢\u0006\u0004\b\u0016\u0010\u000eJ\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\t2\u0006\u0010\u0015\u001a\u00020\fH\u0086@¢\u0006\u0004\b\u0019\u0010\u000eJ\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\t2\u0006\u0010\u0015\u001a\u00020\fH\u0086@¢\u0006\u0004\b\u001b\u0010\u000eJ\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001d\u001a\u00020\fH\u0086@¢\u0006\u0004\b\u001e\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;", "", "repository", "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;)V", "getRepository", "()Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;", "getProfile", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", TtmlNode.ATTR_ID, "", "getProfile-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uploadPerfil", "file", "Lokhttp3/MultipartBody$Part;", "uploadPerfil-0E7RQCE", "(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "obtenerPsicologoAsignado", "idPaciente", "obtenerPsicologoAsignado-gIAlu-s", "getPacienteById", "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;", "getPacienteById-gIAlu-s", "getPacienteByIdFirebase", "getPacienteByIdFirebase-gIAlu-s", "getPsicologoById", "idPsicologo", "getPsicologoById-gIAlu-s", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProfileUseCaseGeneral {
    public static final int $stable = 8;
    private final ProfileRepository repository;

    public ProfileUseCaseGeneral(ProfileRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
    }

    public final ProfileRepository getRepository() {
        return this.repository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getProfile-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10394getProfilegIAlus(long id, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$getProfile$1 profileUseCaseGeneral$getProfile$1;
        if (continuation instanceof ProfileUseCaseGeneral$getProfile$1) {
            profileUseCaseGeneral$getProfile$1 = (ProfileUseCaseGeneral$getProfile$1) continuation;
            if ((profileUseCaseGeneral$getProfile$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$getProfile$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$getProfile$1 = new ProfileUseCaseGeneral$getProfile$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$getProfile$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$getProfile$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$getProfile$1.J$0 = id;
                profileUseCaseGeneral$getProfile$1.label = 1;
                Object objM10373getProfilegIAlus = profileRepository.m10373getProfilegIAlus(id, profileUseCaseGeneral$getProfile$1);
                if (objM10373getProfilegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10373getProfilegIAlus;
            case 1:
                long id2 = profileUseCaseGeneral$getProfile$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: uploadPerfil-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10397uploadPerfil0E7RQCE(long id, MultipartBody.Part file, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$uploadPerfil$1 profileUseCaseGeneral$uploadPerfil$1;
        if (continuation instanceof ProfileUseCaseGeneral$uploadPerfil$1) {
            profileUseCaseGeneral$uploadPerfil$1 = (ProfileUseCaseGeneral$uploadPerfil$1) continuation;
            if ((profileUseCaseGeneral$uploadPerfil$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$uploadPerfil$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$uploadPerfil$1 = new ProfileUseCaseGeneral$uploadPerfil$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$uploadPerfil$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$uploadPerfil$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$uploadPerfil$1.L$0 = SpillingKt.nullOutSpilledVariable(file);
                profileUseCaseGeneral$uploadPerfil$1.J$0 = id;
                profileUseCaseGeneral$uploadPerfil$1.label = 1;
                Object objM10376uploadFoto0E7RQCE = profileRepository.m10376uploadFoto0E7RQCE(id, file, profileUseCaseGeneral$uploadPerfil$1);
                if (objM10376uploadFoto0E7RQCE == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10376uploadFoto0E7RQCE;
            case 1:
                long id2 = profileUseCaseGeneral$uploadPerfil$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: obtenerPsicologoAsignado-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10396obtenerPsicologoAsignadogIAlus(long idPaciente, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$obtenerPsicologoAsignado$1 profileUseCaseGeneral$obtenerPsicologoAsignado$1;
        if (continuation instanceof ProfileUseCaseGeneral$obtenerPsicologoAsignado$1) {
            profileUseCaseGeneral$obtenerPsicologoAsignado$1 = (ProfileUseCaseGeneral$obtenerPsicologoAsignado$1) continuation;
            if ((profileUseCaseGeneral$obtenerPsicologoAsignado$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$obtenerPsicologoAsignado$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$obtenerPsicologoAsignado$1 = new ProfileUseCaseGeneral$obtenerPsicologoAsignado$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$obtenerPsicologoAsignado$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$obtenerPsicologoAsignado$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$obtenerPsicologoAsignado$1.J$0 = idPaciente;
                profileUseCaseGeneral$obtenerPsicologoAsignado$1.label = 1;
                Object objM10375obtenerPsicologoAsignadogIAlus = profileRepository.m10375obtenerPsicologoAsignadogIAlus(idPaciente, profileUseCaseGeneral$obtenerPsicologoAsignado$1);
                if (objM10375obtenerPsicologoAsignadogIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10375obtenerPsicologoAsignadogIAlus;
            case 1:
                long idPaciente2 = profileUseCaseGeneral$obtenerPsicologoAsignado$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPacienteById-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10392getPacienteByIdgIAlus(long idPaciente, Continuation<? super Result<PacienteProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$getPacienteById$1 profileUseCaseGeneral$getPacienteById$1;
        if (continuation instanceof ProfileUseCaseGeneral$getPacienteById$1) {
            profileUseCaseGeneral$getPacienteById$1 = (ProfileUseCaseGeneral$getPacienteById$1) continuation;
            if ((profileUseCaseGeneral$getPacienteById$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$getPacienteById$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$getPacienteById$1 = new ProfileUseCaseGeneral$getPacienteById$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$getPacienteById$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$getPacienteById$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$getPacienteById$1.J$0 = idPaciente;
                profileUseCaseGeneral$getPacienteById$1.label = 1;
                Object objM10371getPacienteByIdgIAlus = profileRepository.m10371getPacienteByIdgIAlus(idPaciente, profileUseCaseGeneral$getPacienteById$1);
                if (objM10371getPacienteByIdgIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10371getPacienteByIdgIAlus;
            case 1:
                long idPaciente2 = profileUseCaseGeneral$getPacienteById$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPacienteByIdFirebase-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10393getPacienteByIdFirebasegIAlus(long idPaciente, Continuation<? super Result<PacienteProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$getPacienteByIdFirebase$1 profileUseCaseGeneral$getPacienteByIdFirebase$1;
        if (continuation instanceof ProfileUseCaseGeneral$getPacienteByIdFirebase$1) {
            profileUseCaseGeneral$getPacienteByIdFirebase$1 = (ProfileUseCaseGeneral$getPacienteByIdFirebase$1) continuation;
            if ((profileUseCaseGeneral$getPacienteByIdFirebase$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$getPacienteByIdFirebase$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$getPacienteByIdFirebase$1 = new ProfileUseCaseGeneral$getPacienteByIdFirebase$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$getPacienteByIdFirebase$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$getPacienteByIdFirebase$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$getPacienteByIdFirebase$1.J$0 = idPaciente;
                profileUseCaseGeneral$getPacienteByIdFirebase$1.label = 1;
                Object objM10372getPacienteByIdFirebasegIAlus = profileRepository.m10372getPacienteByIdFirebasegIAlus(idPaciente, profileUseCaseGeneral$getPacienteByIdFirebase$1);
                if (objM10372getPacienteByIdFirebasegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10372getPacienteByIdFirebasegIAlus;
            case 1:
                long idPaciente2 = profileUseCaseGeneral$getPacienteByIdFirebase$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPsicologoById-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10395getPsicologoByIdgIAlus(long idPsicologo, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileUseCaseGeneral$getPsicologoById$1 profileUseCaseGeneral$getPsicologoById$1;
        if (continuation instanceof ProfileUseCaseGeneral$getPsicologoById$1) {
            profileUseCaseGeneral$getPsicologoById$1 = (ProfileUseCaseGeneral$getPsicologoById$1) continuation;
            if ((profileUseCaseGeneral$getPsicologoById$1.label & Integer.MIN_VALUE) != 0) {
                profileUseCaseGeneral$getPsicologoById$1.label -= Integer.MIN_VALUE;
            } else {
                profileUseCaseGeneral$getPsicologoById$1 = new ProfileUseCaseGeneral$getPsicologoById$1(this, continuation);
            }
        }
        Object $result = profileUseCaseGeneral$getPsicologoById$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (profileUseCaseGeneral$getPsicologoById$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ProfileRepository profileRepository = this.repository;
                profileUseCaseGeneral$getPsicologoById$1.J$0 = idPsicologo;
                profileUseCaseGeneral$getPsicologoById$1.label = 1;
                Object objM10374getPsicologoByIdgIAlus = profileRepository.m10374getPsicologoByIdgIAlus(idPsicologo, profileUseCaseGeneral$getPsicologoById$1);
                if (objM10374getPsicologoByIdgIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10374getPsicologoByIdgIAlus;
            case 1:
                long idPsicologo2 = profileUseCaseGeneral$getPsicologoById$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
