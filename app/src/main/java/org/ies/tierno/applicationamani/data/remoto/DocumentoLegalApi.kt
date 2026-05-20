package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz Retrofit para la gestión de documentos legales (consentimientos, términos y condiciones).
 *
 * Expone los endpoints de creación, consulta, edición y eliminación de documentos legales
 * que los usuarios deben aceptar o consultar dentro de la aplicación.
 */
interface DocumentoLegalApi {
    /**
     * Lista todos los documentos legales disponibles en el sistema.
     *
     * @return Lista de respuestas con los metadatos de cada documento legal.
     */
    @GET("api/documentos-legales")
    suspend fun getAllDocumentos(): List<DocumentoLegalResponseDTO>

    /**
     * Recupera un documento legal específico por su identificador.
     *
     * @param id Identificador único del documento legal.
     * @return Respuesta con los datos completos del documento.
     */
    @GET("api/documentos-legales/{id}")
    suspend fun getDocumentoById(
        @Path("id") id: Long,
    ): DocumentoLegalResponseDTO

    /**
     * Crea un nuevo documento legal en el sistema.
     *
     * @param request Datos del documento legal a registrar.
     * @return Respuesta con el documento creado.
     */
    @POST("api/documentos-legales/crear")
    suspend fun crearDocumento(
        @Body request: DocumentoLegalRequestDTO,
    ): DocumentoLegalResponseDTO

    /**
     * Modifica un documento legal existente.
     *
     * @param id Identificador del documento a editar.
     * @param request Nuevos datos del documento.
     * @return Respuesta con el documento actualizado.
     */
    @PUT("api/documentos-legales/{id}")
    suspend fun editarDocumento(
        @Path("id") id: Long,
        @Body request: DocumentoLegalRequestDTO,
    ): DocumentoLegalResponseDTO

    /**
     * Elimina un documento legal del sistema.
     *
     * @param id Identificador único del documento a eliminar.
     */
    @DELETE("api/documentos-legales/delete/{id}")
    suspend fun eliminarDocumento(
        @Path("id") id: Long,
    )

    /**
     * Busca un documento legal por su tipo (ej. consentimiento, términos).
     *
     * @param tipo Cadena que identifica el tipo de documento legal.
     * @return Respuesta con el documento correspondiente al tipo solicitado.
     */
    @GET("api/documentos-legales/tipo/{tipo}")
    suspend fun getDocumentoByTipo(
        @Path("tipo") tipo: String,
    ): DocumentoLegalResponseDTO
}
