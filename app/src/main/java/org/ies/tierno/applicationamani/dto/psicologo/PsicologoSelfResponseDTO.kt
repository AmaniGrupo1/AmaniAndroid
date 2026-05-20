package org.ies.tierno.applicationamani.dto.psicologo

/**
 * DTO de respuesta con los datos del psicólogo autenticado.
 *
 * Proporciona la información personal y profesional del psicólogo que ha
 * iniciado sesión, para su visualización en el perfil propio.
 *
 * @property idPsicologo Identificador único del psicólogo.
 * @property nombre Nombre del psicólogo.
 * @property apellido Apellido del psicólogo.
 * @property especialidad Especialidad profesional.
 * @property experiencia Años de experiencia profesional.
 * @property descripcion Descripción del psicólogo y su enfoque.
 * @property licencia Número de licencia o colegiación profesional.
 * @property telefono Número de teléfono de contacto.
 * @property email Correo electrónico.
 */
data class PsicologoSelfResponseDTO(
    val idPsicologo: Long,
    val nombre: String,
    val apellido: String,
    val especialidad: String,
    val experiencia: Int?,
    val descripcion: String?,
    val licencia: String?,
    val telefono : String?,
    val email: String
)
