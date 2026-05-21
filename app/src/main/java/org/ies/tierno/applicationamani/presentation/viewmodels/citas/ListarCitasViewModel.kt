package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.historialCita.HistorialCitaUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO

class ListarCitasViewModel(
    private val listarCitasUseCase: ListarCitasUseCase,
    private val citasRepository: CitasRepository,
    val historialCitaUseCase : HistorialCitaUseCase
) : ViewModel() {
    var citas = mutableStateListOf<CitaPacienteViewResponseDTO>()
        private set

    var isLoading = mutableStateOf(false)
        private set

    var error = mutableStateOf<String?>(null)
        private set

    var isCancelling = mutableStateOf(false)
        private set

    var selectedCita = mutableStateOf<CitaPacienteViewResponseDTO?>(null)
        private set

    var historialCitas = mutableStateListOf<HistorialCitaResponseDTO>()
        private set

    fun cargarCitas() {
        viewModelScope.launch {
            try {
                isLoading.value = true
                error.value = null
                val result = listarCitasUseCase()
                citas.clear()
                citas.addAll(result)
            } catch (e: Exception) {
                error.value = e.message ?: "Error al cargar citas"
            } finally {
                isLoading.value = false
            }
        }
    }

    fun cancelarCita(
        idCita: Long,
        onSuccess: () -> Unit = {},
    ) {
        viewModelScope.launch {
            try {
                isCancelling.value = true
                error.value = null
                val result = citasRepository.cancelarCita(idCita)
                if (result.isSuccess) {
                    val index = citas.indexOfFirst { it.idCita == idCita }
                    if (index != -1) {
                        citas[index] = citas[index].copy(estado = "cancelada")
                    }
                    onSuccess()
                } else {
                    error.value = result.exceptionOrNull()?.message ?: "Error al cancelar la cita"
                }
            } catch (e: Exception) {
                error.value = e.message ?: "Error al cancelar la cita"
            } finally {
                isCancelling.value = false
            }
        }
    }

    fun cargarHistorialCitas() {
        viewModelScope.launch {
            try {
                isLoading.value = true
                error.value = null

                val result = historialCitaUseCase.getHistorialCitas()

                if (result.isSuccess) {
                    historialCitas.clear()
                    historialCitas.addAll(result.getOrDefault(emptyList()))
                } else {
                    error.value = result.exceptionOrNull()?.message ?: "Error al cargar historial de citas"
                }

            } catch (e: Exception) {
                error.value = e.message ?: "Error al cargar historial de citas"
            } finally {
                isLoading.value = false
            }
        }
    }

    fun selectCita(cita: CitaPacienteViewResponseDTO?) {
        selectedCita.value = cita
    }

    fun refrescar() {
        cargarCitas()
    }

    fun clearError() {
        error.value = null
    }
}
