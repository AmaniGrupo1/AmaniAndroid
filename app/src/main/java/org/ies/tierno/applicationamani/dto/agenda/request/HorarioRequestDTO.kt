package org.ies.tierno.applicationamani.dto.agenda.request

data class HorarioRequestDTO(
    val franjas: List<FranjaHorarioDTO>,
)

data class FranjaHorarioDTO(
    val diaSemana: Short,
    val horaInicio: String,
    val horaFin: String,
    val activo: Boolean,
    val motivo: String? = null,
)
