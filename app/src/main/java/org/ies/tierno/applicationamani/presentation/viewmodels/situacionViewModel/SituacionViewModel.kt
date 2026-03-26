package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
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

    private val _situaciones = MutableStateFlow<List<SituacionDTO>>(emptyList())
    val situaciones: StateFlow<List<SituacionDTO>> = _situaciones

    init {
        cargarSituaciones()
    }

    private fun cargarSituaciones() {
        viewModelScope.launch {
            listUseCase().collect { lista ->
                println("DEBUG: situaciones recibidas = ${lista.size}")
                _situaciones.value = lista
            }
        }
    }
}