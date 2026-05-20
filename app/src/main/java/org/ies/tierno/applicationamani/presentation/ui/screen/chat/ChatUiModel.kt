package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.domain.models.Message
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Locale

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

        val isFirstInGroup = i == 0 || sortedAsc[i - 1].senderId != msg.senderId
        val isLastInGroup =
            i == sortedAsc.lastIndex ||
                sortedAsc[i + 1].senderId != msg.senderId
        items.add(ChatListItem.MessageItem(msg, isFirstInGroup, isLastInGroup))
    }

    return items.reversed()
}

fun formatTimestamp(timestamp: Long): String {
    if (timestamp == 0L) return ""
    val instant = Instant.ofEpochMilli(timestamp)
    val localTime = instant.atZone(ZoneId.systemDefault()).toLocalTime()
    return localTime.format(DateTimeFormatter.ofPattern("HH:mm"))
}

fun formatDuration(seconds: Int): String {
    val mins = seconds / 60
    val secs = seconds % 60
    return "%d:%02d".format(mins, secs)
}
