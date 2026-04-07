package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO


class ListarPacientesByPsicologoViewModel(
    val listarPacientesByPsicologo: ListarPacientesByPsicologo
) : ViewModel() {

    private val _paciente = MutableStateFlow<List<PacientePsicologoResponseDTO>>(emptyList())
    val paciente: StateFlow<List<PacientePsicologoResponseDTO>> = _paciente

    init {
        // Recoger los pacientes del caso de uso
        viewModelScope.launch {
            listarPacientesByPsicologo().collect { lista ->
                _paciente.value = lista
            }
        }
    }
}