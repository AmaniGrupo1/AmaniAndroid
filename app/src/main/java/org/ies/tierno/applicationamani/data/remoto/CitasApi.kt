package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo

import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.PATCH
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path
import retrofit2.http.Query

interface CitasApi {

    @GET("/api/citas/paciente/{idPaciente}/agenda")
    suspend fun getAgendaPaciente(
        @Path("idPaciente") idPaciente: Long,
        @Query("month") month: String
    ): List<AgendaItemDTO>

    @GET("/api/citas/psicologo/{idPsicologo}/agenda")
    suspend fun getAgendaPsicologo(
        @Path("idPsicologo") idPsicologo: Long,
        @Query("month") month: String
    ): List<AgendaItemDTO>

    @GET("/api/citas/psicologo/{idPsicologo}/disponibilidad")
    suspend fun getDisponibilidadDia(
        @Path("idPsicologo") idPsicologo: Long,
        @Query("fecha") fecha: String,
        @Query("duracion") duracion: Int? = null
    ): DisponibilidadDiaResponse

    @POST("/api/citas/admin")
    suspend fun crearCita(
        @Body request: CrearCitaRequestDTO
    ): CitaAdminResponseDTO

    @PATCH("/api/citas/{id}/cancelar")
    suspend fun cancelarCita(
        @Path("id") idCita: Long
    ): AgendaItemDTO

    @PUT("/api/citas/{id}")
    suspend fun editarCita(
        @Path("id") idCita: Long,
        @Body request: CitaRequest
    ): AgendaItemDTO

    @GET("/api/admin/psicologos/pacientes")
    suspend fun getPsicologosConPacientes(): List<ListaPacientesAndPsicologo>

    @PUT("/api/citas/psicologo/{idPsicologo}/horario")
    suspend fun actualizarHorario(
        @Path("idPsicologo") idPsicologo: Long,
        @Body request: HorarioRequestDTO
    ): Unit

    @POST("/api/citas/psicologo/{idPsicologo}/dias-no-disponibles")
    suspend fun marcarDiaNoDisponible(
        @Path("idPsicologo") idPsicologo: Long,
        @Body request: BloqueoRequestDTO
    ): Unit

    @DELETE("/api/citas/psicologo/{idPsicologo}/dias-no-disponibles/{fecha}")
    suspend fun eliminarDiaNoDisponible(
        @Path("idPsicologo") idPsicologo: Long,
        @Path("fecha") fecha: String
    ): Unit

    // 🚀 CREAR CITA (CORRECTO)
    @POST("/api/citas/psicologo/cita")
    suspend fun crearCitaPsicologo(
        @Body request: CrearCitaRequestDTO
    ): AgendaItemDTO

    //Actualizo duracion de cita
    @PUT("/api/citas/psicologo/{idPsicologo}/duracion")
    suspend fun actualizarDuracion(
        @Path("idPsicologo") idPsicologo: Long,
        @Query("duracion") duracion: Int
    ): Unit

    //Obtengo duracion de cita
    @GET("/api/citas/psicologo/{idPsicologo}/duracion")
    suspend fun getDuracion(
        @Path("idPsicologo") idPsicologo: Long
    ): Int

    @GET("/api/citas/psicologo/terapias")
    suspend fun getTerapias(): List<TerapiaResponseDTO>

    @GET("/api/citas/psicologo/{idPsicologo}/horario-actual")
    suspend fun getHorarioActual(
        @Path("idPsicologo") idPsicologo: Long
    ): HorarioRequestDTO

}
