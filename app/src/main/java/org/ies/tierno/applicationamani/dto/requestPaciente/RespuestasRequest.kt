package org.ies.tierno.applicationamani.dto.requestPaciente

data class RespuestasRequest(
    val idPregunta: Long,
    val idOpcion: Long,
    val texto: String? = null
)