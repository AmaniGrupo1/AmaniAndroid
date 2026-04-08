package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.RequestBody.Companion.asRequestBody
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfeleResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO
import java.io.File

class ProfilePsicologoViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral
) : ViewModel() {

    private val _perfil = MutableStateFlow<PsicologoProfileResponseDTO?>(null)
    val perfil: StateFlow<PsicologoProfileResponseDTO?> get() = _perfil

    private val _pacientesProfile = MutableStateFlow<PacienteProfeleResponseDTO?>(null)
    val pacientesProfile: StateFlow<PacienteProfeleResponseDTO?> get() = _pacientesProfile

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> get() = _isLoading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> get() = _error

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

    fun uploadFotoPerfil(id: Long, imageUri: Uri) {
        _isLoading.value = true
        viewModelScope.launch {
            try {
                // Convertir URI a File temporal
                val file = File(imageUri.path ?: return@launch)

                // Crear MultipartBody.Part
                val requestBody = file.asRequestBody("image/jpeg".toMediaTypeOrNull())
                val multipartBody =
                    MultipartBody.Part.createFormData("file", file.name, requestBody)

                val result = profileUseCaseGeneral.uploadPerfil(id, multipartBody)
                result.onSuccess {
                    _perfil.value = it
                    _error.value = null
                }.onFailure {
                    _error.value = it.message ?: "Error al subir foto"
                }
            } catch (e: Exception) {
                _error.value = "Error al procesar la imagen: ${e.message}"
            }
            _isLoading.value = false
        }
    }

}