package org.ies.tierno.applicationamani.dto.documentoLegal

/**
 * DTO de solicitud para crear o actualizar un documento legal.
 *
 * Permite al administrador gestionar documentos como términos y condiciones,
 * política de privacidad y avisos legales visibles para los usuarios.
 *
 * @property tipo Tipo de documento (p. ej. «terminos», «privacidad»).
 * @property titulo Título descriptivo del documento.
 * @property contenido Contenido completo del documento en texto o HTML.
 * @property icono Identificador o URL del icono asociado, o `null`.
 * @property ordenVisualizacion Orden de aparición en la lista de documentos.
 * @property version Versión del documento, o `null` si no se versiona.
 * @property activo Indica si el documento está visible para los usuarios.
 */
data class DocumentoLegalRequestDTO(
    val tipo: String,
    val titulo: String,
    val contenido: String,
    val icono: String?,
    val ordenVisualizacion: Int,
    val version: String?,
    val activo: Boolean,
)
