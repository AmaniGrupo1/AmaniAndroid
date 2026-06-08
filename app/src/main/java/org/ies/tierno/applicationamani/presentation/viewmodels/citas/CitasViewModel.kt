package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.domain.events.HorarioEvents
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter

/**
 * ViewModel que gestiona la visualización y reserva de citas desde la perspectiva del paciente.
 *
 * Obtiene el psicólogo asignado, carga la agenda mensual y la disponibilidad diaria,
 * y permite reservar y cancelar citas. Reacciona a eventos de actualización de horario
 * para refrescar la disponibilidad en tiempo real.
 *
 * @param citasRepository Repositorio para operaciones de citas y disponibilidad.
 * @param profileRepository Repositorio para consultar el psicólogo asignado al paciente.
 * @param userSessionDataStore Almacén local de la sesión del paciente autenticado.
 */
import org.ies.tierno.applicationamani.core.crash.CrashReporter

class CitasViewModel(
    private val citasRepository: CitasRepository,
    private val profileRepository: ProfileRepository,
    private val userSessionDataStore: UserSessionDataStore,
    private val crashReporter: CrashReporter,
) : ViewModel() {
    /** Sesión del usuario autenticado. */
    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    /** Identificador del psicólogo asignado al paciente. */
    private val _psicologoId = MutableStateFlow<Long?>(null)
    val psicologoId: StateFlow<Long?> = _psicologoId.asStateFlow()

    /** Citas del mes visible en la agenda del paciente. */
    private val _agendaMensual = MutableStateFlow<List<AgendaItemDTO>>(emptyList())
    val agendaMensual: StateFlow<List<AgendaItemDTO>> = _agendaMensual.asStateFlow()

    /** Disponibilidad horaria del psicólogo para la fecha seleccionada. */
    private val _disponibilidadDia = MutableStateFlow<DisponibilidadDiaResponse?>(null)
    val disponibilidadDia: StateFlow<DisponibilidadDiaResponse?> = _disponibilidadDia.asStateFlow()

    /** Indica si una operación de carga está en curso. */
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    /** Mensaje de error de la última operación fallida. */
    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    init {
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
                if (session?.idPsicologo != null) {
                    _psicologoId.value = session.idPsicologo
                } else if (session?.idPaciente != null) {
                    cargarPsicologoAsignado(session.idPaciente)
                }
            }
        }
        // Re-fetcha disponibilidad si el psicólogo actualiza su horario
        // mientras el paciente tiene una fecha seleccionada en pantalla
        viewModelScope.launch {
            HorarioEvents.horarioActualizado.collect {
                _disponibilidadDia.value?.fecha?.let { fecha ->
                    cargarDisponibilidad(fecha)
                }
            }
        }
    }

    private fun cargarPsicologoAsignado(idPaciente: Long) {
        viewModelScope.launch {
            profileRepository
                .obtenerPsicologoAsignado(idPaciente)
                .onSuccess { psicologo ->
                    _psicologoId.value = psicologo.idPsicologo
                }.onFailure { e ->
                    crashReporter.log("cargarPsicologoAsignado failed for idPaciente=$idPaciente")
                    crashReporter.setCustomKey("paciente_id", idPaciente.toString())
                    crashReporter.recordException(e)
                    _errorMessage.value = "No se pudo obtener el psicólogo asignado: ${e.message}"
                }
        }
    }

    /** Limpia el mensaje de error actual. */
    fun clearError() {
        _errorMessage.value = null
    }

    /**
     * Carga las citas del paciente para el mes especificado.
     *
     * @param month Mes y año del que se desea obtener la agenda.
     */
    fun cargarAgendaMensual(month: YearMonth) {
        val session = _userSession.value ?: return

        val idPaciente = session.idPaciente ?: session.idUsuario

        viewModelScope.launch {
            _isLoading.value = true

            citasRepository
                .getAgendaPaciente(idPaciente, month.toString())
                .onSuccess { agenda ->
                    val filteredAgenda = agenda.filter { it.idPaciente == idPaciente }
                    _agendaMensual.value = filteredAgenda
                    _errorMessage.value = null
                }.onFailure { error ->
                    crashReporter.log("cargarAgendaMensual failed for month=$month")
                    crashReporter.recordException(error)
                    _errorMessage.value = error.message ?: "Error cargando agenda"
                    _agendaMensual.value = emptyList()
                }
            _isLoading.value = false
        }
    }

    /**
     * Consulta la disponibilidad horaria del psicólogo para una fecha concreta.
     *
     * @param fecha Fecha para la que se consulta la disponibilidad.
     */
    fun cargarDisponibilidad(fecha: LocalDate) {
        val idPsicologo = _psicologoId.value ?: _userSession.value?.idPsicologo ?: return

        viewModelScope.launch {
            _isLoading.value = true
            citasRepository
                .getDisponibilidadDia(idPsicologo, fecha.toString(), 60)
                .onSuccess {
                    _disponibilidadDia.value = it
                    _errorMessage.value = null
                }.onFailure {
                    crashReporter.log("cargarDisponibilidad failed for fecha=$fecha")
                    crashReporter.recordException(it)
                    _errorMessage.value = it.message ?: "Error disponibilidad"
                }
            _isLoading.value = false
        }
    }

    suspend fun reservarCita(
        idPaciente: Long,
        fecha: LocalDate,
        hora: LocalTime,
        duracionMinutos: Int,
        motivo: String,
        idTipoTerapia: Long,
        metodoPago: MetodoPago,
        monto: BigDecimal,
        modalidadCita: ModalidadCita,
    ): Result<Unit> {
        val session =
            _userSession.value
                ?: return Result.failure(Exception("No hay sesión"))

        val idPsicologo =
            _psicologoId.value ?: session.idPsicologo
                ?: return Result.failure(Exception("No hay psicólogo asignado"))

        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss")
        val startDatetime = LocalDateTime.of(fecha, hora).format(formatter)

        val request =
            CrearCitaRequestDTO(
                idPaciente = idPaciente,
                idPsicologo = idPsicologo,
                startDatetime = startDatetime,
                durationMinutes = duracionMinutos,
                metodoPago = metodoPago,
                estadoPago =
                    if (metodoPago == MetodoPago.TARJETA) {
                        EstadoPago.PAGADO
                    } else {
                        EstadoPago.PENDIENTE
                    },
                monto = monto,
                motivo = motivo,
                idTipoTerapia = idTipoTerapia,
                estado = EstadoCita.PENDIENTE,
                modalidad = modalidadCita,
            )

        return citasRepository
            .crearCita(request)
            .map {
                refrescarDatosTrasCambio(fecha)
            }
    }

    private fun refrescarDatosTrasCambio(fecha: LocalDate) {
        cargarAgendaMensual(YearMonth.from(fecha))
        cargarDisponibilidad(fecha)
    }

    /**
     * Cancela una cita identificada por su ID.
     *
     * Lanza una corrutina que invoca [CitasRepository.cancelarCita] y actualiza
     * el estado de carga.
     *
     * @param idCita Identificador de la cita a cancelar.
     */
    fun cancelarCita(idCita: Long) {
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository
                .cancelarCita(idCita)
                .onSuccess {
                    _errorMessage.value = null
                }.onFailure { e ->
                    crashReporter.log("cancelarCita failed for idCita=$idCita")
                    crashReporter.setCustomKey("cita_id", idCita.toString())
                    crashReporter.recordException(e)
                    _errorMessage.value = e.message ?: "Error al cancelar la cita"
                }
            _isLoading.value = false
        }
    }

    /**
     * Marca una cita como pagada, actualizando el estado de pago en el backend.
     *
     * Al finalizar con éxito, se recargan las citas para que la UI refleje el cambio.
     *
     * @param idCita Identificador de la cita pagada.
     */
    fun marcarCitaComoPagada(idCita: Long) {
        viewModelScope.launch {
            citasRepository.cambiarEstadoPagoCita(idCita, EstadoPago.PAGADO)
                .onSuccess {
                    // Refrescar los datos usando la fecha actual o simplemente recargar la agenda
                    refrescarDatosTrasCambio(LocalDate.now())
                }
                .onFailure { e ->
                    crashReporter.log("marcarCitaComoPagada failed for idCita=$idCita")
                    crashReporter.setCustomKey("cita_id", idCita.toString())
                    crashReporter.recordException(e)
                }
        }
    }
}
