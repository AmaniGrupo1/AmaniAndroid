package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO

/**
 * Repositorio remoto para las operaciones CRUD del diario emocional.
 *
 * Envuelve las llamadas a la API REST [DiarioApi] dentro de bloques [Result]
 * para gestionar los errores de red de forma controlada.
 *
 * @property api Interfaz Retrofit que implementa los endpoints del diario emocional.
 */
class DiarioRemoteRepository(
    private val api: DiarioApi,
) {
    /**
     * Recupera todas las entradas del diario emocional desde el backend.
     *
     * @return [Result] con la lista de respuestas o el error de red.
     */
    suspend fun getAll(): Result<List<DiarioEmocionResponseDTO>> = runCatching { api.getAll() }

    /**
     * Obtiene una entrada del diario por su identificador remoto.
     *
     * @param id Identificador único de la entrada.
     * @return [Result] con la respuesta de la entrada o el error correspondiente.
     */
    suspend fun getById(id: Long): Result<DiarioEmocionResponseDTO> = runCatching { api.getById(id) }

    /**
     * Lista todas las entradas del diario asociadas a un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @return [Result] con la lista de entradas o el error de red.
     */
    suspend fun getByPaciente(idPaciente: Long): Result<List<DiarioEmocionResponseDTO>> = runCatching { api.getByPaciente(idPaciente) }

    /**
     * Crea una nueva entrada del diario emocional en el backend.
     *
     * @param request Datos de la entrada a registrar.
     * @return [Result] con la entrada creada o el error correspondiente.
     */
    suspend fun create(request: DiarioEmocionRequestDTO): Result<DiarioEmocionResponseDTO> = runCatching { api.create(request) }

    /**
     * Actualiza una entrada existente del diario emocional.
     *
     * @param id Identificador de la entrada a modificar.
     * @param request Nuevos datos de la entrada.
     * @return [Result] con la entrada actualizada o el error correspondiente.
     */
    suspend fun update(
        id: Long,
        request: DiarioEmocionRequestDTO,
    ): Result<DiarioEmocionResponseDTO> = runCatching { api.update(id, request) }

    /**
     * Elimina una entrada del diario emocional en el backend.
     *
     * @param id Identificador de la entrada a eliminar.
     * @return [Result] con [Unit] si la operación fue exitosa o el error correspondiente.
     */
    suspend fun delete(id: Long): Result<Unit> = runCatching { api.delete(id) }
}
