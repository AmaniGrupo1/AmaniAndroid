package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.DocumentoLegalApi
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO

/**
 * Repositorio para la gestión de documentos legales.
 *
 * Proporciona operaciones CRUD para documentos legales del sistema (términos,
 * políticas de privacidad, consentimientos, etc.) a través de la API REST.
 *
 * @property documentoLegalApi Interfaz Retrofit para los endpoints de documentos legales.
 */
class DocumentoLegalRepository(
    val documentoLegalApi: DocumentoLegalApi,
) {
    /**
     * Obtiene un documento legal por su identificador.
     *
     * @param idDocumento Identificador único del documento.
     * @return [Result] con [DocumentoLegalResponseDTO] si se encuentra, o error en caso contrario.
     */
    suspend fun getDocumentoLegal(idDocumento: Long): Result<DocumentoLegalResponseDTO> {
        return try {
            val response = documentoLegalApi.getDocumentoById(idDocumento)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    /**
     * Obtiene la lista completa de todos los documentos legales.
     *
     * @return [Result] con la lista de [DocumentoLegalResponseDTO].
     */
    suspend fun getAllDocumentos(): Result<List<DocumentoLegalResponseDTO>> =
        try {
            val response = documentoLegalApi.getAllDocumentos()

            Result.success(response)
        } catch (e: Exception) {
            Result.failure(Exception("Error al obtener documentos: ${e.message}", e))
        }

    /**
     * Elimina un documento legal del sistema.
     *
     * @param idDocumento Identificador del documento a eliminar.
     * @return [Result] que indica éxito o fallo de la operación.
     */
    suspend fun deleteDocumento(idDocumento: Long): Result<Unit> =
        try {
            documentoLegalApi.eliminarDocumento(idDocumento)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(Exception("Error al eliminar documento: ${e.message}", e))
        }

    /**
     * Crea un nuevo documento legal en el sistema.
     *
     * @param request DTO con los datos del documento a crear.
     * @return [Result] con [DocumentoLegalResponseDTO] del documento creado.
     */
    suspend fun crearDocumento(request: DocumentoLegalRequestDTO): Result<DocumentoLegalResponseDTO> =
        try {
            val response = documentoLegalApi.crearDocumento(request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(Exception("Error al crear documento: ${e.message}", e))
        }

    // =========================
    // EDITAR
    // =========================
    /**
     * Edita un documento legal existente.
     *
     * @param idDocumento Identificador del documento a modificar.
     * @param request DTO con los nuevos datos del documento.
     * @return [Result] con [DocumentoLegalResponseDTO] actualizado.
     */
    suspend fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO,
    ): Result<DocumentoLegalResponseDTO> =
        try {
            val response = documentoLegalApi.editarDocumento(idDocumento, request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(Exception("Error al editar documento: ${e.message}", e))
        }

    /**
     * Obtiene un documento legal filtrado por su tipo.
     *
     * @param tipo Categoría del documento (ej. "terms", "privacy").
     * @return [Result] con [DocumentoLegalResponseDTO] correspondiente al tipo.
     */
    suspend fun getDocumentoByTipo(tipo: String): Result<DocumentoLegalResponseDTO> =
        try {
            val response =
                documentoLegalApi.getDocumentoByTipo(tipo)

            Result.success(response)
        } catch (e: Exception) {
            Result.failure(
                Exception(
                    "Error al obtener documento por tipo: ${e.message}",
                    e,
                ),
            )
        }
}
