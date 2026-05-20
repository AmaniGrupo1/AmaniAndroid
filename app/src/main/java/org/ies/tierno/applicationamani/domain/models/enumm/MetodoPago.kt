package org.ies.tierno.applicationamani.domain.models.enumm

/**
 * Define los métodos de pago aceptados para las sesiones de terapia.
 *
 * @property EFECTIVO Pago en metálico en la consulta.
 * @property TARJETA Pago mediante tarjeta bancaria (crédito o débito).
 * @property PRESENCIAL Pago realizado físicamente en la consulta sin especificar medio.
 * @property ONLINE Pago realizado a través de plataforma de pago en línea.
 */
enum class MetodoPago {
    EFECTIVO,
    TARJETA,
    PRESENCIAL,
    ONLINE,
}

/**
 * Define los estados del pago asociado a una cita o sesión de terapia.
 *
 * @property PENDIENTE El pago no ha sido realizado ni verificado.
 * @property PAGADO El pago ha sido confirmado y registrado.
 * @property FALLIDO El intento de pago resultó fallido.
 * @property REEMBOLSADO El importe ha sido devuelto al paciente.
 */
enum class EstadoPago {
    PENDIENTE,
    PAGADO,
    FALLIDO,
    REEMBOLSADO,
}
