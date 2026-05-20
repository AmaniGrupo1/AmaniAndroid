package org.ies.tierno.applicationamani.dto.citas

data class HistorialCitaResponseDTO(

    val idCita: Long,

    val fechaHora: String,

    val duracionMinutos: Int,

    val estado: String,

    val motivo: String?,

    val modalidad: String,

    val nombrePaciente: String,

    val nombrePsicologo: String,

    val tipoTerapia: String,

    val precio: Double,

    val estadoPago: String
)