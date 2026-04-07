// SituacionRepository.kt
package org.ies.tierno.applicationamani.data

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import retrofit2.HttpException

class SituacionRepository(private val api: SituacionApi) {

    fun getSituaciones(): Flow<List<SituacionDTO>> = flow {
        try {
            val response = api.getSituaciones()
            if (response.isSuccessful && response.body() != null) {
                val situaciones = response.body()!!.map { dto ->
                    SituacionDTO(
                        idSituacion = dto.idSituacion,
                        nombre = dto.nombre,
                        categoria = dto.categoria,
                        descripcion = dto.descripcion
                    )
                }
                emit(situaciones)
            } else {
                emit(emptyList())
            }
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    suspend fun getSituacionById(id: Long): Result<SituacionDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.getSituacionById(id)
                if (response.isSuccessful && response.body() != null) {
                    val dto = response.body()!!
                    Result.success(
                        SituacionDTO(
                            idSituacion = dto.idSituacion,
                            nombre = dto.nombre,
                            categoria = dto.categoria,
                            descripcion = dto.descripcion
                        )
                    )
                } else {
                    Result.failure(HttpException(response))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
}