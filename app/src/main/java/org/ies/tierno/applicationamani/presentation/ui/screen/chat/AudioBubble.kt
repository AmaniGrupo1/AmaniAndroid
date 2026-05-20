package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackStatus
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState

@Composable
fun AudioBubble(
    message: Message,
    isOwn: Boolean,
    audioUiState: AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit,
) {
    val isCurrentMessage = audioUiState.activeMessageId == message.id
    val isPlaying = isCurrentMessage && audioUiState.status == AudioPlaybackStatus.PLAYING
    val isLoading = isCurrentMessage && audioUiState.status == AudioPlaybackStatus.LOADING
    val isError = isCurrentMessage && audioUiState.status == AudioPlaybackStatus.ERROR

    val contentColor =
        if (isOwn) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        }

    Row(
        verticalAlignment = Alignment.CenterVertically,
        modifier = Modifier.padding(vertical = 4.dp),
    ) {
        if (isLoading) {
            CircularProgressIndicator(
                modifier = Modifier.size(32.dp),
                strokeWidth = 2.dp,
                color = contentColor,
            )
        } else {
            Surface(
                shape = CircleShape,
                color = contentColor.copy(alpha = 0.15f),
                modifier = Modifier.size(36.dp),
            ) {
                IconButton(
                    onClick = {
                        val url = message.attachmentUrl ?: return@IconButton
                        onPlayPause(message.id, url)
                    },
                    modifier = Modifier.size(36.dp),
                ) {
                    Icon(
                        imageVector = if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                        contentDescription = if (isPlaying) "Pausar" else "Reproducir",
                        tint = if (isError) MaterialTheme.colorScheme.error else contentColor,
                        modifier = Modifier.size(20.dp),
                    )
                }
            }
        }

        Spacer(modifier = Modifier.width(8.dp))

        if (isError && audioUiState.errorMessage != null) {
            Icon(
                imageVector = Icons.Default.Refresh,
                contentDescription = "Reintentar",
                tint = MaterialTheme.colorScheme.error,
                modifier = Modifier.size(20.dp),
            )
            Spacer(modifier = Modifier.width(4.dp))
            Text(
                text = audioUiState.errorMessage,
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.error,
                modifier = Modifier.weight(1f),
            )
        } else {
            RoundedAudioProgressBar(
                progress =
                    if (isCurrentMessage && audioUiState.durationMs > 0) {
                        (audioUiState.positionMs.toFloat() / audioUiState.durationMs.toFloat())
                            .coerceIn(0f, 1f)
                    } else {
                        0f
                    },
                color = contentColor,
                trackColor = contentColor.copy(alpha = 0.2f),
                modifier = Modifier.weight(1f),
            )
        }

        Spacer(modifier = Modifier.width(8.dp))

        val timeText =
            if (isCurrentMessage && audioUiState.status != AudioPlaybackStatus.IDLE) {
                val pos = (audioUiState.positionMs / 1000).toInt()
                if (audioUiState.durationMs > 0) {
                    val dur = (audioUiState.durationMs / 1000).toInt()
                    "${formatDuration(pos)} / ${formatDuration(dur)}"
                } else {
                    formatDuration(pos)
                }
            } else {
                formatDuration(0)
            }
        Text(
            text = timeText,
            style = MaterialTheme.typography.labelSmall,
            color = if (isError) MaterialTheme.colorScheme.error else contentColor,
        )
    }
}

@Composable
private fun RoundedAudioProgressBar(
    progress: Float,
    color: Color,
    trackColor: Color,
    modifier: Modifier = Modifier,
) {
    val animatedProgress by animateFloatAsState(
        targetValue = progress.coerceIn(0f, 1f),
        animationSpec = tween(durationMillis = 200),
        label = "audio_progress",
    )

    Row(
        modifier =
            modifier
                .height(6.dp)
                .clip(RoundedCornerShape(3.dp))
                .background(trackColor),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        if (animatedProgress > 0.001f) {
            Box(
                modifier =
                    Modifier
                        .fillMaxHeight()
                        .weight(animatedProgress)
                        .background(color),
            )
        }
        if (animatedProgress < 0.999f) {
            Spacer(modifier = Modifier.weight(1f - animatedProgress))
        }
    }
}
