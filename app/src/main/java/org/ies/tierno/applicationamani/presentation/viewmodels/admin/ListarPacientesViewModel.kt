import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.dto.admin.MessageResponse
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO

class ListarPacientesViewModel(
    val listarPacientesUseCase: TodosLosPacientesUseCase,
    val darBajaPacienteUseCase: DarBajaPacienteUseCase
) : ViewModel() {

    private val _paciente = MutableStateFlow<List<DatosPacienteAdminDTO>>(emptyList())
    val paciente: StateFlow<List<DatosPacienteAdminDTO>> = _paciente

    private val _bajaEstado = MutableStateFlow<Result<MessageResponse>?>(null)
    val bajaEstado: StateFlow<Result<MessageResponse>?> = _bajaEstado

    init {
        viewModelScope.launch {
            listarPacientesUseCase().collect { lista ->
                _paciente.value = lista
            }
        }
    }

    /**
     * Dar de baja paciente (CORREGIDO)
     */
    fun darBajaPsicologo(id: Long) {
        viewModelScope.launch {
            val result = darBajaPacienteUseCase(id)

            _bajaEstado.value = result

            if (result.isSuccess) {
                actualizarPacienteBaja(id)
            }
        }
    }

    /**
     * Actualiza localmente el estado del paciente
     */
    private fun actualizarPacienteBaja(id: Long) {
        _paciente.value = _paciente.value.map {
            if (it.idPaciente == id) it.copy(activo = false) else it
        }
    }
}