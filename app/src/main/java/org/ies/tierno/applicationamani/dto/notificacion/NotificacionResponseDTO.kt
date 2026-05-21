package org.ies.tierno.applicationamani.dto.notificacion

/**
 * DTO de respuesta con los datos de una notificación.
 *
 * Contiene el título, mensaje, estado de lectura y fecha de la notificación
 * para su visualización en la bandeja del usuario.
 *
 * @property id Identificador único de la notificación.
 * @property titulo Título de la notificación.
 * @property mensaje Contenido textual de la notificación.
 * @property leida Indica si el usuario ya ha leído la notificación.
 * @property fecha Fecha de emisión en formato `String` para compatibilidad JSON.
 */
data class NotificacionResponseDTO(
    val id: Long,
    val titulo: String,
    val mensaje: String,
    val leida: Boolean,
    val fecha: String,
)
