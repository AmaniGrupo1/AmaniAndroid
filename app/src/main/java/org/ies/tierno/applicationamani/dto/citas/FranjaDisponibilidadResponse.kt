package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalTime

data class FranjaDisponibilidadResponse(
    val hora: LocalTime,
    val ocupada: Boolean,
    val descripcion: String? = null
)
