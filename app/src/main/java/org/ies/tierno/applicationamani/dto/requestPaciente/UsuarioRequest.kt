    package org.ies.tierno.applicationamani.dto.requestPaciente

    data class UsuarioRequest(
        val nombre: String,
        val apellido: String,
        val email: String,
        val password: String,
        val rol: String,      // "paciente", "admin", "psicologo"
        val activo: Boolean? = true
    )