package org.ies.tierno.applicationamani.presentation.viewmodels.citas

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class ListarCitasViewModelTest {

    private val testDispatcher = UnconfinedTestDispatcher()
    private val listarCitasUseCase: ListarCitasUseCase = mockk()
    private val citasRepository: CitasRepository = mockk()

    private val testAgendaItem = AgendaItemDTO(
        id = 1L, idPaciente = 1L, fecha = java.time.LocalDate.of(2025, 6, 1),
        horaInicio = java.time.LocalTime.of(10, 0), horaFin = java.time.LocalTime.of(11, 0),
        tipo = "Terapia", estado = "pendiente", motivo = "Consulta",
        duracionMinutos = 60, nombrePaciente = "Test", nombrePsicologo = "Dr. Test",
        terapia = null, metodoPago = null, estadoPago = null,
        modalidad = org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita.PRESENCIAL
    )

    private val testCita = CitaPacienteViewResponseDTO(
        idCita = 1L, fecha = "2025-06-01", horaInicio = "10:00",
        horaFin = "11:00", durationMinutes = 60, estado = "pendiente",
        modalidad = "ONLINE", motivo = "Consulta",
        tipoTerapia = null, minutosRestantes = null, esProxima = null
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
    fun `cargarCitas success populates citas list`() = runTest {
        coEvery { listarCitasUseCase() } returns listOf(testCita)

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        assertEquals(1, viewModel.citas.size)
        assertEquals("pendiente", viewModel.citas[0].estado)
        assertNull(viewModel.error.value)
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `cargarCitas on failure sets error`() = runTest {
        coEvery { listarCitasUseCase() } throws Exception("Error de red")

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        assertEquals("Error de red", viewModel.error.value)
        assertTrue(viewModel.citas.isEmpty())
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `cargarCitas sets isLoading properly`() = runTest {
        val deferred = kotlinx.coroutines.CompletableDeferred<List<CitaPacienteViewResponseDTO>>()
        coEvery { listarCitasUseCase() } coAnswers { deferred.await() }

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        assertTrue(viewModel.isLoading.value)

        deferred.complete(listOf(testCita))
        assertFalse(viewModel.isLoading.value)
    }

    @Test
    fun `cancelarCita success updates local estado`() = runTest {
        coEvery { listarCitasUseCase() } returns listOf(testCita)
        coEvery { citasRepository.cancelarCita(1L) } returns Result.success(testAgendaItem)

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        var onSuccessCalled = false
        viewModel.cancelarCita(1L) { onSuccessCalled = true }
        advanceUntilIdle()

        assertEquals("cancelada", viewModel.citas[0].estado)
        assertTrue(onSuccessCalled)
    }

    @Test
    fun `cancelarCita Result failure sets error`() = runTest {
        coEvery { listarCitasUseCase() } returns listOf(testCita)
        coEvery { citasRepository.cancelarCita(1L) } returns Result.failure(Exception("No se puede cancelar"))

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        viewModel.cancelarCita(1L)
        advanceUntilIdle()

        assertNotNull(viewModel.error.value)
        assertEquals("pendiente", viewModel.citas[0].estado)
    }

    @Test
    fun `selectCita updates selectedCita`() = runTest {
        coEvery { listarCitasUseCase() } returns listOf(testCita)

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        viewModel.selectCita(testCita)
        assertEquals(testCita, viewModel.selectedCita.value)

        viewModel.selectCita(null)
        assertNull(viewModel.selectedCita.value)
    }

    @Test
    fun `clearError resets error to null`() = runTest {
        coEvery { listarCitasUseCase() } throws Exception("fail")

        val viewModel = ListarCitasViewModel(listarCitasUseCase, citasRepository)
        viewModel.cargarCitas()
        advanceUntilIdle()

        assertNotNull(viewModel.error.value)
        viewModel.clearError()
        assertNull(viewModel.error.value)
    }
}
