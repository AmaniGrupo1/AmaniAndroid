// SituacionRepository.kt
package org.ies.tierno.applicationamani.data

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import retrofit2.HttpException

/**
 * Repositorio para la gestión de situaciones clínicas.
 *
 * Proporciona operaciones CRUD para el catálogo de situaciones clínicas
 * (diagnósticos, contextos, etc.) utilizadas en la aplicación.
 *
 * @property api Interfaz Retrofit para los endpoints de situaciones.
 */
class SituacionRepository(
    private val api: SituacionApi,
) {
    /**
     * Obtiene un flujo reactivo con todas las situaciones clínicas.
     *
     * Realiza una llamada HTTP y emite la lista de situaciones. En caso de error,
     * emite una lista vacía.
     *
     * @return [Flow] que emite la lista de [SituacionDTO].
     */
    fun getSituaciones(): Flow<List<SituacionDTO>> =
        flow {
            val response = api.getSituaciones()
            if (response.isSuccessful && response.body() != null) {
                emit(
                    response.body()!!.map { dto ->
                        SituacionDTO(
                            idSituacion = dto.idSituacion,
                            nombre = dto.nombre,
                            categoria = dto.categoria,
                            descripcion = dto.descripcion,
                        )
                    },
                )
            } else {
                throw HttpException(response)
            }
        }.flowOn(Dispatchers.IO).catch { emit(emptyList()) }

    /**
     * Obtiene una situación clínica por su identificador.
     *
     * @param id Identificador único de la situación.
     * @return [Result] con [SituacionDTO] si se encuentra, o error en caso contrario.
     */
    suspend fun getSituacionById(id: Long): Result<SituacionDTO> =
        withContext(Dispatchers.IO) {
            try {
                val response = api.getSituacionById(id)
                if (response.isSuccessful && response.body() != null) {
                    val dto = response.body()!!
                    Result.success(
                        SituacionDTO(
                            idSituacion = dto.idSituacion,
                            nombre = dto.nombre,
                            categoria = dto.categoria,
                            descripcion = dto.descripcion,
                        ),
                    )
                } else {
                    Result.failure(HttpException(response))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /**
     * Crea una nueva situación clínica en el catálogo.
     *
     * @param request DTO con los datos de la situación a crear.
     * @return [Result] con [SituacionDTO] de la situación creada.
     */
    suspend fun createSituacion(request: SituacionRequest): Result<SituacionDTO> =
        try {
            val response = api.createSituacion(request)
            if (response.isSuccessful && response.body() != null) {
                Result.success(response.body()!!)
            } else {
                Result.failure(HttpException(response))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza una situación clínica existente.
     *
     * @param id Identificador de la situación a modificar.
     * @param request DTO con los nuevos datos.
     * @return [Result] con [SituacionDTO] actualizado.
     */
    suspend fun updateSituacion(
        id: Long,
        request: SituacionRequest,
    ): Result<SituacionDTO> =
        try {
            val response = api.updateSituacion(id, request)
            if (response.isSuccessful && response.body() != null) {
                Result.success(response.body()!!)
            } else {
                Result.failure(HttpException(response))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Elimina una situación clínica del catálogo.
     *
     * @param id Identificador de la situación a eliminar.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun deleteSituacion(id: Long): Result<Unit> =
        try {
            val response = api.deleteSituacion(id)
            if (response.isSuccessful) {
                Result.success(Unit)
            } else {
                Result.failure(HttpException(response))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
}
