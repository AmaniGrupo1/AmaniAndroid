package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.citas.AgendaPsicologoResponse
import org.ies.tierno.applicationamani.dto.citas.HorarioPsicologoRequest
import java.time.LocalDate
import java.time.YearMonth
import java.time.format.DateTimeFormatter

class PsicologoAgendaViewModel(
    private val citasRepository: CitasRepository,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    private val _agendaMensual = MutableStateFlow(AgendaPsicologoResponse())
    val agendaMensual: StateFlow<AgendaPsicologoResponse> = _agendaMensual.asStateFlow()

    private val _mesVisible = MutableStateFlow(YearMonth.now())
    val mesVisible: StateFlow<YearMonth> = _mesVisible.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    private val monthFormatter = DateTimeFormatter.ofPattern("yyyy-MM")

    fun cargarAgendaMensual(month: YearMonth = _mesVisible.value) {
        viewModelScope.launch {
            _mesVisible.value = month

            val session = userSessionDataStore.getSession() ?: run {
                _errorMessage.value = "No hay sesión activa"
                return@launch
            }
            val idPsicologo = session.idPsicologo ?: run {
                _errorMessage.value = "El usuario no tiene un perfil de psicólogo"
                return@launch
            }

            val monthFormatted = month.format(monthFormatter)

            val result = citasRepository.getAgendaPsicologo(idPsicologo, monthFormatted)
            result.onSuccess { response ->
                _agendaMensual.value = response
                _errorMessage.value = null
            }.onFailure { exception ->
                _errorMessage.value = exception.message ?: "Error al cargar la agenda"
            }
        }
    }

    suspend fun actualizarHorario(horaInicio: Int, horaFin: Int, duracionSesion: Int): Result<AgendaPsicologoResponse> {
        val session = userSessionDataStore.getSession()
            ?: return Result.failure(Exception("No hay sesión activa"))
        val idPsicologo = session.idPsicologo
            ?: return Result.failure(Exception("Usuario no es psicólogo"))

        val request = HorarioPsicologoRequest(
            horaInicio = horaInicio,
            horaFin = horaFin,
            duracionSesion = duracionSesion
        )

        return citasRepository.actualizarHorario(idPsicologo, request).also { result ->
            if (result.isSuccess) cargarAgendaMensual(_mesVisible.value)
            else _errorMessage.value = result.exceptionOrNull()?.message ?: "Error al actualizar horario"
        }
    }

    suspend fun alternarDiaNoDisponible(fecha: LocalDate, yaNoDisponible: Boolean): Result<AgendaPsicologoResponse> {
        val session = userSessionDataStore.getSession()
            ?: return Result.failure(Exception("No hay sesión activa"))
        val idPsicologo = session.idPsicologo
            ?: return Result.failure(Exception("Usuario no es psicólogo"))

        return citasRepository.alternarDiaNoDisponible(
            idPsicologo = idPsicologo,
            fecha = fecha.toString(),
            yaNoDisponible = yaNoDisponible
        ).also { result ->
            if (result.isSuccess) cargarAgendaMensual(_mesVisible.value)
            else _errorMessage.value = result.exceptionOrNull()?.message ?: "Error al modificar disponibilidad"
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }
}
