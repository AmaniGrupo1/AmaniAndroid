package org.ies.tierno.applicationamani.dto.soporte

/**
 * DTO para actualizar el estado de un ticket (admin).
 *
 * @property estado Nuevo estado: abierto, en_progreso, cerrado.
 */
data class TicketEstadoRequestDTO(
    val estado: String
)
