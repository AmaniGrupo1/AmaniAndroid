package org.ies.tierno.applicationamani.dto.soporte

import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import java.time.LocalDateTime

/**
 * DTO de respuesta para un ticket de soporte.
 *
 * @property idTicket Identificador único del ticket.
 * @property titulo Título del ticket.
 * @property descripcion Descripción del ticket.
 * @property tipo Tipo de ticket.
 * @property categoria Categoría del ticket.
 * @property estado Estado actual del ticket.
 * @property creadoEn Fecha de creación en formato ISO8601.
 * @property actualizadoEn Fecha de última actualización.
 * @property cerradoEn Fecha de cierre (null si no está cerrado).
 * @property nombreUsuario Nombre del usuario que creó el ticket.
 * @property apellidoUsuario Apellido del usuario.
 */
data class TicketSoporteResponseDTO(
    val idTicket: Long,
    val titulo: String,
    val descripcion: String,
    val tipo: TipoTicket,
    val categoria: CategoriaTicket,
    val estado: EstadoTicket,
    val creadoEn: LocalDateTime?,
    val actualizadoEn: LocalDateTime?,
    val cerradoEn: LocalDateTime?,
    val nombreUsuario: String?,
    val apellidoUsuario: String?
)
