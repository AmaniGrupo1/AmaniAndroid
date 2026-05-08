package org.ies.tierno.applicationamani.dto.documentoLegal

data class DocumentoLegalRequestDTO(
    val tipo: String,
    val titulo: String,
    val contenido: String,
    val icono: String?,
    val ordenVisualizacion: Int,
    val version: String?,
    val activo: Boolean
)