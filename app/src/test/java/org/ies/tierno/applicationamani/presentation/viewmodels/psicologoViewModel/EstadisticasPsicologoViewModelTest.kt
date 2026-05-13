package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel

import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.remoto.DiarioRemoteRepository
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class EstadisticasPsicologoViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val authRepository: AuthRepository = mockk(relaxed = true)
    private val diarioRepository: DiarioRemoteRepository = mockk(relaxed = true)

    private lateinit var viewModel: EstadisticasPsicologoViewModel

    private val testPaciente = PacientePsicologoResponseDTO(
        idPaciente = 1L, idUsuario = 100L,
        nombre = "Juan", apellido = "Perez",
        email = "juan@test.com", dni = "123", telefono = ""
    )

    private val testEntrada = DiarioEmocionResponseDTO(
        idDiario = 1L, fecha = java.time.LocalDate.now().toString(), titulo = "Sesión",
        emocion = "Feliz", intensidad = 8, nota = "Buena sesión"
    )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        every { authRepository.getPacientesByPsicologo() } returns flowOf(emptyList())
        coEvery { diarioRepository.getByPaciente(any()) } returns Result.success(emptyList())
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private fun createViewModel(): EstadisticasPsicologoViewModel {
        return EstadisticasPsicologoViewModel(authRepository, diarioRepository)
    }

    @Test
    fun `initial state has isLoading false and empty pacientes`() = runTest {
        viewModel = createViewModel()
        advanceUntilIdle()

        assertFalse(viewModel.uiState.value.isLoading)
        assertTrue(viewModel.uiState.value.pacientes.isEmpty())
    }

    @Test
    fun `cargarPacientes success populates pacientes list`() = runTest {
        val pacientes = listOf(testPaciente)
        every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)

        viewModel = createViewModel()
        advanceUntilIdle()

        assertEquals(1, viewModel.uiState.value.pacientes.size)
        assertEquals("Juan", viewModel.uiState.value.pacientes[0].nombre)
    }

    @Test
    fun `cargarPacientes with data auto-selects first patient`() = runTest {
        val pacientes = listOf(testPaciente)
        every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)
        coEvery { diarioRepository.getByPaciente(1L) } returns Result.success(listOf(testEntrada))

        viewModel = createViewModel()
        advanceUntilIdle()

        assertNotNull(viewModel.uiState.value.pacienteSeleccionado)
        assertEquals(1L, viewModel.uiState.value.pacienteSeleccionado?.idPaciente)
    }

    @Test
    fun `seleccionarPaciente updates state and triggers cargarEntradas`() = runTest {
        val today = java.time.LocalDate.now().toString()
        val entrada2 = DiarioEmocionResponseDTO(2L, today, "Otra", "Triste", 3, "")
        coEvery { diarioRepository.getByPaciente(1L) } returns Result.success(listOf(testEntrada))
        coEvery { diarioRepository.getByPaciente(2L) } returns Result.success(listOf(entrada2))

        val paciente2 = PacientePsicologoResponseDTO(
            idPaciente = 2L, idUsuario = 101L,
            nombre = "Maria", apellido = "Lopez",
            email = "maria@test.com", dni = "456", telefono = ""
        )
        every { authRepository.getPacientesByPsicologo() } returns flowOf(listOf(testPaciente, paciente2))

        viewModel = createViewModel()
        advanceUntilIdle()

        viewModel.seleccionarPaciente(paciente2)
        advanceUntilIdle()

        assertEquals(2L, viewModel.uiState.value.pacienteSeleccionado?.idPaciente)
        assertEquals(1, viewModel.uiState.value.entradas.size)
    }

    @Test
    fun `seleccionarPeriodo updates period and reloads`() = runTest {
        coEvery { diarioRepository.getByPaciente(any()) } returns Result.success(listOf(testEntrada))

        viewModel = createViewModel()
        advanceUntilIdle()

        viewModel.seleccionarPeriodo("Último mes")
        advanceUntilIdle()

        assertEquals("Último mes", viewModel.uiState.value.periodoSeleccionado)
    }

    @Test
    fun `seleccionarVista updates vista`() = runTest {
        viewModel = createViewModel()
        advanceUntilIdle()

        viewModel.seleccionarVista("Barras")

        assertEquals("Barras", viewModel.uiState.value.vistaSeleccionada)
    }

    @Test
    fun `cargarEntradas failure sets error in uiState`() = runTest {
        every { authRepository.getPacientesByPsicologo() } returns flowOf(listOf(testPaciente))
        coEvery { diarioRepository.getByPaciente(1L) } returns Result.failure(Exception("Error API"))

        viewModel = createViewModel()
        advanceUntilIdle()

        assertNotNull(viewModel.uiState.value.error)
    }

    @Test
    fun `boundary empty entradas returns empty estadisticas`() = runTest {
        every { authRepository.getPacientesByPsicologo() } returns flowOf(listOf(testPaciente))
        coEvery { diarioRepository.getByPaciente(1L) } returns Result.success(emptyList())

        viewModel = createViewModel()
        advanceUntilIdle()

        assertEquals(0.0, viewModel.uiState.value.estadisticas.promedioPeriodo, 0.01)
        assertEquals(0, viewModel.uiState.value.estadisticas.totalSesiones)
        assertNull(viewModel.uiState.value.estadisticas.mejorSesion)
        assertNull(viewModel.uiState.value.estadisticas.peorSesion)
    }
}
