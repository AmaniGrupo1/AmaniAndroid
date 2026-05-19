package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest

/**
 * ViewModel para la creación de preguntas de test desde el panel de administración.
 *
 * Mantiene el estado del formulario (texto, tipo, opciones) mediante [StateFlow]
 * y ejecuta la creación de la pregunta a través de [CrearPreguntaUseCase].
 *
 * @param crearPreguntaUseCase Caso de uso que persiste la pregunta en el backend.
 *
 * @see org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
 */
class CrearPreguntaViewModel(
    private val crearPreguntaUseCase: CrearPreguntaUseCase,
) : ViewModel() {
    /** Estado actual del formulario de pregunta. */
    private val _request = MutableStateFlow(PreguntaRequest("", "", listOf()))

    /** Formulario de pregunta observable por la UI. */
    val request: StateFlow<PreguntaRequest> = _request.asStateFlow()

    /** Texto de la opción 1. */
    private val _opcion1 = MutableStateFlow("")

    /** Texto de la opción 2. */
    private val _opcion2 = MutableStateFlow("")

    /** Texto de la opción 3. */
    private val _opcion3 = MutableStateFlow("")

    /** Texto de la opción 4. */
    private val _opcion4 = MutableStateFlow("")

    /** Indica si la pregunta se guardó con éxito. */
    private val _guardadoExitoso = MutableStateFlow(false)

    /** Estado observable que indica si el guardado fue exitoso. */
    val guardadoExitoso: StateFlow<Boolean> = _guardadoExitoso.asStateFlow()

    /** Actualiza el enunciado de la pregunta. */
    fun setTexto(texto: String) {
        _request.value = _request.value.copy(texto = texto)
    }

    /** Actualiza el tipo de la pregunta. */
    fun setTipo(tipo: String) {
        _request.value = _request.value.copy(tipo = tipo)
    }

    /** Actualiza el texto de la opción 1 y recalcula la lista de opciones. */
    fun setOpcion1(texto: String) {
        _opcion1.value = texto
        actualizarOpciones()
    }

    /** Actualiza el texto de la opción 2 y recalcula la lista de opciones. */
    fun setOpcion2(texto: String) {
        _opcion2.value = texto
        actualizarOpciones()
    }

    /** Actualiza el texto de la opción 3 y recalcula la lista de opciones. */
    fun setOpcion3(texto: String) {
        _opcion3.value = texto
        actualizarOpciones()
    }

    /** Actualiza el texto de la opción 4 y recalcula la lista de opciones. */
    fun setOpcion4(texto: String) {
        _opcion4.value = texto
        actualizarOpciones()
    }

    /**
     * Reconstruye la lista de opciones a partir de los campos individuales,
     * descartando las opciones vacías.
     */
    private fun actualizarOpciones() {
        _request.value =
            _request.value.copy(
                opciones =
                    listOf(_opcion1.value, _opcion2.value, _opcion3.value, _opcion4.value)
                        .filter { it.isNotBlank() },
            )
    }

    /**
     * Lanza la creación de la pregunta en el backend.
     *
     * Actualiza [guardadoExitoso] a `true` si la operación tiene éxito,
     * o a `false` si se produce una excepción.
     */
    fun guardarPregunta() {
        viewModelScope.launch {
            try {
                crearPreguntaUseCase.invoke(_request.value)
                _guardadoExitoso.value = true
            } catch (e: Exception) {
                _guardadoExitoso.value = false
            }
        }
    }

    /** Reinicia el estado de [guardadoExitoso] a `false`. */
    fun limpiarEstadoGuardado() {
        _guardadoExitoso.value = false
    }
}
