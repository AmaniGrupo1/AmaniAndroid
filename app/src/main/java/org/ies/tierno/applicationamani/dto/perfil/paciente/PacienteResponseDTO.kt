package org.ies.tierno.applicationamani.dto.perfil.paciente


data class PacienteResponseDTO(
    val paciente: PacienteProfileResponseDTO,
    val token: String?
)