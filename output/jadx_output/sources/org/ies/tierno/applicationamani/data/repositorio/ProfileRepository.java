package org.ies.tierno.applicationamani.data.repositorio;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import org.ies.tierno.applicationamani.data.remoto.ProfileApi;
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;

/* JADX INFO: compiled from: ProfileRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u0014\u0010\fJ\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u0017\u0010\fJ\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u0019\u0010\fJ\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u001b\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u001c\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;", "", "api", "Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;)V", "getProfile", "Lkotlin/Result;", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", TtmlNode.ATTR_ID, "", "getProfile-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uploadFoto", "file", "Lokhttp3/MultipartBody$Part;", "uploadFoto-0E7RQCE", "(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "obtenerPsicologoAsignado", "idPaciente", "obtenerPsicologoAsignado-gIAlu-s", "getPacienteById", "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;", "getPacienteById-gIAlu-s", "getPacienteByIdFirebase", "getPacienteByIdFirebase-gIAlu-s", "getPsicologoById", "idPsicologo", "getPsicologoById-gIAlu-s", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ProfileRepository {
    public static final int $stable = 8;
    private final ProfileApi api;

    public ProfileRepository(ProfileApi api) {
        Intrinsics.checkNotNullParameter(api, "api");
        this.api = api;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getProfile-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10373getProfilegIAlus(long id, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileRepository$getProfile$1 profileRepository$getProfile$1;
        Object profilePsicologo;
        if (continuation instanceof ProfileRepository$getProfile$1) {
            profileRepository$getProfile$1 = (ProfileRepository$getProfile$1) continuation;
            if ((profileRepository$getProfile$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$getProfile$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$getProfile$1 = new ProfileRepository$getProfile$1(this, continuation);
            }
        }
        Object $result = profileRepository$getProfile$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$getProfile$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$getProfile$1.J$0 = id;
                    profileRepository$getProfile$1.label = 1;
                    profilePsicologo = profileApi.getProfilePsicologo(id, profileRepository$getProfile$1);
                    if (profilePsicologo == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long id2 = profileRepository$getProfile$1.J$0;
                    ResultKt.throwOnFailure($result);
                    profilePsicologo = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoProfileResponseDTO response = (PsicologoProfileResponseDTO) profilePsicologo;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: uploadFoto-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10376uploadFoto0E7RQCE(long id, MultipartBody.Part file, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileRepository$uploadFoto$1 profileRepository$uploadFoto$1;
        Object objUploadFoto;
        if (continuation instanceof ProfileRepository$uploadFoto$1) {
            profileRepository$uploadFoto$1 = (ProfileRepository$uploadFoto$1) continuation;
            if ((profileRepository$uploadFoto$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$uploadFoto$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$uploadFoto$1 = new ProfileRepository$uploadFoto$1(this, continuation);
            }
        }
        Object $result = profileRepository$uploadFoto$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$uploadFoto$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$uploadFoto$1.L$0 = SpillingKt.nullOutSpilledVariable(file);
                    profileRepository$uploadFoto$1.J$0 = id;
                    profileRepository$uploadFoto$1.label = 1;
                    objUploadFoto = profileApi.uploadFoto(id, file, profileRepository$uploadFoto$1);
                    if (objUploadFoto == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long id2 = profileRepository$uploadFoto$1.J$0;
                    ResultKt.throwOnFailure($result);
                    objUploadFoto = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoProfileResponseDTO response = (PsicologoProfileResponseDTO) objUploadFoto;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: obtenerPsicologoAsignado-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10375obtenerPsicologoAsignadogIAlus(long idPaciente, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileRepository$obtenerPsicologoAsignado$1 profileRepository$obtenerPsicologoAsignado$1;
        Object objObtenerPsicologoAsignado;
        if (continuation instanceof ProfileRepository$obtenerPsicologoAsignado$1) {
            profileRepository$obtenerPsicologoAsignado$1 = (ProfileRepository$obtenerPsicologoAsignado$1) continuation;
            if ((profileRepository$obtenerPsicologoAsignado$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$obtenerPsicologoAsignado$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$obtenerPsicologoAsignado$1 = new ProfileRepository$obtenerPsicologoAsignado$1(this, continuation);
            }
        }
        Object $result = profileRepository$obtenerPsicologoAsignado$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$obtenerPsicologoAsignado$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$obtenerPsicologoAsignado$1.J$0 = idPaciente;
                    profileRepository$obtenerPsicologoAsignado$1.label = 1;
                    objObtenerPsicologoAsignado = profileApi.obtenerPsicologoAsignado(idPaciente, profileRepository$obtenerPsicologoAsignado$1);
                    if (objObtenerPsicologoAsignado == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long idPaciente2 = profileRepository$obtenerPsicologoAsignado$1.J$0;
                    ResultKt.throwOnFailure($result);
                    objObtenerPsicologoAsignado = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoProfileResponseDTO response = (PsicologoProfileResponseDTO) objObtenerPsicologoAsignado;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPacienteById-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10371getPacienteByIdgIAlus(long idPaciente, Continuation<? super Result<PacienteProfileResponseDTO>> continuation) {
        ProfileRepository$getPacienteById$1 profileRepository$getPacienteById$1;
        Object pacienteById;
        if (continuation instanceof ProfileRepository$getPacienteById$1) {
            profileRepository$getPacienteById$1 = (ProfileRepository$getPacienteById$1) continuation;
            if ((profileRepository$getPacienteById$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$getPacienteById$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$getPacienteById$1 = new ProfileRepository$getPacienteById$1(this, continuation);
            }
        }
        Object $result = profileRepository$getPacienteById$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$getPacienteById$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$getPacienteById$1.J$0 = idPaciente;
                    profileRepository$getPacienteById$1.label = 1;
                    pacienteById = profileApi.getPacienteById(idPaciente, profileRepository$getPacienteById$1);
                    if (pacienteById == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long idPaciente2 = profileRepository$getPacienteById$1.J$0;
                    ResultKt.throwOnFailure($result);
                    pacienteById = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PacienteProfileResponseDTO response = (PacienteProfileResponseDTO) pacienteById;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPacienteByIdFirebase-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10372getPacienteByIdFirebasegIAlus(long idPaciente, Continuation<? super Result<PacienteProfileResponseDTO>> continuation) {
        ProfileRepository$getPacienteByIdFirebase$1 profileRepository$getPacienteByIdFirebase$1;
        Object pacienteByIdFirebase;
        if (continuation instanceof ProfileRepository$getPacienteByIdFirebase$1) {
            profileRepository$getPacienteByIdFirebase$1 = (ProfileRepository$getPacienteByIdFirebase$1) continuation;
            if ((profileRepository$getPacienteByIdFirebase$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$getPacienteByIdFirebase$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$getPacienteByIdFirebase$1 = new ProfileRepository$getPacienteByIdFirebase$1(this, continuation);
            }
        }
        Object $result = profileRepository$getPacienteByIdFirebase$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$getPacienteByIdFirebase$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$getPacienteByIdFirebase$1.J$0 = idPaciente;
                    profileRepository$getPacienteByIdFirebase$1.label = 1;
                    pacienteByIdFirebase = profileApi.getPacienteByIdFirebase(idPaciente, profileRepository$getPacienteByIdFirebase$1);
                    if (pacienteByIdFirebase == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long idPaciente2 = profileRepository$getPacienteByIdFirebase$1.J$0;
                    ResultKt.throwOnFailure($result);
                    pacienteByIdFirebase = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PacienteProfileResponseDTO response = (PacienteProfileResponseDTO) pacienteByIdFirebase;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getPsicologoById-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10374getPsicologoByIdgIAlus(long idPsicologo, Continuation<? super Result<PsicologoProfileResponseDTO>> continuation) {
        ProfileRepository$getPsicologoById$1 profileRepository$getPsicologoById$1;
        Object psicologoById;
        if (continuation instanceof ProfileRepository$getPsicologoById$1) {
            profileRepository$getPsicologoById$1 = (ProfileRepository$getPsicologoById$1) continuation;
            if ((profileRepository$getPsicologoById$1.label & Integer.MIN_VALUE) != 0) {
                profileRepository$getPsicologoById$1.label -= Integer.MIN_VALUE;
            } else {
                profileRepository$getPsicologoById$1 = new ProfileRepository$getPsicologoById$1(this, continuation);
            }
        }
        Object $result = profileRepository$getPsicologoById$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (profileRepository$getPsicologoById$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ProfileApi profileApi = this.api;
                    profileRepository$getPsicologoById$1.J$0 = idPsicologo;
                    profileRepository$getPsicologoById$1.label = 1;
                    psicologoById = profileApi.getPsicologoById(idPsicologo, profileRepository$getPsicologoById$1);
                    if (psicologoById == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long idPsicologo2 = profileRepository$getPsicologoById$1.J$0;
                    ResultKt.throwOnFailure($result);
                    psicologoById = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoProfileResponseDTO response = (PsicologoProfileResponseDTO) psicologoById;
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(response);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }
}
