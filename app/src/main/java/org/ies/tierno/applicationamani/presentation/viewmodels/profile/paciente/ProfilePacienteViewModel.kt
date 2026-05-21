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

/**
 * ViewModel que gestiona el perfil del paciente.
 *
 * Permite consultar, actualizar datos del perfil y subir una foto de perfil
 * mediante [ProfileUseCaseGeneral]. Expone estados de carga, error y progreso
 * de subida de imagen.
 *
 * @constructor Crea una instancia con el caso de uso de perfiles.
 * @param profileUseCaseGeneral Caso de uso genérico para operaciones de perfil.
 */
class ProfilePacienteViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
) : ViewModel() {
    /** Perfil completo del paciente autenticado. */
    private val _perfil = MutableStateFlow<PacienteProfileResponseDTO?>(null)
    val perfil: StateFlow<PacienteProfileResponseDTO?> = _perfil.asStateFlow()

    /** Indica si una operación está en curso. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    /**
     * Estado sellado que representa el progreso de subida de foto de perfil.
     */
    sealed class UploadStatus {
        /** Estado inicial: no hay subida en curso. */
        object Idle : UploadStatus()

        /** La foto se está subiendo al backend. */
        object Loading : UploadStatus()

        /**
         * La subida se completó exitosamente.
         *
         * @property url URL de la foto almacenada.
         */
        data class Success(
            val url: String,
        ) : UploadStatus()

        /**
         * La subida falló.
         *
         * @property message Descripción del error.
         */
        data class Error(
            val message: String,
        ) : UploadStatus()
    }

    /** Estado de la subida de foto de perfil. */
    private val _uploadStatus = MutableStateFlow<UploadStatus>(UploadStatus.Idle)
    val uploadStatus: StateFlow<UploadStatus> = _uploadStatus.asStateFlow()

    /**
     * Obtiene el perfil del paciente desde el backend.
     *
     * @param id Identificador del paciente.
     */
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

    /**
     * Actualiza los datos del perfil del paciente en el backend.
     *
     * Tras una actualización exitosa, recarga automáticamente el perfil.
     *
     * @param id Identificador del paciente.
     * @param update DTO con los nuevos datos del perfil.
     */
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

    /**
     * Sube una foto de perfil para el paciente.
     *
     * Convierte la URI de la imagen en un [MultipartBody.Part] y la envía al backend.
     * Actualiza [uploadStatus] y recarga el perfil al finalizar.
     *
     * @param id Identificador del paciente.
     * @param imageUri URI de la imagen seleccionada.
     * @param context Contexto de la aplicación.
     */
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

    /**
     * Actualiza el perfil del paciente y notifica el resultado mediante un callback.
     *
     * @param id Identificador del paciente.
     * @param update DTO con los nuevos datos.
     * @param onResult Callback que recibe `true` si la operación tuvo éxito.
     */
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

    /**
     * Convierte una URI de contenido en un archivo temporal.
     *
     * @param uri URI del contenido a copiar.
     * @param context Contexto de la aplicación.
     * @return Archivo temporal, o `null` si falla.
     */
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

    /** Reinicia el estado de subida de foto. */
    fun clearUpload() {
        _uploadStatus.value = UploadStatus.Idle
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _error.value = null
    }

    /** Reinicia todos los estados del ViewModel a sus valores iniciales. */
    fun resetState() {
        _error.value = null
        _uploadStatus.value = UploadStatus.Idle
        _isLoading.value = false
    }
}
