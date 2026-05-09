package org.ies.tierno.applicationamani.domain.models

/**
 * Representa un mensaje dentro de una conversación de chat.
 *
 * Contiene la información relativa al contenido, remitente, archivos adjuntos
 * y el estado de entrega y lectura del mensaje.
 *
 * @property id Identificador único del mensaje.
 * @property conversationId Identificador de la conversación a la que pertenece el mensaje.
 * @property senderId Identificador del usuario que envía el mensaje.
 * @property content Contenido textual del mensaje.
 * @property attachmentUrl URL del archivo adjunto, si existe.
 * @property attachmentType Tipo de archivo adjunto (imagen, documento, audio).
 * @property attachmentName Nombre original del archivo adjunto.
 * @property timestamp Marca de tiempo en milisegundos de la creación del mensaje.
 * @property isRead Indica si el mensaje ha sido leído por el destinatario.
 * @property deliveredAt Marca de tiempo en milisegundos de la entrega del mensaje.
 * @property readBy Mapa de identificadores de usuarios y el momento en que leyeron el mensaje.
 * @property status Estado actual del mensaje (enviado, entregado, leído, error).
 */
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
    val readBy: Map<String, Long>? = null,
    val status: MessageStatus = MessageStatus.SENT
) {
    /**
     * Determina si el mensaje ha sido entregado basándose en la marca de tiempo [deliveredAt].
     */
    val isDelivered: Boolean
        get() = deliveredAt != null
}

/**
 * Define los tipos de archivos adjuntos soportados en el chat.
 */
enum class AttachmentType {
    /** Archivos de imagen (JPG, PNG, etc.). */
    IMAGE,
    /** Documentos de texto o PDF. */
    DOCUMENT,
    /** Notas de voz o archivos de audio. */
    AUDIO
}
