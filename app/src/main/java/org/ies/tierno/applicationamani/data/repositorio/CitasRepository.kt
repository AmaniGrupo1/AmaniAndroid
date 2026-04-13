package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime

class CitasRepository(
    private val citasApi: CitasApi
) {

    suspend fun getAgendaPaciente(
        idPaciente: Long,
        month: String
    ): Result<List<AgendaItemDTO>> = runCatching {
        citasApi.getAgendaPaciente(idPaciente, month)
    }

    suspend fun getAgendaPsicologo(
        idPsicologo: Long,
        month: String
    ): Result<List<AgendaItemDTO>> = runCatching {
        citasApi.getAgendaPsicologo(idPsicologo, month)
    }

    // ✅ MÉTODO GET DURACION
    suspend fun getDuracion(
        idPsicologo: Long
    ): Result<Int> = runCatching {
        citasApi.getDuracion(idPsicologo)
    }

    suspend fun getDisponibilidadDia(
        idPsicologo: Long,
        fecha: String,
        duracionMinutos: Int
    ): Result<DisponibilidadDiaResponse> = runCatching {
        citasApi.getDisponibilidadDia(
            idPsicologo = idPsicologo,
            fecha = fecha,
            duracion = duracionMinutos
        )
    }

    // Método original para admin (lo mantienes)
    suspend fun crearCita(request: CitaRequest): Result<CitaAdminResponseDTO> = runCatching {
        citasApi.crearCita(request)
    }

    // NUEVO MÉTODO: Crear cita desde psicólogo
      suspend fun crearCitaPsicologo(
        idPsicologo: Long,
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long
    ): Result<AgendaItemDTO> = runCatching {

        val request = CrearCitaRequestDTO(
            idPaciente = idPaciente,
            idPsicologo = idPsicologo,
            startDatetime = LocalDateTime.of(fecha, hora),
            durationMinutes = duracionMinutos,
            motivo = motivo,
            estado = EstadoCita.pendiente,  // ← EXPLÍCITAMENTE PENDIENTE
            idTipoTerapia = idTipoTerapia
        )

        citasApi.crearCitaPsicologo(request)
    }

    suspend fun cancelarCita(idCita: Long): Result<AgendaItemDTO> = runCatching {
        citasApi.cancelarCita(idCita)
    }

    suspend fun editarCita(idCita: Long, request: CitaRequest): Result<AgendaItemDTO> = runCatching {
        citasApi.editarCita(idCita, request)
    }

    suspend fun getPacientesDelPsicologo(idPsicologo: Long): Result<List<PacientesAsignadoDTO>> = runCatching {
        val todosLosPsicologos = citasApi.getPsicologosConPacientes()
        todosLosPsicologos
            .firstOrNull { it.idPsicologo == idPsicologo }
            ?.pacientes
            ?: emptyList()
    }

    suspend fun actualizarHorario(
        idPsicologo: Long,
        request: HorarioRequestDTO
    ): Result<Unit> = runCatching {
        citasApi.actualizarHorario(idPsicologo, request)
    }

    suspend fun actualizarDuracion(
        idPsicologo: Long,
        duracion: Int
    ): Result<Unit> = runCatching {
        citasApi.actualizarDuracion(
            idPsicologo = idPsicologo,
            duracion = duracion
        )
    }

    suspend fun alternarDiaNoDisponible(
        idPsicologo: Long,
        fecha: String,
        yaNoDisponible: Boolean,
        horaInicio: String? = null,
        horaFin: String? = null,
        motivo: String? = null
    ): Result<Unit> = runCatching {
        if (yaNoDisponible) {
            citasApi.eliminarDiaNoDisponible(idPsicologo, fecha)
        } else {
            val request = BloqueoRequestDTO(
                fecha = fecha,
                horaInicio = horaInicio,
                horaFin = horaFin,
                motivo = motivo ?: "No disponible"
            )
            citasApi.marcarDiaNoDisponible(idPsicologo, request)
        }
    }

    suspend fun getTerapias(): Result<List<TerapiaResponseDTO>> = runCatching {
        citasApi.getTerapias()
    }

    suspend fun getHorarioActual(
        idPsicologo: Long
    ): Result<HorarioRequestDTO> = runCatching {
        citasApi.getHorarioActual(idPsicologo)
    }
}