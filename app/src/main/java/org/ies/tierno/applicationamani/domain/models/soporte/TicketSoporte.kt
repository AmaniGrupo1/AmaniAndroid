package org.ies.tierno.applicationamani.domain.models.soporte

import androidx.compose.ui.graphics.Color

/**
 * Modelo de dominio para un ticket de soporte.
 *
 * @property id Identificador único del ticket.
 * @property titulo Título descriptivo del problema o sugerencia.
 * @property fecha Fecha y hora de creación en formato legible.
 * @property estado Estado actual del ticket.
 * @property etiquetaEstado Descripción textual del estado.
 * @property tipo Tipo de ticket: bug o mejora.
 */
data class TicketSoporte(
    val id: String,
    val titulo: String,
    val fecha: String,
    val estado: EstadoTicket,
    val etiquetaEstado: String,
    val tipo: TipoTicket
)

/**
 * Estados posibles de un ticket de soporte.
 *
 * @property nombreVisual Texto mostrado en la UI.
 * @property colorContenedor Color de fondo del chip de estado.
 * @property colorContenido Color del texto/icono del chip.
 */
enum class EstadoTicket(
    val nombreVisual: String,
    val colorContenedor: Color,
    val colorContenido: Color
) {
    ABIERTO(
        nombreVisual = "ABIERTO",
        colorContenedor = Color(0xFFDBEAFE),
        colorContenido = Color(0xFF1E40AF)
    ),
    EN_PROCESO(
        nombreVisual = "EN PROCESO",
        colorContenedor = Color(0xFFDCFCE7),
        colorContenido = Color(0xFF166534)
    ),
    PENDIENTE(
        nombreVisual = "PENDIENTE",
        colorContenedor = Color(0xFFFEF3C7),
        colorContenido = Color(0xFF92400E)
    ),
    CERRADO(
        nombreVisual = "CERRADO",
        colorContenedor = Color(0xFFF3F4F6),
        colorContenido = Color(0xFF6B7280)
    )
}

enum class TipoTicket {
    BUG,
    FEATURE
}

enum class FiltroTicket {
    TODOS,
    ABIERTOS,
    CERRADOS
}
