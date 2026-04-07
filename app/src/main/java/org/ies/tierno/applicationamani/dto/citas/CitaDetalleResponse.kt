package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalTime

data class CitaDetalleResponse(
    val id: Long,
    val fecha: String,
    val hora: LocalTime,
    val pacienteId: Long? = null,
    val pacienteNombre: String? = null,
    val psicologoId: Long? = null,
    val psicologoNombre: String? = null,
    val motivo: String? = null,
    val estado: String? = null,
    val durationMinutes: Int? = null
)
