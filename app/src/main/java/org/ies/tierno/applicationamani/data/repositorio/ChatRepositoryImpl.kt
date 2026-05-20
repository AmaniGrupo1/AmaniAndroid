package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.remoto.ChatApi
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.data.remoto.SendMessageRequest
import org.ies.tierno.applicationamani.domain.models.Message

/**
 * Implementación concreta de [ChatRepository].
 *
 * Delega las operaciones de mensajería en [ChatFirebaseService] para la
 * comunicación en tiempo real y en [ChatApi] para el envío HTTP de mensajes.
 *
 * @property chatFirebaseService Servicio Firebase para mensajería en tiempo real.
 * @property chatApi Cliente Retrofit para operaciones REST de chat.
 */
class ChatRepositoryImpl(
    private val chatFirebaseService: ChatFirebaseService,
    private val chatApi: ChatApi,
) : ChatRepository {
    override fun observeMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Flow<List<Message>> = chatFirebaseService.observeMessages(currentUserId, otherUserId)

    /**
     * Envía un mensaje a través de la API REST y actualiza los adjuntos en Firebase.
     *
     * Si el contenido está vacío pero hay un adjunto, genera un texto descriptivo
     * automático según el tipo de archivo.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @param content Contenido textual del mensaje.
     * @param attachmentUrl URL del archivo adjunto en almacenamiento remoto.
     * @param attachmentType Tipo de adjunto (imagen, documento o audio).
     * @param attachmentName Nombre descriptivo del adjunto.
     * @return [Result] que indica éxito o fallo en el envío.
     */
    override suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String?,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType?,
        attachmentName: String?,
    ): Result<Unit> =
        try {
            val finalContent =
                if (content.isBlank() && attachmentType != null) {
                    when (attachmentType) {
                        org.ies.tierno.applicationamani.domain.models.AttachmentType.IMAGE -> "📸 Imagen"
                        org.ies.tierno.applicationamani.domain.models.AttachmentType.DOCUMENT -> "📄 Documento"
                        org.ies.tierno.applicationamani.domain.models.AttachmentType.AUDIO -> "🎙️ Nota de voz"
                    }
                } else {
                    content
                }

            val response =
                chatApi.sendMessage(
                    SendMessageRequest(
                        idSender = senderId,
                        idReceiver = receiverId,
                        mensaje = finalContent,
                        idCita = null,
                    ),
                )
            if (response.isSuccessful) {
                android.util.Log.d("ChatRepository", "Mensaje enviado OK — HTTP ${response.code()}")
                val body = response.body()
                if (body != null && attachmentUrl != null) {
                    chatFirebaseService.updateMessageAttachment(
                        senderId,
                        receiverId,
                        body.idMensaje,
                        attachmentUrl,
                        attachmentType?.name,
                        attachmentName,
                    )
                }
                Result.success(Unit)
            } else {
                android.util.Log.e(
                    "ChatRepository",
                    "Error enviando mensaje — HTTP ${response.code()}: ${response.message()}. Body: ${response.errorBody()?.string()}",
                )
                Result.failure(Exception("Error sending message: ${response.code()} ${response.message()}"))
            }
        } catch (e: Exception) {
            android.util.Log.e("ChatRepository", "Excepción enviando mensaje: ${e.message}", e)
            Result.failure(e)
        }

    /**
     * Marca todos los mensajes de una conversación como leídos en Firebase.
     *
     * @param currentUserId Identificador del usuario que lee.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] que indica éxito o fallo de la operación.
     */
    override suspend fun markMessagesAsRead(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit> = chatFirebaseService.markMessagesAsRead(currentUserId, otherUserId)

    /**
     * Obtiene el historial de mensajes desde Firebase.
     *
     * @param currentUserId Identificador del usuario actual.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] con la lista de [Message] del historial.
     */
    override suspend fun getMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<List<Message>> = chatFirebaseService.getMessages(currentUserId, otherUserId)

    override fun observeTyping(
        userId1: Long,
        userId2: Long,
    ): Flow<Boolean> = chatFirebaseService.observeTyping(userId1, userId2)

    override suspend fun startTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> = chatFirebaseService.startTyping(senderId, receiverId)

    override suspend fun stopTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> = chatFirebaseService.stopTyping(senderId, receiverId)

    override fun observeUserOnline(userId: Long): Flow<Boolean> = chatFirebaseService.observeUserOnline(userId)

    override suspend fun updateUserOnline(
        userId: Long,
        isOnline: Boolean,
    ): Result<Unit> = chatFirebaseService.updateUserOnline(userId, isOnline)

    override suspend fun updateLastSeen(
        userId: Long,
        lastSeen: Long,
    ): Result<Unit> = chatFirebaseService.updateLastSeen(userId, lastSeen)

    /**
     * Marca un mensaje como entregado. Actualmente delegado como operación no implementada.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Result] exitoso por defecto.
     */
    override suspend fun markMessageDelivered(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> {
        // Simplificado: no necesario por ahora
        return Result.success(Unit)
    }

    /**
     * Marca un mensaje individual como leído. Actualmente delegado como operación no implementada.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario que lo ha leído.
     * @return [Result] exitoso por defecto.
     */
    override suspend fun markMessageAsRead(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> {
        // Simplificado: no necesario por ahora
        return Result.success(Unit)
    }

    /**
     * Observa el estado de entrega. Actualmente emite siempre `false`.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `false` por defecto.
     */
    override fun observeMessageDelivery(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> {
        // Simplificado: no necesario por ahora
        return kotlinx.coroutines.flow.flow { emit(false) }
    }

    /**
     * Observa el estado de lectura. Actualmente emite siempre `false`.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `false` por defecto.
     */
    override fun observeMessageRead(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> {
        // Simplificado: no necesario por ahora
        return kotlinx.coroutines.flow.flow { emit(false) }
    }

    /**
     * Almacena un mensaje localmente para envío diferido.
     *
     * Actualmente es una operación no implementada que retorna éxito por defecto.
     * En una implementación real, persistiría el mensaje en Room o DataStore.
     *
     * @param message Mensaje a almacenar localmente.
     * @return [Result] exitoso por defecto.
     */
    override suspend fun saveMessageOffline(message: Message): Result<Unit> {
        // TC-03: chat_offlineMessage_queuesForRetry
        // En una implementación real, aquí se guardaría en Room o DataStore
        return Result.success(Unit)
    }
}
