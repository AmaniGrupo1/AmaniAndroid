package org.ies.tierno.applicationamani.dto.documentoLegal

import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal

/**
 * DTO de respuesta con los datos de un documento legal.
 *
 * Proporciona el contenido completo del documento, metadatos de versión
 * y las fechas de creación y última actualización.
 *
 * @property idDocumento Identificador único del documento.
 * @property tipo Tipo de documento como [TipoDocumentoLegal], o `null`.
 * @property titulo Título descriptivo del documento.
 * @property contenido Contenido completo del documento.
 * @property icono Identificador o URL del icono asociado.
 * @property ordenVisualizacion Orden de aparición en la lista.
 * @property version Versión del documento.
 * @property activo Indica si el documento está visible.
 * @property creadoEn Fecha de creación en formato ISO 8601.
 * @property actualizadoEn Fecha de última actualización en formato ISO 8601.
 */
data class DocumentoLegalResponseDTO(
    val idDocumento: Long,
    val tipo: TipoDocumentoLegal?,
    val titulo: String,
    val contenido: String,
    val icono: String?,
    val ordenVisualizacion: Int,
    val version: String?,
    val activo: Boolean,
    val creadoEn: String,
    val actualizadoEn: String,
)
