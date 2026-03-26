package org.ies.tierno.applicationamani.presentation.viewmodels

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.citas.AgendaPsicologoResponse
import org.ies.tierno.applicationamani.dto.citas.HorarioPsicologoRequest
import timber.log.Timber
import java.time.LocalDate
import java.time.YearMonth

class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _userSession = MutableStateFlow<UserSession?>(null)
    val userSession: StateFlow<UserSession?> = _userSession.asStateFlow()

    private val _agendaMensual = MutableStateFlow(AgendaPsicologoResponse())
    val agendaMensual: StateFlow<AgendaPsicologoResponse> = _agendaMensual.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    init {
        // Observar cambios en la sesión de usuario para que los viewmodels reaccionen
        viewModelScope.launch {
            userSessionDataStore.sessionFlow.collect { session ->
                _userSession.value = session
            }
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }

    fun cargarAgendaMensual(month: YearMonth) {
        val session = _userSession.value ?: return
        val psychologistId = session.idPsicologo
        if (psychologistId == null) {
            _errorMessage.value = "No se pudo resolver el id del psicólogo. Cierra sesión y vuelve a entrar."
            return
        }
        viewModelScope.launch {
            _isLoading.value = true
            citasRepository.getAgendaPsicologo(psychologistId, month.toString())
                .onSuccess { agenda ->
                    _agendaMensual.value = agenda
                    _errorMessage.value = null
                }
                .onFailure { error ->
                    _errorMessage.value = error.message ?: "No se pudo cargar la agenda del psicólogo"
                }
            _isLoading.value = false
        }
    }

    suspend fun actualizarHorario(
        horaInicio: Int,
        horaFin: Int,
        duracionSesion: Int
    ): Result<Unit> {
        val session = _userSession.value
            ?: return Result.failure(IllegalStateException("No hay sesión de psicólogo"))
        val psychologistId = session.idPsicologo
            ?: return Result.failure(
                IllegalStateException("No se pudo resolver el id del psicólogo. Cierra sesión y vuelve a entrar.")
            )

        // En el ViewModel, antes de llamar a la API:
        Log.d("HORARIO_DEBUG", "idPsicologo: $psychologistId")
        Log.d("HORARIO_DEBUG", "franjas a enviar: horaInicio=$horaInicio, horaFin=$horaFin, duracionSesion=$duracionSesion")

        return citasRepository.actualizarHorario(
            psychologistId,
            HorarioPsicologoRequest(horaInicio, horaFin, duracionSesion)
        ).map { agenda ->
            // En el callback de Retrofit:
            Timber.tag("HORARIO_DEBUG").d("✅ Horario actualizado correctamente")
            _agendaMensual.value = agenda
        }.onFailure { error ->
            Timber.tag("HORARIO_DEBUG").e(error, "❌ Error: ${error.message}")
        }
    }

    suspend fun alternarDiaNoDisponible(
        fecha: LocalDate,
        yaNoDisponible: Boolean
    ): Result<Unit> {
        val session = _userSession.value
            ?: return Result.failure(IllegalStateException("No hay sesión de psicólogo"))
        val psychologistId = session.idPsicologo
            ?: return Result.failure(
                IllegalStateException("No se pudo resolver el id del psicólogo. Cierra sesión y vuelve a entrar.")
            )

        return citasRepository.alternarDiaNoDisponible(
            idPsicologo = psychologistId,
            fecha = fecha.toString(),
            yaNoDisponible = yaNoDisponible
        ).map { agenda ->
            _agendaMensual.value = agenda
        }
    }
}
