package org.ies.tierno.applicationamani.domain.usecases.notificacion

import org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository

class NotificacionUseCase(private val repository: NotificacionRepository) {

    // ─────────────────────────────
    // Obtener notificaciones
    // ─────────────────────────────
    suspend fun getNotificaciones(idUsuario: Long) =
        repository.getNotificaciones(idUsuario)

    // ─────────────────────────────
    // Marcar una como leída
    // ─────────────────────────────
    suspend fun marcarLeida(id: Long) =
        repository.marcarLeida(id)

    // ─────────────────────────────
    // Marcar todas como leídas
    // ─────────────────────────────
    suspend fun marcarTodasLeidas(idUsuario: Long) =
        repository.marcarTodasLeidas(idUsuario)

    // ─────────────────────────────
    // Contar no leídas
    // ─────────────────────────────
    suspend fun contarNoLeidas(idUsuario: Long) =
        repository.contarNoLeidas(idUsuario)

    // ─────────────────────────────
    // Activar / desactivar notificaciones
    // ─────────────────────────────
    suspend fun toggleNotificaciones(idUsuario: Long, activar: Boolean) =
        repository.toggleNotificaciones(idUsuario, activar)

    // ─────────────────────────────
    // Obtener estado switch
    // ─────────────────────────────
    suspend fun getEstadoNotificaciones(idUsuario: Long) =
        repository.getEstadoNotificaciones(idUsuario)
}