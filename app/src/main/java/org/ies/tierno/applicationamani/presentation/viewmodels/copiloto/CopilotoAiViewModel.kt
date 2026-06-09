package org.ies.tierno.applicationamani.presentation.viewmodels.copiloto

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.domain.usecases.copiloto.CopilotoAiUseCase
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto
import org.ies.tierno.applicationamani.dto.copiloto.UploadResponseDto

class CopilotoAiViewModel(
    private val copilotoUseCase: CopilotoAiUseCase
) : ViewModel() {

    private val _chunks =
        MutableStateFlow<List<ChunkResponseDto>>(emptyList())
    val chunks: StateFlow<List<ChunkResponseDto>> =
        _chunks.asStateFlow()

    private val _uploadResponse =
        MutableStateFlow<UploadResponseDto?>(null)
    val uploadResponse: StateFlow<UploadResponseDto?> =
        _uploadResponse.asStateFlow()

    private val _loading =
        MutableStateFlow(false)
    val loading: StateFlow<Boolean> =
        _loading.asStateFlow()

    private val _error =
        MutableStateFlow<String?>(null)
    val error: StateFlow<String?> =
        _error.asStateFlow()

    fun ask(question: String) {

        if (question.isBlank()) return

        viewModelScope.launch {

            _loading.value = true
            _error.value = null

            copilotoUseCase.ask(question)
                .onSuccess {
                    _chunks.value = it
                }
                .onFailure {
                    _error.value = it.message ?: "Error desconocido"
                }

            _loading.value = false
        }
    }

    fun uploadPdf(file: MultipartBody.Part) {

        viewModelScope.launch {

            _loading.value = true
            _error.value = null

            copilotoUseCase.uploadPdf(file)
                .onSuccess {
                    _uploadResponse.value = it
                }
                .onFailure {
                    _error.value = it.message ?: "Error subiendo PDF"
                }

            _loading.value = false
        }
    }

    fun clearError() {
        _error.value = null
    }

    fun clearChunks() {
        _chunks.value = emptyList()
    }
}