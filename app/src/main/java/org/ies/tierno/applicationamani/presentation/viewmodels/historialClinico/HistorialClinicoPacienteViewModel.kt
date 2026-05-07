package org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico

import androidx.compose.runtime.*
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.historialClinico.HistorialClinicoUseCase
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

class HistorialClinicoPacienteViewModel(
    private val historialClinicoUseCase: HistorialClinicoUseCase
) : ViewModel() {

    private val _historial = mutableStateOf<List<HistorialClinicoResponseDTO>>(emptyList())
    val historial: State<List<HistorialClinicoResponseDTO>> = _historial

    private val _historialCreado = mutableStateOf<HistorialClinicoResponseDTO?>(null)
    val historialCreado: State<HistorialClinicoResponseDTO?> = _historialCreado

    private val _isLoading = mutableStateOf(false)
    val isLoading: State<Boolean> = _isLoading

    private val _error = mutableStateOf<String?>(null)
    val error: State<String?> = _error

    fun cargarHistorialClinico(idPaciente: Long, token: String) {
        viewModelScope.launch {
            _isLoading.value = true
            _error.value = null

            try {
                _historial.value = historialClinicoUseCase
                    .getHistorialClinico(idPaciente, token)
            } catch (e: Exception) {
                _error.value = e.message
                e.printStackTrace()
            } finally {
                _isLoading.value = false
            }
        }
    }

    fun crearHistorialClinico(request: HistorialClinicoRequestDTO) {
        viewModelScope.launch {
            _isLoading.value = true
            _error.value = null

            try {
                _historialCreado.value = historialClinicoUseCase
                    .createHistorialClinico(request)
            } catch (e: Exception) {
                _error.value = e.message
                e.printStackTrace()
            } finally {
                _isLoading.value = false
            }
        }
    }

    fun resetHistorialCreado() {
        _historialCreado.value = null
    }
}