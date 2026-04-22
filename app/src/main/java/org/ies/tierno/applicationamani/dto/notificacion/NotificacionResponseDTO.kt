package org.ies.tierno.applicationamani.dto.notificacion

data class NotificacionResponseDTO(
    val id: Long,
    val titulo: String,
    val mensaje: String,
    val leida: Boolean,
    val fecha: String // mejor como String por compatibilidad JSON
)