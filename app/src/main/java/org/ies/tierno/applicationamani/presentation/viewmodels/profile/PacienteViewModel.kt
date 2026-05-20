package org.ies.tierno.applicationamani.presentation.viewmodels.profile

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO

/**
 * ViewModel que obtiene y expone el perfil del psicólogo asignado a un paciente.
 *
 * Gestiona la carga desde el backend mediante [ProfileUseCaseGeneral] y expone
 * el resultado en [psicologoAsignado] para que la UI del paciente muestre los
 * datos de contacto y especialidad de su terapeuta.
 *
 * @constructor Crea el ViewModel con el caso de uso de perfiles.
 * @param profileUseCaseGeneral Caso de uso genérico para operaciones de perfil.
 */
class PacienteViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
) : ViewModel() {
    /** Perfil del psicólogo asignado al paciente. `null` si no hay asignación. */
    private val _psicologoAsignado = MutableStateFlow<PsicologoProfileResponseDTO?>(null)
    val psicologoAsignado: StateFlow<PsicologoProfileResponseDTO?> = _psicologoAsignado

    /** Indica si se está ejecutando una operación de carga. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading

    /** Mensaje de error de la última operación fallida. */
    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    /**
     * Carga el perfil del psicólogo asignado al paciente identificado.
     *
     * Lanza una corrutina que consulta [ProfileUseCaseGeneral.obtenerPsicologoAsignado]
     * y actualiza [psicologoAsignado] con el resultado.
     *
     * @param idPaciente Identificador del paciente cuyo psicólogo asignado se consulta.
     */
    fun cargarPsicologoAsignado(idPaciente: Long) {
        _isLoading.value = true

        viewModelScope.launch {
            val result = profileUseCaseGeneral.obtenerPsicologoAsignado(idPaciente)

            result
                .onSuccess { psicologo ->
                    _psicologoAsignado.value = psicologo
                    _error.value = null
                }.onFailure {
                    // solo errores REALES (red, backend, 500)
                    _error.value = it.message ?: "Error al cargar datos"
                    _psicologoAsignado.value = null
                }

            _isLoading.value = false
        }
    }
}
