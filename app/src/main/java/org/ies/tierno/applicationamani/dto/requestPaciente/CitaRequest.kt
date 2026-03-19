package org.ies.tierno.applicationamani.dto.requestPaciente

data class CitaRequest(
    val idPaciente: Long,
    val idPsicologo: Long,
    val startDatetime: String, // "2026-03-18T10:30:00"
    val durationMinutes: Int? = null,
    val estado: String? = null,
    val motivo: String? = null
)