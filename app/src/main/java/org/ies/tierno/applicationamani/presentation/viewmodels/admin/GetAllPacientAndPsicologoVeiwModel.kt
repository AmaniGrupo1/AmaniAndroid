package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.dto.login.PsicologoConPacientesDTO

class GetAllPacientAndPsicologoVeiwModel(
    private val getAllPacientAndPsicologoUseCase: GetAllClientAndPsicologoUseCase
) : ViewModel() {

    val _pacientes: StateFlow<List<PsicologoConPacientesDTO>> =
        getAllPacientAndPsicologoUseCase()
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = emptyList()
            )

    val paciente : StateFlow<List<PsicologoConPacientesDTO>> = _pacientes
}