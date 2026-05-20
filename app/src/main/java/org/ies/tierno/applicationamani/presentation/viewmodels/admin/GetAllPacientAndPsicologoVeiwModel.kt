package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo

class GetAllPacientAndPsicologoVeiwModel(
    private val getAllPacientAndPsicologoUseCase: GetAllClientAndPsicologoUseCase,
) : ViewModel() {
    /** Flujo interno con la lista de pacientes y psicólogos. */
    val _pacientes: StateFlow<List<ListaPacientesAndPsicologo>> =
        getAllPacientAndPsicologoUseCase()
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = emptyList(),
            )

    /** Lista observable de pacientes con su psicólogo asignado. */
    val paciente: StateFlow<List<ListaPacientesAndPsicologo>> = _pacientes
}
