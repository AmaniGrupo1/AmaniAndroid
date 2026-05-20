package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de respuesta con los datos de dirección de un paciente.
 *
 * Proporciona la información postal registrada para el paciente
 * en los endpoints de consulta de perfil y administración.
 *
 * @property calle Nombre de la calle y número.
 * @property ciudad Ciudad de residencia.
 * @property provincia Provincia de residencia.
 * @property codigoPostal Código postal.
 * @property pais País de residencia.
 */
data class DireccionResponseDTO(
    val calle: String,
    val ciudad: String? = null,
    val provincia: String? = null,
    val codigoPostal: String? = null,
    val pais: String? = null,
)
