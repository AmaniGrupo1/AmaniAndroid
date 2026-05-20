package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.AjustesApi
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.ies.tierno.applicationamani.dto.idioma.IdiomaRequestDTO
import org.ies.tierno.applicationamani.dto.tema.UpdateTemaDTO

/**
 * Repositorio para la gestión de ajustes de usuario.
 *
 * Proporciona operaciones para cambiar el idioma de la interfaz y actualizar
 * la preferencia de tema visual (claro/oscuro) del usuario autenticado.
 *
 * @property api Interfaz Retrofit para las operaciones de ajustes.
 */
class AjustesRepository(
    private val api: AjustesApi,
) {
    /**
     * Cambia el idioma de la interfaz para el usuario especificado.
     *
     * @param idUsuario Identificador único del usuario.
     * @param idioma Código del idioma de destino (ej. "es", "en").
     */
    suspend fun cambiarIdioma(
        idUsuario: Long,
        idioma: String,
    ) {
        api.actualizarIdioma(
            idUsuario,
            IdiomaRequestDTO(idioma),
        )
    }

    /**
     * Actualiza la preferencia del tema visual (claro/oscuro) del usuario.
     *
     * @param tema `true` para tema oscuro, `false` para tema claro.
     * @return [Result] que contiene [AjusteResponseDTO] con los ajustes actualizados
     *         si la operación es exitosa, o la excepción correspondiente en caso de error.
     */
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
