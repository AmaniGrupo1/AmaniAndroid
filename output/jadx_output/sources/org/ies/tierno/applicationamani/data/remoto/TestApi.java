package org.ies.tierno.applicationamani.data.remoto;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: compiled from: TestApi.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH§@¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\r2\u000e\b\u0001\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\bH§@¢\u0006\u0002\u0010\u0010¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/TestApi;", "", "createPregunta", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "pregunta", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;", "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPreguntas", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "responderTest", "", "idPaciente", "", "respuestas", "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface TestApi {
    @POST("/api/admin/preguntas")
    Object createPregunta(@Body PreguntaRequest preguntaRequest, Continuation<? super OpcionAdminDTO> continuation);

    @GET("/api/paciente/preguntas")
    Object getPreguntas(Continuation<? super List<OpcionAdminDTO>> continuation);

    @POST("/api/paciente/preguntas/responder/{idPaciente}")
    Object responderTest(@Path("idPaciente") long j, @Body List<RespuestasRequestDTO> list, Continuation<? super Unit> continuation);
}
