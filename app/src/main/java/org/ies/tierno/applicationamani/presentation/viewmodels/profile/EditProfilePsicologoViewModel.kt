package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO

/**
 * ViewModel que gestiona la edición del perfil del psicólogo.
 *
 * Permite cargar el perfil existente, modificar cada campo individualmente y
 * persistir los cambios mediante [ProfileUseCaseGeneral]. Incluye validación
 * local antes del envío al backend.
 *
 * @constructor Crea una instancia con el caso de uso de perfiles.
 * @param profile Caso de uso genérico para operaciones de perfil.
 */
class EditProfilePsicologoViewModel(
    private val profile: ProfileUseCaseGeneral,
) : ViewModel() {
    /** Estado del formulario de edición con los campos del perfil del psicólogo. */
    private val _state =
        MutableStateFlow(
            UpdatePsicologoRequestDTO(
                especialidad = "",
                experiencia = null,
                descripcion = "",
                licencia = "",
                usuario =
                    UsuarioUpdateDTO(
                        nombre = "",
                        apellido = "",
                        email = "",
                    ),
            ),
        )

    /** Estado observable del formulario para la UI. */
    val state: StateFlow<UpdatePsicologoRequestDTO> = _state.asStateFlow()

    /**
     * Carga los datos de un perfil de psicólogo en el formulario de edición.
     *
     * @param data DTO con los datos completos del perfil del psicólogo.
     */
    fun loadProfile(data: PsicologoProfileResponseDTO) {
        _state.value =
            UpdatePsicologoRequestDTO(
                especialidad = data.especialidad ?: "",
                experiencia = data.experiencia,
                descripcion = data.descripcion ?: "",
                licencia = data.licencia ?: "",
                usuario =
                    UsuarioUpdateDTO(
                        nombre = data.usuario?.nombre ?: "",
                        apellido = data.usuario?.apellido ?: "",
                        email = data.usuario?.email ?: "",
                    ),
            )
    }

    /**
     * Carga el perfil del psicólogo desde el backend por su ID y rellena el formulario.
     *
     * @param idPsicologo Identificador del psicólogo cuyo perfil se va a editar.
     */
    fun loadProfileById(idPsicologo: Long) {
        viewModelScope.launch {
            val result = profile.getProfile(idPsicologo)

            result.onSuccess {
                loadProfile(it)
            }

            result.onFailure {
                println("Error cargando perfil: ${it.message}")
            }
        }
    }

    /** Actualiza el campo nombre en el formulario. */
    fun onNombreChange(value: String) {
        _state.value =
            _state.value.copy(
                usuario = _state.value.usuario?.copy(nombre = value),
            )
    }

    /** Actualiza el campo apellido en el formulario. */
    fun onApellidoChange(value: String) {
        _state.value =
            _state.value.copy(
                usuario = _state.value.usuario?.copy(apellido = value),
            )
    }

    /** Actualiza el campo email en el formulario. */
    fun onEmailChange(value: String) {
        _state.value =
            _state.value.copy(
                usuario = _state.value.usuario?.copy(email = value),
            )
    }

    /** Actualiza el campo especialidad en el formulario. */
    fun onEspecialidadChange(value: String) {
        _state.value = _state.value.copy(especialidad = value)
    }

    /** Actualiza el campo experiencia (años) en el formulario. */
    fun onExperienciaChange(value: String) {
        _state.value = _state.value.copy(experiencia = value.toIntOrNull())
    }

    /** Actualiza el campo descripción en el formulario. */
    fun onDescripcionChange(value: String) {
        _state.value = _state.value.copy(descripcion = value)
    }

    /** Actualiza el campo licencia en el formulario. */
    fun onLicenciaChange(value: String) {
        _state.value = _state.value.copy(licencia = value)
    }

    /**
     * Valida que los campos obligatorios del formulario estén completos.
     *
     * @return `true` si todos los campos requeridos son válidos.
     */
    private fun validate(): Boolean {
        val s = _state.value

        if (s.usuario?.nombre.isNullOrBlank()) return false
        if (s.usuario?.apellido.isNullOrBlank()) return false
        if (s.usuario?.email.isNullOrBlank()) return false
        if (!s.usuario.email!!.contains("@")) return false
        if (s.especialidad.isNullOrBlank()) return false

        return true
    }

    /**
     * Envía los cambios del perfil al backend.
     *
     * Es una función suspendida para que la UI pueda esperar el resultado
     * antes de navegar o mostrar feedback.
     *
     * @param idPsicologo Identificador del psicólogo cuyo perfil se actualiza.
     * @return `true` si la actualización fue exitosa, `false` en caso contrario.
     */
    suspend fun updateProfile(idPsicologo: Long): Boolean {
        if (!validate()) return false

        return try {
            val result = profile.updatePsicologoProfile(idPsicologo, _state.value)
            result.isSuccess
        } catch (e: Exception) {
            false
        }
    }
}
