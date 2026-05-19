package org.ies.tierno.applicationamani.dto.documentoLegal

import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal

data class DocumentoLegalResponseDTO(
    val idDocumento: Long,
    val tipo: TipoDocumentoLegal,
    val titulo: String,
    val contenido: String,
    val icono: String?,
    val ordenVisualizacion: Int,
    val version: String?,
    val activo: Boolean,
    val creadoEn: String,
    val actualizadoEn: String,
)
