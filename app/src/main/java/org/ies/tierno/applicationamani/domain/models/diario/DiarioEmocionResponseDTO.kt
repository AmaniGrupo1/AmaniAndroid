package org.ies.tierno.applicationamani.domain.models.diario

data class DiarioEmocionResponseDTO(
    val idDiario: Long,
    val fecha: String,
    val titulo: String,
    val emocion: String,
    val intensidad: Int,
    val nota: String
)
