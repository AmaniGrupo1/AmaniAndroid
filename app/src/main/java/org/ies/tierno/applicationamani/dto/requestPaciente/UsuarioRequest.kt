package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.domain.models.enumm.Rol

data class UsuarioRequest(
    val id: Long? = null,
    val nombre: String,
    val dni: String,
    val apellido: String,
    val email: String,
    val password: String,
    val rol: Rol, // "paciente", "admin", "psicologo"
    val activo: Boolean? = true,
)
