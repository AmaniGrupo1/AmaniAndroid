// domain/models/ChatMessage.kt
package org.ies.tierno.applicationamani.domain.models

import androidx.compose.runtime.Immutable

/**
 * Representa el contenido de un mensaje de chat.
 *
 * Al usar una sealed class en lugar de múltiples campos opcionales en [ChatMessage],
 * el compilador garantiza exhaustividad en los `when` de la UI y evita estados imposibles
 * como tener a la vez texto e imagen en el mismo objeto.
 */
sealed class MessageContent {
    /**
     * Mensaje de texto plano.
     * @property body Contenido textual del mensaje.
     */
    data class Text(val body: String) : MessageContent()

    /**
     * Mensaje con imagen adjunta.
     * @property storageRef Ruta del archivo en Firebase Storage (NO la URL de descarga).
     * Las URLs de Storage caducan; la referencia de Storage es permanente y permite
     * regenerar la URL en cualquier momento mediante [StorageReference.downloadUrl].
     * @property caption Texto opcional que acompaña a la imagen.
     */
    data class Image(val storageRef: String, val caption: String = "") : MessageContent()

    /**
     * Mensaje con audio adjunto (nota de voz).
     * @property storageRef Ruta del archivo de audio en Firebase Storage.
     */
    data class Audio(val storageRef: String) : MessageContent()
}

/**
 * Modelo de dominio puro para un mensaje de chat.
 *
 * Esta clase es @Immutable para garantizar que Compose pueda saltarse recomposiciones
 * cuando el objeto no haya cambiado (Smart Recomposition).
 *
 * @property id Identificador único del mensaje (clave generada por Firebase push()).
 * @property senderId UID del usuario que envía el mensaje.
 * @property receiverId UID del destinatario.
 * @property content Contenido tipado del mensaje (texto, imagen o audio).
 * @property timestamp Marca de tiempo Unix en milisegundos de la creación.
 * @property status Estado actual del ciclo de vida del mensaje.
 */
@Immutable
data class ChatMessage(
    val id: String = "",
    val senderId: String = "",
    val receiverId: String = "",
    val content: MessageContent = MessageContent.Text(""),
    val timestamp: Long = System.currentTimeMillis(),
    val status: MessageStatus = MessageStatus.SENT,
)
