package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import io.mockk.*
import kotlinx.coroutines.flow.MutableStateFlow
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.domain.models.psicologo.EstadisticasEmocionales
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoViewModel
import org.junit.After
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.koin.core.context.startKoin
import org.koin.core.context.stopKoin
import org.koin.dsl.module
import java.util.*

class EstadisticasPsicologoScreenTest {

    @get:Rule
    val composeTestRule = createComposeRule()

    private val mockViewModel: EstadisticasPsicologoViewModel = mockk(relaxed = true)
    private val uiStateFlow = MutableStateFlow(EstadisticasPsicologoUiState())

    @Before
    fun setUp() {
        stopKoin() // Ensure clean state
        startKoin {
            modules(module {
                single { mockViewModel }
            })
        }
        every { mockViewModel.uiState } returns uiStateFlow
    }

    @After
    fun tearDown() {
        stopKoin()
    }

    @Test
    fun cuando_estado_vacio_muestra_empty_state_en_grafico() {
        uiStateFlow.value = EstadisticasPsicologoUiState(entradas = emptyList())

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("chart_empty_state").assertIsDisplayed()
        composeTestRule.onNodeWithText("Sin datos disponibles").assertIsDisplayed()
    }

    @Test
    fun cuando_hay_datos_no_muestra_empty_state() {
        val entrada = DiarioEmocionResponseDTO(1, "2023-10-27", "Test", "Feliz", 8, "Nota")
        uiStateFlow.value = EstadisticasPsicologoUiState(entradas = listOf(entrada))

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("chart_empty_state").assertDoesNotExist()
        composeTestRule.onNodeWithText("Sin datos disponibles").assertDoesNotExist()
    }

    @Test
    fun cuando_hay_una_sola_entrada_no_crashea() {
        val entrada = DiarioEmocionResponseDTO(1, "2023-10-27", "Test", "Feliz", 8, "Nota")
        uiStateFlow.value = EstadisticasPsicologoUiState(entradas = listOf(entrada))

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.waitForIdle()
        // If it didn't crash, the test passes
    }

    @Test
    fun cuando_fecha_es_corta_no_crashea_substring() {
        val uiStateFechaCorta = EstadisticasPsicologoUiState(
            entradas = listOf(
                DiarioEmocionResponseDTO(1, "2023", "Test", "Feliz", 8, "Nota")
            ),
            estadisticas = EstadisticasEmocionales(
                mejorSesion = DiarioEmocionResponseDTO(1, "2023", "Test", "Feliz", 8, "Nota"),
                peorSesion = DiarioEmocionResponseDTO(1, "2023", "Test", "Feliz", 8, "Nota")
            )
        )
        uiStateFlow.value = uiStateFechaCorta

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.waitForIdle()
        // If it didn't crash, the test passes
    }

    @Test
    fun metricas_muestran_valores_del_uiState() {
        val stats = EstadisticasEmocionales(
            promedioPeriodo = 7.5,
            mejorSesion = DiarioEmocionResponseDTO(1, "2023-10-27", "Best", "Happy", 9, ""),
            peorSesion = DiarioEmocionResponseDTO(2, "2023-10-20", "Worst", "Sad", 3, ""),
            totalSesiones = 10,
            tendenciaPuntos = 1.2
        )
        uiStateFlow.value = EstadisticasPsicologoUiState(estadisticas = stats)

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        // Check titles are visible
        composeTestRule.onNodeWithText("Evolución emocional").assertIsDisplayed()
        composeTestRule.onNodeWithText("Promedio periodo").assertIsDisplayed()
        composeTestRule.onNodeWithText("Mejor sesión").assertIsDisplayed()
        composeTestRule.onNodeWithText("Peor sesión").assertIsDisplayed()
        
        // Scroll to the metrics grid (index 2 in LazyColumn)
        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(2)
        composeTestRule.onNodeWithText("Total sesiones").assertIsDisplayed()
        composeTestRule.onNodeWithText("Tendencia general").assertIsDisplayed()

        // Check values (using contains as they might be formatted)
        composeTestRule.onNodeWithText("7,5 / 10").assertIsDisplayed() // Using comma as Locale.getDefault() might be ES
        composeTestRule.onNodeWithText("9 / 10").assertIsDisplayed()
        composeTestRule.onNodeWithText("3 / 10").assertIsDisplayed()
        composeTestRule.onNodeWithText("10").assertIsDisplayed()
    }

