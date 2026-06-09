package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.AttachFile
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Mic
import androidx.compose.material.icons.filled.Stop
import androidx.compose.material3.FilledIconButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.IconButtonDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardCapitalization
import androidx.compose.ui.unit.dp
import org.ies.tierno.applicationamani.R

/**
 * Barra de entrada de texto para el chat, con soporte para adjuntos y notas de voz.
 *
 * Incluye un campo de texto con forma de píldora, botones para adjuntar
 * archivos, grabar notas de voz y enviar mensajes. Durante la grabación
 * muestra una [RecordingBar] con animación de pulso y cronómetro.
 *
 * @param text Texto actual del campo de entrada.
 * @param onTextChange Callback invocado al modificar el texto.
 * @param onSend Callback invocado al enviar el mensaje.
 * @param onMicClick Callback invocado al pulsar el botón de micrófono.
 * @param onAttachFile Callback invocado al pulsar el botón de adjuntar archivo.
 * @param onStopRecording Callback invocado al detener la grabación.
 * @param isRecording Indica si se está grabando una nota de voz.
 * @param recordingSeconds Segundos transcurridos de la grabación actual.
 * @param isOtherTyping Indica si el interlocutor está escribiendo.
 * @param modifier Modificador de diseño opcional.
 */
@Composable
fun ChatInputBar(
    text: String,
    onTextChange: (String) -> Unit,
    onSend: () -> Unit,
    onMicClick: () -> Unit,
    onAttachFile: () -> Unit,
    onStopRecording: () -> Unit,
    isRecording: Boolean,
    recordingSeconds: Int,
    pendingAttachmentUri: android.net.Uri? = null,
    onClearAttachment: () -> Unit = {},
    modifier: Modifier = Modifier,
) {
    Column(modifier = modifier.fillMaxWidth()) {
        if (pendingAttachmentUri != null) {
            Box(
                modifier = Modifier
                    .padding(horizontal = 16.dp, vertical = 8.dp)
                    .clip(RoundedCornerShape(12.dp))
                    .background(MaterialTheme.colorScheme.surfaceVariant)
            ) {
                coil.compose.AsyncImage(
                    model = pendingAttachmentUri,
                    contentDescription = "Preview adjunto",
                    modifier = Modifier.size(100.dp).clip(RoundedCornerShape(12.dp)),
                    contentScale = androidx.compose.ui.layout.ContentScale.Crop
                )
                IconButton(
                    onClick = onClearAttachment,
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(4.dp)
                        .size(24.dp)
                        .background(androidx.compose.ui.graphics.Color.Black.copy(alpha = 0.5f), CircleShape)
                ) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = "Eliminar",
                        tint = androidx.compose.ui.graphics.Color.White,
                        modifier = Modifier.size(16.dp)
                    )
                }
            }
        }

        if (isRecording) {
            RecordingBar(
                recordingSeconds = recordingSeconds,
                onStopClick = onStopRecording,
            )
        } else {
            // Input con padding adecuado para estilo mensajería
            Surface(
                shape = MaterialTheme.shapes.large,
                shadowElevation = 4.dp,
                tonalElevation = 2.dp,
                color = MaterialTheme.colorScheme.surface,
                modifier = Modifier.padding(horizontal = 8.dp),
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 8.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    // Botón de archivo siempre visible
                    IconButton(onClick = onAttachFile) {
                        Icon(
                            imageVector = Icons.Default.AttachFile,
                            contentDescription = stringResource(R.string.auto_adjuntar_archivo),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }

                    // Botón de micrófono siempre visible (si no se está grabando)
                    if (!isRecording) {
                        IconButton(onClick = onMicClick) {
                            Icon(
                                imageVector = Icons.Default.Mic,
                                contentDescription = stringResource(R.string.auto_nota_de_voz),
                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }

                    PillTextField(
                        text = text,
                        onTextChange = onTextChange,
                        onSend = onSend,
                        modifier = Modifier.weight(1f),
                    )

                    Spacer(modifier = Modifier.width(4.dp))

                    val sendScale by animateFloatAsState(
                        targetValue = if (text.isNotBlank() || pendingAttachmentUri != null) 1f else 0.85f,
                        animationSpec = spring(dampingRatio = 0.6f),
                        label = stringResource(R.string.auto_send_scale),
                    )

                    FilledIconButton(
                        onClick = onSend,
                        enabled = text.isNotBlank() || pendingAttachmentUri != null,
                        colors =
                            IconButtonDefaults.filledIconButtonColors(
                                containerColor = MaterialTheme.colorScheme.primary,
                                disabledContainerColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.12f),
                                contentColor = MaterialTheme.colorScheme.onPrimary,
                                disabledContentColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f),
                            ),
                        modifier =
                            Modifier
                                .size(44.dp)
                                .graphicsLayer {
                                    scaleX = sendScale
                                    scaleY = sendScale
                                },
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.Send,
                            contentDescription = stringResource(R.string.auto_enviar_mensaje),
                        )
                    }
                }
            }
        }
    }
}


