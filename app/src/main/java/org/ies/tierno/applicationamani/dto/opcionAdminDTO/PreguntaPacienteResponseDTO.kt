package org.ies.tierno.applicationamani.dto.opcionAdminDTO

data class PreguntaPacienteResponseDTO(
    val texto: String,
    val tipo: String,
    val opciones: List<String>
)