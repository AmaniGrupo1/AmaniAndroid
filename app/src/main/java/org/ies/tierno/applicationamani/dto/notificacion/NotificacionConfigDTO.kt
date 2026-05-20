package org.ies.tierno.applicationamani.dto.notificacion

/**
 * DTO para configurar el estado de las notificaciones de un usuario.
 *
 * Permite activar o desactivar la recepción de notificaciones push
 * para un usuario específico.
 *
 * @property idUsuario Identificador único del usuario.
 * @property notificacionesActivas `true` si las notificaciones están habilitadas.
 */
data class NotificacionConfigDTO(
    val idUsuario: Long,
    val notificacionesActivas: Boolean,
)
