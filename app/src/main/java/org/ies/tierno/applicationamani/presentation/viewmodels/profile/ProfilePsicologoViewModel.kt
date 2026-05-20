package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO

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
}
