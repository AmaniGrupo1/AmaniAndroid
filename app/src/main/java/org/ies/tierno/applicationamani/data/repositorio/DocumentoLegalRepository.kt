package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.DocumentoLegalApi
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO

class DocumentoLegalRepository(val documentoLegalApi: DocumentoLegalApi) {

    suspend fun getDocumentoLegal(idDocumento: Long): Result<DocumentoLegalResponseDTO>{
       return try{
           val response = documentoLegalApi.getDocumentoById(idDocumento)
           if (response != null){
               Result.success(response)
           } else {
               Result.failure(Exception("Documento legal no encontrado"))
           }
       }catch (e: Exception){
           return Result.failure(e)
       }
    }

    suspend fun getAllDocumentos(): Result<List<DocumentoLegalResponseDTO>> {
        return try {
            val response = documentoLegalApi.getAllDocumentos()

            Result.success(response)

        } catch (e: Exception) {
            Result.failure(Exception("Error al obtener documentos: ${e.message}", e))
        }
    }


    suspend fun deleteDocumento(idDocumento: Long): Result<Unit> {
        return try {
            documentoLegalApi.eliminarDocumento(idDocumento)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(Exception("Error al eliminar documento: ${e.message}", e))
        }
    }

    suspend fun crearDocumento(
        request: DocumentoLegalRequestDTO
    ): Result<DocumentoLegalResponseDTO> {
        return try {
            val response = documentoLegalApi.crearDocumento(request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(Exception("Error al crear documento: ${e.message}", e))
        }
    }

    // =========================
    // EDITAR
    // =========================
    suspend fun editarDocumento(
        idDocumento: Long,
        request: DocumentoLegalRequestDTO
    ): Result<DocumentoLegalResponseDTO> {
        return try {
            val response = documentoLegalApi.editarDocumento(idDocumento, request)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(Exception("Error al editar documento: ${e.message}", e))
        }
    }

    suspend fun getDocumentoByTipo(
        tipo: String
    ): Result<DocumentoLegalResponseDTO> {

        return try {

            val response =
                documentoLegalApi.getDocumentoByTipo(tipo)

            Result.success(response)

        } catch (e: Exception) {

            Result.failure(
                Exception(
                    "Error al obtener documento por tipo: ${e.message}",
                    e
                )
            )
        }
    }
}