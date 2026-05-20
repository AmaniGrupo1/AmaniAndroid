package org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico

import androidx.compose.runtime.State
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.historialClinico.HistorialClinicoUseCase
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

/**
 * ViewModel que gestiona la consulta y creación del historial clínico de un paciente.
 *
 * Permite cargar las entradas existentes del historial y crear nuevas mediante
 * [HistorialClinicoUseCase]. Expone estados de carga, error y el historial creado.
 *
 * @constructor Crea una instancia con el caso de uso de historial clínico.
 * @param historialClinicoUseCase Caso de uso para operaciones CRUD de historial clínico.
 */
class HistorialClinicoPacienteViewModel(
    private val historialClinicoUseCase: HistorialClinicoUseCase,
) : ViewModel() {
    /** Lista de entradas del historial clínico del paciente. */
    private val _historial = mutableStateOf<List<HistorialClinicoResponseDTO>>(emptyList())
    val historial: State<List<HistorialClinicoResponseDTO>> = _historial

    /** Última entrada de historial clínico creada exitosamente. */
    private val _historialCreado = mutableStateOf<HistorialClinicoResponseDTO?>(null)
    val historialCreado: State<HistorialClinicoResponseDTO?> = _historialCreado

    /** Indica si una operación de carga o creación está en curso. */
    private val _isLoading = mutableStateOf(false)
    val isLoading: State<Boolean> = _isLoading

    /** Mensaje de error de la última operación fallida. */
    private val _error = mutableStateOf<String?>(null)
    val error: State<String?> = _error

    /**
     * Carga el historial clínico del paciente desde el backend.
     *
     * Lanza una corrutina que consulta [HistorialClinicoUseCase.getHistorialClinico]
     * con el token de autorización y actualiza [historial] con el resultado.
     *
     * @param idPaciente Identificador del paciente cuyo historial se consulta.
     * @param token Token de autorización para la petición al backend.
     */
    fun cargarHistorialClinico(
        idPaciente: Long,
        token: String,
    ) {
        viewModelScope.launch {
            _isLoading.value = true
            _error.value = null

            try {
                _historial.value =
                    historialClinicoUseCase
                        .getHistorialClinico(idPaciente, token)
            } catch (e: Exception) {
                _error.value = e.message
                e.printStackTrace()
            } finally {
                _isLoading.value = false
            }
        }
    }

    /**
     * Crea una nueva entrada en el historial clínico del paciente.
     *
     * Lanza una corrutina que invoca [HistorialClinicoUseCase.createHistorialClinico]
     * y actualiza [historialCreado] con la respuesta del backend.
     *
     * @param request DTO con los datos de la nueva entrada del historial clínico.
     */
    fun crearHistorialClinico(request: HistorialClinicoRequestDTO) {
        viewModelScope.launch {
            _isLoading.value = true
            _error.value = null

            try {
                _historialCreado.value =
                    historialClinicoUseCase
                        .createHistorialClinico(request)
            } catch (e: Exception) {
                _error.value = e.message
                e.printStackTrace()
            } finally {
                _isLoading.value = false
            }
        }
    }

    /** Reinicia el estado de [historialCreado] a `null`. */
    fun resetHistorialCreado() {
        _historialCreado.value = null
    }
}
