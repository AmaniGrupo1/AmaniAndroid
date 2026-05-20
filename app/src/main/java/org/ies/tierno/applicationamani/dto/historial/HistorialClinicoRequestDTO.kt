package org.ies.tierno.applicationamani.dto.historial.request

data class HistorialClinicoRequestDTO(
    val idPaciente: Long,
    val titulo: String,
    val diagnostico: String? = null,
    val tratamiento: String? = null,
    val observaciones: String? = null,
)
