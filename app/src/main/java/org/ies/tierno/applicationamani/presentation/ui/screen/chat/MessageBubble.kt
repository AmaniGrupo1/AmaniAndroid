package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.InlineTextContent
import androidx.compose.foundation.text.appendInlineContent
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.DoneAll
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.Placeholder
import androidx.compose.ui.text.PlaceholderVerticalAlign
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo

sealed class MessageUiContent {
    data class Text(val text: String) : MessageUiContent()
    data class Image(val url: String, val caption: String?) : MessageUiContent()
    data class Audio(val url: String, val caption: String?) : MessageUiContent()
    data class Document(val url: String, val name: String, val caption: String?) : MessageUiContent()
    data class AttachmentPlaceholder(val label: String) : MessageUiContent()
    object Unknown : MessageUiContent()
}

fun Message.toUiContent(): MessageUiContent {
    val isRealText = content.isNotBlank() && content != "📸 Imagen" && content != "📄 Documento" && content != "🎙️ Nota de voz"
    val realCaption = if (isRealText) content else null
    val fallbackLabel =
        when {
            content == "📸 Imagen" -> "Imagen adjunta"
            content == "📄 Documento" -> attachmentName ?: "Documento adjunto"
            content == "🎙️ Nota de voz" -> "Nota de voz"
            else -> content
        }

    return when {
        attachmentUrl != null -> {
            // Fix previously corrupted URLs that had ?alt=media appended to the token
            val cleanUrl = attachmentUrl.replace("?alt=media?alt=media", "?alt=media")
                .replace(Regex("(&token=[a-zA-Z0-9-]+)\\?alt=media$"), "$1")

            when (attachmentType) {
                AttachmentType.IMAGE -> MessageUiContent.Image(cleanUrl, realCaption)
                AttachmentType.AUDIO -> MessageUiContent.Audio(cleanUrl, realCaption)
                AttachmentType.DOCUMENT -> MessageUiContent.Document(cleanUrl, attachmentName ?: "Documento adjunto", realCaption)
                else -> MessageUiContent.Document(cleanUrl, attachmentName ?: fallbackLabel.ifBlank { "Archivo adjunto" }, realCaption)
            }
        }
        !isRealText && fallbackLabel.isNotBlank() -> MessageUiContent.AttachmentPlaceholder(fallbackLabel)
        else -> MessageUiContent.Text(content)
    }
}

@Composable
fun MessageBubble(
    message: Message,
    uiContent: MessageUiContent,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
    currentUserId: String,
    psychologistInfo: PsychologistInfo?,
    audioUiState: AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit,
    onOpenAttachment: (String) -> Unit,
) {
    val isOwn = message.senderId == currentUserId
    val bottomPadding = if (isLastInGroup) 8.dp else 2.dp
    val shape = messageBubbleShape(isOwn, isFirstInGroup, isLastInGroup)

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 0.dp)
            .padding(bottom = bottomPadding),
        horizontalArrangement = if (isOwn) Arrangement.End else Arrangement.Start,
        verticalAlignment = Alignment.Bottom,
    ) {
        if (!isOwn) {
            if (isLastInGroup) {
                PsychologistAvatar(psychologistInfo = psychologistInfo, size = 32.dp)
                Spacer(modifier = Modifier.width(6.dp))
            } else {
                Spacer(modifier = Modifier.width(38.dp))
            }
        }

        when (uiContent) {
            is MessageUiContent.Image -> {
                ImageMessageBubble(
                    content = uiContent,
                    message = message,
                    isOwn = isOwn,
                    shape = shape
                )
            }
            is MessageUiContent.Text -> {
                if (uiContent.text.isNotBlank()) {
                    DefaultMessageBubble(
                        isOwn = isOwn,
                        shape = shape
                    ) {
                        Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                            MessageWithTimestamp(
                                text = uiContent.text,
                                message = message,
                                isOwn = isOwn,
                            )
                        }
                    }
                }
            }
            is MessageUiContent.Audio -> {
                DefaultMessageBubble(
                    isOwn = isOwn,
                    shape = shape
                ) {
                    Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                        AudioBubble(
                            message = message,
                            isOwn = isOwn,
                            audioUiState = audioUiState,
                            onPlayPause = onPlayPause,
                        )
                        if (!uiContent.caption.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(4.dp))
                            MessageWithTimestamp(text = uiContent.caption, message = message, isOwn = isOwn)
                        } else {
                            Spacer(modifier = Modifier.height(4.dp))
                            TimestampOnly(message = message, isOwn = isOwn)
                        }
                    }
                }
            }
            is MessageUiContent.Document -> {
                DefaultMessageBubble(
                    isOwn = isOwn,
                    shape = shape
                ) {
                    Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                        AttachmentDocument(
                            fileName = uiContent.name,
                            isOwn = isOwn,
                            onOpen = { onOpenAttachment(uiContent.url) },
                        )
                        if (!uiContent.caption.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(4.dp))
                            MessageWithTimestamp(text = uiContent.caption, message = message, isOwn = isOwn)
                        } else {
                            Spacer(modifier = Modifier.height(4.dp))
                            TimestampOnly(message = message, isOwn = isOwn)
                        }
                    }
                }
            }
            is MessageUiContent.AttachmentPlaceholder -> {
                DefaultMessageBubble(
                    isOwn = isOwn,
                    shape = shape
                ) {
                    Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                        MessageWithTimestamp(
                            text = uiContent.label,
                            message = message,
                            isOwn = isOwn,
                        )
                    }
                }
            }
            is MessageUiContent.Unknown -> {
                DefaultMessageBubble(isOwn = isOwn, shape = shape) {
                    Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                        Text("Contenido no soportado")
                        Spacer(modifier = Modifier.height(4.dp))
                        TimestampOnly(message = message, isOwn = isOwn)
                    }
                }
            }
        }
    }
}

