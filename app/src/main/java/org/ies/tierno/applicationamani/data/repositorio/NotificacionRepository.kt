package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.NotificacionApi

class NotificacionRepository(
    private val notificacionApi: NotificacionApi
) {

    suspend fun toggleNotificaciones(id: Long, activar: Boolean) {
        notificacionApi.actualizarNotificaciones(id, activar)
    }

    suspend fun getEstadoNotificaciones(id: Long) =
        notificacionApi.obtenerEstadoNotificaciones(id)

    suspend fun getNotificaciones(id: Long) =
        notificacionApi.getNotificaciones(id)

    suspend fun marcarLeida(id: Long) =
        notificacionApi.marcarLeida(id)

    suspend fun marcarTodasLeidas(id: Long) =
        notificacionApi.marcarTodasLeidas(id)

    suspend fun contarNoLeidas(id: Long) =
        notificacionApi.contarNoLeidas(id)
}