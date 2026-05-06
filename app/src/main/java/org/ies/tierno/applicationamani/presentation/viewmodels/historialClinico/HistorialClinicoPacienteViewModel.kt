package org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import androidx.compose.runtime.*
import org.ies.tierno.applicationamani.domain.usecases.historialClinico.HistorialClinicoUseCase
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO

class HistorialClinicoPacienteViewModel(
    private val historialClinicoUseCase: HistorialClinicoUseCase
) : ViewModel() {

    var historial by mutableStateOf<List<HistorialClinicoResponseDTO>>(emptyList())
        private set

    var isLoading by mutableStateOf(false)
        private set

    var error by mutableStateOf<String?>(null)
        private set

    // 🔥 FUNCIÓN QUE BUSCABAS
    fun cargarHistorialClinico(idPaciente: Long, token: String) {
        viewModelScope.launch {
            isLoading = true
            error = null

            try {
                historial = historialClinicoUseCase.getHistorialClinico(idPaciente, token)
            } catch (e: Exception) {
                error = e.message
                e.printStackTrace()
            } finally {
                isLoading = false
            }
        }
    }
}