package org.ies.tierno.applicationamani.domain.models.diario

data class EntradaDiario(
    val id: Long = 0L,
    val titulo: String,
    val contenido: String,
    val emocion: String,
    val intensidad: Int,
    val createdAt: Long,
    val updatedAt: Long,
)
