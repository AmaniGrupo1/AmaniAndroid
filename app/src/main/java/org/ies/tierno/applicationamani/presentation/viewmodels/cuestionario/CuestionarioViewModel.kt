package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO

/**
 * ViewModel que expone las preguntas del cuestionario para la vista del paciente.
 *
 * Obtiene las preguntas mediante [ListarPreguntasUseCase] y las expone como
 * un [StateFlow] para que la UI las observe de forma reactiva.
 *
 * @param obtenerPreguntasUseCase Caso de uso para listar las preguntas del test.
 *
 * @see org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
 */
class CuestionarioViewModel(
     val obtenerPreguntasUseCase: ListarPreguntasUseCase,
    val responderTestUseCase : ResponderTestUseCase
) : ViewModel(){
    /** Lista observable de preguntas del cuestionario. Puede ser `null` si no hay datos. */
    val preguntas: StateFlow<List<OpcionAdminDTO>?> =
        obtenerPreguntasUseCase()
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = emptyList()
            )

    private val _respuestaEnviada =
        MutableStateFlow(false)

    val respuestaEnviada: StateFlow<Boolean> =
        _respuestaEnviada

    fun enviarRespuestas(
        idPaciente: Long,
        respuestas: List<RespuestasRequestDTO>
    ) {

        viewModelScope.launch {

            val ok =
                responderTestUseCase(
                    idPaciente,
                    respuestas
                )

            _respuestaEnviada.value = ok

        }

    }
}