    @Test
    fun tendencia_positiva_muestra_texto_mejorando() {
        uiStateFlow.value = EstadisticasPsicologoUiState(
            estadisticas = EstadisticasEmocionales(tendenciaPuntos = 1.5)
        )

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(2)
        composeTestRule.onNodeWithText("Mejorando").assertIsDisplayed()
    }

    @Test
    fun tendencia_negativa_muestra_texto_bajando() {
        uiStateFlow.value = EstadisticasPsicologoUiState(
            estadisticas = EstadisticasEmocionales(tendenciaPuntos = -2.0)
        )

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(2)
        composeTestRule.onNodeWithText("Bajando").assertIsDisplayed()
    }

    @Test
    fun tendencia_cero_muestra_texto_estable() {
        uiStateFlow.value = EstadisticasPsicologoUiState(
            estadisticas = EstadisticasEmocionales(tendenciaPuntos = 0.0)
        )

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(2)
        composeTestRule.onNodeWithText("Estable").assertIsDisplayed()
    }

    @Test
    fun dropdown_paciente_muestra_lista_al_hacer_click() {
        val pacientes = listOf(
            PacientePsicologoResponseDTO(idPaciente = 1L, idUsuario = 100L, nombre = "Juan", apellido = "Perez", email = "juan@test.com", dni = "123", telefono = ""),
            PacientePsicologoResponseDTO(idPaciente = 2L, idUsuario = 101L, nombre = "Maria", apellido = "Garcia", email = "maria@test.com", dni = "456", telefono = "")
        )
        uiStateFlow.value = EstadisticasPsicologoUiState(pacientes = pacientes)

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("dropdown_paciente").performClick()
        
        // Use useUnmergedTree to find the menu item text if it's nested
        composeTestRule.onNodeWithText("Juan Perez", useUnmergedTree = true).assertIsDisplayed()
        composeTestRule.onNodeWithText("Maria Garcia", useUnmergedTree = true).assertIsDisplayed()
    }

    @Test
    fun seleccionar_paciente_llama_al_viewmodel() {
        val paciente = PacientePsicologoResponseDTO(idPaciente = 1L, idUsuario = 100L, nombre = "Juan", apellido = "Perez", email = "juan@test.com", dni = "123", telefono = "")
        uiStateFlow.value = EstadisticasPsicologoUiState(pacientes = listOf(paciente))

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("dropdown_paciente").performClick()
        composeTestRule.onNodeWithText("Juan Perez", useUnmergedTree = true).performClick()

        verify { mockViewModel.seleccionarPaciente(paciente) }
    }

    @Test
    fun dropdown_periodo_muestra_opciones_correctas() {
        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithTag("dropdown_periodo").performClick()

        // When many nodes match (e.g. the label and the item), use atLeastOne or be more specific
        composeTestRule.onAllNodesWithText("Último mes").onFirst().assertIsDisplayed()
        composeTestRule.onAllNodesWithText("Últimos 3 meses").onFirst().assertIsDisplayed()
        composeTestRule.onAllNodesWithText("Últimos 6 meses").onFirst().assertIsDisplayed()
        composeTestRule.onAllNodesWithText("Último año").onFirst().assertIsDisplayed()
    }

    @Test
    fun dropdown_vista_muestra_opciones_correctas() {
        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        // We didn't add a testTag to vista but we can find it by label
        composeTestRule.onNodeWithText("Vista").performClick()

        composeTestRule.onAllNodesWithText("Línea").onFirst().assertIsDisplayed()
        composeTestRule.onAllNodesWithText("Barras").onFirst().assertIsDisplayed()
    }

    @Test
    fun observation_card_muestra_texto_de_uiState() {
        val obs = "El paciente muestra una mejoría notable en su estado de ánimo."
        uiStateFlow.value = EstadisticasPsicologoUiState(
            estadisticas = EstadisticasEmocionales(observacion = obs)
        )

        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        // Scroll to the observation card (index 3 in LazyColumn)
        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(3)
        composeTestRule.onNodeWithTag("observation_text").assertIsDisplayed()
        composeTestRule.onNodeWithText(obs).assertIsDisplayed()
    }

    @Test
    fun observation_card_muestra_titulo_observacion() {
        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        // Scroll to the observation card (index 3 in LazyColumn)
        composeTestRule.onNodeWithTag("stats_list").performScrollToIndex(3)
        composeTestRule.onNodeWithText("Observación").assertIsDisplayed()
    }


    @Test
    fun topbar_muestra_titulo_correcto() {
        composeTestRule.setContent {
            EstadisticasPsicologoScreen()
        }

        composeTestRule.onNodeWithText("Estadísticas de Bienestar").assertIsDisplayed()
    }
}
