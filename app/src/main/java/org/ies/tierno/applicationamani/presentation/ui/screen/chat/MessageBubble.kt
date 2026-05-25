package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
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

/**
 * Burbuja de mensaje individual en el chat, con soporte para texto, imágenes,
 * documentos y audio.
 *
 * Renderiza el mensaje alineado a la derecha (mensajes propios) o a la
 * izquierda (mensajes del interlocutor), con avatar, indicador de estado
 * (enviado/entregado/leído) y estilos diferenciados según el tipo de adjunto.
 *
 * @param message Mensaje a mostrar.
 * @param isFirstInGroup `true` si este mensaje es el primero de un grupo del mismo remitente.
 * @param isLastInGroup `true` si este mensaje es el último de un grupo del mismo remitente.
 * @param currentUserId Identificador del usuario actual para determinar la propiedad del mensaje.
 * @param psychologistInfo Información del psicólogo asignado (avatar, nombre, estado).
 * @param audioUiState Estado de reproducción de audio.
 * @param onPlayPause Callback para reproducir/pausar un mensaje de audio.
 */
@Composable
fun MessageBubble(
    message: Message,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
    currentUserId: String,
    psychologistInfo: PsychologistInfo?,
    audioUiState: AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit,
) {
    val isOwn = message.senderId == currentUserId
    val screenWidth = LocalConfiguration.current.screenWidthDp

    val bottomPadding = if (isLastInGroup) 8.dp else 2.dp

    Row(
        modifier =
            Modifier
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

        Surface(
            shape = messageBubbleShape(isOwn, isFirstInGroup, isLastInGroup),
            color =
                if (isOwn) {
                    MaterialTheme.colorScheme.primaryContainer
                } else {
                    MaterialTheme.colorScheme.surfaceVariant
                },
            tonalElevation = if (isOwn) 1.dp else 0.dp,
            modifier = Modifier.widthIn(max = (screenWidth * 0.78f).dp),
        ) {
            val isImage = message.attachmentUrl != null && message.attachmentType == AttachmentType.IMAGE
            val hasRealText = message.content.isNotBlank() &&
                    message.content != "📸 Imagen" &&
                    message.content != "📄 Documento" &&
                    message.content != "🎙️ Nota de voz"
            val showTimestampInsideImage = isImage && !hasRealText
            
            val columnPadding = if (isImage) {
                Modifier.padding(4.dp)
            } else {
                Modifier.padding(horizontal = 12.dp, vertical = 8.dp)
            }

            Column(modifier = columnPadding) {
                // Priorizar el contenido multimedia (adjuntos)
                if (message.attachmentUrl != null) {
                    when (message.attachmentType) {
                        AttachmentType.IMAGE -> {
                            AttachmentImage(
                                message = message,
                                isOwn = isOwn,
                                showTimestampInside = showTimestampInsideImage
                            )
                        }
                        AttachmentType.DOCUMENT -> {
                            AttachmentDocument(
                                message = message,
                                isOwn = isOwn,
                            )
                        }
                        AttachmentType.AUDIO -> {
                            AudioBubble(
                                message = message,
                                isOwn = isOwn,
                                audioUiState = audioUiState,
                                onPlayPause = onPlayPause,
                            )
                        }
                        else -> {
                            // Por si acaso hay un adjunto sin tipo claro, mostrar algo
                            AttachmentDocument(message = message, isOwn = isOwn)
                        }
                    }

                    // Si hay texto acompañando al adjunto
                    if (hasRealText) {
                        Spacer(modifier = Modifier.height(4.dp))
                        Box(modifier = if (isImage) Modifier.padding(start = 4.dp, end = 4.dp, bottom = 2.dp) else Modifier) {
                            MessageWithTimestamp(
                                message = message,
                                isOwn = isOwn,
                            )
                        }
                    } else if (!isImage) {
                        // Si no hay texto extra y no es imagen, mostrar el timestamp debajo
                        Spacer(modifier = Modifier.height(4.dp))
                        TimestampOnly(message = message, isOwn = isOwn)
                    }
                } else {
                    // Mensaje de texto puro
                    if (message.content.isNotBlank()) {
                        MessageWithTimestamp(
                            message = message,
                            isOwn = isOwn,
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
                        Placeholder(14.sp, 14.sp, PlaceholderVerticalAlign.Center),
                    ) {
                        StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = timestampColor)
                    },
            )
        val annotatedText =
            buildAnnotatedString {
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
            inlineContent = inlineContent,
        )
    } else {
        val annotatedText =
            buildAnnotatedString {
                append(message.content)
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
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = if (isFirstInGroup) full else reduced,
            bottomStart = full,
            bottomEnd = if (isLastInGroup) tail else reduced,
        )
    } else {
        // Mensajes ajenos (izquierda): el "rabo" va en la esquina inferior-izquierda,
        // que corresponde al último mensaje del grupo (el más reciente, visualmente abajo).
        RoundedCornerShape(
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = if (isFirstInGroup) full else reduced,
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

/**
 * Icono de estado del mensaje (enviado, entregado, leído).
 *
 * @param isRead `true` si el mensaje ha sido leído (doble check azul).
 * @param isDelivered `true` si el mensaje ha sido entregado (check simple).
 * @param tint Color opcional para el icono; si es `null`, se usa el color semántico.
 */
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
private fun AttachmentImage(
    message: Message,
    isOwn: Boolean,
    showTimestampInside: Boolean = false
) {
    val contentColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        }

    // Imagen estilo WhatsApp
    Box(
        modifier =
            Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(12.dp))
                .clickable { /* Preview image */ },
    ) {
        AsyncImage(
            model = message.attachmentUrl,
            contentDescription = stringResource(R.string.auto_imagen_adjunta),
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(250.dp),
            contentScale = ContentScale.Crop,
        )

        if (showTimestampInside) {
            Row(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(6.dp)
                    .background(Color.Black.copy(alpha = 0.35f), RoundedCornerShape(12.dp))
                    .padding(horizontal = 6.dp, vertical = 2.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = formatTimestamp(message.timestamp),
                    style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                    color = Color.White,
                )
                if (isOwn) {
                    Spacer(modifier = Modifier.width(4.dp))
                    StatusIcon(isRead = message.isRead, isDelivered = message.isDelivered, tint = Color.White)
                }
            }
        }
    }
}

@Composable
private fun AttachmentDocument(
    message: Message,
    isOwn: Boolean,
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

    val fileName = message.attachmentName ?: "Documento adjunto"
    val extension = if (fileName.contains(".")) fileName.substringAfterLast('.').uppercase() else "DOC"

    // Estilo WhatsApp
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 4.dp, vertical = 6.dp)
            .clickable { /* Descargar o abrir documento */ },
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
                overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis
            )
            Spacer(modifier = Modifier.height(2.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(
                    text = "$extension • 1.2 MB", // Genérico simulado
                    style = MaterialTheme.typography.labelSmall,
                    color = contentColor.copy(alpha = 0.6f),
                )
            }
        }
    }
}
