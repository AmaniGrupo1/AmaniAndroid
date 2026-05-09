package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.domain.models.MessageStatus

/**
 * Caso de uso responsable de enviar mensajes en el chat.
 *
 * Coordina el envío de mensajes a través del repositorio y gestiona la persistencia
 * offline para reintentos en caso de fallo de conexión.
 *
 * @property repository Repositorio de chat para la persistencia y envío de datos.
 */
class SendMessageUseCase(private val repository: ChatRepository) {
    /**
     * Ejecuta la lógica de envío de un mensaje.
     *
     * @param senderId Identificador del usuario remitente.
     * @param receiverId Identificador del usuario destinatario.
     * @param content Contenido textual del mensaje.
     * @param attachmentUrl URL opcional de un archivo adjunto.
     * @param attachmentType Tipo opcional del archivo adjunto.
     * @param attachmentName Nombre opcional del archivo adjunto.
     * @return [Result] que indica el éxito o fallo de la operación de envío.
     */
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType? = null,
        attachmentName: String? = null
    ): Result<Unit> {
        val result = repository.sendMessage(
            senderId,
            receiverId,
            content,
            attachmentUrl,
            attachmentType,
            attachmentName
        )
        if (result.isFailure) {
            // TC-03: chat_offlineMessage_queuesForRetry
            val offlineMessage = Message(
                senderId = senderId.toString(),
                content = content,
                attachmentUrl = attachmentUrl,
                attachmentType = attachmentType,
                attachmentName = attachmentName,
                status = MessageStatus.PENDING_RETRY
            )
            repository.saveMessageOffline(offlineMessage)
        }
        return result
    }
}
