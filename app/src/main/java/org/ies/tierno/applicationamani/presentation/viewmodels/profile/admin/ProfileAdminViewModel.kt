package org.ies.tierno.applicationamani.presentation.viewmodels.profile.admin

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
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import java.io.File

class ProfileAdminViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral
) : ViewModel() {

    private val _perfil = MutableStateFlow<AdminDTO?>(null)
    val perfil: StateFlow<AdminDTO?> = _perfil.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    sealed class UploadStatus {
        object Idle : UploadStatus()
        object Loading : UploadStatus()
        data class Success(val url: String) : UploadStatus()
        data class Error(val message: String) : UploadStatus()
    }

    private val _uploadStatus = MutableStateFlow<UploadStatus>(UploadStatus.Idle)
    val uploadStatus: StateFlow<UploadStatus> = _uploadStatus.asStateFlow()

    fun fetchProfile(id: Long) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.getAdminProfile(id)

            result.onSuccess {
                _perfil.value = it
                _error.value = null
            }.onFailure {
                _error.value = it.message
            }

            _isLoading.value = false
        }
    }

    fun updateProfile(id: Long, dto: UpdateAdminRequestDTO) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.updateAdminProfile(id, dto)

            result.onSuccess {
                fetchProfile(id)
                _error.value = null
            }.onFailure {
                _error.value = it.message
            }

            _isLoading.value = false
        }
    }

    fun uploadFoto(id: Long, imageUri: Uri, context: Context) {
        viewModelScope.launch {
            _uploadStatus.value = UploadStatus.Loading

            try {
                val file = getFile(imageUri, context)
                    ?: throw Exception("No se pudo obtener archivo")

                val request = file.asRequestBody("image/jpeg".toMediaTypeOrNull())
                val multipart = MultipartBody.Part.createFormData("file", file.name, request)

                val result = profileUseCaseGeneral.updateAdminPhoto(id, multipart)

                result.onSuccess {
                    _uploadStatus.value = UploadStatus.Success("ok")
                    fetchProfile(id)
                }.onFailure {
                    _uploadStatus.value = UploadStatus.Error(it.message ?: "Error al subir la foto")
                }

            } catch (e: Exception) {
                _uploadStatus.value = UploadStatus.Error(e.message ?: "Error al procesar la imagen")
            }
        }
    }

    private fun getFile(uri: Uri, context: Context): File? {
        return try {
            val input = context.contentResolver.openInputStream(uri) ?: return null
            val file = File.createTempFile("admin_", ".jpg", context.cacheDir)

            file.outputStream().use { output ->
                input.copyTo(output)
            }

            input.close()
            file
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }
    }

    fun clearError() {
        _error.value = null
    }

    fun clearUpload() {
        _uploadStatus.value = UploadStatus.Idle
    }

    fun resetState() {
        _error.value = null
        _uploadStatus.value = UploadStatus.Idle
        _isLoading.value = false
    }
}