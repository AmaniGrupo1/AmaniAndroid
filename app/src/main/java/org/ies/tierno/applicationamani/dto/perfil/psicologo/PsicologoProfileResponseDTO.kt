package org.ies.tierno.applicationamani.dto.perfil.psicologo

import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO

data class PsicologoProfileResponseDTO(
    val idPsicologo: Long? = null,
    val especialidad: String? = null,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
    val usuario: UsuarioProfileResponseDTO? = null
)