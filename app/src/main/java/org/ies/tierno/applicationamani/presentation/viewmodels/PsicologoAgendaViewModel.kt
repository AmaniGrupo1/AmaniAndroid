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

    // Estado de la agenda
    private val _agendaMensual = MutableStateFlow(AgendaPsicologoResponse())
    val agendaMensual: StateFlow<AgendaPsicologoResponse> = _agendaMensual.asStateFlow()

    // Mes actual visible (para recargar después de cambios)
    private val _mesVisible = MutableStateFlow(YearMonth.now())
    val mesVisible: StateFlow<YearMonth> = _mesVisible.asStateFlow()

    // Mensajes de error
    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    // Formato para la API: yyyy-MM
    private val monthFormatter = DateTimeFormatter.ofPattern("yyyy-MM")

    /**
     * Carga la agenda mensual del psicólogo usando el id de la sesión activa.
     * @param month Mes a cargar (YearMonth)
     */
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

    /**
     * Actualiza el horario de trabajo del psicólogo.
     * @param horaInicio Hora de inicio (0-23)
     * @param horaFin Hora de fin (0-23)
     * @param duracionSesion Duración de cada sesión en minutos
     */
    suspend fun actualizarHorario(
        horaInicio: Int,
        horaFin: Int,
        duracionSesion: Int
    ): Result<AgendaPsicologoResponse> {
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
            if (result.isSuccess) {
                cargarAgendaMensual(_mesVisible.value)
            } else {
                _errorMessage.value = result.exceptionOrNull()?.message ?: "Error al actualizar horario"
            }
        }
    }

    /**
     * Marca o desmarca un día como no disponible.
     * @param fecha Fecha a modificar
     * @param yaNoDisponible true si ya estaba marcado (se elimina), false si se quiere marcar
     */
    suspend fun alternarDiaNoDisponible(
        fecha: LocalDate,
        yaNoDisponible: Boolean
    ): Result<AgendaPsicologoResponse> {
        val session = userSessionDataStore.getSession()
            ?: return Result.failure(Exception("No hay sesión activa"))
        val idPsicologo = session.idPsicologo
            ?: return Result.failure(Exception("Usuario no es psicólogo"))

        return citasRepository.alternarDiaNoDisponible(
            idPsicologo = idPsicologo,
            fecha = fecha.toString(),
            yaNoDisponible = yaNoDisponible
        ).also { result ->
            if (result.isSuccess) {
                cargarAgendaMensual(_mesVisible.value)
            } else {
                _errorMessage.value = result.exceptionOrNull()?.message ?: "Error al modificar disponibilidad"
            }
        }
    }

    fun clearError() {
        _errorMessage.value = null
    }
}
