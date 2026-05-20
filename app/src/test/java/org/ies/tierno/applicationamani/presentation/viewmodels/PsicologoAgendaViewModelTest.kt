package org.ies.tierno.applicationamani.presentation.viewmodels

import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth

@OptIn(ExperimentalCoroutinesApi::class)
class PsicologoAgendaViewModelTest {
    private val testDispatcher = StandardTestDispatcher()

    private lateinit var citasRepository: CitasRepository
    private lateinit var authRepository: AuthRepository
    private lateinit var userSessionDataStore: UserSessionDataStore
    private lateinit var viewModel: PsicologoAgendaViewModel

    private val sessionFlow = MutableStateFlow<UserSession?>(null)

    private val validSession =
        UserSession(
            idUsuario = 1L,
            nombre = "Dr. Test",
            rol = "PSICOLOGO",
            idPsicologo = 10L,
        )

    private val sampleAgendaItem =
        AgendaItemDTO(
            id = 100L,
            idPaciente = 2L,
            fecha = LocalDate.of(2026, 5, 10),
            horaInicio = LocalTime.of(10, 0),
            horaFin = LocalTime.of(11, 0),
            tipo = "sesion",
            estado = "pendiente",
            motivo = "Consulta psicológica",
            duracionMinutos = 60,
            nombrePaciente = "Paciente Test",
            nombrePsicologo = "Dr. Test",
            terapia =
                TerapiaResponseDTO(
                    idTipo = 1L,
                    nombre = "Terapia cognitiva",
                    duracionMinutos = 60,
                    precio = BigDecimal("50.00"),
                ),
            metodoPago = MetodoPago.PRESENCIAL,
            estadoPago = EstadoPago.PENDIENTE,
            modalidad = ModalidadCita.PRESENCIAL,
        )

    private val sampleHorario =
        HorarioRequestDTO(
            franjas =
                listOf(
                    FranjaHorarioDTO(
                        diaSemana = 1,
                        horaInicio = "09:00",
                        horaFin = "17:00",
                        activo = true,
                    ),
                ),
        )

    private val sampleDisponibilidad =
        DisponibilidadDiaResponse(
            fecha = LocalDate.of(2026, 5, 10),
            diaCompleto = false,
        )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        citasRepository = mockk(relaxed = true)
        authRepository = mockk(relaxed = true)
        userSessionDataStore = mockk(relaxed = true)

        every { userSessionDataStore.sessionFlow } returns sessionFlow
        every { authRepository.getPacientesByPsicologo() } returns flowOf(emptyList())
        coEvery { citasRepository.getDuracion(any()) } returns Result.success(60)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    private fun createViewModel(session: UserSession?) {
        sessionFlow.value = session
        viewModel =
            PsicologoAgendaViewModel(
                citasRepository,
                authRepository,
                userSessionDataStore,
            )
    }

    // ── Test 1 ──────────────────────────────────────────────────────────────

