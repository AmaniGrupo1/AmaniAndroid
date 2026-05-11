package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
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
import androidx.compose.material.icons.filled.Download
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
import androidx.compose.ui.text.Placeholder
import androidx.compose.ui.text.PlaceholderVerticalAlign
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo
import androidx.compose.ui.Alignment as Alignment2

@Composable
fun MessageBubble(
    message: Message,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
    currentUserId: String,
    psychologistInfo: PsychologistInfo?,
    audioUiState: AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit
) {
    val isOwn = message.senderId == currentUserId
    val screenWidth = LocalConfiguration.current.screenWidthDp

    val bottomPadding = if (isLastInGroup) 8.dp else 2.dp

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 0.dp)
            .padding(bottom = bottomPadding),
        horizontalArrangement = if (isOwn) Arrangement.End else Arrangement.Start,
        verticalAlignment = Alignment.Bottom
    ) {
        if (!isOwn) {
            if (isLastInGroup) {
                PsychologistAvatar(psychologistInfo = psychologistInfo, size = 32.dp)
                Spacer(modifier = Modifier.width(6.dp))
            } else {
                Spacer(modifier = Modifier.width(38.dp))
            }
        }

        Surface(
            shape = messageBubbleShape(isOwn, isFirstInGroup, isLastInGroup),
            color = if (isOwn)
                MaterialTheme.colorScheme.primaryContainer
            else
                MaterialTheme.colorScheme.surfaceVariant,
            tonalElevation = if (isOwn) 1.dp else 0.dp,
            modifier = Modifier.widthIn(max = (screenWidth * 0.78f).dp)
        ) {
            Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                // Priorizar el contenido multimedia (adjuntos)
                if (message.attachmentUrl != null) {
                    when (message.attachmentType) {
                        AttachmentType.IMAGE -> {
                            AttachmentImage(
                                message = message,
                                isOwn = isOwn
                            )
                        }
                        AttachmentType.DOCUMENT -> {
                            AttachmentDocument(
                                message = message,
                                isOwn = isOwn
                            )
                        }
                        AttachmentType.AUDIO -> {
                            AudioBubble(
                                message = message,
                                isOwn = isOwn,
                                audioUiState = audioUiState,
                                onPlayPause = onPlayPause
                            )
                        }
                        else -> {
                            // Por si acaso hay un adjunto sin tipo claro, mostrar algo
                            AttachmentDocument(message = message, isOwn = isOwn)
                        }
                    }
                    
                    // Si hay texto acompañando al adjunto, poner un pequeño espacio
                    if (message.content.isNotBlank() && 
                        message.content != "📸 Imagen" && 
                        message.content != "📄 Documento" && 
                        message.content != "🎙️ Nota de voz") {
                        Spacer(modifier = Modifier.height(6.dp))
                        MessageWithTimestamp(
                            message = message,
                            isOwn = isOwn
                        )
                    } else {
                        // Si no hay texto extra (o solo es el placeholder), poner solo el timestamp
                        Spacer(modifier = Modifier.height(4.dp))
                        TimestampOnly(message = message, isOwn = isOwn)
                    }
                } else {
                    // Mensaje de texto puro
                    if (message.content.isNotBlank()) {
                        MessageWithTimestamp(
                            message = message,
                            isOwn = isOwn
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun TimestampOnly(
    message: Message,
    isOwn: Boolean
) {
    val timestampColor = if (isOwn)
        MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.6f)
    else
        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)

    val timestampText = formatTimestamp(message.timestamp)

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.End,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = timestampText,
            style = MaterialTheme.typography.labelSmall,
            color = timestampColor
        )
        if (isOwn) {
            Spacer(modifier = Modifier.width(4.dp))
            StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
        }
    }
}

@Composable
private fun MessageWithTimestamp(
    message: Message,
    isOwn: Boolean
) {
    val contentColor = if (isOwn)
        MaterialTheme.colorScheme.onPrimaryContainer
    else
        MaterialTheme.colorScheme.onSurfaceVariant

    val timestampColor = if (isOwn)
        MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.6f)
    else
        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)

    val timestampText = formatTimestamp(message.timestamp)

    if (isOwn) {
        val inlineContent = mapOf(
            "statusIcon" to InlineTextContent(
                Placeholder(14.sp, 14.sp, PlaceholderVerticalAlign.Center)
            ) {
                StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
            }
        )
        val annotatedText = buildAnnotatedString {
            append(message.content)
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
            inlineContent = inlineContent
        )
    } else {
        val annotatedText = buildAnnotatedString {
            append(message.content)
            append("  ")
            withStyle(SpanStyle(fontSize = 11.sp, color = timestampColor)) {
                append(timestampText)
            }
        }
        Text(
            text = annotatedText,
            style = MaterialTheme.typography.bodyMedium,
            color = contentColor
        )
    }
}

