package org.ies.tierno.applicationamani.data.remoto;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO;
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: compiled from: CitasApi.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ.\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\b2\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0010H§@¢\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\u0015H§@¢\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00042\b\b\u0001\u0010\u0018\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u00020\u00042\b\b\u0001\u0010\u0018\u001a\u00020\u00062\b\b\u0001\u0010\u0014\u001a\u00020\u0015H§@¢\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0003H§@¢\u0006\u0002\u0010\u001eJ\"\u0010\u001f\u001a\u00020 2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u0014\u001a\u00020!H§@¢\u0006\u0002\u0010\"J\"\u0010#\u001a\u00020 2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u0014\u001a\u00020$H§@¢\u0006\u0002\u0010%J\"\u0010&\u001a\u00020 2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ\u0018\u0010'\u001a\u00020\u00042\b\b\u0001\u0010\u0014\u001a\u00020(H§@¢\u0006\u0002\u0010)J\"\u0010*\u001a\u00020 2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\b\b\u0001\u0010\u000f\u001a\u00020\u0010H§@¢\u0006\u0002\u0010+J\u0018\u0010,\u001a\u00020\u00102\b\b\u0001\u0010\u000b\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0019J\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u0003H§@¢\u0006\u0002\u0010\u001eJ\u0018\u0010/\u001a\u00020!2\b\b\u0001\u0010\u000b\u001a\u00020\u0006H§@¢\u0006\u0002\u0010\u0019¨\u00060À\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;", "", "getAgendaPaciente", "", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "idPaciente", "", "month", "", "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAgendaPsicologo", "idPsicologo", "getDisponibilidadDia", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "fecha", "duracion", "", "(JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "crearCita", "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;", "request", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelarCita", "idCita", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editarCita", "(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPsicologosConPacientes", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "actualizarHorario", "", "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;", "(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "marcarDiaNoDisponible", "Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;", "(JLorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "eliminarDiaNoDisponible", "crearCitaPsicologo", "Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;", "(Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "actualizarDuracion", "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDuracion", "getTerapias", "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "getHorarioActual", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface CitasApi {
    @PUT("/api/citas/psicologo/{idPsicologo}/duracion")
    Object actualizarDuracion(@Path("idPsicologo") long j, @Query("duracion") int i, Continuation<? super Unit> continuation);

    @PUT("/api/citas/psicologo/{idPsicologo}/horario")
    Object actualizarHorario(@Path("idPsicologo") long j, @Body HorarioRequestDTO horarioRequestDTO, Continuation<? super Unit> continuation);

    @PATCH("/api/citas/{id}/cancelar")
    Object cancelarCita(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super AgendaItemDTO> continuation);

    @POST("/api/citas/admin")
    Object crearCita(@Body CitaRequest citaRequest, Continuation<? super CitaAdminResponseDTO> continuation);

    @POST("/api/citas/psicologo/cita")
    Object crearCitaPsicologo(@Body CrearCitaRequestDTO crearCitaRequestDTO, Continuation<? super AgendaItemDTO> continuation);

    @PUT("/api/citas/{id}")
    Object editarCita(@Path(TtmlNode.ATTR_ID) long j, @Body CitaRequest citaRequest, Continuation<? super AgendaItemDTO> continuation);

    @DELETE("/api/citas/psicologo/{idPsicologo}/dias-no-disponibles/{fecha}")
    Object eliminarDiaNoDisponible(@Path("idPsicologo") long j, @Path("fecha") String str, Continuation<? super Unit> continuation);

    @GET("/api/citas/paciente/{idPaciente}/agenda")
    Object getAgendaPaciente(@Path("idPaciente") long j, @Query("month") String str, Continuation<? super List<AgendaItemDTO>> continuation);

    @GET("/api/citas/psicologo/{idPsicologo}/agenda")
    Object getAgendaPsicologo(@Path("idPsicologo") long j, @Query("month") String str, Continuation<? super List<AgendaItemDTO>> continuation);

    @GET("/api/citas/psicologo/{idPsicologo}/disponibilidad")
    Object getDisponibilidadDia(@Path("idPsicologo") long j, @Query("fecha") String str, @Query("duracion") Integer num, Continuation<? super DisponibilidadDiaResponse> continuation);

    @GET("/api/citas/psicologo/{idPsicologo}/duracion")
    Object getDuracion(@Path("idPsicologo") long j, Continuation<? super Integer> continuation);

    @GET("/api/citas/psicologo/{idPsicologo}/horario-actual")
    Object getHorarioActual(@Path("idPsicologo") long j, Continuation<? super HorarioRequestDTO> continuation);

    @GET("/api/admin/psicologos/pacientes")
    Object getPsicologosConPacientes(Continuation<? super List<ListaPacientesAndPsicologo>> continuation);

    @GET("/api/citas/psicologo/terapias")
    Object getTerapias(Continuation<? super List<TerapiaResponseDTO>> continuation);

    @POST("/api/citas/psicologo/{idPsicologo}/dias-no-disponibles")
    Object marcarDiaNoDisponible(@Path("idPsicologo") long j, @Body BloqueoRequestDTO bloqueoRequestDTO, Continuation<? super Unit> continuation);

    /* JADX INFO: compiled from: CitasApi.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    static /* synthetic */ Object getDisponibilidadDia$default(CitasApi citasApi, long j, String str, Integer num, Continuation continuation, int i, Object obj) {
        Integer num2;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getDisponibilidadDia");
        }
        if ((i & 4) == 0) {
            num2 = num;
        } else {
            num2 = null;
        }
        return citasApi.getDisponibilidadDia(j, str, num2, continuation);
    }
}
