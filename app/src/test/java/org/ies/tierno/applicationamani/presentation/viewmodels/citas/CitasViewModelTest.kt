package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth

@OptIn(ExperimentalCoroutinesApi::class)
class CitasViewModelTest {
    private val testDispatcher = StandardTestDispatcher()

    private val citasRepository: CitasRepository = mockk()
    private val profileRepository: ProfileRepository = mockk()
    private val userSessionDataStore: UserSessionDataStore = mockk(relaxed = true)

    private val sessionFlow = MutableStateFlow<UserSession?>(null)

    private lateinit var viewModel: CitasViewModel

    private val testSession =
        UserSession(
            idUsuario = 1L,
            nombre = "Test User",
            rol = "PACIENTE",
            idPsicologo = 10L,
            idPaciente = 100L,
        )

    private val testMonth = YearMonth.of(2025, 6)

    private val testFecha = LocalDate.of(2025, 6, 1)

    private val testDisponibilidad =
        DisponibilidadDiaResponse(
            fecha = testFecha,
            diaCompleto = false,
            slotsLibres = emptyList(),
        )

    private val testAgendaItem =
        AgendaItemDTO(
            id = 1L,
            idPaciente = 100L,
            fecha = testFecha,
            horaInicio = LocalTime.of(10, 0),
            horaFin = LocalTime.of(11, 0),
            tipo = "Terapia",
            estado = "pendiente",
            motivo = "Consulta",
            duracionMinutos = 60,
            nombrePaciente = "Test User",
            nombrePsicologo = "Dr. Test",
            terapia = null,
            metodoPago = MetodoPago.ONLINE,
            estadoPago = EstadoPago.PAGADO,
            modalidad = ModalidadCita.PRESENCIAL,
        )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        every { userSessionDataStore.sessionFlow } returns sessionFlow
        // Default mock for obtenerPsicologoAsignado to avoid unmocked calls
        coEvery { profileRepository.obtenerPsicologoAsignado(any()) } returns
            Result.failure(Exception("No psicólogo"))
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private fun createViewModel(): CitasViewModel = CitasViewModel(citasRepository, profileRepository, userSessionDataStore)

    // 1. Initial state - no session, empty agenda, no error
    @Test
    fun `initial state has no session, empty agenda and no error`() =
        runTest {
            viewModel = createViewModel()
            advanceUntilIdle()

            assertNull(viewModel.userSession.value)
            assertEquals(emptyList<AgendaItemDTO>(), viewModel.agendaMensual.value)
            assertNull(viewModel.errorMessage.value)
        }

    // 2. cargarAgendaMensual success - populates agendaMensual
    @Test
    fun `cargarAgendaMensual success populates agendaMensual`() =
        runTest {
            val agenda = listOf(testAgendaItem)
            coEvery { citasRepository.getAgendaPaciente(any(), any()) } returns Result.success(agenda)

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cargarAgendaMensual(testMonth)
            advanceUntilIdle()

            assertEquals(agenda, viewModel.agendaMensual.value)
        }

    // 3. cargarAgendaMensual failure - sets errorMessage, empty list
    @Test
    fun `cargarAgendaMensual failure sets errorMessage and empty agenda`() =
        runTest {
            coEvery { citasRepository.getAgendaPaciente(any(), any()) } returns
                Result.failure(Exception("Error de servidor"))

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cargarAgendaMensual(testMonth)
            advanceUntilIdle()

            assertEquals("Error de servidor", viewModel.errorMessage.value)
            assertEquals(emptyList<AgendaItemDTO>(), viewModel.agendaMensual.value)
        }

    // 4. cargarAgendaMensual without session - does nothing
    @Test
    fun `cargarAgendaMensual without session does nothing`() =
        runTest {
            coEvery { citasRepository.getAgendaPaciente(any(), any()) } returns Result.success(listOf(testAgendaItem))

            // No session set - sessionFlow stays null
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cargarAgendaMensual(testMonth)
            advanceUntilIdle()

            assertEquals(emptyList<AgendaItemDTO>(), viewModel.agendaMensual.value)
        }

    // 5. cargarDisponibilidad success - populates disponibilidadDia
    @Test
    fun `cargarDisponibilidad success populates disponibilidadDia`() =
        runTest {
            coEvery { citasRepository.getDisponibilidadDia(any(), any(), any()) } returns
                Result.success(testDisponibilidad)

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cargarDisponibilidad(testFecha)
            advanceUntilIdle()

            assertEquals(testDisponibilidad, viewModel.disponibilidadDia.value)
        }

