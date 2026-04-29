package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import android.content.ContentResolver
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
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfeleResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO
import java.io.File
import java.io.FileOutputStream

class ProfilePsicologoViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral
) : ViewModel() {

    // ========== ESTADOS EXISTENTES ==========
    private val _perfil = MutableStateFlow<PsicologoProfileResponseDTO?>(null)
    val perfil: StateFlow<PsicologoProfileResponseDTO?> = _perfil.asStateFlow()

    private val _pacientesProfile = MutableStateFlow<PacienteProfeleResponseDTO?>(null)
    val pacientesProfile: StateFlow<PacienteProfeleResponseDTO?> = _pacientesProfile.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    // ========== NUEVO ESTADO PARA UPLOAD ==========
    sealed class UploadStatus {
        object Idle : UploadStatus()
        object Loading : UploadStatus()
        data class Success(val photoUrl: String) : UploadStatus()
        data class Error(val message: String) : UploadStatus()
    }

    private val _uploadStatus = MutableStateFlow<UploadStatus>(UploadStatus.Idle)
    val uploadStatus: StateFlow<UploadStatus> = _uploadStatus.asStateFlow()

    // ========== FUNCIONES EXISTENTES ==========
    fun fetchProfile(id: Long) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.getProfile(id)
            result.onSuccess {
                _perfil.value = it
                _error.value = null
            }.onFailure {
                _error.value = it.message ?: "Error desconocido"
            }
            _isLoading.value = false
        }
    }

    // ========== FUNCIÓN DE UPLOAD CORREGIDA ==========
    fun uploadFotoPerfil(id: Long, imageUri: Uri, context: Context) {
        viewModelScope.launch {
            _uploadStatus.value = UploadStatus.Loading
            _error.value = null

            try {
                val file = getFileFromUriCorrected(imageUri, context)
                    ?: throw IllegalArgumentException("No se pudo obtener el archivo de la imagen")

                val fileSize = file.length()
                if (fileSize > 5 * 1024 * 1024) {
                    throw IllegalArgumentException("La imagen no puede superar los 5 MB")
                }

                val requestBody = file.asRequestBody("image/jpeg".toMediaTypeOrNull())
                val multipartBody = MultipartBody.Part.createFormData("file", file.name, requestBody)

                val result = profileUseCaseGeneral.uploadPerfil(id, multipartBody)

                result.onSuccess { perfilActualizado ->
                    _perfil.value = perfilActualizado
                    _uploadStatus.value = UploadStatus.Success(
                        perfilActualizado.usuario?.fotoPerfilUrl ?: ""
                    )
                    _error.value = null

                    fetchProfile(id)

                }.onFailure { exception ->
                    _uploadStatus.value = UploadStatus.Error(
                        exception.message ?: "Error al subir la foto"
                    )
                    _error.value = exception.message ?: "Error al subir la foto"
                }

            } catch (e: Exception) {
                _uploadStatus.value = UploadStatus.Error(e.message ?: "Error al procesar la imagen")
                _error.value = e.message ?: "Error al procesar la imagen"
            }
        }
    }
    /**
     * Convierte un Uri a un File real (CORREGIDO)
     * Maneja diferentes tipos de Uri (content://, file://, etc.)
     */
    private suspend fun getFileFromUriCorrected(uri: Uri, context: Context): File? {
        // Si es file://, obtener directamente
        if (uri.scheme == "file") {
            return File(uri.path ?: return null)
        }

        // Si es content:// (galería o cámara), copiar a archivo temporal
        val inputStream = context.contentResolver.openInputStream(uri) ?: return null


        val tempFile = File.createTempFile("temp_photo_", ".jpg", context.cacheDir)

        tempFile.outputStream().use { output ->
            inputStream.copyTo(output)
        }
        inputStream.close()

        return tempFile
    }

    // Función para limpiar el estado de upload
    fun clearUploadStatus() {
        _uploadStatus.value = UploadStatus.Idle
    }
}