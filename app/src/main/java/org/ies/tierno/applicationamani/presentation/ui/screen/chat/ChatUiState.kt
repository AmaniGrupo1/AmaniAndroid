package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import androidx.compose.runtime.Immutable
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo

@Immutable
sealed class ChatUiState {
    object Loading : ChatUiState()
    
    @Immutable
    data class Success(
        val messages: List<Message>,
        val currentUserId: String,
        val assignedPsychologist: PsychologistInfo? = null,
        val inputText: String = "",
        val isOtherTyping: Boolean = false,
        val psychologistOnline: Boolean = false,
        val pendingAttachmentUri: android.net.Uri? = null
    ) : ChatUiState()
    
    @Immutable
    data class Error(val message: String) : ChatUiState()
}
