package org.ies.tierno.applicationamani.domain.models.soporte

import androidx.compose.ui.graphics.Color
import com.google.gson.annotations.SerializedName

/**
 * Modelo de dominio que representa un ticket de soporte enviado por un usuario.
 *
 * Contiene toda la información necesaria para el seguimiento de incidencias
 * y sugerencias, desde su creación hasta su cierre.
 *
 * @property id Identificador único del ticket.
 * @property titulo Título descriptivo del problema o sugerencia.
 * @property descripcion Descripción detallada del ticket.
 * @property fecha Fecha y hora de creación en formato legible.
 * @property estado Estado actual del ticket.
 * @property etiquetaEstado Descripción textual del estado para mostrar en la interfaz.
 * @property tipo Tipo de ticket: problema, pregunta o sugerencia.
 * @property categoria Categoría a la que pertenece el ticket.
 */
data class TicketSoporte(
    val id: Long,
    val titulo: String,
    val descripcion: String,
    val fecha: String,
    val estado: EstadoTicket,
    val etiquetaEstado: String,
    val tipo: TipoTicket,
    val categoria: CategoriaTicket,
)

/**
 * Estados posibles de un ticket de soporte a lo largo de su ciclo de vida.
 *
 * Cada estado incluye metadatos visuales para su representación en la interfaz
 * mediante chips de color.
 *
 * @property nombreVisual Texto mostrado en la interfaz de usuario para el chip de estado.
 * @property backend Valor enviado y recibido del backend para serialización.
 * @property colorContenedor Color de fondo del chip de estado.
 * @property colorContenido Color del texto e icono del chip.
 */
enum class EstadoTicket(
    val nombreVisual: String,
    val backend: String,
    val colorContenedor: Color,
    val colorContenido: Color,
) {
    /** Ticket recién creado, pendiente de revisión. */
    @SerializedName("abierto")
    ABIERTO(
        nombreVisual = "ABIERTO",
        backend = "abierto",
        colorContenedor = Color(0xFFDBEAFE),
        colorContenido = Color(0xFF1E40AF),
    ),

    /** Ticket en proceso de resolución por parte del equipo de soporte. */
    @SerializedName("en_progreso")
    EN_PROCESO(
        nombreVisual = "EN PROCESO",
        backend = "en_progreso",
        colorContenedor = Color(0xFFDCFCE7),
        colorContenido = Color(0xFF166534),
    ),

    /** Ticket resuelto y cerrado. */
    @SerializedName("cerrado")
    CERRADO(
        nombreVisual = "CERRADO",
        backend = "cerrado",
        colorContenedor = Color(0xFFF3F4F6),
        colorContenido = Color(0xFF6B7280),
    ),
}

/**
 * Define la naturaleza de un ticket de soporte según la intención del usuario.
 *
 * @property backend Valor utilizado en la comunicación con el backend.
 * @property display Texto descriptivo mostrado al usuario en la interfaz.
 */
enum class TipoTicket(
    val backend: String,
    val display: String,
) {
    /** Reporte de un problema técnico o error en la aplicación. */
    @SerializedName("problema")
    PROBLEMA("problema", "Reportar problema"),

    /** Consulta o duda sobre el funcionamiento de la aplicación. */
    @SerializedName("pregunta")
    PREGUNTA("pregunta", "Hacer pregunta"),

    /** Propuesta de mejora para la aplicación. */
    @SerializedName("sugerencia")
    SUGERENCIA("sugerencia", "Sugerir mejora"),
}

/**
 * Filtros disponibles para la lista de tickets de soporte.
 *
 * @property TODOS Muestra todos los tickets sin filtrar.
 * @property ABIERTOS Muestra únicamente los tickets en estado abierto o en proceso.
 * @property CERRADOS Muestra únicamente los tickets cerrados.
 */
enum class FiltroTicket {
    TODOS,
    ABIERTOS,
    CERRADOS,
}

/**
 * Categorías de clasificación para los tickets de soporte.
 *
 * Permiten al equipo de soporte organizar y priorizar las incidencias
 * según el área funcional afectada.
 *
 * @property display Texto descriptivo de la categoría mostrado al usuario.
 * @property backend Valor utilizado en la comunicación con el backend.
 */
enum class CategoriaTicket(
    val display: String,
    val backend: String,
) {
    /** Problemas relacionados con errores o fallos en la aplicación. */
    @SerializedName("app")
    BUG_APP("Bug en la aplicación", "app"),

    /** Incidencias relacionadas con pagos y facturación. */
    @SerializedName("pago")
    PAGO("Problema de pago", "pago"),

    /** Consultas sobre la cuenta de usuario y acceso. */
    @SerializedName("cuenta")
    CUENTA("Cuenta y acceso", "cuenta"),

    /** Problemas de rendimiento o técnicos. */
    @SerializedName("tecnico")
    TECNICO("Rendimiento / técnico", "tecnico"),

    /** Cualquier otro tipo de incidencia no clasificada. */
    @SerializedName("otro")
    OTRO("Otros", "otro"),
    ;

    companion object {
        /** Lista completa de todas las categorías disponibles. */
        val todas = values().toList()
    }
}
