package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud con los datos de dirección de un paciente.
 *
 * Se incluye dentro de [PacienteRequest] para registrar la dirección
 * postal del paciente en el backend.
 *
 * @property idPaciente Identificador del paciente asociado, o `null` si es un registro nuevo.
 * @property calle Nombre de la calle y número.
 * @property ciudad Ciudad de residencia, o `null`.
 * @property provincia Provincia de residencia, o `null`.
 * @property codigoPostal Código postal, o `null`.
 * @property pais País de residencia, o `null`.
 * @property descripcion Descripción adicional de la dirección, o `null`.
 */
data class DireccionRequest(
    val idPaciente: Long? = null,
    val calle: String,
    val ciudad: String? = null,
    val provincia: String? = null,
    val codigoPostal: String? = null,
    val pais: String? = null,
    val descripcion: String? = null
)