@Composable
private fun DefaultMessageBubble(
    isOwn: Boolean,
    shape: RoundedCornerShape,
    content: @Composable () -> Unit
) {
    val screenWidth = LocalConfiguration.current.screenWidthDp
    Surface(
        shape = shape,
        color = if (isOwn) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
        tonalElevation = if (isOwn) 1.dp else 0.dp,
        modifier = Modifier.widthIn(max = (screenWidth * 0.78f).dp),
    ) {
        content()
    }
}

@Composable
private fun ImageMessageBubble(
    content: MessageUiContent.Image,
    message: Message,
    isOwn: Boolean,
    shape: RoundedCornerShape
) {
    val screenWidth = LocalConfiguration.current.screenWidthDp
    
    Surface(
        shape = shape,
        color = if (isOwn) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
        tonalElevation = if (isOwn) 1.dp else 0.dp,
        modifier = Modifier.widthIn(max = (screenWidth * 0.75f).dp)
    ) {
        Column(modifier = Modifier.padding(2.dp)) {
            Box {
                ImageMessage(
                    imageUrl = content.url,
                    modifier = Modifier
                        .widthIn(min = 120.dp, max = (screenWidth * 0.75f).dp)
                        .heightIn(min = 120.dp, max = 350.dp)
                        .clickable { /* Preview image */ }
                )

                if (content.caption.isNullOrBlank()) {
                    Row(
                        modifier = Modifier
                            .align(Alignment.BottomEnd)
                            .padding(6.dp)
                            .background(
                                color = Color.Black.copy(alpha = 0.4f), 
                                shape = RoundedCornerShape(12.dp)
                            )
                            .padding(horizontal = 6.dp, vertical = 2.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = formatTimestamp(message.timestamp),
                            style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                            color = Color.White
                        )
                        if (isOwn) {
                            Spacer(modifier = Modifier.width(4.dp))
                            StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = Color.White)
                        }
                    }
                }
            }

            if (!content.caption.isNullOrBlank()) {
                Box(modifier = Modifier.padding(horizontal = 6.dp, vertical = 4.dp)) {
                    MessageWithTimestamp(
                        text = content.caption,
                        message = message,
                        isOwn = isOwn
                    )
                }
            }
        }
    }
}

@Composable
private fun TimestampOnly(
    message: Message,
    isOwn: Boolean,
) {
    val timestampColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.6f)
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        }

    val timestampText = formatTimestamp(message.timestamp)

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.End,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = timestampText,
            style = MaterialTheme.typography.labelSmall,
            color = timestampColor,
        )
        if (isOwn) {
            Spacer(modifier = Modifier.width(4.dp))
            StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
        }
    }
}

