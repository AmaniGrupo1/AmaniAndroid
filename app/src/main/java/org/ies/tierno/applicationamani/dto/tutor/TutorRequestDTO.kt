package org.ies.tierno.applicationamani.dto.tutor

/**
 * DTO de solicitud para crear un nuevo tutor legal.
 *
 * Contiene los datos identificativos y de contacto del tutor
 * que se asociará a un paciente.
 *
 * @property nombre Nombre del tutor legal.
 * @property telefono Número de teléfono de contacto.
 * @property email Correo electrónico de contacto.
 * @property dni Documento nacional de identidad del tutor.
 * @property tipo Tipo de relación con el paciente (p. ej. «padre», «madre», «tutor legal»).
 */
data class TutorRequestDTO(
    val nombre: String,
    val telefono: String,
    val email: String,
    val dni: String,
    val tipo: String,
)
