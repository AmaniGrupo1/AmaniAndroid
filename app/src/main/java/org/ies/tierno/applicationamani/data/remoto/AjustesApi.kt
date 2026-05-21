package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.ies.tierno.applicationamani.dto.idioma.IdiomaRequestDTO
import org.ies.tierno.applicationamani.dto.tema.UpdateTemaDTO
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz Retrofit para los endpoints de ajustes de usuario.
 *
 * Proporciona operaciones para cambiar el idioma y el tema visual
 * (claro/oscuro) del usuario autenticado.
 */
interface AjustesApi {
    /**
     * Actualiza el idioma de la interfaz del usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @param request DTO con el código de idioma de destino.
     */
    @PUT("api/ajustes/{idUsuario}/idioma")
    suspend fun actualizarIdioma(
        @Path("idUsuario") idUsuario: Long,
        @Body request: IdiomaRequestDTO,
    )

    /**
     * Actualiza la preferencia de tema visual del usuario.
     *
     * @param dto DTO con el valor del tema (oscuro/claro).
     * @return [Response] con [AjusteResponseDTO] actualizado.
     */
    @PUT("api/ajustes/tema")
    suspend fun actualizarTema(
        @Body dto: UpdateTemaDTO,
    ): Response<AjusteResponseDTO>
}
