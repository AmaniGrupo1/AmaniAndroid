package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.notificacion.NotificacionConfigDTO
import org.ies.tierno.applicationamani.dto.notificacion.NotificacionResponseDTO
import retrofit2.Response
import retrofit2.http.GET
import retrofit2.http.PUT
import retrofit2.http.Path
import retrofit2.http.Query

/**
 * Interfaz Retrofit para la gestión de notificaciones del usuario.
 *
 * Expone los endpoints de consulta, marcado como leída y configuración
 * del interruptor de activación/desactivación de notificaciones.
 */
interface NotificacionApi {
    /**
     * Obtiene todas las notificaciones de un usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Respuesta HTTP con la lista de notificaciones del usuario.
     */
    @GET("api/notificaciones/{idUsuario}")
    suspend fun getNotificaciones(
        @Path("idUsuario") idUsuario: Long,
    ): Response<List<NotificacionResponseDTO>>

    /**
     * Marca una notificación específica como leída.
     *
     * @param id Identificador único de la notificación.
     * @return Respuesta HTTP con la notificación actualizada.
     */
    @PUT("api/notificaciones/leer/{id}")
    suspend fun marcarLeida(
        @Path("id") id: Long,
    ): Response<NotificacionResponseDTO>

    /**
     * Marca todas las notificaciones del usuario como leídas.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Respuesta HTTP vacía tras el marcado masivo.
     */
    @PUT("api/notificaciones/leer-todas/{idUsuario}")
    suspend fun marcarTodasLeidas(
        @Path("idUsuario") idUsuario: Long,
    ): Response<Unit>

    /**
     * Cuenta las notificaciones no leídas del usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Respuesta HTTP con el número de notificaciones pendientes de lectura.
     */
    @GET("api/notificaciones/no-leidas/{idUsuario}")
    suspend fun contarNoLeidas(
        @Path("idUsuario") idUsuario: Long,
    ): Response<Long>

    /**
     * Activa o desactiva el envío de notificaciones para el usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @param activar Si es `true` activa las notificaciones; si es `false` las desactiva.
     * @return Respuesta HTTP con la configuración resultante de notificaciones.
     */
    @PUT("api/notificaciones/configuracion/{idUsuario}/activar")
    suspend fun actualizarNotificaciones(
        @Path("idUsuario") idUsuario: Long,
        @Query("activar") activar: Boolean,
    ): Response<NotificacionConfigDTO>

    /**
     * Consulta si las notificaciones están activadas para un usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Respuesta HTTP con `true` si las notificaciones están activadas.
     */
    @GET("api/notificaciones/configuracion/{idUsuario}")
    suspend fun obtenerEstadoNotificaciones(
        @Path("idUsuario") idUsuario: Long,
    ): Response<Boolean>
}
