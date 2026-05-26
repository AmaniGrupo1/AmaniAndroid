package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.domain.models.Message
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Elementos de la lista de chat, que pueden ser mensajes o separadores de fecha.
 *
 * @see MessageItem
 * @see DateSeparator
 */
sealed class ChatListItem {
    data class MessageItem(
        val msg: Message,
        val isFirstInGroup: Boolean,
        val isLastInGroup: Boolean,
    ) : ChatListItem()

    data class DateSeparator(
        val label: String,
    ) : ChatListItem()
}

/**
 * Construye la lista de elementos de chat a partir de los mensajes ordenados.
 *
 * Agrupa mensajes consecutivos del mismo remitente e inserta separadores
 * de fecha entre días distintos. El resultado se invierte para mostrar
 * los mensajes más recientes al final de la lista.
 *
 * @param messages Lista de mensajes a procesar.
 * @param currentUserId Identificador del usuario actual para el agrupamiento.
 * @return Lista de [ChatListItem] lista para renderizar en un [LazyColumn].
 */
fun buildChatItems(
    messages: List<Message>,
    currentUserId: String,
): List<ChatListItem> {
    if (messages.isEmpty()) return emptyList()

    val sortedAsc = messages.sortedBy { it.timestamp }
    val items = mutableListOf<ChatListItem>()
    var lastDate: LocalDate? = null

    for (i in sortedAsc.indices) {
        val msg = sortedAsc[i]
        val messageDate =
            Instant
                .ofEpochMilli(msg.timestamp)
                .atZone(ZoneId.systemDefault())
                .toLocalDate()

        if (lastDate != messageDate) {
            lastDate = messageDate
            val label =
                when {
                    messageDate == LocalDate.now() -> "Hoy"
                    messageDate == LocalDate.now().minusDays(1) -> "Ayer"
                    else ->
                        messageDate.format(
                            DateTimeFormatter.ofPattern("d MMM yyyy", Locale.forLanguageTag("es")),
                        )
                }
            items.add(ChatListItem.DateSeparator(label))
        }

        fun Message.toLocalDate(): LocalDate =
            Instant.ofEpochMilli(timestamp).atZone(ZoneId.systemDefault()).toLocalDate()

        val prevMsg = if (i > 0) sortedAsc[i - 1] else null
        val nextMsg = if (i < sortedAsc.lastIndex) sortedAsc[i + 1] else null

        val isFirstInGroup = prevMsg == null
            || prevMsg.senderId != msg.senderId
            || prevMsg.toLocalDate() != msg.toLocalDate()

        val isLastInGroup = nextMsg == null
            || nextMsg.senderId != msg.senderId
            || nextMsg.toLocalDate() != msg.toLocalDate()

        items.add(ChatListItem.MessageItem(msg, isFirstInGroup, isLastInGroup))
    }

    return items.reversed()
}

/**
 * Formatea un timestamp en milisegundos a una cadena de hora legible (HH:mm).
 *
 * @param timestamp Timestamp en milisegundos UTC.
 * @return Hora formateada, o cadena vacía si el timestamp es 0.
 */
fun formatTimestamp(timestamp: Long): String {
    if (timestamp == 0L) return ""
    val instant = Instant.ofEpochMilli(timestamp)
    val localTime = instant.atZone(ZoneId.systemDefault()).toLocalTime()
    return localTime.format(DateTimeFormatter.ofPattern("HH:mm"))
}

/**
 * Formatea una duración en segundos al formato \»m:ss\».
 *
 * @param seconds Duración en segundos.
 * @return Duración formateada como \»m:ss\».
 */
fun formatDuration(seconds: Int): String {
    val mins = seconds / 60
    val secs = seconds % 60
    return "%d:%02d".format(mins, secs)
}
