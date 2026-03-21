package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.admin.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase


class ListarPsicologosAdminViewModel(
    val listarPsicologoAdminUseCase: ListarPsicologoAdminUseCase
): ViewModel() {
    private val _psicologo = MutableStateFlow<List<PsicologoSelfResponseDTO>>(emptyList())
    val psicologos: StateFlow<List<PsicologoSelfResponseDTO>> = _psicologo

    init {
        // Recoger los pacientes del caso de uso
        viewModelScope.launch {
            listarPsicologoAdminUseCase().collect { lista ->
                _psicologo.value = lista
            }
        }
    }
}