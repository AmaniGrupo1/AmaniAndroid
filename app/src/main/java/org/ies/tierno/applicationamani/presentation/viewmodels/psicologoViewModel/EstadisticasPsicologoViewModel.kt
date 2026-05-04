package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.remoto.DiarioRemoteRepository
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.domain.models.psicologo.EstadisticasEmocionales
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

data class EstadisticasPsicologoUiState(
    val pacientes: List<PacientePsicologoResponseDTO> = emptyList(),
    val pacienteSeleccionado: PacientePsicologoResponseDTO? = null,
    val periodoSeleccionado: String = "Últimos 3 meses",
    val vistaSeleccionada: String = "Línea",
    val entradas: List<DiarioEmocionResponseDTO> = emptyList(),
    val estadisticas: EstadisticasEmocionales = EstadisticasEmocionales(),
    val isLoading: Boolean = false,
    val error: String? = null
)

class EstadisticasPsicologoViewModel(
    private val authRepository: AuthRepository,
    private val diarioRepository: DiarioRemoteRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(EstadisticasPsicologoUiState())
    val uiState: StateFlow<EstadisticasPsicologoUiState> = _uiState.asStateFlow()

    init {
        cargarPacientes()
    }

    fun cargarPacientes() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            authRepository.getPacientesByPsicologo().collect { result ->
                _uiState.update { it.copy(pacientes = result, isLoading = false) }
                if (result.isNotEmpty() && _uiState.value.pacienteSeleccionado == null) {
                    seleccionarPaciente(result.first())
                }
            }
        }
    }

    fun seleccionarPaciente(paciente: PacientePsicologoResponseDTO) {
        _uiState.update { it.copy(pacienteSeleccionado = paciente) }
        cargarEntradas(paciente.idPaciente ?: return)
    }

    fun seleccionarPeriodo(periodo: String) {
        _uiState.update { it.copy(periodoSeleccionado = periodo) }
        _uiState.value.pacienteSeleccionado?.idPaciente?.let { cargarEntradas(it) }
    }

    fun seleccionarVista(vista: String) {
        _uiState.update { it.copy(vistaSeleccionada = vista) }
    }

    private fun cargarEntradas(idPaciente: Long) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            diarioRepository.getByPaciente(idPaciente).onSuccess { allEntradas ->
                val filtradas = filtrarPorPeriodo(allEntradas, _uiState.value.periodoSeleccionado)
                val stats = calcularEstadisticas(filtradas)
                _uiState.update { it.copy(entradas = filtradas, estadisticas = stats, isLoading = false) }
            }.onFailure { e ->
                _uiState.update { it.copy(error = e.message, isLoading = false) }
            }
        }
    }

    private fun filtrarPorPeriodo(entradas: List<DiarioEmocionResponseDTO>, periodo: String): List<DiarioEmocionResponseDTO> {
        val now = LocalDate.now()
        val limitDate = when (periodo) {
            "Último mes" -> now.minusMonths(1)
            "Últimos 3 meses" -> now.minusMonths(3)
            "Últimos 6 meses" -> now.minusMonths(6)
            "Último año" -> now.minusYears(1)
            else -> LocalDate.MIN
        }

        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.getDefault())
        return entradas.filter {
            try {
                val fecha = LocalDate.parse(it.fecha.substring(0, 10), formatter)
                fecha.isAfter(limitDate) || fecha.isEqual(limitDate)
            } catch (e: Exception) {
                false
            }
        }.sortedBy { it.fecha }
    }

    private fun calcularEstadisticas(entradas: List<DiarioEmocionResponseDTO>): EstadisticasEmocionales {
        if (entradas.isEmpty()) return EstadisticasEmocionales()

        val promedio = entradas.map { it.intensidad }.average()
        val mejor = entradas.maxByOrNull { it.intensidad }
        val peor = entradas.minByOrNull { it.intensidad }
        val total = entradas.size

        // Tendencia (comparar última mitad con primera mitad)
        val mitad = entradas.size / 2
        val tendencia = if (mitad > 0) {
            val segundaMitad = entradas.takeLast(mitad).map { it.intensidad }.average()
            val primeraMitad = entradas.take(mitad).map { it.intensidad }.average()
            segundaMitad - primeraMitad
        } else 0.0

        val observacion = when {
            tendencia > 1.0 -> "Se observa una tendencia general positiva en el estado emocional del paciente, con mejoras significativas en las últimas semanas."
            tendencia < -1.0 -> "Se observa una tendencia a la baja en el estado emocional. Se recomienda profundizar en las causas en la próxima sesión."
            else -> "El estado emocional se mantiene estable dentro del periodo seleccionado."
        }

        return EstadisticasEmocionales(
            promedioPeriodo = promedio,
            mejorSesion = mejor,
            peorSesion = peor,
            totalSesiones = total,
            tendenciaPuntos = tendencia,
            observacion = observacion
        )
    }
}
