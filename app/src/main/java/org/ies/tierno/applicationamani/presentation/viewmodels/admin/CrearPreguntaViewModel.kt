package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest

class CrearPreguntaViewModel(
    private val crearPreguntaUseCase: CrearPreguntaUseCase
) : ViewModel() {

    private val _request = MutableStateFlow(PreguntaRequest("", "", listOf()))
    val request: StateFlow<PreguntaRequest> = _request.asStateFlow()

    private val _opcion1 = MutableStateFlow("")
    private val _opcion2 = MutableStateFlow("")
    private val _opcion3 = MutableStateFlow("")
    private val _opcion4 = MutableStateFlow("")

    private val _guardadoExitoso = MutableStateFlow(false)
    val guardadoExitoso: StateFlow<Boolean> = _guardadoExitoso.asStateFlow()

    fun setTexto(texto: String) {
        _request.value = _request.value.copy(texto = texto)
    }

    fun setTipo(tipo: String) {
        _request.value = _request.value.copy(tipo = tipo)
    }

    fun setOpcion1(texto: String) { _opcion1.value = texto; actualizarOpciones() }
    fun setOpcion2(texto: String) { _opcion2.value = texto; actualizarOpciones() }
    fun setOpcion3(texto: String) { _opcion3.value = texto; actualizarOpciones() }
    fun setOpcion4(texto: String) { _opcion4.value = texto; actualizarOpciones() }

    private fun actualizarOpciones() {
        _request.value = _request.value.copy(
            opciones = listOf(_opcion1.value, _opcion2.value, _opcion3.value, _opcion4.value)
                .filter { it.isNotBlank() }
        )
    }

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

    fun limpiarEstadoGuardado() {
        _guardadoExitoso.value = false
    }
}