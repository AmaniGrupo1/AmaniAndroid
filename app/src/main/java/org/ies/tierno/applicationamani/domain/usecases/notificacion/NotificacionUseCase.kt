package org.ies.tierno.applicationamani.domain.usecases.notificacion

import org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository

/**
 * Caso de uso para la gestión de notificaciones push del usuario.
 *
 * Delega en el repositorio de notificaciones la consulta,
 * marcado como leído y configuración del estado de notificaciones.
 *
 * @property repository Repositorio de notificaciones.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository
 */
class NotificacionUseCase(
    private val repository: NotificacionRepository,
) {
    /**
     * Obtiene la lista de notificaciones de un usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Lista de notificaciones.
     */
    suspend fun getNotificaciones(idUsuario: Long) = repository.getNotificaciones(idUsuario)

    /**
     * Marca una notificación como leída.
     *
     * @param id Identificador único de la notificación.
     */
    suspend fun marcarLeida(id: Long) = repository.marcarLeida(id)

    /**
     * Marca todas las notificaciones de un usuario como leídas.
     *
     * @param idUsuario Identificador único del usuario.
     */
    suspend fun marcarTodasLeidas(idUsuario: Long) = repository.marcarTodasLeidas(idUsuario)

    /**
     * Cuenta las notificaciones no leídas de un usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @return Número de notificaciones pendientes.
     */
    suspend fun contarNoLeidas(idUsuario: Long) = repository.contarNoLeidas(idUsuario)

    /**
     * Activa o desactiva las notificaciones push para un usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @param activar `true` para activar, `false` para desactivar.
     */
    suspend fun toggleNotificaciones(
        idUsuario: Long,
        activar: Boolean,
    ) = repository.toggleNotificaciones(idUsuario, activar)

    /**
     * Obtiene el estado actual de las notificaciones (activadas / desactivadas).
     *
     * @param idUsuario Identificador único del usuario.
     * @return `true` si están activadas, `false` en caso contrario.
     */
    suspend fun getEstadoNotificaciones(idUsuario: Long) = repository.getEstadoNotificaciones(idUsuario)
}
