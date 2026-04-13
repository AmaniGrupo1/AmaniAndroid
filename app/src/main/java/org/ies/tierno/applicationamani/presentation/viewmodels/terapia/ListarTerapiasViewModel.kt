package org.ies.tierno.applicationamani.presentation.viewmodels.terapia

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO

class ListarTerapiasViewModel(
    private val repository: CitasRepository
) : ViewModel() {
    val terapias = MutableStateFlow<List<TerapiaResponseDTO>>(emptyList())

    fun cargarTerapias() {
        viewModelScope.launch {
            repository.getTerapias()
                .onSuccess { terapias.value = it }
                .onFailure { terapias.value = emptyList() }
        }
    }

    init {
        cargarTerapias()
    }
}