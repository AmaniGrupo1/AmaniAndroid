package org.ies.tierno.applicationamani.data.remoto

import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

/**
 * DTO para la petición de envío de mensaje.
 *
 * @property idSender Identificador del remitente.
 * @property idReceiver Identificador del destinatario.
 * @property mensaje Contenido textual del mensaje.
 * @property idCita Identificador de la cita asociada, opcional.
 */
data class SendMessageRequest(
    val idSender: Long,
    val idReceiver: Long,
    val mensaje: String,
    val idCita: Long? = null,
)

/**
 * DTO con la respuesta del servidor tras enviar un mensaje.
 *
 * @property idMensaje Identificador asignado al mensaje.
 * @property idSender Identificador del remitente.
 * @property idReceiver Identificador del destinatario.
 * @property mensaje Contenido del mensaje.
 * @property leido Estado de lectura del mensaje.
 */
data class SendMessageResponse(
    val idMensaje: Long,
    val idSender: Long,
    val idReceiver: Long,
    val mensaje: String,
    val leido: Boolean,
)

/**
 * Interfaz Retrofit para el envío de mensajes de chat.
 *
 * Define el endpoint REST para enviar mensajes entre usuarios.
 * La mensajería en tiempo real se gestiona a través de Firebase.
 */
interface ChatApi {
    /**
     * Envía un mensaje de chat a través de la API REST.
     *
     * @param request DTO con los datos del mensaje a enviar.
     * @return [Response] con [SendMessageResponse] incluyendo el ID asignado.
     */
    @POST("/api/chats/messages")
    suspend fun sendMessage(
        @Body request: SendMessageRequest,
    ): Response<SendMessageResponse>
}
