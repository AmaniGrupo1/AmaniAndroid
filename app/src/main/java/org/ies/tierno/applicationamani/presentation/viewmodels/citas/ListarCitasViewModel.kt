package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.domain.usecases.historialCita.HistorialCitaUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.format.DateTimeFormatter

class ListarCitasViewModel(
    private val listarCitasUseCase: ListarCitasUseCase,
    private val citasRepository: CitasRepository,
    private val historialCitaUseCase: HistorialCitaUseCase,
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession = _userSession.asStateFlow()

    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia = _disponibilidadDia.asStateFlow()

    val listTerapias = mutableStateListOf<TerapiaResponseDTO>()

    init {
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
            }
        }
    }
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
                val session = userSession.value
                val filteredResult = if (session != null && session.rol.lowercase().trim() == "paciente") {
                    val patientId = session.idPaciente ?: session.idUsuario
                    result.filter { it.idPaciente == patientId }
                } else {
                    result
                }
                citas.addAll(filteredResult)
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

    fun actualizarEstadoPagoLocal(idCita: Long, estadoPago: EstadoPago) {
        val index = citas.indexOfFirst { it.idCita == idCita }
        if (index != -1) {
            citas[index] = citas[index].copy(estadoPago = estadoPago)
        }
    }

    fun cargarHistorialCitas() {
        viewModelScope.launch {
            try {
                isLoading.value = true
                error.value = null

                val result = historialCitaUseCase.getHistorialCitas()

                if (result.isSuccess) {
                    val list = result.getOrDefault(emptyList())
                    val session = userSession.value
                    val filteredList = if (session != null && session.rol.lowercase().trim() == "paciente") {
                        val patientName = session.nombre
                        if (!patientName.isNullOrBlank()) {
                            list.filter { it.nombrePaciente.equals(patientName, ignoreCase = true) }
                        } else {
                            list
                        }
                    } else {
                        list
                    }
                    historialCitas.clear()
                    historialCitas.addAll(filteredList)
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

    fun cargarDisponibilidadDia(fecha: LocalDate, idPsicologo: Long?, duracionMinutos: Int = 60) {
        val psychologistId = idPsicologo ?: userSession.value?.idPsicologo ?: return
        viewModelScope.launch {
            try {
                citasRepository.getDisponibilidadDia(psychologistId, fecha.toString(), duracionMinutos)
                    .onSuccess {
                        _disponibilidadDia.value = it
                    }
                    .onFailure { e ->
                        error.value = e.message ?: "Error al cargar disponibilidad"
                    }
            } catch (e: Exception) {
                error.value = e.message ?: "Error al cargar disponibilidad"
            }
        }
    }

    fun limpiarDisponibilidad() {
        _disponibilidadDia.value = null
    }

    fun cargarTerapias() {
        viewModelScope.launch {
            citasRepository.getTerapias()
                .onSuccess {
                    listTerapias.clear()
                    listTerapias.addAll(it)
                }
                .onFailure { e ->
                    error.value = e.message ?: "Error al cargar terapias"
                }
        }
    }

    fun editarCita(
        idCita: Long,
        idPaciente: Long?,
        idPsicologo: Long?,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        estadoPago: EstadoPago,
        monto: BigDecimal,
        modalidad: ModalidadCita,
        onSuccess: () -> Unit = {},
        onError: (String) -> Unit = {}
    ) {
        val patientId = idPaciente ?: userSession.value?.idPaciente ?: userSession.value?.idUsuario ?: return
        val psychologistId = idPsicologo ?: userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            try {
                isLoading.value = true
                error.value = null

                val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")
                val startDatetime = LocalDateTime.of(fecha, hora).format(formatter)

                val request = CrearCitaRequestDTO(
                    idPaciente = patientId,
                    idPsicologo = psychologistId,
                    startDatetime = startDatetime,
                    durationMinutes = duracionMinutos,
                    metodoPago = metodoPago,
                    estadoPago = estadoPago,
                    monto = monto,
                    motivo = motivo,
                    estado = EstadoCita.PENDIENTE,
                    idTipoTerapia = idTipoTerapia,
                    modalidad = modalidad
                )

                citasRepository.editarCita(idCita, request)
                    .onSuccess {
                        cargarCitas()
                        onSuccess()
                    }
                    .onFailure { e ->
                        val msg = e.message ?: "Error al editar la cita"
                        error.value = msg
                        onError(msg)
                    }
            } catch (e: Exception) {
                val msg = e.message ?: "Error al editar la cita"
                error.value = msg
                onError(msg)
            } finally {
                isLoading.value = false
            }
        }
    }
}

