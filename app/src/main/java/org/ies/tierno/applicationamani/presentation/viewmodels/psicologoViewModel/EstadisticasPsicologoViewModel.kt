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

/**
 * Estado de la UI para la pantalla de estadísticas emocionales del psicólogo.
 *
 * @property pacientes Lista de pacientes asignados al psicólogo.
 * @property pacienteSeleccionado Paciente actualmente seleccionado para visualizar sus estadísticas.
 * @property periodoSeleccionado Periodo de tiempo seleccionado para el análisis (\"Último mes\", \"Últimos 3 meses\", etc.).
 * @property vistaSeleccionada Tipo de visualización del gráfico (\"Línea\", \"Barras\", etc.).
 * @property entradas Entradas del diario emocional filtradas por periodo.
 * @property chartData Datos transformados para renderizar el gráfico (fecha → intensidad).
 * @property estadisticas Estadísticas agregadas calculadas a partir de las entradas.
 * @property isLoading Indica si los datos se están cargando.
 * @property error Mensaje de error si la carga falló.
 */
data class EstadisticasPsicologoUiState(
    val pacientes: List<PacientePsicologoResponseDTO> = emptyList(),
    val pacienteSeleccionado: PacientePsicologoResponseDTO? = null,
    val periodoSeleccionado: String = "Últimos 3 meses",
    val vistaSeleccionada: String = "Línea",
    val entradas: List<DiarioEmocionResponseDTO> = emptyList(),
    val chartData: List<Pair<LocalDate, Float>> = emptyList(), // Nueva fuente de verdad para el gráfico
    val estadisticas: EstadisticasEmocionales = EstadisticasEmocionales(),
    val isLoading: Boolean = false,
    val error: String? = null,
)

/**
 * ViewModel que calcula y expone las estadísticas emocionales de los pacientes de un psicólogo.
 *
 * Permite seleccionar un paciente concreto y un periodo de tiempo para visualizar
 * gráficos de intensidad emocional a lo largo del tiempo, así como estadísticas
 * agregadas (promedio, tendencia, mejor/peor sesión). Utiliza [DiarioRemoteRepository]
 * para obtener las entradas del diario emocional.
 *
 * @param authRepository Repositorio de autenticación para obtener pacientes asignados al psicólogo.
 * @param diarioRepository Repositorio remoto para consultar entradas del diario emocional.
 */
class EstadisticasPsicologoViewModel(
    private val authRepository: AuthRepository,
    private val diarioRepository: DiarioRemoteRepository,
) : ViewModel() {
    /** Estado consolidado de la UI de estadísticas emocionales. */
    private val _uiState = MutableStateFlow(EstadisticasPsicologoUiState())
    val uiState: StateFlow<EstadisticasPsicologoUiState> = _uiState.asStateFlow()

    init {
        cargarPacientes()
    }

    /**
     * Carga la lista de pacientes asignados al psicólogo desde el backend.
     *
     * Si hay pacientes disponibles y no hay ninguno seleccionado,
     * selecciona automáticamente el primero de la lista.
     */
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

    /**
     * Selecciona un paciente y carga sus entradas del diario emocional.
     *
     * @param paciente Paciente cuyas estadísticas se mostrarán.
     */
    fun seleccionarPaciente(paciente: PacientePsicologoResponseDTO) {
        _uiState.update { it.copy(pacienteSeleccionado = paciente) }
        cargarEntradas(paciente.idPaciente ?: return)
    }

    /**
     * Cambia el periodo de análisis y recarga las entradas filtradas.
     *
     * @param periodo Etiqueta del periodo ("Último mes", "Últimos 3 meses", etc.).
     */
    fun seleccionarPeriodo(periodo: String) {
        _uiState.update { it.copy(periodoSeleccionado = periodo) }
        _uiState.value.pacienteSeleccionado
            ?.idPaciente
            ?.let { cargarEntradas(it) }
    }

    /**
     * Cambia el tipo de visualización del gráfico de estadísticas.
     *
     * @param vista Tipo de gráfico ("Línea", "Barras", etc.).
     */
    fun seleccionarVista(vista: String) {
        _uiState.update { it.copy(vistaSeleccionada = vista) }
    }

    private fun cargarEntradas(idPaciente: Long) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            diarioRepository
                .getByPaciente(idPaciente)
                .onSuccess { allEntradas ->
                    val filtradas = filtrarPorPeriodo(allEntradas, _uiState.value.periodoSeleccionado)
                    val chartData = transformarParaGrafico(filtradas)
                    val stats = calcularEstadisticas(filtradas)
                    _uiState.update {
                        it.copy(
                            entradas = filtradas,
                            chartData = chartData,
                            estadisticas = stats,
                            isLoading = false,
                        )
                    }
                }.onFailure { e ->
                    _uiState.update { it.copy(error = e.message, isLoading = false) }
                }
        }
    }

    private fun filtrarPorPeriodo(
        entradas: List<DiarioEmocionResponseDTO>,
        periodo: String,
    ): List<DiarioEmocionResponseDTO> {
        val now = LocalDate.now()
        val limitDate =
            when (periodo) {
                "Último mes" -> now.minusMonths(1)
                "Últimos 3 meses" -> now.minusMonths(3)
                "Últimos 6 meses" -> now.minusMonths(6)
                "Último año" -> now.minusYears(1)
                else -> LocalDate.MIN
            }

        return entradas
            .filter {
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

        val tendencia =
            if (entradas.size >= 2) {
                val mid = entradas.size / 2
                val primera = entradas.take(mid).map { it.intensidad }.average()
                val segunda = entradas.drop(mid).map { it.intensidad }.average()
                segunda - primera
            } else {
                0.0
            }

        val observacion =
            when {
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
            observacion = observacion,
        )
    }
}
