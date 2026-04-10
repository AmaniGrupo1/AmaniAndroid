package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase

class ChatViewModel(
    private val currentUserId: Long,
    private val otherUserId: Long,
    private val sendMessageUseCase: SendMessageUseCase,
    private val getMessagesUseCase: GetMessagesUseCase,
    private val markMessagesAsReadUseCase: MarkMessagesAsReadUseCase,
    private val fileStorageService: FileStorageService
) : ViewModel() {

    private val _messages = MutableStateFlow<List<Message>>(emptyList())
    val messages: StateFlow<List<Message>> = _messages.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _isSending = MutableStateFlow(false)
    val isSending: StateFlow<Boolean> = _isSending.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    init {
        observeMessages()
    }

    fun observeMessages() {
        viewModelScope.launch {
            _isLoading.value = true
            getMessagesUseCase(currentUserId, otherUserId).collect { messages ->
                _messages.value = messages
                _isLoading.value = false
                markMessagesAsRead()
            }
        }
    }

    private fun markMessagesAsRead() {
        viewModelScope.launch {
            markMessagesAsReadUseCase(currentUserId, otherUserId)
        }
    }

    fun sendTextMessage(content: String) {
        if (content.isBlank()) return
        
        viewModelScope.launch {
            _isSending.value = true
            _error.value = null

            sendMessageUseCase(currentUserId, otherUserId, content)
                .onSuccess {
                    _isSending.value = false
                }
                .onFailure { e ->
                    _error.value = e.message
                    _isSending.value = false
                }
        }
    }

    fun sendAttachment(uri: Uri) {
        viewModelScope.launch {
            _isSending.value = true
            _error.value = null

            val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
            when (val result = fileStorageService.uploadFile(uri, conversationId)) {
                is FileStorageService.UploadResult.Success -> {
                    sendMessageUseCase(
                        senderId = currentUserId,
                        receiverId = otherUserId,
                        content = "",
                        attachmentUrl = result.url,
                        attachmentType = result.type,
                        attachmentName = result.fileName
                    ).onSuccess {
                        _isSending.value = false
                    }.onFailure { e ->
                        _error.value = e.message
                        _isSending.value = false
                    }
                }
                is FileStorageService.UploadResult.Error -> {
                    _error.value = result.message
                    _isSending.value = false
                }
            }
        }
    }

    private val _isRecording = MutableStateFlow(false)
    val isRecording: StateFlow<Boolean> = _isRecording.asStateFlow()

    private var audioFile: java.io.File? = null

    fun startRecording(file: java.io.File) {
        audioFile = file
        _isRecording.value = true
    }

    fun stopRecordingAndSend() {
        _isRecording.value = false
        audioFile?.let { file ->
            viewModelScope.launch {
                _isSending.value = true
                _error.value = null

                val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
                when (val result = fileStorageService.uploadVoiceNote(file, conversationId)) {
                    is FileStorageService.UploadResult.Success -> {
                        sendMessageUseCase(
                            senderId = currentUserId,
                            receiverId = otherUserId,
                            content = "",
                            attachmentUrl = result.url,
                            attachmentType = result.type,
                            attachmentName = result.fileName
                        ).onSuccess {
                            _isSending.value = false
                        }.onFailure { e ->
                            _error.value = e.message
                            _isSending.value = false
                        }
                    }
                    is FileStorageService.UploadResult.Error -> {
                        _error.value = result.message
                        _isSending.value = false
                    }
                }
            }
        }
    }

    fun clearError() {
        _error.value = null
    }
}
