package org.ies.tierno.applicationamani.presentation.viewmodels.admin

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
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ListarPacientesViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val listarPacientesUseCase: TodosLosPacientesUseCase = mockk()
    private val darBajaPacienteUseCase: DarBajaPacienteUseCase = mockk()

    private val testPaciente = DatosPacienteAdminDTO(
        idPaciente = 1L, nombreUsuario = "Juan", apellidoUsuario = "Perez",
        emailUsuario = "j@t.com", fechaNacimiento = "2000-01-01", genero = "Hombre",
        telefono = "123", createdAt = "2025-01-01", updatedAt = "2025-01-01",
        activo = true, metodoPago = "ONLINE", estadoPago = "PAGADO",
        situaciones = emptyList(), tutores = emptyList(), direccion = emptyList(), edad = 25
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
    fun `init loads pacientes from useCase`() = runTest {
        every { listarPacientesUseCase() } returns flowOf(listOf(testPaciente))

        val viewModel = ListarPacientesViewModel(listarPacientesUseCase, darBajaPacienteUseCase)
        advanceUntilIdle()

        assertEquals(1, viewModel.paciente.value.size)
        assertEquals("Juan", viewModel.paciente.value[0].nombreUsuario)
    }

    @Test
    fun `init with empty list results in empty paciente`() = runTest {
        every { listarPacientesUseCase() } returns flowOf(emptyList())

        val viewModel = ListarPacientesViewModel(listarPacientesUseCase, darBajaPacienteUseCase)
        advanceUntilIdle()

        assertTrue(viewModel.paciente.value.isEmpty())
    }

    @Test
    fun `darBajaPaciente success marks patient as inactive`() = runTest {
        every { listarPacientesUseCase() } returns flowOf(listOf(testPaciente))
        coEvery { darBajaPacienteUseCase(1L) } returns Result.success("Baja correcta")

        val viewModel = ListarPacientesViewModel(listarPacientesUseCase, darBajaPacienteUseCase)
        advanceUntilIdle()

        val result = viewModel.darBajaPaciente(1L)
        advanceUntilIdle()

        assertTrue(result.isSuccess)
        assertEquals(false, viewModel.paciente.value[0].activo)
    }

    @Test
    fun `darBajaPaciente failure returns error`() = runTest {
        every { listarPacientesUseCase() } returns flowOf(listOf(testPaciente))
        coEvery { darBajaPacienteUseCase(1L) } returns Result.failure(Exception("Error"))

        val viewModel = ListarPacientesViewModel(listarPacientesUseCase, darBajaPacienteUseCase)
        advanceUntilIdle()

        val result = viewModel.darBajaPaciente(1L)
        advanceUntilIdle()

        assertTrue(result.isFailure)
        assertEquals(true, viewModel.paciente.value[0].activo)
    }

    @Test
    fun `darBajaPaciente non-existent patient still returns result`() = runTest {
        every { listarPacientesUseCase() } returns flowOf(emptyList())
        coEvery { darBajaPacienteUseCase(99L) } returns Result.success("Baja correcta")

        val viewModel = ListarPacientesViewModel(listarPacientesUseCase, darBajaPacienteUseCase)
        advanceUntilIdle()

        val result = viewModel.darBajaPaciente(99L)
        assertTrue(result.isSuccess)
    }
}
