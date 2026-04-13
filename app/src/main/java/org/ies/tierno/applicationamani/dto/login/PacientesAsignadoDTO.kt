package org.ies.tierno.applicationamani.dto.login

data class PacientesAsignadoDTO(
    val idPaciente: Long,    // Id del paciente
    val nombre: String,      // Nombre del paciente
    val apellido: String,    // Apellido del paciente
    val email: String        // Email del paciente
)