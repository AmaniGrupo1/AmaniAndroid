package org.ies.tierno.applicationamani.domain.models.enumm

/**
 * Define las modalidades en que puede impartirse una cita de terapia.
 *
 * @property PRESENCIAL La sesión se realiza físicamente en la consulta.
 * @property LLAMADA La sesión se realiza de forma remota mediante llamada telefónica o videollamada.
 */
enum class ModalidadCita {
    PRESENCIAL,
    LLAMADA,
}
