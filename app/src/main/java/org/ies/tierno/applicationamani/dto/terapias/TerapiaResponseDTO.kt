package org.ies.tierno.applicationamani.dto.terapias

import java.math.BigDecimal

/**
 * DTO de respuesta con los datos de un tipo de terapia.
 *
 * Proporciona el identificador, nombre, duración y precio del tipo de terapia.
 * Expone una propiedad `id` como alias de `idTipo` por retrocompatibilidad.
 *
 * @property idTipo Identificador único del tipo de terapia.
 * @property nombre Nombre del tipo de terapia.
 * @property duracionMinutos Duración estándar de la sesión en minutos.
 * @property precio Precio de la sesión en la moneda configurada.
 */
data class TerapiaResponseDTO(
    val idTipo: Long,
    val nombre: String,
    val duracionMinutos: Int,
    val precio: BigDecimal,
) {
    val id get() = idTipo
}
