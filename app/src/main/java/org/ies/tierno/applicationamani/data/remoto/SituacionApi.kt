package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz Retrofit para la gestión de situaciones administrativas.
 *
 * Permite al administrador crear, consultar, actualizar y eliminar situaciones
 * que pueden asignarse a usuarios o utilizarse como catálogo en el sistema.
 */
interface SituacionApi {
    /**
     * Lista todas las situaciones disponibles en el sistema.
     *
     * @return Respuesta HTTP con la lista de situaciones.
     */
    @GET("api/situaciones")
    suspend fun getSituaciones(): Response<List<SituacionDTO>>

    /**
     * Recupera una situación específica por su identificador.
     *
     * @param id Identificador único de la situación.
     * @return Respuesta HTTP con los datos de la situación solicitada.
     */
    @GET("api/situaciones/{id}")
    suspend fun getSituacionById(
        @Path("id") id: Long,
    ): Response<SituacionDTO>

    /**
     * Crea una nueva situación en el sistema.
     *
     * @param request Datos de la situación a registrar.
     * @return Respuesta HTTP con la situación creada.
     */
    @POST("api/situaciones/create")
    suspend fun createSituacion(
        @Body request: SituacionRequest,
    ): Response<SituacionDTO>

    /**
     * Actualiza una situación existente.
     *
     * @param id Identificador de la situación a modificar.
     * @param request Nuevos datos de la situación.
     * @return Respuesta HTTP con la situación actualizada.
     */
    @PUT("api/situaciones/update/{id}")
    suspend fun updateSituacion(
        @Path("id") id: Long,
        @Body request: SituacionRequest,
    ): Response<SituacionDTO>

    /**
     * Elimina una situación del sistema.
     *
     * @param id Identificador único de la situación a eliminar.
     * @return Respuesta HTTP vacía.
     */
    @DELETE("api/situaciones/delete/{id}")
    suspend fun deleteSituacion(
        @Path("id") id: Long,
    ): Response<Unit>
}
