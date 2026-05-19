package org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente

import android.content.Context
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.asRequestBody
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import java.io.File

class ProfilePacienteViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
) : ViewModel() {
    private val _perfil = MutableStateFlow<PacienteProfileResponseDTO?>(null)
    val perfil: StateFlow<PacienteProfileResponseDTO?> = _perfil.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    sealed class UploadStatus {
        object Idle : UploadStatus()

        object Loading : UploadStatus()

        data class Success(
            val url: String,
        ) : UploadStatus()

        data class Error(
            val message: String,
        ) : UploadStatus()
    }

    private val _uploadStatus = MutableStateFlow<UploadStatus>(UploadStatus.Idle)
    val uploadStatus: StateFlow<UploadStatus> = _uploadStatus.asStateFlow()

    fun fetchProfile(id: Long) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.getPacienteProfile(id)

            result
                .onSuccess {
                    _perfil.value = it
                    _error.value = null
                }.onFailure {
                    _error.value = it.message
                }

            _isLoading.value = false
        }
    }

    fun updateProfile(
        id: Long,
        update: UpdatePacienteRequestDTO,
    ) {
        _isLoading.value = true
        viewModelScope.launch {
            val result =
                profileUseCaseGeneral.updatePacienteProfile(
                    id,
                    update,
                )

            result
                .onSuccess {
                    fetchProfile(id)
                }.onFailure {
                    _error.value = it.message
                }

            _isLoading.value = false
        }
    }

    fun uploadFoto(
        id: Long,
        imageUri: Uri,
        context: Context,
    ) {
        viewModelScope.launch {
            _uploadStatus.value = UploadStatus.Loading

            try {
                val file =
                    getFile(imageUri, context)
                        ?: throw Exception("No se pudo obtener archivo")

                val request = file.asRequestBody("image/jpeg".toMediaTypeOrNull())
                val multipart = MultipartBody.Part.createFormData("file", file.name, request)

                val result = profileUseCaseGeneral.updatePacientePhoto(id, multipart)

                result
                    .onSuccess {
                        _uploadStatus.value = UploadStatus.Success("ok")
                        fetchProfile(id)
                    }.onFailure {
                        _uploadStatus.value = UploadStatus.Error(it.message ?: "Error")
                    }
            } catch (e: Exception) {
                _uploadStatus.value = UploadStatus.Error(e.message ?: "Error")
            }
        }
    }

    // En ProfilePacienteViewModel.kt, añade esta función:

    fun updateProfile(
        id: Long,
        update: UpdatePacienteRequestDTO,
        onResult: (Boolean) -> Unit = {},
    ) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.updatePacienteProfile(id, update)

            result
                .onSuccess {
                    fetchProfile(id)
                    onResult(true)
                }.onFailure {
                    _error.value = it.message
                    onResult(false)
                }

            _isLoading.value = false
        }
    }

    private fun getFile(
        uri: Uri,
        context: Context,
    ): File? {
        val input = context.contentResolver.openInputStream(uri) ?: return null
        val file = File.createTempFile("paciente_", ".jpg", context.cacheDir)

        file.outputStream().use {
            input.copyTo(it)
        }

        return file
    }

    fun clearUpload() {
        _uploadStatus.value = UploadStatus.Idle
    }

    // Añade esto al ProfilePacienteViewModel
    fun clearError() {
        _error.value = null
    }

    fun resetState() {
        _error.value = null
        _uploadStatus.value = UploadStatus.Idle
        _isLoading.value = false
    }
}
