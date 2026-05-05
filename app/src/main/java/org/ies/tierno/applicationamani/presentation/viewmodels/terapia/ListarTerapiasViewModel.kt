package org.ies.tierno.applicationamani.presentation.viewmodels.terapia

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.terapia.TerapiasGeneralUseCase
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import java.math.BigDecimal

class ListarTerapiasViewModel(
    private val repository: CitasRepository,
    private val terapiasGeneralUseCase: TerapiasGeneralUseCase
) : ViewModel() {

    private val _terapias = MutableStateFlow<List<TerapiaResponseDTO>>(emptyList())
    val terapias = _terapias.asStateFlow()

    private val _loading = MutableStateFlow(false)
    val loading = _loading.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error = _error.asStateFlow()

    private val _terapiaCreada = MutableStateFlow<TerapiaResponseDTO?>(null)
    val terapiaCreada = _terapiaCreada.asStateFlow()

    private val _showDialog = MutableStateFlow(false)
    val showDialog = _showDialog.asStateFlow()

    private val _terapiaEditando = MutableStateFlow<TerapiaResponseDTO?>(null)
    val terapiaEditando = _terapiaEditando.asStateFlow()

    // 📌 LISTAR
    fun cargarTerapias() {
        viewModelScope.launch {
            _loading.value = true

            repository.getTerapias()
                .onSuccess { _terapias.value = it }
                .onFailure {
                    _error.value = it.message
                    _terapias.value = emptyList()
                }

            _loading.value = false
        }
    }

    // ➕ CREAR
    fun crearTerapia(nombre: String, duracion: Int, precio: BigDecimal) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = terapiasGeneralUseCase.crearTerapia(
                TerapiaRequest(nombre, duracion, precio)
            )

            result
                .onSuccess {
                    _terapiaCreada.value = it
                    cargarTerapias()
                    _showDialog.value = false
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // ✏️ EDITAR
    fun actualizarTerapia(
        id: Long,
        nombre: String,
        duracion: Int,
        precio: BigDecimal
    ) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            val result = terapiasGeneralUseCase.actualizarTerapia(
                id,
                TerapiaRequest(nombre, duracion, precio)
            )

            result
                .onSuccess {
                    cargarTerapias()
                    _showDialog.value = false
                    _terapiaEditando.value = null
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // 🗑️ ELIMINAR
    fun eliminarTerapia(id: Long) {
        viewModelScope.launch {
            _loading.value = true
            _error.value = null

            terapiasGeneralUseCase.eliminarTerapia(id)
                .onSuccess {
                    cargarTerapias()
                }
                .onFailure {
                    _error.value = it.message
                }

            _loading.value = false
        }
    }

    // Añade este método a tu ListarTerapiasViewModel
    fun limpiarError() {
        _error.value = null
    }
    fun mostrarDialogCrear() {
        _terapiaEditando.value = null
        _showDialog.value = true
    }

    fun mostrarDialogEditar(terapia: TerapiaResponseDTO) {
        _terapiaEditando.value = terapia
        _showDialog.value = true
    }

    fun ocultarDialog() {
        _showDialog.value = false
        _terapiaEditando.value = null
    }

    init {
        cargarTerapias()
    }
}