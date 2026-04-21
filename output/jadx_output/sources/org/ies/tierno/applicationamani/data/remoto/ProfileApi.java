package org.ies.tierno.applicationamani.data.remoto;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.MultipartBody;
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;

/* JADX INFO: compiled from: ProfileApi.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ\u0018\u0010\t\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\nJ\u0018\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\nJ\u0018\u0010\u000f\u001a\u00020\u000e2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\nJ\u0018\u0010\u0010\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\n¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;", "", "uploadFoto", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", TtmlNode.ATTR_ID, "", "file", "Lokhttp3/MultipartBody$Part;", "(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getProfilePsicologo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "obtenerPsicologoAsignado", "idPaciente", "getPacienteById", "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;", "getPacienteByIdFirebase", "getPsicologoById", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ProfileApi {
    @GET("/api/pacientes/{id}")
    Object getPacienteById(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super PacienteProfileResponseDTO> continuation);

    @GET("/api/pacientes/usuario/{id}")
    Object getPacienteByIdFirebase(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super PacienteProfileResponseDTO> continuation);

    @GET("/api/psicologo/{id}/perfil")
    Object getProfilePsicologo(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super PsicologoProfileResponseDTO> continuation);

    @GET("/api/psicologo/usuario/{id}")
    Object getPsicologoById(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super PsicologoProfileResponseDTO> continuation);

    @GET("/api/psicologo/pacientes/{idPaciente}/psicologo")
    Object obtenerPsicologoAsignado(@Path("idPaciente") long j, Continuation<? super PsicologoProfileResponseDTO> continuation);

    @POST("/api/psicologo/{id}/foto")
    @Multipart
    Object uploadFoto(@Path(TtmlNode.ATTR_ID) long j, @Part MultipartBody.Part part, Continuation<? super PsicologoProfileResponseDTO> continuation);
}
