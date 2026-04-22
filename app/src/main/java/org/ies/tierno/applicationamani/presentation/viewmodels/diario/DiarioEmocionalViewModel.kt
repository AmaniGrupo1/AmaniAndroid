package org.ies.tierno.applicationamani.presentation.viewmodels.diario

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.DiarioEmocionalRepository
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario

data class DiarioEmocionalUiState(
    val entradas: List<EntradaDiario> = emptyList(),
    val titulo: String = "",
    val contenido: String = "",
    val emocion: String = "Tranquilo",
    val subEmocion: String = "",
    val intensidad: Float = 5f,
    val editandoId: Long? = null,
    val mensajeError: String? = null
)

class DiarioEmocionalViewModel(
    private val repository: DiarioEmocionalRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(DiarioEmocionalUiState())
    val uiState: StateFlow<DiarioEmocionalUiState> = _uiState.asStateFlow()

    init {
        viewModelScope.launch {
            repository.observeEntradas().collect { lista ->
                _uiState.update { it.copy(entradas = lista) }
            }
        }
    }

    fun onTituloChange(value: String) {
        _uiState.update { it.copy(titulo = value) }
    }

    fun onContenidoChange(value: String) {
        _uiState.update { it.copy(contenido = value) }
    }

    fun onEmocionChange(value: String) {
        _uiState.update { it.copy(emocion = value, subEmocion = "") }
    }

    fun onSubEmocionChange(value: String) {
        _uiState.update { it.copy(subEmocion = value, emocion = value) }
    }

    fun onIntensidadChange(value: Float) {
        _uiState.update { it.copy(intensidad = value) }
    }

    fun editarEntrada(entrada: EntradaDiario) {
        _uiState.update {
            it.copy(
                editandoId = entrada.id,
                titulo = entrada.titulo,
                contenido = entrada.contenido,
                emocion = entrada.emocion,
                subEmocion = "",
                intensidad = entrada.intensidad.toFloat(),
                mensajeError = null
            )
        }
    }

    fun cancelarEdicion() {
        limpiarFormulario()
    }

    fun guardarEntrada() {
        val state = _uiState.value
        if (state.titulo.isBlank() || state.contenido.isBlank()) {
            _uiState.update { it.copy(mensajeError = "Título y contenido son obligatorios.") }
            return
        }

        viewModelScope.launch {
            repository.guardarEntrada(
                id = state.editandoId,
                titulo = state.titulo,
                contenido = state.contenido,
                emocion = state.emocion,
                intensidad = state.intensidad.toInt()
            )
            limpiarFormulario()
        }
    }

    fun eliminarEntrada(entrada: EntradaDiario) {
        viewModelScope.launch {
            repository.eliminarEntrada(entrada)
            if (_uiState.value.editandoId == entrada.id) {
                limpiarFormulario()
            }
        }
    }

    private fun limpiarFormulario() {
        _uiState.update {
            it.copy(
                titulo = "",
                contenido = "",
                emocion = "Tranquilo",
                subEmocion = "",
                intensidad = 5f,
                editandoId = null,
                mensajeError = null
            )
        }
    }
}
