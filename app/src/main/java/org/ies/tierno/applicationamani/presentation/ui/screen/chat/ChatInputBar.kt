package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.content.res.Configuration
import android.provider.Settings
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
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
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardCapitalization
import androidx.compose.ui.tooling.preview.Preview
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

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
 * @param pendingAttachmentUri URI del adjunto pendiente de envío.
 * @param onClearAttachment Callback invocado al descartar el adjunto pendiente.
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
                modifier =
                    Modifier
                        .padding(horizontal = Spacing.m, vertical = Spacing.s)
                        .clip(MaterialTheme.shapes.medium)
                        .background(MaterialTheme.colorScheme.surfaceVariant),
            ) {
                coil.compose.AsyncImage(
                    model = pendingAttachmentUri,
                    contentDescription = stringResource(R.string.chat_preview_adjunto),
                    modifier =
                        Modifier
                            .size(Dimensions.chatAttachmentThumb)
                            .clip(MaterialTheme.shapes.medium),
                    contentScale = androidx.compose.ui.layout.ContentScale.Crop,
                )
                IconButton(
                    onClick = onClearAttachment,
                    modifier =
                        Modifier
                            .align(Alignment.TopEnd)
                            .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.5f), CircleShape),
                ) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = stringResource(R.string.auto_eliminar),
                        tint = MaterialTheme.colorScheme.inverseOnSurface,
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
            val canSend = text.isNotBlank() || pendingAttachmentUri != null
            Surface(
                shape = MaterialTheme.shapes.extraLarge,
                color = MaterialTheme.colorScheme.surfaceContainerHighest,
                modifier = Modifier.padding(horizontal = Spacing.m),
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(start = Spacing.xs, top = Spacing.xs, end = Spacing.s, bottom = Spacing.xs),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    IconButton(onClick = onAttachFile) {
                        Icon(
                            imageVector = Icons.Default.AttachFile,
                            contentDescription = stringResource(R.string.auto_adjuntar_archivo),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }

                    PillTextField(
                        text = text,
                        onTextChange = onTextChange,
                        onSend = onSend,
                        modifier = Modifier.weight(1f),
                    )

                    Spacer(modifier = Modifier.width(Spacing.xs))

                    FilledIconButton(
                        onClick = if (canSend) onSend else onMicClick,
                        colors =
                            IconButtonDefaults.filledIconButtonColors(
                                containerColor =
                                    if (canSend) {
                                        MaterialTheme.colorScheme.primary
                                    } else {
                                        MaterialTheme.colorScheme.primaryContainer
                                    },
                                contentColor =
                                    if (canSend) {
                                        MaterialTheme.colorScheme.onPrimary
                                    } else {
                                        MaterialTheme.colorScheme.onPrimaryContainer
                                    },
                            ),
                    ) {
                        Icon(
                            imageVector =
                                if (canSend) {
                                    Icons.AutoMirrored.Filled.Send
                                } else {
                                    Icons.Default.Mic
                                },
                            contentDescription =
                                if (canSend) {
                                    stringResource(R.string.auto_enviar_mensaje)
                                } else {
                                    stringResource(R.string.auto_nota_de_voz)
                                },
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
    val hint = stringResource(R.string.auto_escribe_un_mensajeu2026)
    BasicTextField(
        value = text,
        onValueChange = onTextChange,
        modifier =
            modifier
                .heightIn(min = Dimensions.touchTarget)
                .padding(horizontal = Spacing.xs, vertical = Spacing.s)
                .semantics {
                    if (text.isBlank()) {
                        contentDescription = hint
                    }
                },
        textStyle = MaterialTheme.typography.bodyLarge.copy(color = MaterialTheme.colorScheme.onSurface),
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
                    text = hint,
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
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
    val reduceMotion = rememberReduceMotionEnabled()
    val infiniteTransition = rememberInfiniteTransition(label = "recording_pulse")
    val animatedPulse by infiniteTransition.animateFloat(
        initialValue = 0.4f,
        targetValue = 1f,
        animationSpec =
            infiniteRepeatable(
                animation = tween(800),
                repeatMode = RepeatMode.Reverse,
            ),
        label = "recording_pulse_alpha",
    )
    val pulseAlpha = if (reduceMotion) 1f else animatedPulse

    Surface(
        shape = MaterialTheme.shapes.extraLarge,
        color = MaterialTheme.colorScheme.errorContainer,
        modifier = Modifier.padding(horizontal = Spacing.m, vertical = Spacing.xs),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(horizontal = Spacing.sm, vertical = Spacing.s),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Box(
                modifier =
                    Modifier
                        .size(Dimensions.dotIndicator)
                        .clip(CircleShape)
                        .background(MaterialTheme.colorScheme.error.copy(alpha = pulseAlpha)),
            )
            Spacer(modifier = Modifier.width(Spacing.sm))
            Text(
                text = formatDuration(recordingSeconds),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onErrorContainer,
            )
            Spacer(modifier = Modifier.weight(1f))
            FilledIconButton(
                onClick = onStopClick,
                colors =
                    IconButtonDefaults.filledIconButtonColors(
                        containerColor = MaterialTheme.colorScheme.error,
                        contentColor = MaterialTheme.colorScheme.onError,
                    ),
            ) {
                Icon(
                    imageVector = Icons.Default.Stop,
                    contentDescription = stringResource(R.string.auto_detener_grabacion),
                )
            }
        }
    }
}

@Composable
private fun rememberReduceMotionEnabled(): Boolean {
    val context = LocalContext.current
    return remember(context) {
        Settings.Global.getFloat(
            context.contentResolver,
            Settings.Global.ANIMATOR_DURATION_SCALE,
            1f,
        ) == 0f
    }
}

@Preview(name = "ChatInputBar Light", showBackground = true)
@Preview(name = "ChatInputBar Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ChatInputBar FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ChatInputBarPreview() {
    AppTheme {
        ChatInputBar(
            text = "Hola, tengo una consulta",
            onTextChange = {},
            onSend = {},
            onMicClick = {},
            onAttachFile = {},
            onStopRecording = {},
            isRecording = false,
            recordingSeconds = 0,
        )
    }
}
