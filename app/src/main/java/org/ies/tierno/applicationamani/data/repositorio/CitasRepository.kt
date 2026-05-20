package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO

/**
 * Repositorio para la gestión de citas, agenda y terapias.
 *
 * Centraliza las operaciones relacionadas con la agenda de pacientes y psicólogos,
 * incluyendo la creación, edición, cancelación y cambio de estado de citas,
 * así como la administración de horarios, bloqueos de días no disponibles
 * y la gestión de terapias.
 *
 * @property citasApi Interfaz Retrofit para los endpoints de citas.
 */
class CitasRepository(
    private val citasApi: CitasApi,
) {
    /**
     * Obtiene la agenda de citas de un paciente para un mes específico.
     *
     * @param idPaciente Identificador único del paciente.
     * @param month Mes en formato 'yyyy-MM'.
     * @return [Result] con la lista de [AgendaItemDTO] del paciente.
     */
    suspend fun getAgendaPaciente(
        idPaciente: Long,
        month: String,
    ): Result<List<AgendaItemDTO>> =
        runCatching {
            citasApi.getAgendaPaciente(idPaciente, month)
        }

    /**
     * Obtiene la agenda de citas de un psicólogo para un mes específico.
     *
     * @param idPsicologo Identificador único del psicólogo.
     * @param month Mes en formato 'yyyy-MM'.
     * @return [Result] con la lista de [AgendaItemDTO] del psicólogo.
     */
    suspend fun getAgendaPsicologo(
        idPsicologo: Long,
        month: String,
    ): Result<List<AgendaItemDTO>> =
        runCatching {
            citasApi.getAgendaPsicologo(idPsicologo, month)
        }

    /**
     * Obtiene la duración predeterminada de las sesiones de un psicólogo.
     *
     * @param idPsicologo Identificador único del psicólogo.
     * @return [Result] con la duración en minutos.
     */
    suspend fun getDuracion(idPsicologo: Long): Result<Int> =
        runCatching {
            citasApi.getDuracion(idPsicologo)
        }

    /**
     * Obtiene los huecos disponibles de un psicólogo para una fecha concreta.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @param fecha Fecha en formato 'yyyy-MM-dd'.
     * @param duracionMinutos Duración deseada de la cita en minutos.
     * @return [Result] con [DisponibilidadDiaResponse] incluyendo los tramos disponibles.
     */
    suspend fun getDisponibilidadDia(
        idPsicologo: Long,
        fecha: String,
        duracionMinutos: Int,
    ): Result<DisponibilidadDiaResponse> =
        runCatching {
            citasApi.getDisponibilidadDia(
                idPsicologo = idPsicologo,
                fecha = fecha,
                duracion = duracionMinutos,
            )
        }

    /**
     * Crea una nueva cita desde el perfil de psicólogo.
     *
     * @param request DTO con los datos de la cita a crear.
     * @return [Result] con [AgendaItemDTO] de la cita creada.
     */
    suspend fun crearCita(request: CrearCitaRequestDTO): Result<AgendaItemDTO> =
        runCatching {
            citasApi.crearCitaPsicologo(request)
        }

    /**
     * Cancela una cita existente por su identificador.
     *
     * @param idCita Identificador de la cita a cancelar.
     * @return [Result] con [AgendaItemDTO] de la cita cancelada.
     */
    suspend fun cancelarCita(idCita: Long): Result<AgendaItemDTO> =
        runCatching {
            citasApi.cancelarCita(idCita)
        }

    /**
     * Edita los datos de una cita existente.
     *
     * @param idCita Identificador de la cita a modificar.
     * @param request DTO con los nuevos datos de la cita.
     * @return [Result] con [AgendaItemDTO] actualizado.
     */
    suspend fun editarCita(
        idCita: Long,
        request: CrearCitaRequestDTO,
    ): Result<AgendaItemDTO> =
        try {
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

    /**
     * Obtiene la lista de pacientes asignados a un psicólogo.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @return [Result] con la lista de [PacientesAsignadoDTO].
     */
    suspend fun getPacientesDelPsicologo(idPsicologo: Long): Result<List<PacientesAsignadoDTO>> =
        runCatching {
            val todosLosPsicologos = citasApi.getPsicologosConPacientes()
            todosLosPsicologos
                .firstOrNull { it.idPsicologo == idPsicologo }
                ?.pacientes
                ?: emptyList()
        }

    /**
     * Actualiza el horario semanal de un psicólogo.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @param request DTO con la nueva configuración horaria.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun actualizarHorario(
        idPsicologo: Long,
        request: HorarioRequestDTO,
    ): Result<Unit> =
        runCatching {
            citasApi.actualizarHorario(idPsicologo, request)
        }

    /**
     * Actualiza la duración predeterminada de las sesiones.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @param duracion Nueva duración en minutos.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun actualizarDuracion(
        idPsicologo: Long,
        duracion: Int,
    ): Result<Unit> =
        runCatching {
            citasApi.actualizarDuracion(
                idPsicologo = idPsicologo,
                duracion = duracion,
            )
        }

    /**
     * Bloquea un día o franja horaria como no disponible.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @param fecha Fecha a bloquear.
     * @param horaInicio Hora de inicio del bloqueo (opcional).
     * @param horaFin Hora de fin del bloqueo (opcional).
     * @param motivo Motivo del bloqueo.
     */
    suspend fun bloquearDiaNoDisponible(
        idPsicologo: Long,
        fecha: String,
        horaInicio: String? = null,
        horaFin: String? = null,
        motivo: String? = null,
    ) = runCatching {
        val request =
            BloqueoRequestDTO(
                fecha = fecha,
                horaInicio = horaInicio,
                horaFin = horaFin,
                motivo = motivo ?: "No disponible",
            )
        citasApi.marcarDiaNoDisponible(idPsicologo, request)
    }

    /**
     * Elimina el bloqueo de un día no disponible.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @param fecha Fecha del bloqueo a eliminar.
     */
    suspend fun quitarDiaNoDisponible(
        idPsicologo: Long,
        fecha: String,
    ) = runCatching {
        citasApi.eliminarDiaNoDisponible(idPsicologo, fecha)
    }

    /**
     * Obtiene la lista de todas las terapias registradas.
     *
     * @return [Result] con la lista de [TerapiaResponseDTO].
     */
    suspend fun getTerapias(): Result<List<TerapiaResponseDTO>> =
        runCatching {
            citasApi.getTerapias()
        }

    /**
     * Obtiene el horario actual configurado para un psicólogo.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @return [Result] con [HorarioRequestDTO].
     */
    suspend fun getHorarioActual(idPsicologo: Long): Result<HorarioRequestDTO> =
        runCatching {
            citasApi.getHorarioActual(idPsicologo)
        }

    /**
     * Obtiene las citas del paciente autenticado.
     *
     * @return Lista de [CitaPacienteViewResponseDTO].
     */
    suspend fun getMisCitas(): List<CitaPacienteViewResponseDTO> = citasApi.getMisCitas()

    /**
     * Cambia el estado de una cita (confirmada, cancelada, completada, etc.).
     *
     * @param idCita Identificador de la cita.
     * @param estado Nuevo [EstadoCita] a asignar.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun cambiarEstadoCita(
        idCita: Long,
        estado: EstadoCita,
    ): Result<Unit> =
        try {
            val request =
                mapOf(
                    "estado" to estado.name.lowercase(),
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

    /**
     * Crea un nuevo tipo de terapia en el sistema.
     *
     * @param request DTO con los datos de la terapia.
     * @return [Result] con [TerapiaResponseDTO] de la terapia creada.
     */
    suspend fun crearTerapia(request: TerapiaRequest): Result<TerapiaResponseDTO> =
        try {
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

    /**
     * Actualiza los datos de una terapia existente.
     *
     * @param id Identificador de la terapia.
     * @param request DTO con los nuevos datos.
     * @return [Result] con [TerapiaResponseDTO] actualizado.
     */
    suspend fun actualizarTerapia(
        id: Long,
        request: TerapiaRequest,
    ): Result<TerapiaResponseDTO> =
        try {
            val response = citasApi.actualizarTerapia(id, request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Elimina una terapia del sistema.
     *
     * @param id Identificador de la terapia a eliminar.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun eliminarTerapia(id: Long): Result<Unit> =
        try {
            citasApi.eliminarTerapia(id)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
}
