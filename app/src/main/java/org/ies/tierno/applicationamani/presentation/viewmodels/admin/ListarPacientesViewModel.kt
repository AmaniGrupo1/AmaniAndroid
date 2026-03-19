package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO

class ListarPacientesViewModel(
    val listarPacientesUseCase: TodosLosPacientesUseCase,
    val darBajaPacienteUseCase: DarBajaPacienteUseCase
) : ViewModel() {

    private val _pacientes = MutableStateFlow<List<DatosPacienteAdminDTO>>(emptyList())
    val paciente: StateFlow<List<DatosPacienteAdminDTO>> = _pacientes

    init {
        // Recoger los pacientes del caso de uso
        viewModelScope.launch {
            listarPacientesUseCase().collect { lista ->
                _pacientes.value = lista
            }
        }
    }

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

    fun actualizarPacienteBaja(id: Long) {
        _pacientes.value = _pacientes.value.map {
            if (it.idPaciente == id) it.copy(activo = false) else it
        }
    }
}