private fun messageBubbleShape(
    isOwn: Boolean,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean
): RoundedCornerShape {
    val full = 18.dp
    val reduced = 6.dp
    val tail = 4.dp

    return if (isOwn) {
        RoundedCornerShape(
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = if (isFirstInGroup) full else reduced,
            bottomStart = full,
            bottomEnd = if (isLastInGroup) tail else reduced
        )
    } else {
        // Mensajes ajenos (izquierda): el "rabo" va en la esquina inferior-izquierda,
        // que corresponde al último mensaje del grupo (el más reciente, visualmente abajo).
        RoundedCornerShape(
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = if (isFirstInGroup) full else reduced,
            bottomStart = if (isLastInGroup) tail else reduced,
            bottomEnd = full
        )
    }
}

@Composable
fun PsychologistAvatar(
    psychologistInfo: PsychologistInfo?,
    size: Dp
) {
    val modifier = Modifier
        .size(size)
        .clip(CircleShape)

    if (psychologistInfo?.avatarUrl != null) {
        AsyncImage(
            model = psychologistInfo.avatarUrl,
            contentDescription = "Foto de ${psychologistInfo.name}",
            modifier = modifier
        )
    } else {
        val initial = psychologistInfo?.name?.firstOrNull()?.uppercaseChar() ?: '?'
        Surface(
            modifier = modifier,
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primaryContainer
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(
                    text = initial.toString(),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
            }
        }
    }
}

@Composable
fun StatusIcon(isRead: Boolean, isDelivered: Boolean, tint: Color? = null) {
    val icon = when {
        isRead -> Icons.Default.DoneAll
        isDelivered -> Icons.Default.Check
        else -> Icons.Default.Check
    }
    val color = tint ?: if (isRead) {
        MaterialTheme.colorScheme.primary
    } else if (isDelivered) {
        MaterialTheme.colorScheme.onSurfaceVariant
    } else {
        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
    }
    Icon(
        imageVector = icon,
        contentDescription = if (isRead) "Leído" else if (isDelivered) "Entregado" else "Enviado",
        modifier = Modifier.size(14.dp),
        tint = color
    )
}

@Composable
private fun AttachmentImage(
    message: Message,
    isOwn: Boolean
) {
    val contentColor = if (isOwn)
        MaterialTheme.colorScheme.onPrimaryContainer
    else
        MaterialTheme.colorScheme.onSurfaceVariant

    // Imagen estilo WhatsApp
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(12.dp))
            .border(1.dp, contentColor.copy(alpha = 0.3f), RoundedCornerShape(12.dp))
            .clickable { /* Preview image */ }
    ) {
        AsyncImage(
            model = message.attachmentUrl,
            contentDescription = "Imagen adjunta",
            modifier = Modifier
                .fillMaxWidth()
                .height(250.dp),
            contentScale = ContentScale.Crop
        )

        // Botón de descarga en esquina inferior derecha
        Box(
            modifier = Modifier
                .align(Alignment2.BottomEnd)
                .padding(8.dp)
                .background(color = contentColor.copy(alpha = 0.8f))
                .clip(CircleShape)
                .padding(8.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Download,
                contentDescription = "Descargar",
                tint = MaterialTheme.colorScheme.onPrimary,
                modifier = Modifier.size(18.dp)
            )
        }
    }

    if (message.attachmentName != null) {
        Spacer(modifier = Modifier.height(6.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(
                text = message.attachmentName,
                style = MaterialTheme.typography.labelSmall,
                color = contentColor.copy(alpha = 0.8f),
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Composable
private fun AttachmentDocument(
    message: Message,
    isOwn: Boolean
) {
    val contentColor = if (isOwn)
        MaterialTheme.colorScheme.onPrimaryContainer
    else
        MaterialTheme.colorScheme.onSurfaceVariant

    // Estilo WhatsApp: tarjeta simple con icono y nombre
    Surface(
        color = if (isOwn) contentColor.copy(alpha = 0.15f) else MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.15f),
        shape = RoundedCornerShape(8.dp),
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier
                .padding(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(32.dp)
                    .clip(RoundedCornerShape(4.dp))
                    .background(color = contentColor.copy(alpha = 0.2f)),
                contentAlignment = Alignment2.Center
            ) {
                Icon(
                    imageVector = Icons.Default.Description,
                    contentDescription = "Documento",
                    tint = contentColor,
                    modifier = Modifier.size(18.dp)
                )
            }
            Spacer(modifier = Modifier.width(8.dp))
            Column {
                Text(
                    text = message.attachmentName ?: "Documento adjunto",
                    style = MaterialTheme.typography.bodyMedium,
                    color = contentColor,
                    maxLines = 1
                )
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = "Toca para descargar",
                    style = MaterialTheme.typography.labelSmall,
                    color = contentColor.copy(alpha = 0.7f)
                )
            }
        }
    }
}
