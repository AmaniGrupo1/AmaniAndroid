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
import org.ies.tierno.applicationamani.utils.DateUtils.toLocalDateSafe
import java.time.LocalDate

data class EstadisticasPsicologoUiState(
    val pacientes: List<PacientePsicologoResponseDTO> = emptyList(),
    val pacienteSeleccionado: PacientePsicologoResponseDTO? = null,
    val periodoSeleccionado: String = "Últimos 3 meses",
    val vistaSeleccionada: String = "Línea",
    val entradas: List<DiarioEmocionResponseDTO> = emptyList(),
    val chartData: List<Pair<LocalDate, Float>> = emptyList(), // Nueva fuente de verdad para el gráfico
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
                val chartData = transformarParaGrafico(filtradas)
                val stats = calcularEstadisticas(filtradas)
                _uiState.update { 
                    it.copy(
                        entradas = filtradas, 
                        chartData = chartData,
                        estadisticas = stats, 
                        isLoading = false 
                    ) 
                }
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

        return entradas.filter {
            val fecha = it.fecha.toLocalDateSafe()
            fecha != null && (fecha.isAfter(limitDate) || fecha.isEqual(limitDate))
        }.sortedBy { it.fecha }
    }

    private fun transformarParaGrafico(entradas: List<DiarioEmocionResponseDTO>): List<Pair<LocalDate, Float>> {
        return entradas
            .sortedBy { it.fecha }
            .mapNotNull { entrada ->
                val fecha = entrada.fecha.toLocalDateSafe() ?: return@mapNotNull null
                fecha to entrada.intensidad.toFloat()
            }
    }

    private fun calcularEstadisticas(entradas: List<DiarioEmocionResponseDTO>): EstadisticasEmocionales {
        if (entradas.isEmpty()) return EstadisticasEmocionales()

        val promedio = entradas.map { it.intensidad }.average()
        val mejor = entradas.maxByOrNull { it.intensidad }
        val peor = entradas.minByOrNull { it.intensidad }
        val total = entradas.size

        val tendencia = if (entradas.size >= 2) {
            val mid = entradas.size / 2
            val primera = entradas.take(mid).map { it.intensidad }.average()
            val segunda = entradas.drop(mid).map { it.intensidad }.average()
            segunda - primera
        } else 0.0

        val observacion = when {
            promedio >= 8 -> "El paciente muestra niveles muy positivos de bienestar emocional."
            promedio >= 6 -> "El paciente presenta un estado emocional positivo."
            promedio >= 4 -> "El paciente mantiene un estado emocional neutro. Seguimiento recomendado."
            promedio >= 2 -> "El paciente presenta señales de malestar emocional. Atención prioritaria."
            else -> "Sin datos suficientes para generar una observación."
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

