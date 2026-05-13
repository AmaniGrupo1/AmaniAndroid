package org.ies.tierno.applicationamani.data.remoto


import org.ies.tierno.applicationamani.dto.notificacion.NotificacionConfigDTO
import org.ies.tierno.applicationamani.dto.notificacion.NotificacionResponseDTO
import retrofit2.Response
import retrofit2.http.GET
import retrofit2.http.PUT
import retrofit2.http.Path
import retrofit2.http.Query

interface NotificacionApi {

    // ─────────────────────────────
    // Obtener notificaciones
    // GET /api/notificaciones/{idUsuario}
    // ─────────────────────────────
    @GET("api/notificaciones/{idUsuario}")
    suspend fun getNotificaciones(
        @Path("idUsuario") idUsuario: Long
    ): Response<List<NotificacionResponseDTO>>

    // ─────────────────────────────
    // Marcar una como leída
    // PUT /api/notificaciones/leer/{id}
    // ─────────────────────────────
    @PUT("api/notificaciones/leer/{id}")
    suspend fun marcarLeida(
        @Path("id") id: Long
    ): Response<NotificacionResponseDTO>

    // ─────────────────────────────
    // Marcar todas como leídas
    // PUT /api/notificaciones/leer-todas/{idUsuario}
    // ─────────────────────────────
    @PUT("api/notificaciones/leer-todas/{idUsuario}")
    suspend fun marcarTodasLeidas(
        @Path("idUsuario") idUsuario: Long
    ): Response<Unit>

    // ─────────────────────────────
    // Contar no leídas
    // GET /api/notificaciones/no-leidas/{idUsuario}
    // ─────────────────────────────
    @GET("api/notificaciones/no-leidas/{idUsuario}")
    suspend fun contarNoLeidas(
        @Path("idUsuario") idUsuario: Long
    ): Response<Long>

    // ─────────────────────────────
    // Activar / desactivar notificaciones
    // PUT /api/notificaciones/configuracion/{idUsuario}/activar?activar=true
    // ─────────────────────────────
    @PUT("api/notificaciones/configuracion/{idUsuario}/activar")
    suspend fun actualizarNotificaciones(
        @Path("idUsuario") idUsuario: Long,
        @Query("activar") activar: Boolean
    ): Response<NotificacionConfigDTO>

    // ─────────────────────────────
    // Obtener estado switch
    // GET /api/notificaciones/configuracion/{idUsuario}
    // ─────────────────────────────
    @GET("api/notificaciones/configuracion/{idUsuario}")
    suspend fun obtenerEstadoNotificaciones(
        @Path("idUsuario") idUsuario: Long
    ): Response<Boolean>
}