package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.NotificacionApi

/**
 * Repositorio para la gestión de notificaciones push del usuario.
 *
 * Permite activar/desactivar notificaciones, consultar el estado actual,
 * listar notificaciones recibidas y gestionar su estado de lectura.
 *
 * @property notificacionApi Interfaz Retrofit para los endpoints de notificaciones.
 */
class NotificacionRepository(
    private val notificacionApi: NotificacionApi,
) {
    /**
     * Activa o desactiva las notificaciones push para un usuario.
     *
     * @param id Identificador del usuario.
     * @param activar `true` para activar, `false` para desactivar.
     */
    suspend fun toggleNotificaciones(
        id: Long,
        activar: Boolean,
    ) {
        notificacionApi.actualizarNotificaciones(id, activar)
    }

    /**
     * Consulta el estado actual de las notificaciones (activadas/desactivadas).
     *
     * @param id Identificador del usuario.
     * @return Respuesta con el estado de notificaciones.
     */
    suspend fun getEstadoNotificaciones(id: Long) = notificacionApi.obtenerEstadoNotificaciones(id)

    /**
     * Obtiene la lista de notificaciones del usuario.
     *
     * @param id Identificador del usuario.
     * @return Lista de notificaciones del usuario.
     */
    suspend fun getNotificaciones(id: Long) = notificacionApi.getNotificaciones(id)

    /**
     * Marca una notificación específica como leída.
     *
     * @param id Identificador de la notificación a marcar.
     * @return Respuesta de la operación.
     */
    suspend fun marcarLeida(id: Long) = notificacionApi.marcarLeida(id)

    /**
     * Marca todas las notificaciones del usuario como leídas.
     *
     * @param id Identificador del usuario.
     * @return Respuesta de la operación.
     */
    suspend fun marcarTodasLeidas(id: Long) = notificacionApi.marcarTodasLeidas(id)

    /**
     * Cuenta las notificaciones no leídas del usuario.
     *
     * @param id Identificador del usuario.
     * @return Número de notificaciones pendientes de lectura.
     */
    suspend fun contarNoLeidas(id: Long) = notificacionApi.contarNoLeidas(id)
}
