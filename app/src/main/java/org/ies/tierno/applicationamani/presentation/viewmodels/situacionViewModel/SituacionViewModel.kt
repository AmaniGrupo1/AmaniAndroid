package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.ListarSituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO

// ViewModel de Situaciones
class SituacionViewModel(
    private val listUseCase: ListarSituacionUseCase
) : ViewModel() {


    private val _situaciones = listUseCase()
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = emptyList()
        )

    val situaciones: StateFlow<List<SituacionDTO>> = _situaciones

    init {
        viewModelScope.launch {
            listUseCase().collect { lista ->
                println("DEBUG: situaciones recibidas = ${lista.size}")
            }
        }
    }
}