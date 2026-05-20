package org.ies.tierno.applicationamani.domain.models

data class Conversation(
    val id: String = "",
    val pacienteId: String = "",
    val pacienteNombre: String = "",
    val psicologoId: String = "",
    val psicologoNombre: String = "",
    val lastMessage: String = "",
    val lastMessageTime: Long = System.currentTimeMillis(),
    val estado: ConversationState = ConversationState.ACTIVA,
    val unreadCount: Int = 0,
)

enum class ConversationState {
    ACTIVA,
    CERRADA,
}
