package org.ies.tierno.applicationamani.dto

import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import java.math.BigDecimal

/**
 * DTO que representa un pago asociado a una cita.
 *
 * Contiene el identificador de la cita, el método de pago y el importe
 * asociado a la sesión.
 *
 * @property idCita Identificador único de la cita a la que pertenece el pago.
 * @property metodoPago Método de pago utilizado (tarjeta, transferencia, etc.).
 * @property monto Importe del pago en la moneda configurada.
 */
data class Pago(
    val idCita: Long,
    val metodoPago: MetodoPago,
    val monto: BigDecimal,
)
