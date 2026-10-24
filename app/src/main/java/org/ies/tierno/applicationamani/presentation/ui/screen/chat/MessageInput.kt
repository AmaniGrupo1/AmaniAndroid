package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.ime
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalDensity
import org.ies.tierno.applicationamani.ui.theme.Spacing

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
    val isImeVisible = WindowInsets.ime.getBottom(LocalDensity.current) > 0
    val bottomPadding = if (isImeVisible) Spacing.s else Spacing.m

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
        modifier =
            modifier
                .navigationBarsPadding()
                .padding(bottom = bottomPadding),
    )
}
