package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.ime
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp

@Composable
fun MessageInput(
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
    // Keyboard-aware padding handling
    val isImeVisible = WindowInsets.ime.getBottom(LocalDensity.current) > 0
    val bottomPadding = if (isImeVisible) 8.dp else 16.dp

    ChatInputBar(
        text = text,
        onTextChange = onTextChange,
        onSend = onSend,
        onMicClick = onMicClick,
        onAttachFile = onAttachFile,
        onStopRecording = onStopRecording,
        isRecording = isRecording,
        recordingSeconds = recordingSeconds,
        pendingAttachmentUri = pendingAttachmentUri,
        onClearAttachment = onClearAttachment,
        modifier = modifier
            .navigationBarsPadding() // Handled by Compose Insets
            .padding(bottom = bottomPadding)
    )
}
