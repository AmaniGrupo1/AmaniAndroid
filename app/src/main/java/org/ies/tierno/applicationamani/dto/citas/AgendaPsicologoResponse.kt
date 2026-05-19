package org.ies.tierno.applicationamani.dto.citas

data class AgendaPsicologoResponse(
    val horaInicio: Int = 8,
    val horaFin: Int = 20,
    val duracionSesion: Int = 60,
    val diasNoDisponibles: List<String> = emptyList(),
    val citas: List<CitaDetalleResponse> = emptyList(),
)
