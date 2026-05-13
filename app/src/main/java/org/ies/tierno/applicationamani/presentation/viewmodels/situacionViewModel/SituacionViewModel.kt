package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore

class SituacionViewModel(
    private val useCase: SituacionUseCase,
    private val userSessionDataStore: UserSessionDataStore
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

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    init {
        // Cargar situaciones solo cuando exista sesión válida (token disponible)
        viewModelScope.launch {
            val session = userSessionDataStore.getSession()
            if (session != null) {
                cargarSituaciones()
            } else {
                // esperar hasta que la sesión esté disponible
                userSessionDataStore.sessionFlow.collect { s ->
                    if (s != null) {
                        cargarSituaciones()
                    } else {
                        _situaciones.value = emptyList()
                    }
                }
            }
        }
    }

    // =========================
    // GET ALL
    // =========================
    fun cargarSituaciones() {
        viewModelScope.launch {
            try {
                useCase.getSituaciones().collect { lista ->
                    _situaciones.value = lista
                }
            } catch (e: Exception) {
                _error.value = e.message
            }
        }
    }

    // =========================
    // GET BY ID
    // =========================
    fun obtenerPorId(id: Long) {
        viewModelScope.launch {
            val result = useCase.getSituacionById(id)
            result
                .onSuccess { _situacionSeleccionada.value = it }
                .onFailure { _error.value = it.message }
        }
    }

    // =========================
    // CREATE
    // =========================
    fun crearSituacion(request: SituacionRequest, onResult: (Boolean, String?) -> Unit = { _, _ -> }) {
        viewModelScope.launch {
            val result = useCase.createSituacion(request)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones() // refrescar lista
            }
        }
    }

    // =========================
    // UPDATE
    // =========================
    fun actualizarSituacion(id: Long, request: SituacionRequest, onResult: (Boolean, String?) -> Unit = { _, _ -> }) {
        viewModelScope.launch {
            val result = useCase.updateSituacion(id, request)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    // =========================
    // DELETE
    // =========================
    fun eliminarSituacion(id: Long, onResult: (Boolean, String?) -> Unit = { _, _ -> }) {
        viewModelScope.launch {
            val result = useCase.deleteSituacion(id)
            onResult(result.isSuccess, result.exceptionOrNull()?.message)

            if (result.isSuccess) {
                cargarSituaciones()
            }
        }
    }

    // =========================
    // LIMPIAR SELECCIÓN Y ERROR
    // =========================
    fun limpiarSeleccion() {
        _situacionSeleccionada.value = null
    }

    fun limpiarError() {
        _error.value = null
    }
}