    // 6. cargarDisponibilidad failure - sets errorMessage
    @Test
    fun `cargarDisponibilidad failure sets errorMessage`() =
        runTest {
            coEvery { citasRepository.getDisponibilidadDia(any(), any(), any()) } returns
                Result.failure(Exception("Error disponibilidad"))

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cargarDisponibilidad(testFecha)
            advanceUntilIdle()

            assertEquals("Error disponibilidad", viewModel.errorMessage.value)
        }

    // 7. reservarCita with valid session returns success
    @Test
    fun `reservarCita with valid session returns success`() =
        runTest {
            coEvery { citasRepository.crearCita(any()) } returns Result.success(testAgendaItem)
            coEvery { citasRepository.getAgendaPaciente(any(), any()) } returns Result.success(listOf(testAgendaItem))
            coEvery { citasRepository.getDisponibilidadDia(any(), any(), any()) } returns Result.success(testDisponibilidad)

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            val result =
                viewModel.reservarCita(
                    idPaciente = 100L,
                    fecha = testFecha,
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.ONLINE,
                    monto = BigDecimal("50.00"),
                    modalidadCita = ModalidadCita.PRESENCIAL,
                )
            advanceUntilIdle()

            assertTrue(result.isSuccess)
        }

    // 8. reservarCita without session returns failure "No hay sesión"
    @Test
    fun `reservarCita without session returns failure`() =
        runTest {
            // No session set - sessionFlow stays null
            viewModel = createViewModel()
            advanceUntilIdle()

            val result =
                viewModel.reservarCita(
                    idPaciente = 100L,
                    fecha = testFecha,
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.ONLINE,
                    monto = BigDecimal("50.00"),
                    modalidadCita = ModalidadCita.PRESENCIAL,
                )

            assertTrue(result.isFailure)
            assertEquals("No hay sesión", result.exceptionOrNull()?.message)
        }

    // 9. reservarCita without psicologoId returns failure "No hay psicólogo asignado"
    @Test
    fun `reservarCita without psicologoId returns failure`() =
        runTest {
            // Session with no psicologo and no paciente avoids cargarPsicologoAsignado call
            val sessionWithoutPsicologo =
                UserSession(
                    idUsuario = 1L,
                    nombre = "Test User",
                    rol = "PACIENTE",
                    idPsicologo = null,
                    idPaciente = null,
                )
            sessionFlow.value = sessionWithoutPsicologo
            viewModel = createViewModel()
            advanceUntilIdle()

            val result =
                viewModel.reservarCita(
                    idPaciente = 100L,
                    fecha = testFecha,
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.ONLINE,
                    monto = BigDecimal("50.00"),
                    modalidadCita = ModalidadCita.PRESENCIAL,
                )

            assertTrue(result.isFailure)
            assertEquals("No hay psicólogo asignado", result.exceptionOrNull()?.message)
        }

    // 10. cancelarCita success clears errorMessage
    @Test
    fun `cancelarCita success clears errorMessage`() =
        runTest {
            coEvery { citasRepository.getAgendaPaciente(any(), any()) } returns
                Result.failure(Exception("some error"))
            coEvery { citasRepository.cancelarCita(any()) } returns Result.success(testAgendaItem)

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            // Set an error first
            viewModel.cargarAgendaMensual(testMonth)
            advanceUntilIdle()
            assertEquals("some error", viewModel.errorMessage.value)

            // Cancel with success should clear the error
            viewModel.cancelarCita(1L)
            advanceUntilIdle()

            assertNull(viewModel.errorMessage.value)
        }

    // 11. cancelarCita on failure sets errorMessage
    @Test
    fun `cancelarCita failure sets errorMessage`() =
        runTest {
            coEvery { citasRepository.cancelarCita(any()) } returns
                Result.failure(Exception("Error al cancelar la cita"))

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cancelarCita(1L)
            advanceUntilIdle()

            assertEquals("Error al cancelar la cita", viewModel.errorMessage.value)
        }

    // 12. clearError resets errorMessage to null
    @Test
    fun `clearError resets errorMessage to null`() =
        runTest {
            coEvery { citasRepository.cancelarCita(any()) } returns
                Result.failure(Exception("some error"))

            sessionFlow.value = testSession
            viewModel = createViewModel()
            advanceUntilIdle()

            viewModel.cancelarCita(1L)
            advanceUntilIdle()
            assertEquals("some error", viewModel.errorMessage.value)

            viewModel.clearError()

            assertNull(viewModel.errorMessage.value)
        }
}
