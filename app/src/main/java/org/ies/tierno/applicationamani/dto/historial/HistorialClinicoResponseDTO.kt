package org.ies.tierno.applicationamani.dto.historial

data class HistorialClinicoResponseDTO(
    val id: Long,
    val titulo: String,
    val diagnostico: String,
    val tratamiento: String,
    val observaciones: String,
    val creadoEn: String,
)
