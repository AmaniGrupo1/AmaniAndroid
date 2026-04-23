package org.ies.tierno.applicationamani.presentation.viewmodels.diario

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.DiarioEmocionalRepository
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario

data class DiarioEmocionalUiState(
    val entradas: List<EntradaDiario> = emptyList(),
    val titulo: String = "",
    val contenido: String = "",
    val emocion: String = "",
    val subEmocion: String = "",
    val intensidad: Float = 5f,
    val currentStep: Int = 0,
    val editandoId: Long? = null,
    val mensajeError: String? = null
)

class DiarioEmocionalViewModel(
    private val repository: DiarioEmocionalRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(DiarioEmocionalUiState())
    val uiState: StateFlow<DiarioEmocionalUiState> = _uiState.asStateFlow()

    private val _snackbarMessage = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val snackbarMessage: SharedFlow<String> = _snackbarMessage.asSharedFlow()

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
        if (value.length <= 500) {
            _uiState.update { it.copy(contenido = value) }
        }
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

    fun onNextStep() {
        _uiState.update { it.copy(currentStep = minOf(it.currentStep + 1, 2)) }
    }

    fun onPreviousStep() {
        _uiState.update { it.copy(currentStep = maxOf(it.currentStep - 1, 0)) }
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
                currentStep = 0,
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
            _snackbarMessage.emit(
                if (state.editandoId == null) "Entrada guardada ✓" else "Entrada actualizada ✓"
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
                emocion = "",
                subEmocion = "",
                intensidad = 5f,
                currentStep = 0,
                editandoId = null,
                mensajeError = null
            )
        }
    }
}
