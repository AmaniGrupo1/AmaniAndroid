package org.ies.tierno.applicationamani.dto.terapias

import java.math.BigDecimal

/**
 * DTO de solicitud para crear un nuevo tipo de terapia.
 *
 * Permite al administrador registrar un tipo de terapia con
 * su nombre, duración estándar y precio.
 *
 * @property nombre Nombre del tipo de terapia.
 * @property duracionMinutos Duración estándar de la sesión en minutos.
 * @property precio Precio de la sesión en la moneda configurada.
 */
data class TerapiaRequest(
    val nombre: String,
    val duracionMinutos: Int,
    val precio: BigDecimal,
)
