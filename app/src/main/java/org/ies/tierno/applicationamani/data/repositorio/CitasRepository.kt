package org.ies.tierno.applicationamani.data.repositorio

import android.util.Log
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import java.math.BigDecimal
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
    suspend fun crearCita(request: CrearCitaRequestDTO): Result<AgendaItemDTO> = runCatching {
        android.util.Log.e("CITA_REPO", "Enviando request a la API: $request")
        val response = citasApi.crearCitaPsicologo(request)
        android.util.Log.e("CITA_REPO", "Respuesta: $response")
        response
    }

    suspend fun cancelarCita(idCita: Long): Result<AgendaItemDTO> = runCatching {
        citasApi.cancelarCita(idCita)
    }

    // En CitasRepository.kt
    // ✅ EDICIÓN DE CITA CORREGIDA
    suspend fun editarCita(idCita: Long, request: CrearCitaRequestDTO): Result<AgendaItemDTO> {
        return try {
            Log.d("API_REQUEST", "========== EDITAR CITA ==========")
            Log.d("API_REQUEST", "PUT /citas/$idCita")
            Log.d("API_REQUEST", "ID Cita: $idCita")
            Log.d("API_REQUEST", "ID Paciente: ${request.idPaciente}")
            Log.d("API_REQUEST", "ID Psicologo: ${request.idPsicologo}")
            Log.d("API_REQUEST", "StartDateTime: ${request.startDatetime}")
            Log.d("API_REQUEST", "Duration: ${request.durationMinutes}")
            Log.d("API_REQUEST", "Metodo Pago: ${request.metodoPago}")
            Log.d("API_REQUEST", "Estado Pago: ${request.estadoPago}")
            Log.d("API_REQUEST", "Monto: ${request.monto}")
            Log.d("API_REQUEST", "Motivo: ${request.motivo}")
            Log.d("API_REQUEST", "ID Terapia: ${request.idTipoTerapia}")
            Log.d("API_REQUEST", "Estado: ${request.estado}")

            val response = citasApi.editarCita(idCita, request)

            if (response.isSuccessful) {
                Log.d("API_RESPONSE", "✅ Éxito - Código: ${response.code()}")
                val body = response.body()
                if (body != null) {
                    Log.d("API_RESPONSE", "Body recibido: $body")
                    Result.success(body)
                } else {
                    Log.e("API_RESPONSE", "❌ Body vacío")
                    Result.failure(Exception("Respuesta vacía del servidor"))
                }
            } else {
                val errorBody = response.errorBody()?.string()
                Log.e("API_ERROR", "❌ Error ${response.code()}: $errorBody")
                Result.failure(Exception("Error ${response.code()}: $errorBody"))
            }
        } catch (e: Exception) {
            Log.e("API_EXCEPTION", "Excepción: ${e.message}", e)
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


    suspend fun cambiarEstadoCita(
        idCita: Long,
        estado: EstadoCita
    ): Result<AgendaItemDTO> = runCatching {

        val request = mapOf(
            "estado" to estado.name.lowercase()
        )

        citasApi.cambiarEstadoCita(idCita, request)
    }

}