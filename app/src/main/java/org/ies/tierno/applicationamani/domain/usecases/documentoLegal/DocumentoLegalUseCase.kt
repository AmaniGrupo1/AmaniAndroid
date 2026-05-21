package org.ies.tierno.applicationamani.domain.usecases.documentoLegal

import org.ies.tierno.applicationamani.data.repositorio.DocumentoLegalRepository
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO

/**
 * Caso de uso que agrupa las operaciones CRUD de documentos legales.
 *
 * Delega en el repositorio correspondiente la creación, consulta,
 * edición y eliminación de documentos legales del sistema.
 *
 * @property repository Repositorio de documentos legales.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.DocumentoLegalRepository
 */
class DocumentoLegalUseCase(
    private val repository: DocumentoLegalRepository,
) {
    /**
     * Obtiene todos los documentos legales registrados.
     *
     * @return [Result.success] con la lista de [DocumentoLegalResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getAllDocumentos(): Result<List<DocumentoLegalResponseDTO>> = repository.getAllDocumentos()

    /**
     * Obtiene un documento legal por su identificador.
     *
     * @param idDocumento Identificador único del documento.
     * @return [Result.success] con [DocumentoLegalResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getDocumentoById(idDocumento: Long): Result<DocumentoLegalResponseDTO> = repository.getDocumentoLegal(idDocumento)

    /**
     * Crea un nuevo documento legal.
     *
     * @param request Datos del documento a crear.
     * @return [Result.success] con [DocumentoLegalResponseDTO] creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun crearDocumento(request: DocumentoLegalRequestDTO): Result<DocumentoLegalResponseDTO> = repository.crearDocumento(request)

    /**
     * Edita un documento legal existente.
     *
     * @param idDocumento Identificador único del documento a editar.
     * @param request Datos actualizados del documento.
     * @return [Result.success] con [DocumentoLegalResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO,
    ): Result<DocumentoLegalResponseDTO> = repository.editarDocumento(idDocumento, request)

    /**
     * Elimina un documento legal.
     *
     * @param idDocumento Identificador único del documento a eliminar.
     * @return [Result.success] con [Unit] si se eliminó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun eliminarDocumento(idDocumento: Long): Result<Unit> = repository.deleteDocumento(idDocumento)

    /**
     * Obtiene un documento legal filtrado por su tipo.
     *
     * @param tipo Tipo de documento (por ejemplo, "terminos", "privacidad").
     * @return [Result.success] con [DocumentoLegalResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getDocumentoByTipo(tipo: String): Result<DocumentoLegalResponseDTO> = repository.getDocumentoByTipo(tipo)
}
