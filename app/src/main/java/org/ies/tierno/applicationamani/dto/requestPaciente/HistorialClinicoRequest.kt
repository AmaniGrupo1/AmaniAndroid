package org.ies.tierno.applicationamani.dto.requestPaciente

data class HistorialClinicoRequest(
    val idPaciente: Long,
    val titulo: String,
    val diagnostico: String? = null,
    val tratamiento: String? = null,
    val observaciones: String? = null
)