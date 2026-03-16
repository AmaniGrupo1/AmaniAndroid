package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.PreguntasRepository
import org.ies.tierno.applicationamani.domain.models.Opcion
import org.ies.tierno.applicationamani.domain.models.PreguntaConOpciones
import org.ies.tierno.applicationamani.domain.usecases.GuardarRespuestaUseCase

class TestPacienteViewModel(
    val preguntasRepository: PreguntasRepository,
    val guardarRespuestaUseCase: GuardarRespuestaUseCase
) : ViewModel() {

    private val _preguntas = MutableStateFlow<List<PreguntaConOpciones>>(emptyList())
    val preguntas: StateFlow<List<PreguntaConOpciones>> = _preguntas

    private val _respuestas = MutableStateFlow<MutableMap<Int, Opcion>>(mutableMapOf())
    val respuestas: StateFlow<Map<Int, Opcion>> = _respuestas

    fun cargarPreguntas() {
        viewModelScope.launch {
            _preguntas.value = preguntasRepository.obtenerPreguntas()
        }
    }

    fun seleccionarRespuesta(index: Int, opcion: Opcion) {
        _respuestas.value[index] = opcion
    }

    fun calcularResultado(): Int {
        return _respuestas.value.values.sumOf { it.valor }
    }

    fun responderPregunta(
        pacienteId: String,
        preguntaId: String,
        opcion: Opcion
    ) {

        viewModelScope.launch {

            guardarRespuestaUseCase(
                pacienteId,
                preguntaId,
                opcion
            )

        }
    }
}
