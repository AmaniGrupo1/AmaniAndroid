package org.ies.tierno.applicationamani.domain.models.test

data class RespuestasRequestDTO(
    val idPregunta : Long,
    val idOpcion : Long?,
    val texto : String?
)