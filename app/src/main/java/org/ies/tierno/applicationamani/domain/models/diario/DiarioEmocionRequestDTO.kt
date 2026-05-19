package org.ies.tierno.applicationamani.domain.models.diario

data class DiarioEmocionRequestDTO(
    val idPaciente: Long,
    val fecha: String,
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String,
)
