package org.ies.tierno.applicationamani.dto.soporte

import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket

/**
 * DTO para crear un nuevo ticket de soporte.
 *
 * @property titulo Título descriptivo del ticket.
 * @property descripcion Descripción detallada del problema o sugerencia.
 * @property tipo Tipo de ticket: problema, pregunta, sugerencia.
 * @property categoria Categoría del ticket: tecnico, cuenta, pago, app, otro.
 */
data class TicketSoporteRequestDTO(
    val titulo: String,
    val descripcion: String,
    val tipo: TipoTicket,
    val categoria: CategoriaTicket,
)
