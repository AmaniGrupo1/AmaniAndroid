package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
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
     val obtenerPreguntasUseCase: ListarPreguntasUseCase
) : ViewModel(){
    /** Lista observable de preguntas del cuestionario. Puede ser `null` si no hay datos. */
    val preguntas: StateFlow<List<OpcionAdminDTO>?> =
        obtenerPreguntasUseCase()
            .catch { emit(emptyList()) }
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.Eagerly,
                initialValue = emptyList()
            )
}