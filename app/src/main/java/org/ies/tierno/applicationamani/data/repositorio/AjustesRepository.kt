package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.AjustesApi
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.ies.tierno.applicationamani.dto.idioma.IdiomaRequestDTO
import org.ies.tierno.applicationamani.dto.tema.UpdateTemaDTO

class AjustesRepository(
    private val api: AjustesApi,
) {
    suspend fun cambiarIdioma(
        idUsuario: Long,
        idioma: String,
    ) {
        api.actualizarIdioma(
            idUsuario,
            IdiomaRequestDTO(idioma),
        )
    }

    suspend fun actualizarTema(tema: Boolean): Result<AjusteResponseDTO> =
        try {
            val response =
                api.actualizarTema(
                    UpdateTemaDTO(tema),
                )

            if (response.isSuccessful && response.body() != null) {
                Result.success(response.body()!!)
            } else {
                Result.failure(
                    Exception(
                        "Error al actualizar el tema: ${response.code()}",
                    ),
                )
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
}
