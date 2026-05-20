package org.ies.tierno.applicationamani.dto.admin

/**
 * DTO genérico de respuesta con un mensaje informativo.
 *
 * Se utiliza como respuesta simple en endpoints que no requieren devolver
 * un objeto de dominio completo, como confirmaciones de operación.
 *
 * @property message Mensaje informativo de la respuesta.
 */
data class MessageResponse(
    val message: String,
)
