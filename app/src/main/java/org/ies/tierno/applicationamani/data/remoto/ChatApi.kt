package org.ies.tierno.applicationamani.data.remoto

import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

data class SendMessageRequest(
    val idSender: Long,
    val idReceiver: Long,
    val mensaje: String,
    val idCita: Long? = null,
)

data class SendMessageResponse(
    val idMensaje: Long,
    val idSender: Long,
    val idReceiver: Long,
    val mensaje: String,
    val leido: Boolean,
)

interface ChatApi {
    @POST("/api/chats/messages")
    suspend fun sendMessage(
        @Body request: SendMessageRequest,
    ): Response<SendMessageResponse>
}
