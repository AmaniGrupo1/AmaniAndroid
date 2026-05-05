package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest

class SituacionViewModel(
    private val useCase: SituacionUseCase
) : ViewModel() {

    // =========================
    // LISTA
    // =========================
    private val _situaciones = MutableStateFlow<List<SituacionDTO>>(emptyList())
    val situaciones: StateFlow<List<SituacionDTO>> = _situaciones

    // =========================
    // DETALLE
    // =========================
    private val _situacionSeleccionada = MutableStateFlow<SituacionDTO?>(null)
    val situacionSeleccionada: StateFlow<SituacionDTO?> = _situacionSeleccionada

    init {
        cargarSituaciones()
    }

    // =========================
    // GET ALL
    // =========================
    fun cargarSituaciones() {
        viewModelScope.launch {
            useCase.getSituaciones().collect { lista ->
                _situaciones.value = lista
            }
        }
    }

    // =========================
    // GET BY ID
    // =========================
    fun obtenerPorId(id: Long) {
        viewModelScope.launch {
            val result = useCase.getSituacionById(id)
            result.onSuccess {
                _situacionSeleccionada.value = it
            }
        }
    }

    // =========================
    // CREATE
    // =========================
    fun crearSituacion(request: SituacionRequest, onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val result = useCase.createSituacion(request)
            onResult(result.isSuccess)

            if (result.isSuccess) {
                cargarSituaciones() // refrescar lista
            }
        }
    }

    // =========================
    // UPDATE
    // =========================
    fun actualizarSituacion(id: Long, request: SituacionRequest, onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val result = useCase.updateSituacion(id, request)
            onResult(result.isSuccess)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    // =========================
    // DELETE
    // =========================
    fun eliminarSituacion(id: Long, onResult: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val result = useCase.deleteSituacion(id)
            onResult(result.isSuccess)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    // =========================
    // LIMPIAR SELECCIÓN
    // =========================
    fun limpiarSeleccion() {
        _situacionSeleccionada.value = null
    }
}