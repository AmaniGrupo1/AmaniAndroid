package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.Message

/**
 * Repositorio para la gestión de mensajería y chat en tiempo real.
 *
 * Define las operaciones para el envío y recepción de mensajes, indicadores de
 * escritura, estado de conexión y confirmaciones de entrega/lectura entre usuarios.
 */
interface ChatRepository {
    /**
     * Observa el flujo de mensajes entre dos usuarios en tiempo real.
     *
     * @param currentUserId Identificador del usuario actual.
     * @param otherUserId Identificador del otro participante en la conversación.
     * @return [Flow] que emite la lista actualizada de [Message] entre ambos usuarios.
     */
    fun observeMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Flow<List<Message>>

    /**
     * Envía un mensaje de un usuario a otro.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @param content Contenido textual del mensaje.
     * @param attachmentUrl URL del archivo adjunto, si lo hay.
     * @param attachmentType Tipo de adjunto (imagen, documento o audio).
     * @param attachmentName Nombre descriptivo del adjunto.
     * @return [Result] que indica éxito o fallo en el envío.
     */
    suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType? = null,
        attachmentName: String? = null,
    ): Result<Unit>

    /**
     * Marca todos los mensajes de una conversación como leídos.
     *
     * @param currentUserId Identificador del usuario que lee los mensajes.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] que indica éxito o fallo de la operación.
     */
    suspend fun markMessagesAsRead(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit>

    /**
     * Obtiene el historial de mensajes entre dos usuarios.
     *
     * @param currentUserId Identificador del usuario actual.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] con la lista de [Message] del historial.
     */
    suspend fun getMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<List<Message>>

    // Typing
    /**
     * Observa el indicador de escritura entre dos usuarios.
     *
     * @param userId1 Identificador del primer usuario.
     * @param userId2 Identificador del segundo usuario.
     * @return [Flow] que emite `true` cuando el otro usuario está escribiendo.
     */
    fun observeTyping(
        userId1: Long,
        userId2: Long,
    ): Flow<Boolean>

    /**
     * Notifica que el usuario ha comenzado a escribir.
     *
     * @param senderId Identificador del usuario que escribe.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun startTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit>

    /**
     * Notifica que el usuario ha dejado de escribir.
     *
     * @param senderId Identificador del usuario que escribe.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun stopTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit>

    // Online status
    /**
     * Observa el estado de conexión de un usuario.
     *
     * @param userId Identificador del usuario a monitorizar.
     * @return [Flow] que emite `true` cuando el usuario está en línea.
     */
    fun observeUserOnline(userId: Long): Flow<Boolean>

    /**
     * Actualiza el estado de conexión de un usuario.
     *
     * @param userId Identificador del usuario.
     * @param isOnline `true` si el usuario está en línea.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun updateUserOnline(
        userId: Long,
        isOnline: Boolean,
    ): Result<Unit>

    /**
     * Actualiza la marca de tiempo de la última actividad del usuario.
     *
     * @param userId Identificador del usuario.
     * @param lastSeen Marca de tiempo en milisegundos de la última actividad.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun updateLastSeen(
        userId: Long,
        lastSeen: Long,
    ): Result<Unit>

    // Delivery & Read receipts
    /**
     * Marca un mensaje como entregado al destinatario.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun markMessageDelivered(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit>

    /**
     * Marca un mensaje individual como leído.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario que lo ha leído.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun markMessageAsRead(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit>

    /**
     * Observa el estado de entrega de un mensaje específico.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando el mensaje ha sido entregado.
     */
    fun observeMessageDelivery(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean>

    /**
     * Observa el estado de lectura de un mensaje específico.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando el mensaje ha sido leído.
     */
    fun observeMessageRead(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean>

    /**
     * Almacena un mensaje localmente para envío diferido cuando no hay conexión.
     *
     * @param message Mensaje a almacenar en el almacenamiento local.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun saveMessageOffline(message: Message): Result<Unit>
}
