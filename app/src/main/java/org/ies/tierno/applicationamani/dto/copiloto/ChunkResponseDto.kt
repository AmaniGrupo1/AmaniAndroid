package org.ies.tierno.applicationamani.dto.copiloto


data class ChunkResponseDto(
    val idChunk: Long,
    val chunkIndex: Int,
    val contenido: String,
    val documentoId: Long?,
    val nombreDocumento: String?,
    val creadoEn: String
)