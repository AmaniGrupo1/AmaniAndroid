package org.ies.tierno.applicationamani.presentation.viewmodels.profile


import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO

class PacienteViewModel(
    private val profileUseCaseGeneral: ProfileUseCaseGeneral
) : ViewModel() {

    private val _psicologoAsignado = MutableStateFlow<PsicologoProfileResponseDTO?>(null)
    val psicologoAsignado: StateFlow<PsicologoProfileResponseDTO?> = _psicologoAsignado

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    fun cargarPsicologoAsignado(idPaciente: Long) {
        _isLoading.value = true
        viewModelScope.launch {
            val result = profileUseCaseGeneral.obtenerPsicologoAsignado(idPaciente)
            result.onSuccess { psicologo ->
                _psicologoAsignado.value = psicologo
                _error.value = null
            }.onFailure { error ->
                _error.value = error.message ?: "Error al cargar los datos del psicólogo"
                _psicologoAsignado.value = null
            }
            _isLoading.value = false
        }
    }
}