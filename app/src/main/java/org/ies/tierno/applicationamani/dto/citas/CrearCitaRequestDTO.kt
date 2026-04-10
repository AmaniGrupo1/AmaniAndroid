package org.ies.tierno.applicationamani.dto.citas

data class CrearCitaRequestDTO(
    val idPsicologo: Long,
    val idPaciente: Long,
    val startDatetime: String,
    val duracionMinutos: Int? = null,
    val motivo: String? = null
)