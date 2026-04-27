package org.ies.tierno.applicationamani.domain.models.soporte

import androidx.compose.ui.graphics.Color

/**
 * Modelo de dominio para un ticket de soporte.
 *
 * @property id Identificador único del ticket.
 * @property titulo Título descriptivo del problema o sugerencia.
 * @property descripcion Descripción detallada del ticket.
 * @property fecha Fecha y hora de creación en formato legible.
 * @property estado Estado actual del ticket.
 * @property etiquetaEstado Descripción textual del estado.
 * @property tipo Tipo de ticket: problema, pregunta, sugerencia.
 * @property categoria Categoría del ticket.
 */
data class TicketSoporte(
    val id: Long,
    val titulo: String,
    val descripcion: String,
    val fecha: String,
    val estado: EstadoTicket,
    val etiquetaEstado: String,
    val tipo: TipoTicket,
    val categoria: String
)

/**
 * Estados posibles de un ticket de soporte.
 *
 * @property nombreVisual Texto mostrado en la UI.
 * @property backend Valor enviado/recibido del backend.
 * @property colorContenedor Color de fondo del chip de estado.
 * @property colorContenido Color del texto/icono del chip.
 */
enum class EstadoTicket(
    val nombreVisual: String,
    val backend: String,
    val colorContenedor: Color,
    val colorContenido: Color
) {
    ABIERTO(
        nombreVisual = "ABIERTO",
        backend = "abierto",
        colorContenedor = Color(0xFFDBEAFE),
        colorContenido = Color(0xFF1E40AF)
    ),
    EN_PROCESO(
        nombreVisual = "EN PROCESO",
        backend = "en_progreso",
        colorContenedor = Color(0xFFDCFCE7),
        colorContenido = Color(0xFF166534)
    ),
    CERRADO(
        nombreVisual = "CERRADO",
        backend = "cerrado",
        colorContenedor = Color(0xFFF3F4F6),
        colorContenido = Color(0xFF6B7280)
    )
}

enum class TipoTicket(
    val backend: String,
    val display: String
) {
    PROBLEMA("problema", "Reportar problema"),
    PREGUNTA("pregunta", "Hacer pregunta"),
    SUGERENCIA("sugerencia", "Sugerir mejora")
}

enum class FiltroTicket {
    TODOS,
    ABIERTOS,
    CERRADOS
}

/**
 * Opción de categoría mostrada en la UI y mapeada al backend.
 */
data class CategoriaOpcion(
    val display: String,
    val backend: String
) {
    companion object {
        val todas = listOf(
            CategoriaOpcion("Bug en la aplicación", "app"),
            CategoriaOpcion("Problema de pago", "pago"),
            CategoriaOpcion("Cuenta y acceso", "cuenta"),
            CategoriaOpcion("Rendimiento / técnico", "tecnico"),
            CategoriaOpcion("Otros", "otro")
        )
    }
}
