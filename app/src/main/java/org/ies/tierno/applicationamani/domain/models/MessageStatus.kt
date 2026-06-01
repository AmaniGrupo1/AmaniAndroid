package org.ies.tierno.applicationamani.domain.models

/**
 * Define los posibles estados de entrega y ciclo de vida de un mensaje de chat.
 *
 * Permite al sistema y a la interfaz de usuario reflejar el progreso
 * del envío, desde la creación local hasta la confirmación de lectura
 * o la notificación de un fallo.
 *
 * @property SENT El mensaje se ha creado localmente pero aún no se ha confirmado su entrega al servidor.
 * @property DELIVERED El mensaje ha sido recibido por el servidor y enviado al destinatario.
 * @property READ El destinatario ha abierto y leído el mensaje.
 * @property PENDING_RETRY El envío falló temporalmente y se reintentará automáticamente.
 * @property FAILED El envío falló de forma definitiva y requiere intervención del usuario.
 */
enum class MessageStatus {
    /** El mensaje se está enviando (inserción optimista en la UI). */
    SENDING,
    SENT,
    DELIVERED,
    READ,
    PENDING_RETRY,
    FAILED,
}
