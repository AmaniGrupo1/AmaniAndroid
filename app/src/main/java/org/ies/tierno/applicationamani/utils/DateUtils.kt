package org.ies.tierno.applicationamani.utils

import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException

/**
 * Utilidad para el manejo seguro de fechas en toda la aplicación.
 */
object DateUtils {
    private val isoFormatters = listOf(
        DateTimeFormatter.ISO_LOCAL_DATE,          // 2024-04-23
        DateTimeFormatter.ISO_DATE_TIME,           // 2024-04-23T10:30:00
        DateTimeFormatter.ISO_OFFSET_DATE_TIME,    // 2024-04-23T10:30:00Z
        DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"),
        DateTimeFormatter.ofPattern("dd/MM/yyyy")
    )

    /**
     * Convierte un String a LocalDate de forma segura manejando múltiples formatos ISO 8601.
     * 
     * @return LocalDate si el parseo es exitoso, null en caso contrario.
     */
    fun String?.toLocalDateSafe(): LocalDate? {
        if (this.isNullOrBlank()) return null
        
        // Limpieza básica: si contiene 'T', intentamos tomar solo la parte de la fecha para simplicidad
        val cleaned = if (this.contains("T")) this.split("T")[0] else this

        for (formatter in isoFormatters) {
            try {
                return LocalDate.parse(cleaned, formatter)
            } catch (e: DateTimeParseException) {
                continue
            }
        }
        
        // Intento final usando runCatching como red de seguridad
        return kotlin.runCatching { LocalDate.parse(cleaned) }.getOrNull()
    }
}
