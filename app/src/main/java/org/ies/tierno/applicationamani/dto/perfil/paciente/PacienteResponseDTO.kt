package org.ies.tierno.applicationamani.dto.perfil.paciente

import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO

data class PacienteResponseDTO(
    val paciente: PacienteProfileResponseDTO,
    val token: String?
)