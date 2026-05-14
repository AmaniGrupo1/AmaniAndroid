package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

interface DocumentoLegalApi {

    @GET("api/documentos-legales")
    suspend fun getAllDocumentos(): List<DocumentoLegalResponseDTO>

    @GET("api/documentos-legales/{id}")
    suspend fun getDocumentoById(
        @Path("id") id: Long
    ): DocumentoLegalResponseDTO

    @POST("api/documentos-legales/crear")
    suspend fun crearDocumento(
        @Body request: DocumentoLegalRequestDTO
    ): DocumentoLegalResponseDTO

    @PUT("api/documentos-legales/{id}")
    suspend fun editarDocumento(
        @Path("id") id: Long,
        @Body request: DocumentoLegalRequestDTO
    ): DocumentoLegalResponseDTO

    @DELETE("api/documentos-legales/delete/{id}")
    suspend fun eliminarDocumento(
        @Path("id") id: Long
    )

    @GET("api/documentos-legales/tipo/{tipo}")
    suspend fun getDocumentoByTipo(
        @Path("tipo") tipo: String
    ): DocumentoLegalResponseDTO

}