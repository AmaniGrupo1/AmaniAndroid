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
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ListarPacientesByPsicologoViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val authRepository: AuthRepository = mockk(relaxed = true)
    private val citasRepository: CitasRepository = mockk(relaxed = true)

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        every { authRepository.getPacientesByPsicologo() } returns flowOf(emptyList())
        coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns Result.success(emptyList())
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state has empty pacientes and isLoading false`() {
        val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
        assertTrue(viewModel.pacientes.value.isEmpty())
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `cargarPacientes success populates pacientes list`() =
        runTest {
            val pacientes =
                listOf(
                    PacientePsicologoResponseDTO(
                        idPaciente = 1L,
                        idUsuario = 10L,
                        nombre = "Juan",
                        apellido = "Perez",
                        email = "j@t.com",
                        dni = "123",
                        telefono = "",
                    ),
                )
            every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)

            val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
            viewModel.cargarPacientes(10L)
            advanceUntilIdle()

            assertEquals(1, viewModel.pacientes.value.size)
            assertEquals("Juan", viewModel.pacientes.value[0].nombre)
            assertFalse(viewModel.isLoading.value)
        }

    @Test
    fun `cargarPacientes loads citas for each patient`() =
        runTest {
            val pacientes =
                listOf(
                    PacientePsicologoResponseDTO(
                        idPaciente = 1L,
                        idUsuario = 10L,
                        nombre = "Juan",
                        apellido = "Perez",
                        email = "j@t.com",
                        dni = "123",
                        telefono = "",
                    ),
                )
            every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)
            val cita =
                AgendaItemDTO(
                    id = 1L,
                    idPaciente = 1L,
                    fecha = java.time.LocalDate.of(2025, 6, 1),
                    horaInicio = java.time.LocalTime.of(10, 0),
                    horaFin = java.time.LocalTime.of(11, 0),
                    tipo = "Terapia",
                    estado = "pendiente",
                    motivo = "Consulta",
                    duracionMinutos = 60,
                    nombrePaciente = "Juan",
                    nombrePsicologo = "Dr. García",
                    terapia = null,
                    metodoPago = null,
                    estadoPago = null,
                    modalidad = org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita.PRESENCIAL,
                )
            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns Result.success(listOf(cita))

            val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
            viewModel.cargarPacientes(10L)
            advanceUntilIdle()

            assertTrue(viewModel.citasPorPaciente.value.containsKey(1L))
        }

    @Test
    fun `cargarPacientes with empty result has no pacientes`() =
        runTest {
            every { authRepository.getPacientesByPsicologo() } returns flowOf(emptyList())

            val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
            viewModel.cargarPacientes(10L)
            advanceUntilIdle()

            assertTrue(viewModel.pacientes.value.isEmpty())
            assertFalse(viewModel.isLoading.value)
        }

    @Test
    fun `recargarCitas reloads data`() =
        runTest {
            val pacientes =
                listOf(
                    PacientePsicologoResponseDTO(
                        idPaciente = 1L,
                        idUsuario = 10L,
                        nombre = "Juan",
                        apellido = "Perez",
                        email = "j@t.com",
                        dni = "123",
                        telefono = "",
                    ),
                )
            every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)

            val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
            viewModel.cargarPacientes(10L)
            advanceUntilIdle()

            viewModel.recargarCitas(10L)
            advanceUntilIdle()

            assertEquals(1, viewModel.pacientes.value.size)
        }

    @Test
    fun `cargarPacientes when agenda fails still loads pacientes`() =
        runTest {
            val pacientes =
                listOf(
                    PacientePsicologoResponseDTO(
                        idPaciente = 1L,
                        idUsuario = 10L,
                        nombre = "Juan",
                        apellido = "Perez",
                        email = "j@t.com",
                        dni = "123",
                        telefono = "",
                    ),
                )
            every { authRepository.getPacientesByPsicologo() } returns flowOf(pacientes)
            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns Result.failure(Exception("Error"))

            val viewModel = ListarPacientesByPsicologoViewModel(authRepository, citasRepository)
            viewModel.cargarPacientes(10L)
            advanceUntilIdle()

            assertEquals(1, viewModel.pacientes.value.size)
            // El mapa tiene una entrada para el paciente, pero la lista de citas está vacía
            val citasDelPaciente = viewModel.citasPorPaciente.value[1L]
            assertTrue(citasDelPaciente != null && citasDelPaciente.isEmpty())
        }
}
