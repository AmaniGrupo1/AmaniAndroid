package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO

/**
 * ViewModel que gestiona el listado de citas del paciente y su cancelación.
 *
 * Obtiene las citas mediante [ListarCitasUseCase], permite cancelar una cita
 * individual a través de [CitasRepository] y mantener una cita seleccionada
 * para operaciones de detalle.
 *
 * @constructor Crea una instancia con el caso de uso y repositorio de citas.
 * @param listarCitasUseCase Caso de uso que obtiene las citas del paciente.
 * @param citasRepository Repositorio para operaciones sobre citas (cancelación).
 */
class ListarCitasViewModel(
    private val listarCitasUseCase: ListarCitasUseCase,
    private val citasRepository: CitasRepository,
) : ViewModel() {
    /** Lista mutable observable de citas del paciente. */
    var citas = mutableStateListOf<CitaPacienteViewResponseDTO>()
        private set

    /** Indica si las citas se están cargando desde el backend. */
    var isLoading = mutableStateOf(false)
        private set

    /** Mensaje de error de la última operación fallida. */
    var error = mutableStateOf<String?>(null)
        private set

    /** Indica si una cancelación de cita está en curso. */
    var isCancelling = mutableStateOf(false)
        private set

    /** Cita seleccionada por el usuario para ver detalle o cancelar. */
    var selectedCita = mutableStateOf<CitaPacienteViewResponseDTO?>(null)
        private set

    /**
     * Carga la lista de citas del paciente desde el backend.
     *
     * Lanza una corrutina que invoca [ListarCitasUseCase] y reemplaza
     * completamente la lista [citas] con los resultados.
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
     * Cancela una cita identificada por su ID.
     *
     * Lanza una corrutina que invoca [CitasRepository.cancelarCita] y,
     * si la operación tiene éxito, actualiza el estado local de la cita
     * a "cancelada". Invoca [onSuccess] al completar correctamente.
     *
     * @param idCita Identificador de la cita a cancelar.
     * @param onSuccess Callback que se ejecuta si la cancelación tiene éxito.
     */
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

    /**
     * Establece la cita seleccionada para mostrar su detalle.
     *
     * @param cita Cita a seleccionar. `null` para deseleccionar.
     */
    fun selectCita(cita: CitaPacienteViewResponseDTO?) {
        selectedCita.value = cita
    }

    /** Recarga la lista de citas desde el backend. */
    fun refrescar() {
        cargarCitas()
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        error.value = null
    }
}
