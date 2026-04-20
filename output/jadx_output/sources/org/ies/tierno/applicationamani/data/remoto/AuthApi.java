package org.ies.tierno.applicationamani.data.remoto;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

/* JADX INFO: compiled from: AuthApi.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\rH§@¢\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0011H§@¢\u0006\u0002\u0010\u0012J\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0003H§@¢\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00140\u0003H§@¢\u0006\u0002\u0010\u0016J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u001cH§@¢\u0006\u0002\u0010\u001dJ\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00032\b\b\u0001\u0010\u0005\u001a\u00020 H§@¢\u0006\u0002\u0010!J\u001a\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00140\u0003H§@¢\u0006\u0002\u0010\u0016J\u001a\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00140\u0003H§@¢\u0006\u0002\u0010\u0016¨\u0006%À\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;", "", "login", "Lretrofit2/Response;", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;", "request", "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;", "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPaciente", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPacienteAdmin", "registerAdmin", "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;", "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPsicologo", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;", "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPacientesConPsicologo", "", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPacientes", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;", "darBajaPaciente", "", TtmlNode.ATTR_ID, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "asignarPsicologo", "", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPsicologos", "getPacientesByPsicologo", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface AuthApi {
    @POST("/api/admin/psicologos/asignar-psicologo")
    Object asignarPsicologo(@Body AsignarPacienteAlPsicologoRequestDTO asignarPacienteAlPsicologoRequestDTO, Continuation<? super Response<Boolean>> continuation);

    @PUT("/auth/pacientes/{id}/baja")
    Object darBajaPaciente(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super Response<String>> continuation);

    @GET("/api/pacientes/admin")
    Object getPacientes(Continuation<? super Response<List<DatosPacienteAdminDTO>>> continuation);

    @GET("/api/psicologo/pacientes/getAll")
    Object getPacientesByPsicologo(Continuation<? super Response<List<PacientePsicologoResponseDTO>>> continuation);

    @GET("/api/admin/psicologos/pacientes")
    Object getPacientesConPsicologo(Continuation<? super Response<List<ListaPacientesAndPsicologo>>> continuation);

    @GET("/api/admin/psicologos")
    Object getPsicologos(Continuation<? super Response<List<PsicologoSelfResponseDTO>>> continuation);

    @POST("auth/login")
    Object login(@Body LoginRequestDTO loginRequestDTO, Continuation<? super Response<LoginResponseDTO>> continuation);

    @POST("/auth/register-admin")
    Object registerAdmin(@Body RegistryPacienteDTO registryPacienteDTO, Continuation<? super Response<LoginResponseDTO>> continuation);

    @POST("/auth/register-paciente")
    Object registerPaciente(@Body PacienteRequest pacienteRequest, Continuation<? super Response<LoginResponseDTO>> continuation);

    @POST("/auth/registry/pacienteAdmin")
    Object registerPacienteAdmin(@Body PacienteRequest pacienteRequest, Continuation<? super Response<LoginResponseDTO>> continuation);

    @POST("/api/admin/psicologos/create")
    Object registerPsicologo(@Body PsicologoRequestDTO psicologoRequestDTO, Continuation<? super Response<PsicologoSelfResponseDTO>> continuation);
}
