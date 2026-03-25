package org.ies.tierno.applicationamani.dto.citas

data class HorarioPsicologoRequest(
    val horaInicio: Int,
    val horaFin: Int,
    val duracionSesion: Int
)
