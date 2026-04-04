package org.ies.tierno.applicationamani.dto.citas


data class BloqueoRequestDTO(
    val fecha: String,
    val horaInicio: String,
    val horaFin: String,
    val motivo: String? = null
)