@Composable
private fun MessageWithTimestamp(
    text: String,
    message: Message,
    isOwn: Boolean,
) {
    val contentColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        }

    val timestampColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.6f)
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        }

    val timestampText = formatTimestamp(message.timestamp)

    if (isOwn) {
        val inlineContent =
            mapOf(
                "statusIcon" to
                    InlineTextContent(
                        Placeholder(14.sp, 14.sp, PlaceholderVerticalAlign.TextCenter),
                    ) {
                        StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
                    },
            )
        val annotatedText =
            buildAnnotatedString {
                append(text)
                append("  ")
                withStyle(SpanStyle(fontSize = 11.sp, color = timestampColor)) {
                    append(timestampText)
                }
                append(" ")
                appendInlineContent("statusIcon")
            }
        Text(
            text = annotatedText,
            style = MaterialTheme.typography.bodyMedium,
            color = contentColor,
            inlineContent = inlineContent,
        )
    } else {
        val annotatedText =
            buildAnnotatedString {
                append(text)
                append("  ")
                withStyle(SpanStyle(fontSize = 11.sp, color = timestampColor)) {
                    append(timestampText)
                }
            }
        Text(
            text = annotatedText,
            style = MaterialTheme.typography.bodyMedium,
            color = contentColor,
        )
    }
}

private fun messageBubbleShape(
    isOwn: Boolean,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
): RoundedCornerShape {
    val full = 18.dp
    val reduced = 6.dp
    val tail = 4.dp

    return if (isOwn) {
        RoundedCornerShape(
            topStart = full,
            topEnd = if (isFirstInGroup) full else reduced,
            bottomStart = full,
            bottomEnd = if (isLastInGroup) tail else reduced,
        )
    } else {
        RoundedCornerShape(
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = full,
            bottomStart = if (isLastInGroup) tail else reduced,
            bottomEnd = full,
        )
    }
}

@Composable
fun PsychologistAvatar(
    psychologistInfo: PsychologistInfo?,
    size: Dp,
) {
    val modifier =
        Modifier
            .size(size)
            .clip(CircleShape)

    if (psychologistInfo?.avatarUrl != null) {
        AsyncImage(
            model = psychologistInfo.avatarUrl,
            contentDescription = "Foto de ${psychologistInfo.name}",
            modifier = modifier,
        )
    } else {
        val initial = psychologistInfo?.name?.firstOrNull()?.uppercaseChar() ?: '?'
        Surface(
            modifier = modifier,
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primaryContainer,
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(
                    text = initial.toString(),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onPrimaryContainer,
                )
            }
        }
    }
}

@Composable
fun StatusIcon(
    isRead: Boolean,
    isDelivered: Boolean,
    tint: Color? = null,
) {
    val icon =
        when {
            isRead -> Icons.Default.DoneAll
            isDelivered -> Icons.Default.Check
            else -> Icons.Default.Check
        }
    val color =
        tint ?: if (isRead) {
            MaterialTheme.colorScheme.primary
        } else if (isDelivered) {
            MaterialTheme.colorScheme.onSurfaceVariant
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        }
    Icon(
        imageVector = icon,
        contentDescription =
            if (isRead) {
                "Leído"
            } else if (isDelivered) {
                "Entregado"
            } else {
                "Enviado"
            },
        modifier = Modifier.size(14.dp),
        tint = color,
    )
}

@Composable
private fun AttachmentDocument(
    fileName: String,
    isOwn: Boolean,
    onOpen: () -> Unit,
) {
    val contentColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        }

    val iconContainerColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.15f)
        } else {
            MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        }

    val iconColor = 
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.primary
        }

    val extension = if (fileName.contains(".")) fileName.substringAfterLast('.').uppercase() else "DOC"

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 4.dp, vertical = 6.dp)
            .clickable(onClick = onOpen),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Box(
            modifier = Modifier
                .size(44.dp)
                .clip(CircleShape)
                .background(iconContainerColor),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = Icons.Default.Description,
                contentDescription = stringResource(R.string.auto_documento),
                tint = iconColor,
                modifier = Modifier.size(24.dp),
            )
        }
        Spacer(modifier = Modifier.width(12.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = fileName,
                style = MaterialTheme.typography.bodyMedium,
                color = contentColor,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Spacer(modifier = Modifier.height(2.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = "$extension • Documento",
                    style = MaterialTheme.typography.labelSmall,
                    color = contentColor.copy(alpha = 0.6f),
                )
            }
        }
    }
}
