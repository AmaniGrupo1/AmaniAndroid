package org.ies.tierno.applicationamani.domain.models

data class Message(
    val id: String = "",
    val conversationId: String = "",
    val senderId: String = "",
    val content: String = "",
    val attachmentUrl: String? = null,
    val attachmentType: AttachmentType? = null,
    val attachmentName: String? = null,
    val timestamp: Long = System.currentTimeMillis(),
    val isRead: Boolean = false,
    val deliveredAt: Long? = null,
    val readBy: Map<String, Long>? = null
) {
    val isDelivered: Boolean
        get() = deliveredAt != null
}

enum class AttachmentType {
    IMAGE,
    DOCUMENT,
    AUDIO
}
