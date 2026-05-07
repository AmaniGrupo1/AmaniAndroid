package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetPacientesSinPsicologoUseCase
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class PacientesViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val getPacientesSinPsicologoUseCase: GetPacientesSinPsicologoUseCase = mockk()

    private val testPaciente = PacienteBasicoResponseDTO(
        idPaciente = 1L, idUsuario = 10L, nombre = "Juan", apellido = "Perez",
        email = "j@t.com", dni = "123", fechaNacimiento = "2000-01-01",
        genero = "Hombre", telefono = "123", direcciones = null, tutores = null
    )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state has empty pacientes and loading false`() {
        every { getPacientesSinPsicologoUseCase() } returns flowOf(emptyList())

        val viewModel = PacientesViewModel(getPacientesSinPsicologoUseCase)
        assertTrue(viewModel.pacientes.value.isEmpty())
        assertFalse(viewModel.loading.value)
    }

    @Test
    fun `cargarPacientesSinPsicologo success populates list`() = runTest {
        every { getPacientesSinPsicologoUseCase() } returns flowOf(listOf(testPaciente))

        val viewModel = PacientesViewModel(getPacientesSinPsicologoUseCase)
        viewModel.cargarPacientesSinPsicologo()
        advanceUntilIdle()

        assertEquals(1, viewModel.pacientes.value.size)
        assertFalse(viewModel.loading.value)
    }

    @Test
    fun `cargarPacientesSinPsicologo failure sets empty list`() = runTest {
        every { getPacientesSinPsicologoUseCase() } returns flow { throw RuntimeException("Error API") }

        val viewModel = PacientesViewModel(getPacientesSinPsicologoUseCase)
        viewModel.cargarPacientesSinPsicologo()
        advanceUntilIdle()

        assertTrue(viewModel.pacientes.value.isEmpty())
    }

    @Test
    fun `cargarPacientesSinPsicologo with empty result sets empty list`() = runTest {
        every { getPacientesSinPsicologoUseCase() } returns flowOf(emptyList())

        val viewModel = PacientesViewModel(getPacientesSinPsicologoUseCase)
        viewModel.cargarPacientesSinPsicologo()
        advanceUntilIdle()

        assertTrue(viewModel.pacientes.value.isEmpty())
        assertFalse(viewModel.loading.value)
    }

    @Test
    fun `boundary loading state during request`() = runTest {
        every { getPacientesSinPsicologoUseCase() } returns flowOf(emptyList())

        val viewModel = PacientesViewModel(getPacientesSinPsicologoUseCase)
        viewModel.cargarPacientesSinPsicologo()
        assertTrue(viewModel.loading.value)

        advanceUntilIdle()
        assertFalse(viewModel.loading.value)
    }
}
