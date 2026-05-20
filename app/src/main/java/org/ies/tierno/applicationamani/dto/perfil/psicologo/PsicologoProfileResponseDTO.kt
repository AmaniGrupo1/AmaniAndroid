package org.ies.tierno.applicationamani.dto.perfil.psicologo

/**
 * DTO de respuesta con los datos del perfil de un psicólogo.
 *
 * Incluye los datos profesionales (especialidad, experiencia, licencia)
 * junto con los datos del usuario base asociado.
 *
 * @property idPsicologo Identificador único del psicólogo.
 * @property especialidad Especialidad profesional.
 * @property experiencia Años de experiencia profesional.
 * @property descripcion Descripción del perfil y enfoque profesional.
 * @property licencia Número de licencia o colegiación.
 * @property usuario Datos del usuario base como [UsuarioProfileResponseDTO].
 */
data class PsicologoProfileResponseDTO(
    val idPsicologo: Long? = null,
    val especialidad: String? = null,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
    val usuario: UsuarioProfileResponseDTO? = null,
)
