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

/**
 * Estado de la UI para el diario emocional.
 *
 * Agrupa todas las propiedades observables que la pantalla de diario
 * necesita: lista de entradas, campos del formulario, paso actual del wizard
 * y mensajes de error.
 *
 * @property entradas Lista de entradas del diario emocional.
 * @property titulo Título de la entrada en edición.
 * @property contenido Contenido textual de la entrada (máx. 500 caracteres).
 * @property emocion Emoción principal seleccionada.
 * @property subEmocion Subemoción derivada de la emoción principal.
 * @property intensidad Nivel de intensidad emocional (escala 1-10).
 * @property currentStep Paso actual del asistente de creación (0, 1 o 2).
 * @property editandoId ID de la entrada en edición, `null` si es creación nueva.
 * @property mensajeError Mensaje de validación mostrado en la UI.
 */
data class DiarioEmocionalUiState(
    val entradas: List<EntradaDiario> = emptyList(),
    val titulo: String = "",
    val contenido: String = "",
    val emocion: String = "",
    val subEmocion: String = "",
    val intensidad: Float = 5f,
    val currentStep: Int = 0,
    val editandoId: Long? = null,
    val mensajeError: String? = null,
)

/**
 * ViewModel que gestiona el diario emocional del usuario.
 *
 * Permite crear, editar y eliminar entradas del diario mediante
 * [DiarioEmocionalRepository]. Expone un [SharedFlow] de mensajes snackbar
 * para notificar al usuario las operaciones realizadas. Soporta sincronización
 * forzada con el backend y un asistente de creación en 3 pasos.
 *
 * @constructor Crea una instancia con el repositorio de diario emocional.
 * @param repository Repositorio local/remoto para operaciones del diario.
 */
class DiarioEmocionalViewModel(
    private val repository: DiarioEmocionalRepository,
) : ViewModel() {
    /** Estado completo de la UI del diario emocional. */
    private val _uiState = MutableStateFlow(DiarioEmocionalUiState())
    val uiState: StateFlow<DiarioEmocionalUiState> = _uiState.asStateFlow()

    /** Canal de mensajes de una sola emisión para el snackbar. */
    private val _snackbarMessage = MutableSharedFlow<String>(extraBufferCapacity = 1)
    val snackbarMessage: SharedFlow<String> = _snackbarMessage.asSharedFlow()

    init {
        viewModelScope.launch {
            repository.observeEntradas().collect { lista ->
                _uiState.update { it.copy(entradas = lista) }
            }
        }
    }

    /** Actualiza el título de la entrada en edición. */
    fun onTituloChange(value: String) {
        _uiState.update { it.copy(titulo = value) }
    }

    /** Actualiza el contenido, con límite de 500 caracteres. */
    fun onContenidoChange(value: String) {
        if (value.length <= 500) {
            _uiState.update { it.copy(contenido = value) }
        }
    }

    /** Establece la emoción principal y reinicia la subemoción. */
    fun onEmocionChange(value: String) {
        _uiState.update { it.copy(emocion = value, subEmocion = "") }
    }

    /** Establece la subemoción y la emoción principal simultáneamente. */
    fun onSubEmocionChange(value: String) {
        _uiState.update { it.copy(subEmocion = value, emocion = value) }
    }

    /** Ajusta la intensidad emocional en la escala. */
    fun onIntensidadChange(value: Float) {
        _uiState.update { it.copy(intensidad = value) }
    }

    /** Avanza al siguiente paso del asistente (máximo 2). */
    fun onNextStep() {
        _uiState.update { it.copy(currentStep = minOf(it.currentStep + 1, 2)) }
    }

    /** Retrocede al paso anterior del asistente (mínimo 0). */
    fun onPreviousStep() {
        _uiState.update { it.copy(currentStep = maxOf(it.currentStep - 1, 0)) }
    }

    /**
     * Carga una entrada existente en el formulario para su edición.
     *
     * @param entrada Entrada del diario a editar.
     */
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
                mensajeError = null,
            )
        }
    }

    /** Cancela la edición en curso y limpia el formulario. */
    fun cancelarEdicion() {
        limpiarFormulario()
    }

    /**
     * Guarda la entrada actual (crea o actualiza) en el repositorio.
     *
     * Valida que título y contenido no estén vacíos antes de persistir.
     * Emite un mensaje de confirmación por [snackbarMessage].
     */
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
                intensidad = state.intensidad.toInt(),
            )
            _snackbarMessage.emit(
                if (state.editandoId ==
                    null
                ) {
                    "Entrada guardada. Se sincronizará con el servidor."
                } else {
                    "Entrada actualizada. Se sincronizará con el servidor."
                },
            )
            limpiarFormulario()
        }
    }

    /**
     * Elimina una entrada del diario emocional.
     *
     * @param entrada Entrada a eliminar del repositorio.
     */
    fun eliminarEntrada(entrada: EntradaDiario) {
        viewModelScope.launch {
            repository.eliminarEntrada(entrada)
            _snackbarMessage.emit("Entrada eliminada. Se sincronizará con el servidor.")
            if (_uiState.value.editandoId == entrada.id) {
                limpiarFormulario()
            }
        }
    }

    /** Fuerza la sincronización de entradas pendientes con el backend. */
    fun forzarSincronizacion() {
        viewModelScope.launch {
            repository.syncNow()
            _snackbarMessage.emit("Sincronización iniciada...")
        }
    }

    /** Reinicia todos los campos del formulario a sus valores por defecto. */
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
                mensajeError = null,
            )
        }
    }
}
