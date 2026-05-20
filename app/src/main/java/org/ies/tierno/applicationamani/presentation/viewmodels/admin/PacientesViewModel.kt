package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetPacientesSinPsicologoUseCase
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO

/**
 * ViewModel que lista los pacientes que aún no tienen un psicólogo asignado.
 *
 * Utiliza [GetPacientesSinPsicologoUseCase] para obtener los pacientes sin
 * asignación desde el backend y expone la lista mediante [pacientes].
 *
 * @constructor Crea el ViewModel con el caso de uso de búsqueda.
 * @param getPacientesSinPsicologoUseCase Caso de uso que obtiene pacientes sin psicólogo.
 */
class PacientesViewModel(
    private val getPacientesSinPsicologoUseCase: GetPacientesSinPsicologoUseCase,
) : ViewModel() {
    /** Lista interna mutable de pacientes sin psicólogo. */
    private val _pacientes = MutableStateFlow<List<PacienteBasicoResponseDTO>>(emptyList())
    /** Lista observable de pacientes sin psicólogo asignado. */
    val pacientes: StateFlow<List<PacienteBasicoResponseDTO>> = _pacientes

    /** Estado interno de carga. */
    private val _loading = MutableStateFlow(false)
    /** Indica si la lista de pacientes se está cargando. */
    val loading: StateFlow<Boolean> = _loading

    /**
     * Carga la lista de pacientes que no tienen psicólogo asignado.
     *
     * Lanza una corrutina que recolecta el flujo de [GetPacientesSinPsicologoUseCase]
     * y actualiza [pacientes] con los resultados. En caso de error, limpia la lista.
     */
    fun cargarPacientesSinPsicologo() {
        viewModelScope.launch {
            _loading.value = true

            getPacientesSinPsicologoUseCase()
                .catch {
                    _pacientes.value = emptyList()
                    _loading.value = false
                }.collect {
                    _pacientes.value = it
                    _loading.value = false
                }
        }
    }
}
