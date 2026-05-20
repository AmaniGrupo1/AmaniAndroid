package org.ies.tierno.applicationamani.dto.tutor

/**
 * DTO de respuesta con los datos de un tutor legal.
 *
 * Contiene el identificador único y los datos de contacto del tutor
 * asociado a un paciente.
 *
 * @property idTutor Identificador único del tutor.
 * @property nombre Nombre del tutor legal.
 * @property telefono Número de teléfono de contacto.
 * @property email Correo electrónico de contacto.
 * @property dni Documento nacional de identidad del tutor.
 * @property tipo Tipo de relación con el paciente (p. ej. «padre», «madre»).
 */
data class TutorResponseDTO(
    val idTutor: Long,
    val nombre: String,
    val telefono: String,
    val email: String,
    val dni: String,
    val tipo: String,
)
