package org.ies.tierno.applicationamani.dto.perfil.psicologo

import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO

data class UpdatePsicologoRequestDTO(
    val especialidad: String?,
    val experiencia: Int?,
    val descripcion: String?,
    val licencia: String?,
    val usuario: UsuarioUpdateDTO?,
)
