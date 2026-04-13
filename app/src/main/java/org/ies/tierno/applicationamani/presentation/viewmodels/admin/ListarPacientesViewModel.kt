package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO

/**
 * ViewModel para la gestión y listado de pacientes en el panel de administración.
 *
 * Carga todos los pacientes al inicializarse y permite dar de baja a un
 * paciente concreto. La UI observa [paciente] para reflejar los cambios.
 *
 * @param listarPacientesUseCase Caso de uso que obtiene la lista de pacientes.
 * @param darBajaPacienteUseCase Caso de uso que marca a un paciente como inactivo.
 *
 * @see org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
 * @see org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
 */
class ListarPacientesViewModel(
    val listarPacientesUseCase: TodosLosPacientesUseCase,
    val darBajaPacienteUseCase: DarBajaPacienteUseCase
) : ViewModel() {

    /** Flujo mutable con la lista de pacientes. */
    private val _paciente = MutableStateFlow<List<DatosPacienteAdminDTO>>(emptyList())
    val paciente: StateFlow<List<DatosPacienteAdminDTO>> = _paciente

    init {
        // Recoger los pacientes del caso de uso
        viewModelScope.launch {
            listarPacientesUseCase().collect { lista ->
                _paciente.value = lista
            }
        }
    }

    /**
     * Da de baja a un paciente por su identificador.
     *
     * Si la operación es exitosa, actualiza la lista local para reflejar la baja.
     *
     * @param id Identificador único del paciente.
     * @return [Result.success] con mensaje de confirmación,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun darBajaPaciente(id: Long): Result<String> {
        return try {
            val result = darBajaPacienteUseCase(id)
            if (result.isSuccess) {
                // Actualizamos localmente para que la UI refleje la baja
                actualizarPacienteBaja(id)
            }
            result
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    /**
     * Actualiza localmente el estado de un paciente a inactivo.
     *
     * @param id Identificador único del paciente dado de baja.
     */
    fun actualizarPacienteBaja(id: Long) {
        _paciente.value = _paciente.value.map {
            if (it.idPaciente == id) it.copy(activo = false) else it
        }
    }
}
