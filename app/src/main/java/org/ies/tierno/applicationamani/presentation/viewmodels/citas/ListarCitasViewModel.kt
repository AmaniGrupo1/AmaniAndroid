package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import retrofit2.HttpException

class ListarCitasViewModel(
    private val listarCitasUseCase: ListarCitasUseCase,
    private val citasApi: CitasApi
) : ViewModel() {

    // 📌 Estado de la lista de citas
    var citas = mutableStateListOf<CitaPacienteViewResponseDTO>()
        private set

    // 📌 Estado de carga
    var isLoading = mutableStateOf(false)
        private set

    // 📌 Error
    var error = mutableStateOf<String?>(null)
        private set

    // 📌 Estado de cancelación
    var isCancelling = mutableStateOf(false)
        private set

    // 📌 Cita seleccionada para acciones
    var selectedCita = mutableStateOf<CitaPacienteViewResponseDTO?>(null)
        private set

    /**
     * Cargar citas del paciente logueado
     */
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

    /**
     * Cancelar una cita
     */
    fun cancelarCita(idCita: Long, onSuccess: () -> Unit = {}) {
        viewModelScope.launch {
            try {
                isCancelling.value = true
                error.value = null

                val response = citasApi.cancelarCita(idCita)

                // Actualizar el estado local de la cita
                val index = citas.indexOfFirst { it.idCita == idCita }
                if (index != -1) {
                    val citaActualizada = citas[index].copy(estado = "cancelada")
                    citas[index] = citaActualizada
                }

                onSuccess()

            } catch (e: HttpException) {
                error.value = when (e.code()) {
                    400 -> "No se puede cancelar esta cita"
                    404 -> "Cita no encontrada"
                    else -> "Error al cancelar la cita"
                }
            } catch (e: Exception) {
                error.value = e.message ?: "Error al cancelar la cita"
            } finally {
                isCancelling.value = false
            }
        }
    }

    /**
     * Seleccionar cita para acciones
     */
    fun selectCita(cita: CitaPacienteViewResponseDTO?) {
        selectedCita.value = cita
    }

    /**
     * Refrescar manualmente
     */
    fun refrescar() {
        cargarCitas()
    }

    /**
     * Limpiar errores
     */
    fun clearError() {
        error.value = null
    }
}