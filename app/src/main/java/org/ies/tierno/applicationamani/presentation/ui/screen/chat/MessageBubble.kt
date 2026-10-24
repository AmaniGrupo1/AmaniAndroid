package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.Placeholder
import androidx.compose.ui.text.PlaceholderVerticalAlign
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.Dp
import coil.compose.AsyncImage
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

sealed class MessageUiContent {
    data class Text(
        val text: String,
    ) : MessageUiContent()

    data class Image(
        val url: String,
        val caption: String?,
    ) : MessageUiContent()

    data class Audio(
        val url: String,
        val caption: String?,
    ) : MessageUiContent()

    data class Document(
        val url: String,
        val name: String,
        val caption: String?,
    ) : MessageUiContent()

    data class AttachmentPlaceholder(
        val label: String,
    ) : MessageUiContent()

    object Unknown : MessageUiContent()
}

fun Message.toUiContent(): MessageUiContent {
    val isPlaceholderImage = content.contains("Imagen") && content.length <= 12
    val isPlaceholderDoc = content.contains("Documento") && content.length <= 15
    val isPlaceholderAudio = content.contains("Nota de voz") && content.length <= 16
    val isRealText = content.isNotBlank() && !isPlaceholderImage && !isPlaceholderDoc && !isPlaceholderAudio
    val realCaption = if (isRealText) content else null
    val fallbackLabel =
        when {
            isPlaceholderImage -> "Imagen adjunta"
            isPlaceholderDoc -> attachmentName ?: "Documento adjunto"
            isPlaceholderAudio -> "Nota de voz"
            else -> content
        }

    return when {
        attachmentUrl != null -> {
            val cleanUrl =
                attachmentUrl
                    .replace("?alt=media?alt=media", "?alt=media")
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
    val bottomPadding = if (isLastInGroup) Spacing.s else Spacing.xxs
    val shape = messageBubbleShape(isOwn, isFirstInGroup, isLastInGroup)

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(horizontal = Spacing.s, vertical = Spacing.none)
                .padding(bottom = bottomPadding),
        horizontalArrangement = if (isOwn) Arrangement.End else Arrangement.Start,
        verticalAlignment = Alignment.Bottom,
    ) {
        if (!isOwn) {
            if (isLastInGroup) {
                PsychologistAvatar(psychologistInfo = psychologistInfo, size = Dimensions.iconLarge)
                Spacer(modifier = Modifier.width(Spacing.xs))
            } else {
                Spacer(modifier = Modifier.width(Dimensions.avatarSmall))
            }
        }

        when (uiContent) {
            is MessageUiContent.Image -> {
                ImageMessageBubble(
                    content = uiContent,
                    message = message,
                    isOwn = isOwn,
                    shape = shape,
                )
            }
            is MessageUiContent.Text -> {
                if (uiContent.text.isNotBlank()) {
                    DefaultMessageBubble(
                        isOwn = isOwn,
                        shape = shape,
                    ) {
                        Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
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
                    shape = shape,
                ) {
                    Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
                        AudioBubble(
                            message = message,
                            isOwn = isOwn,
                            audioUiState = audioUiState,
                            onPlayPause = onPlayPause,
                        )
                        if (!uiContent.caption.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            MessageWithTimestamp(text = uiContent.caption, message = message, isOwn = isOwn)
                        } else {
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            TimestampOnly(message = message, isOwn = isOwn)
                        }
                    }
                }
            }
            is MessageUiContent.Document -> {
                DefaultMessageBubble(
                    isOwn = isOwn,
                    shape = shape,
                ) {
                    Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
                        AttachmentDocument(
                            fileName = uiContent.name,
                            isOwn = isOwn,
                            onOpen = { onOpenAttachment(uiContent.url) },
                        )
                        if (!uiContent.caption.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            MessageWithTimestamp(text = uiContent.caption, message = message, isOwn = isOwn)
                        } else {
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            TimestampOnly(message = message, isOwn = isOwn)
                        }
                    }
                }
            }
            is MessageUiContent.AttachmentPlaceholder -> {
                DefaultMessageBubble(
                    isOwn = isOwn,
                    shape = shape,
                ) {
                    Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
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
                    Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
                        Text(stringResource(R.string.chat_contenido_no_soportado))
                        Spacer(modifier = Modifier.height(Spacing.xs))
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
    content: @Composable () -> Unit,
) {
    Surface(
        shape = shape,
        color = if (isOwn) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
        tonalElevation = if (isOwn) Elevation.level1 else Elevation.level0,
        modifier = Modifier.widthIn(max = Dimensions.chatBubbleMax),
    ) {
        content()
    }
}

@Composable
private fun ImageMessageBubble(
    content: MessageUiContent.Image,
    message: Message,
    isOwn: Boolean,
    shape: RoundedCornerShape,
) {
    Surface(
        shape = shape,
        color = if (isOwn) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
        tonalElevation = if (isOwn) Elevation.level1 else Elevation.level0,
        modifier = Modifier.widthIn(max = Dimensions.chatBubbleMax),
    ) {
        Column(modifier = Modifier.padding(Spacing.xxs)) {
            Box {
                ImageMessage(
                    imageUrl = content.url,
                    modifier =
                        Modifier
                            .widthIn(min = Dimensions.avatarHero, max = Dimensions.chatBubbleMax)
                            .heightIn(min = Dimensions.avatarHero, max = Dimensions.chartCardHeight)
                            .clickable { /* Preview image */ },
                )

                if (content.caption.isNullOrBlank()) {
                    val overlayTextColor = MaterialTheme.colorScheme.inverseOnSurface
                    Row(
                        modifier =
                            Modifier
                                .align(Alignment.BottomEnd)
                                .padding(Spacing.xs)
                                .background(
                                    color = MaterialTheme.colorScheme.scrim.copy(alpha = 0.4f),
                                    shape = MaterialTheme.shapes.medium,
                                ).padding(horizontal = Spacing.xs, vertical = Spacing.xxs),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = formatTimestamp(message.timestamp),
                            style = MaterialTheme.typography.labelSmall,
                            color = overlayTextColor,
                        )
                        if (isOwn) {
                            Spacer(modifier = Modifier.width(Spacing.xs))
                            StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = overlayTextColor)
                        }
                    }
                }
            }

            if (!content.caption.isNullOrBlank()) {
                Box(modifier = Modifier.padding(horizontal = Spacing.xs, vertical = Spacing.xs)) {
                    MessageWithTimestamp(
                        text = content.caption,
                        message = message,
                        isOwn = isOwn,
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
            Spacer(modifier = Modifier.width(Spacing.xs))
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
    val labelSmallFontSize = MaterialTheme.typography.labelSmall.fontSize

    if (isOwn) {
        val inlineContent =
            mapOf(
                "statusIcon" to
                    InlineTextContent(
                        Placeholder(labelSmallFontSize, labelSmallFontSize, PlaceholderVerticalAlign.TextCenter),
                    ) {
                        StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
                    },
            )
        val annotatedText =
            buildAnnotatedString {
                append(text)
                append("  ")
                withStyle(SpanStyle(fontSize = labelSmallFontSize, color = timestampColor)) {
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
                withStyle(SpanStyle(fontSize = labelSmallFontSize, color = timestampColor)) {
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
    val full = Spacing.m
    val reduced = Spacing.s
    val tail = Spacing.xs

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
            contentDescription = stringResource(R.string.chat_foto_de_formato, psychologistInfo.name),
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
                stringResource(R.string.chat_estado_leido)
            } else if (isDelivered) {
                stringResource(R.string.chat_estado_entregado)
            } else {
                stringResource(R.string.chat_estado_enviado)
            },
        modifier = Modifier.size(Dimensions.iconSmall),
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
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(horizontal = Spacing.xs, vertical = Spacing.xs)
                .clickable(onClick = onOpen),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Box(
            modifier =
                Modifier
                    .size(Dimensions.buttonHeight)
                    .clip(CircleShape)
                    .background(iconContainerColor),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = Icons.Default.Description,
                contentDescription = stringResource(R.string.auto_documento),
                tint = iconColor,
                modifier = Modifier.size(Dimensions.iconDefault),
            )
        }
        Spacer(modifier = Modifier.width(Spacing.sm))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = fileName,
                style = MaterialTheme.typography.bodyMedium,
                color = contentColor,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Spacer(modifier = Modifier.height(Spacing.xxs))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = stringResource(R.string.chat_documento_ext_formato, extension),
                    style = MaterialTheme.typography.labelSmall,
                    color = contentColor.copy(alpha = 0.6f),
                )
            }
        }
    }
}
