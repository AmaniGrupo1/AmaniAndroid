package org.ies.tierno.applicationamani.domain.models

/**
 * Representa una conversación de chat entre un paciente y un psicólogo.
 *
 * Agrupa los metadatos necesarios para mostrar la bandeja de conversaciones,
 * incluyendo el último mensaje intercambiado, el estado de la conversación
 * y el contador de mensajes no leídos.
 *
 * @property id Identificador único de la conversación.
 * @property pacienteId Identificador del paciente participante.
 * @property pacienteNombre Nombre visible del paciente.
 * @property psicologoId Identificador del psicólogo participante.
 * @property psicologoNombre Nombre visible del psicólogo.
 * @property lastMessage Último mensaje registrado en la conversación.
 * @property lastMessageTime Marca de tiempo en milisegundos del último mensaje.
 * @property estado Estado actual de la conversación.
 * @property unreadCount Número de mensajes pendientes de lectura por el usuario actual.
 */
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

/**
 * Define los estados en los que puede encontrarse una conversación de chat.
 *
 * @property ACTIVA La conversación admite nuevos mensajes.
 * @property CERRADA La conversación ha sido cerrada y no admite nuevos mensajes.
 */
enum class ConversationState {
    ACTIVA,
    CERRADA,
}
