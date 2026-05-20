package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.data.remoto.HistorialCitaApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import java.time.LocalDate
import java.time.LocalDateTime

class CitasRepository(
    private val citasApi: CitasApi,
    private val historial : HistorialCitaApi
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

    suspend fun crearCita(request: CrearCitaRequestDTO): Result<AgendaItemDTO> = runCatching {
        citasApi.crearCitaPsicologo(request)
    }

    suspend fun cancelarCita(idCita: Long): Result<AgendaItemDTO> = runCatching {
        citasApi.cancelarCita(idCita)
    }

    suspend fun editarCita(idCita: Long, request: CrearCitaRequestDTO): Result<AgendaItemDTO> {
        return try {
            val response = citasApi.editarCita(idCita, request)
            if (response.isSuccessful) {
                val body = response.body()
                if (body != null) {
                    Result.success(body)
                } else {
                    Result.failure(Exception("Respuesta vacía del servidor"))
                }
            } else {
                val errorBody = response.errorBody()?.string()
                Result.failure(Exception("Error ${response.code()}: $errorBody"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
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

    suspend fun bloquearDiaNoDisponible(
        idPsicologo: Long,
        fecha: String,
        horaInicio: String? = null,
        horaFin: String? = null,
        motivo: String? = null
    ) = runCatching {
        val request = BloqueoRequestDTO(
            fecha = fecha,
            horaInicio = horaInicio,
            horaFin = horaFin,
            motivo = motivo ?: "No disponible"
        )
        citasApi.marcarDiaNoDisponible(idPsicologo, request)
    }

    suspend fun quitarDiaNoDisponible(
        idPsicologo: Long,
        fecha: String
    ) = runCatching {
        citasApi.eliminarDiaNoDisponible(idPsicologo, fecha)
    }

    suspend fun getTerapias(): Result<List<TerapiaResponseDTO>> = runCatching {
        citasApi.getTerapias()
    }

    suspend fun getHorarioActual(
        idPsicologo: Long
    ): Result<HorarioRequestDTO> = runCatching {
        citasApi.getHorarioActual(idPsicologo)
    }

    suspend fun getMisCitas(): List<CitaPacienteViewResponseDTO> {
        return citasApi.getMisCitas()
    }

    suspend fun cambiarEstadoCita(
        idCita: Long,
        estado: EstadoCita
    ): Result<Unit> {
        return try {
            val request = mapOf(
                "estado" to estado.name.lowercase()
            )
            val response = citasApi.cambiarEstadoCita(idCita, request)
            if (response.isSuccessful) {
                Result.success(Unit)
            } else {
                Result.failure(Exception("Error ${response.code()}"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }


    suspend fun crearTerapia(request: TerapiaRequest): Result<TerapiaResponseDTO> {
        return try {
            val response = citasApi.crearTerapia(request)

            if (response.isSuccessful) {
                val body = response.body()
                if (body != null) {
                    Result.success(body)
                } else {
                    Result.failure(Exception("Respuesta vacía del servidor"))
                }
            } else {
                Result.failure(Exception("Error HTTP: ${response.code()}"))
            }

        } catch (e: Exception) {
            Result.failure(e)
        }
    }


    suspend fun actualizarTerapia(
        id: Long,
        request: TerapiaRequest
    ): Result<TerapiaResponseDTO> {
        return try {
            val response = citasApi.actualizarTerapia(id, request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }


    suspend fun eliminarTerapia(id: Long): Result<Unit> {
        return try {
            citasApi.eliminarTerapia(id)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun getHistorialCitas(): Result<List<HistorialCitaResponseDTO>> =
        runCatching {
            historial.getHistorialCitas()
        }
}