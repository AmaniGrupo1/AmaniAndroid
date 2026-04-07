package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest

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

    suspend fun getDisponibilidadDia(
        idPsicologo: Long,
        fecha: String
    ): Result<DisponibilidadDiaResponse> = runCatching {
        citasApi.getDisponibilidadDia(idPsicologo, fecha)
    }

    suspend fun crearCita(request: CitaRequest): Result<CitaAdminResponseDTO> = runCatching {
        citasApi.crearCita(request)
    }

    suspend fun actualizarHorario(
        idPsicologo: Long,
        request: HorarioRequestDTO
    ): Result<Unit> = runCatching {
        citasApi.actualizarHorario(idPsicologo, request)
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
}