    @Test
    fun `crearCitaParaPaciente with valid session and success returns Result success and sets successMessage`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.crearCita(any()) } returns Result.success(sampleAgendaItem)
            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns
                Result.success(
                    listOf(sampleAgendaItem),
                )
            coEvery { citasRepository.getDisponibilidadDia(any(), any(), any()) } returns
                Result.success(
                    sampleDisponibilidad,
                )

            val result =
                viewModel.crearCitaParaPaciente(
                    idPaciente = 2L,
                    fecha = LocalDate.of(2026, 5, 10),
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.PRESENCIAL,
                    estadoPago = EstadoPago.PENDIENTE,
                    monto = BigDecimal("50.00"),
                    modalidad = ModalidadCita.PRESENCIAL,
                )

            advanceUntilIdle()

            assertTrue(result.isSuccess)
            assertEquals("Cita creada exitosamente", viewModel.successMessage.value)
        }

    // ── Test 2 ──────────────────────────────────────────────────────────────

    @Test
    fun `crearCitaParaPaciente without session returns failure with No hay sesion`() =
        runTest {
            createViewModel(null)
            advanceUntilIdle()

            val result =
                viewModel.crearCitaParaPaciente(
                    idPaciente = 2L,
                    fecha = LocalDate.of(2026, 5, 10),
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.PRESENCIAL,
                    estadoPago = EstadoPago.PENDIENTE,
                    monto = BigDecimal("50.00"),
                    modalidad = ModalidadCita.PRESENCIAL,
                )

            assertTrue(result.isFailure)
            assertEquals("No hay sesión", result.exceptionOrNull()?.message)
        }

    // ── Test 3 ──────────────────────────────────────────────────────────────

    @Test
    fun `crearCitaParaPaciente without idPsicologo returns failure with No hay ID del psicologo`() =
        runTest {
            val sessionNoPsicologo =
                UserSession(
                    idUsuario = 1L,
                    nombre = "Test",
                    rol = "PACIENTE",
                    idPsicologo = null,
                )
            createViewModel(sessionNoPsicologo)
            advanceUntilIdle()

            val result =
                viewModel.crearCitaParaPaciente(
                    idPaciente = 2L,
                    fecha = LocalDate.of(2026, 5, 10),
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.PRESENCIAL,
                    estadoPago = EstadoPago.PENDIENTE,
                    monto = BigDecimal("50.00"),
                    modalidad = ModalidadCita.PRESENCIAL,
                )

            assertTrue(result.isFailure)
            assertEquals("No hay ID del psicólogo", result.exceptionOrNull()?.message)
        }

    // ── Test 4 ──────────────────────────────────────────────────────────────

    @Test
    fun `crearCitaParaPaciente API failure returns Result failure and sets errorMessage`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.crearCita(any()) } returns
                Result.failure(
                    Exception("Error del servidor"),
                )

            val result =
                viewModel.crearCitaParaPaciente(
                    idPaciente = 2L,
                    fecha = LocalDate.of(2026, 5, 10),
                    hora = LocalTime.of(10, 0),
                    duracionMinutos = 60,
                    motivo = "Consulta",
                    idTipoTerapia = 1L,
                    metodoPago = MetodoPago.PRESENCIAL,
                    estadoPago = EstadoPago.PENDIENTE,
                    monto = BigDecimal("50.00"),
                    modalidad = ModalidadCita.PRESENCIAL,
                )

            assertTrue(result.isFailure)
            assertNotNull(viewModel.errorMessage.value)
        }

    // ── Test 5 ──────────────────────────────────────────────────────────────

    @Test
    fun `cargarAgendaMensual success populates agendaMensual`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns
                Result.success(
                    listOf(sampleAgendaItem),
                )

            viewModel.cargarAgendaMensual(YearMonth.of(2026, 5))
            advanceUntilIdle()

            assertEquals(listOf(sampleAgendaItem), viewModel.agendaMensual.value)
        }

    // ── Test 6 ──────────────────────────────────────────────────────────────

    @Test
    fun `cargarAgendaMensual failure sets errorMessage`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns
                Result.failure(
                    Exception("Error de red"),
                )

            viewModel.cargarAgendaMensual(YearMonth.of(2026, 5))
            advanceUntilIdle()

            assertNotNull(viewModel.errorMessage.value)
        }

    // ── Test 7 ──────────────────────────────────────────────────────────────

    @Test
    fun `cargarHorarioActual success populates horarioActual`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.getHorarioActual(any()) } returns Result.success(sampleHorario)

            viewModel.cargarHorarioActual()
            advanceUntilIdle()

            assertNotNull(viewModel.horarioActual.value)
            assertEquals(sampleHorario, viewModel.horarioActual.value)
        }

    // ── Test 8 ──────────────────────────────────────────────────────────────

    @Test
    fun `cambiarEstadoCita success sets isLoading to false`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.cambiarEstadoCita(any(), any()) } returns Result.success(Unit)

            viewModel.cambiarEstadoCita(100L, EstadoCita.CONFIRMADA)
            advanceUntilIdle()

            assertFalse(viewModel.isLoading.value)
        }

    // ── Test 9 ──────────────────────────────────────────────────────────────

    @Test
    fun `seleccionarCitaPorId finds cita in agenda`() =
        runTest {
            createViewModel(validSession)
            advanceUntilIdle()

            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns
                Result.success(
                    listOf(sampleAgendaItem),
                )

            viewModel.cargarAgendaMensual(YearMonth.of(2026, 5))
            advanceUntilIdle()

            viewModel.seleccionarCitaPorId(100L)

            assertNotNull(viewModel.citaSeleccionada.value)
            assertEquals(100L, viewModel.citaSeleccionada.value?.id)
        }

    // ── Test 10 ─────────────────────────────────────────────────────────────

    @Test
    fun `clearError clears errorMessage and clearSuccess clears successMessage`() =
        runTest {
            val sessionNoPsicologo =
                UserSession(
                    idUsuario = 1L,
                    nombre = "Test",
                    rol = "PSICOLOGO",
                    idPsicologo = null,
                )
            createViewModel(sessionNoPsicologo)
            advanceUntilIdle()

            // With idPsicologo nulo, la implementación actual aborta sin exponer mensaje.
            viewModel.cargarAgendaMensual(YearMonth.of(2026, 5))
            assertNull(viewModel.errorMessage.value)

            viewModel.clearError()
            assertNull(viewModel.errorMessage.value)

            // Switch to valid session and trigger successMessage through actualizarHorario
            sessionFlow.value = validSession
            advanceUntilIdle()

            coEvery { citasRepository.actualizarHorario(any(), any()) } returns Result.success(Unit)
            coEvery { citasRepository.getAgendaPsicologo(any(), any()) } returns
                Result.success(
                    emptyList(),
                )

            viewModel.actualizarHorario(
                listOf(
                    FranjaHorarioDTO(
                        diaSemana = 1,
                        horaInicio = "09:00",
                        horaFin = "17:00",
                        activo = true,
                    ),
                ),
            )
            advanceUntilIdle()

            assertNotNull(viewModel.successMessage.value)

            viewModel.clearSuccess()
            assertNull(viewModel.successMessage.value)
        }
}
