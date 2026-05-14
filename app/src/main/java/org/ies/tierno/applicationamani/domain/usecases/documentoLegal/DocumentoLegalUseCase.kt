package org.ies.tierno.applicationamani.domain.usecases.documentoLegal

import org.ies.tierno.applicationamani.data.repositorio.DocumentoLegalRepository
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO

class DocumentoLegalUseCase(
    private val repository: DocumentoLegalRepository
) {

    // =========================
    // OBTENER TODOS
    // =========================
    suspend fun getAllDocumentos(): Result<List<DocumentoLegalResponseDTO>> {
        return repository.getAllDocumentos()
    }

    // =========================
    // OBTENER POR ID
    // =========================
    suspend fun getDocumentoById(idDocumento: Long): Result<DocumentoLegalResponseDTO> {
        return repository.getDocumentoLegal(idDocumento)
    }

    // =========================
    // CREAR
    // =========================
    suspend fun crearDocumento(
        request: DocumentoLegalRequestDTO
    ): Result<DocumentoLegalResponseDTO> {
        return repository.crearDocumento(request)
    }

    // =========================
    // EDITAR
    // =========================
    suspend fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO
    ): Result<DocumentoLegalResponseDTO> {
        return repository.editarDocumento(idDocumento, request)
    }

    // =========================
    // ELIMINAR
    // =========================
    suspend fun eliminarDocumento(
        idDocumento: Long
    ): Result<Unit> {
        return repository.deleteDocumento(idDocumento)
    }


    suspend fun getDocumentoByTipo(
        tipo: String
    ): Result<DocumentoLegalResponseDTO> {

        return repository.getDocumentoByTipo(tipo)
    }


}