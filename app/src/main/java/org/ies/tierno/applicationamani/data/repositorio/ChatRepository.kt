package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.Message

interface ChatRepository {
    fun observeMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Flow<List<Message>>

    suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType? = null,
        attachmentName: String? = null,
    ): Result<Unit>

    suspend fun markMessagesAsRead(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit>

    suspend fun getMessages(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<List<Message>>

    // Typing
    fun observeTyping(
        userId1: Long,
        userId2: Long,
    ): Flow<Boolean>

    suspend fun startTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit>

    suspend fun stopTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit>

    // Online status
    fun observeUserOnline(userId: Long): Flow<Boolean>

    suspend fun updateUserOnline(
        userId: Long,
        isOnline: Boolean,
    ): Result<Unit>

    suspend fun updateLastSeen(
        userId: Long,
        lastSeen: Long,
    ): Result<Unit>

    // Delivery & Read receipts
    suspend fun markMessageDelivered(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit>

    suspend fun markMessageAsRead(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit>

    fun observeMessageDelivery(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean>

    fun observeMessageRead(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean>

    suspend fun saveMessageOffline(message: Message): Result<Unit>
}
