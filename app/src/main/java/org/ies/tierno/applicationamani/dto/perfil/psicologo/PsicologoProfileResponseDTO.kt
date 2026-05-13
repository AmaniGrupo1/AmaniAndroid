package org.ies.tierno.applicationamani.dto.perfil.psicologo

data class PsicologoProfileResponseDTO(
    val idPsicologo: Long? = null,
    val especialidad: String? = null,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
    val usuario: UsuarioProfileResponseDTO? = null
)