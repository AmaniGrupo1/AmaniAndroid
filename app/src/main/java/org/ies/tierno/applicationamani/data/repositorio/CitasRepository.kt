package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.dto.citas.AgendaPacienteResponse
import org.ies.tierno.applicationamani.dto.citas.AgendaPsicologoResponse
import org.ies.tierno.applicationamani.dto.citas.CitaDetalleResponse
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.HorarioPsicologoRequest
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest

class CitasRepository(
    private val citasApi: CitasApi
) {

    suspend fun getAgendaPaciente(
        idPaciente: Long,
        month: String
    ): Result<AgendaPacienteResponse> = runCatching {
        citasApi.getAgendaPaciente(idPaciente, month)
    }

    suspend fun getAgendaPsicologo(
        idPsicologo: Long,
        month: String
    ): Result<AgendaPsicologoResponse> = runCatching {
        citasApi.getAgendaPsicologo(idPsicologo, month)
    }

    suspend fun getDisponibilidadDia(
        idPsicologo: Long,
        fecha: String
    ): Result<DisponibilidadDiaResponse> = runCatching {
        citasApi.getDisponibilidadDia(idPsicologo, fecha)
    }

    suspend fun crearCita(request: CitaRequest): Result<CitaDetalleResponse> = runCatching {
        citasApi.crearCita(request)
    }

    suspend fun actualizarHorario(
        idPsicologo: Long,
        request: HorarioPsicologoRequest
    ): Result<AgendaPsicologoResponse> = runCatching {
        citasApi.actualizarHorario(idPsicologo, request)
    }

    suspend fun alternarDiaNoDisponible(
        idPsicologo: Long,
        fecha: String,
        yaNoDisponible: Boolean
    ): Result<AgendaPsicologoResponse> = runCatching {
        if (yaNoDisponible) {
            citasApi.eliminarDiaNoDisponible(idPsicologo, fecha)
        } else {
            citasApi.marcarDiaNoDisponible(
                idPsicologo,
                org.ies.tierno.applicationamani.dto.citas.DiaNoDisponibleRequest(fecha)
            )
        }
    }
}
