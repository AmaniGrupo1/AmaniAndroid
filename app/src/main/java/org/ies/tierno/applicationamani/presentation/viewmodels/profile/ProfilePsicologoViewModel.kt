package org.ies.tierno.applicationamani.presentation.viewmodels.profile

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
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import java.io.File

/**
 * ViewModel que expone el perfil del psicólogo autenticado para su visualización.
 *
 * Obtiene los datos del perfil desde [ProfileUseCaseGeneral] y los expone mediante
 * [perfil] como [StateFlow] para consumo reactivo en la UI. También permite forzar
 * la recarga del perfil.
 *
 * @constructor Crea una instancia con el caso de uso de perfiles.
 * @param profileUseCaseGeneral Caso de uso genérico para operaciones de perfil.
 */
class ProfilePsicologoViewModel(
    val profileUseCaseGeneral: ProfileUseCaseGeneral,
) : ViewModel() {
    /** Perfil completo del psicólogo autenticado. `null` mientras se carga. */
    private val _perfil = MutableStateFlow<PsicologoProfileResponseDTO?>(null)
    val perfil: StateFlow<PsicologoProfileResponseDTO?> = _perfil.asStateFlow()

    /** Indica si los datos del perfil se están cargando. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /** Mensaje de error si la carga del perfil falla. */
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

    // =========================
    // FETCH PROFILE
    // =========================
    /**
     * Obtiene el perfil del psicólogo desde el backend por su ID.
     *
     * Lanza una corrutina que invoca [ProfileUseCaseGeneral.getProfile]
     * y actualiza [perfil] con el resultado.
     *
     * @param psicologoId Identificador del psicólogo cuyo perfil se consulta.
     */
    fun fetchProfile(psicologoId: Long) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.getProfile(psicologoId)

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

    // =========================
    // CARGAR PERFIL DESDE SESIÓN (SIN PARÁMETRO)
    // =========================
    /**
     * Carga el perfil desde una respuesta ya obtenida (por ejemplo, desde otro ViewModel).
     *
     * @param data DTO con los datos del perfil del psicólogo.
     */
    fun loadProfile(data: PsicologoProfileResponseDTO) {
        _perfil.value = data
    }

    // =========================
    // RELOAD
    // =========================
    /**
     * Recarga el perfil del psicólogo autenticado forzando una nueva consulta al backend.
     *
     * @param psicologoId Identificador del psicólogo.
     */
    fun reloadProfile(psicologoId: Long) {
        fetchProfile(psicologoId)
    }

    // =========================
    // CLEAR ERROR
    // =========================
    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _error.value = null
    }

    // =========================
    // UPLOAD FOTO
    // =========================
    fun uploadFotoPerfil(
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

                val result = profileUseCaseGeneral.uploadPerfil(id, multipart)

                result
                    .onSuccess {
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

    private fun getFile(
        uri: Uri,
        context: Context,
    ): File? {
        return try {
            val input = context.contentResolver.openInputStream(uri) ?: return null
            val file = File.createTempFile("psico_", ".jpg", context.cacheDir)

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
}
