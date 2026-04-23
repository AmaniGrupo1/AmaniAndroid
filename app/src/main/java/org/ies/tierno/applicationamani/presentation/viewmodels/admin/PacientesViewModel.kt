package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetPacientesSinPsicologoUseCase
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO

class PacientesViewModel(
    private val getPacientesSinPsicologoUseCase: GetPacientesSinPsicologoUseCase
) : ViewModel() {

    private val _pacientes = MutableStateFlow<List<PacienteBasicoResponseDTO>>(emptyList())
    val pacientes: StateFlow<List<PacienteBasicoResponseDTO>> = _pacientes

    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    fun cargarPacientesSinPsicologo() {
        viewModelScope.launch {
            _loading.value = true

            getPacientesSinPsicologoUseCase()
                .catch {
                    _pacientes.value = emptyList()
                }
                .collect {
                    _pacientes.value = it
                    _loading.value = false
                }
        }
    }
}