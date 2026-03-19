package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO

class CuestionarioViewModel(
     val obtenerPreguntasUseCase: ListarPreguntasUseCase
) : ViewModel(){
    val preguntas: StateFlow<List<OpcionAdminDTO>?> =
        obtenerPreguntasUseCase()
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = emptyList()
            )
}