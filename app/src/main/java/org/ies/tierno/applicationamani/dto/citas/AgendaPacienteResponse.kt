package org.ies.tierno.applicationamani.dto.citas

data class AgendaPacienteResponse(
    val idPaciente: Long,
    val idPsicologoAsignado: Long? = null,
    val citas: List<CitaDetalleResponse> = emptyList()
)
