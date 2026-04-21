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
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardCapitalization
import androidx.compose.ui.unit.dp

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
    isOtherTyping: Boolean = false,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier.fillMaxWidth()) {
        if (isRecording) {
            RecordingBar(
                recordingSeconds = recordingSeconds,
                onStopClick = onStopRecording
            )
        } else {
            // Input con padding adecuado para estilo mensajería
            Surface(
                shape = MaterialTheme.shapes.large,
                shadowElevation = 4.dp,
                tonalElevation = 2.dp,
                color = MaterialTheme.colorScheme.surface,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 8.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Botón de archivo siempre visible
                    IconButton(onClick = onAttachFile) {
                        Icon(
                            imageVector = Icons.Default.AttachFile,
                            contentDescription = "Adjuntar archivo",
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }

                    // Botón de micrófono siempre visible (si no se está grabando)
                    if (!isRecording) {
                        IconButton(onClick = onMicClick) {
                            Icon(
                                imageVector = Icons.Default.Mic,
                                contentDescription = "Nota de voz",
                                tint = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }

                    PillTextField(
                        text = text,
                        onTextChange = onTextChange,
                        onSend = onSend,
                        modifier = Modifier.weight(1f)
                    )

                    Spacer(modifier = Modifier.width(4.dp))

                    val sendScale by animateFloatAsState(
                        targetValue = if (text.isNotBlank()) 1f else 0.85f,
                        animationSpec = spring(dampingRatio = 0.6f),
                        label = "send_scale"
                    )

                    FilledIconButton(
                        onClick = onSend,
                        enabled = text.isNotBlank(),
                        colors = IconButtonDefaults.filledIconButtonColors(
                            containerColor = MaterialTheme.colorScheme.primary,
                            disabledContainerColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.12f),
                            contentColor = MaterialTheme.colorScheme.onPrimary,
                            disabledContentColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f)
                        ),
                        modifier = Modifier
                            .size(44.dp)
                            .graphicsLayer { scaleX = sendScale; scaleY = sendScale }
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.Send,
                            contentDescription = "Enviar mensaje"
                        )
                    }
                }
            }

            if (isOtherTyping) {
                TypingIndicator()
            }
        }
    }
}

@Composable
private fun TypingIndicator() {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 48.dp, bottom = 4.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = "Escribiendo...",
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        )
    }
}

@Composable
private fun PillTextField(
    text: String,
    onTextChange: (String) -> Unit,
    onSend: () -> Unit,
    modifier: Modifier = Modifier
) {
    BasicTextField(
        value = text,
        onValueChange = onTextChange,
        modifier = modifier
            .background(
                MaterialTheme.colorScheme.surfaceVariant,
                RoundedCornerShape(28.dp)
            )
            .padding(horizontal = 12.dp, vertical = 8.dp),
        textStyle = TextStyle(
            color = MaterialTheme.colorScheme.onSurface,
            fontSize = MaterialTheme.typography.bodyMedium.fontSize
        ),
        cursorBrush = SolidColor(MaterialTheme.colorScheme.primary),
        maxLines = 4,
        keyboardOptions = KeyboardOptions(
            capitalization = KeyboardCapitalization.Sentences,
            imeAction = ImeAction.Send
        ),
        keyboardActions = KeyboardActions(
            onSend = { if (text.isNotBlank()) onSend() }
        ),
        decorationBox = { innerTextField ->
            if (text.isBlank()) {
                Text(
                    text = "Escribe un mensaje\u2026",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
                )
            }
            innerTextField()
        }
    )
}

@Composable
private fun RecordingBar(
    recordingSeconds: Int,
    onStopClick: () -> Unit
) {
    val infiniteTransition = rememberInfiniteTransition(label = "pulse")
    val pulseAlpha by infiniteTransition.animateFloat(
        initialValue = 0.4f,
        targetValue = 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(800),
            repeatMode = RepeatMode.Reverse
        ),
        label = "pulse_alpha"
    )

    Surface(
        shape = MaterialTheme.shapes.large,
        shadowElevation = 4.dp,
        tonalElevation = 2.dp,
        color = MaterialTheme.colorScheme.surface,
        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(10.dp)
                    .clip(CircleShape)
                    .background(MaterialTheme.colorScheme.error.copy(alpha = pulseAlpha))
            )
            Spacer(modifier = Modifier.width(12.dp))
            Text(
                text = formatDuration(recordingSeconds),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onSurface
            )
            Spacer(modifier = Modifier.weight(1f))
            Surface(
                shape = RoundedCornerShape(16.dp),
                color = MaterialTheme.colorScheme.error.copy(alpha = 0.12f),
                onClick = onStopClick,
                modifier = Modifier.size(40.dp)
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = Icons.Default.Stop,
                        contentDescription = "Detener grabación",
                        tint = MaterialTheme.colorScheme.error,
                        modifier = Modifier.size(20.dp)
                    )
                }
            }
        }
    }
}