@Composable
private fun PillTextField(
    text: String,
    onTextChange: (String) -> Unit,
    onSend: () -> Unit,
    modifier: Modifier = Modifier,
) {
    BasicTextField(
        value = text,
        onValueChange = onTextChange,
        modifier =
            modifier
                .background(
                    MaterialTheme.colorScheme.surfaceVariant,
                    RoundedCornerShape(28.dp),
                ).padding(horizontal = 12.dp, vertical = 8.dp),
        textStyle =
            TextStyle(
                color = MaterialTheme.colorScheme.onSurface,
                fontSize = MaterialTheme.typography.bodyMedium.fontSize,
            ),
        cursorBrush = SolidColor(MaterialTheme.colorScheme.primary),
        maxLines = 4,
        keyboardOptions =
            KeyboardOptions(
                capitalization = KeyboardCapitalization.Sentences,
                imeAction = ImeAction.Send,
            ),
        keyboardActions =
            KeyboardActions(
                onSend = { if (text.isNotBlank()) onSend() },
            ),
        decorationBox = { innerTextField ->
            if (text.isBlank()) {
                Text(
                    text = stringResource(R.string.auto_escribe_un_mensajeu2026),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f),
                )
            }
            innerTextField()
        },
    )
}

@Composable
private fun RecordingBar(
    recordingSeconds: Int,
    onStopClick: () -> Unit,
) {
    val infiniteTransition = rememberInfiniteTransition(label = stringResource(R.string.auto_pulse))
    val pulseAlpha by infiniteTransition.animateFloat(
        initialValue = 0.4f,
        targetValue = 1f,
        animationSpec =
            infiniteRepeatable(
                animation = tween(800),
                repeatMode = RepeatMode.Reverse,
            ),
        label = stringResource(R.string.auto_pulse_alpha),
    )

    Surface(
        shape = MaterialTheme.shapes.large,
        shadowElevation = 4.dp,
        tonalElevation = 2.dp,
        color = MaterialTheme.colorScheme.surface,
        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Box(
                modifier =
                    Modifier
                        .size(10.dp)
                        .clip(CircleShape)
                        .background(MaterialTheme.colorScheme.error.copy(alpha = pulseAlpha)),
            )
            Spacer(modifier = Modifier.width(12.dp))
            Text(
                text = formatDuration(recordingSeconds),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onSurface,
            )
            Spacer(modifier = Modifier.weight(1f))
            Surface(
                shape = RoundedCornerShape(16.dp),
                color = MaterialTheme.colorScheme.error.copy(alpha = 0.12f),
                onClick = onStopClick,
                modifier = Modifier.size(40.dp),
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = Icons.Default.Stop,
                        contentDescription = stringResource(R.string.auto_detener_grabacion),
                        tint = MaterialTheme.colorScheme.error,
                        modifier = Modifier.size(20.dp),
                    )
                }
            }
        }
    }
}
