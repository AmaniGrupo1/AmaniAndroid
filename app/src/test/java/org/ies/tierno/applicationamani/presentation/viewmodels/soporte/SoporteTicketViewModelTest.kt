package org.ies.tierno.applicationamani.presentation.viewmodels.soporte

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.repositorio.SoporteTicketRepository
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.time.LocalDateTime

@OptIn(ExperimentalCoroutinesApi::class)
class SoporteTicketViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val repository: SoporteTicketRepository = mockk()
    private lateinit var viewModel: SoporteTicketViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        coEvery { repository.getMisTickets() } returns emptyList()
        viewModel = SoporteTicketViewModel(repository)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state is correct`() {
        assertEquals(PantallaSoporte.MIS_TICKETS, viewModel.uiState.value.pantallaActual)
        assertEquals(FiltroTicket.TODOS, viewModel.uiState.value.filtroSeleccionado)
        assertEquals(TipoTicket.PROBLEMA, viewModel.uiState.value.tipoTicket)
        assertEquals(CategoriaTicket.BUG_APP, viewModel.uiState.value.categoria)
        assertTrue(viewModel.uiState.value.tickets.isEmpty())
        assertFalse(viewModel.uiState.value.isLoading)
        assertNull(viewModel.uiState.value.error)
    }

    @Test
    fun `cargarTickets loads tickets successfully`() = runTest {
        val dto = TicketSoporteResponseDTO(
            idTicket = 1L,
            titulo = "Bug",
            descripcion = "Desc",
            tipo = TipoTicket.PROBLEMA,
            categoria = CategoriaTicket.BUG_APP,
            estado = EstadoTicket.ABIERTO,
            creadoEn = LocalDateTime.now(),
            actualizadoEn = null,
            cerradoEn = null,
            nombreUsuario = null,
            apellidoUsuario = null
        )
        coEvery { repository.getMisTickets() } returns listOf(dto)

        viewModel.cargarTickets()
        advanceUntilIdle()

        assertEquals(1, viewModel.uiState.value.tickets.size)
        assertEquals("Bug", viewModel.uiState.value.tickets[0].titulo)
        assertFalse(viewModel.uiState.value.isLoading)
        assertNull(viewModel.uiState.value.error)
    }

    @Test
    fun `cargarTickets shows error on failure`() = runTest {
        coEvery { repository.getMisTickets() } throws Exception("Network error")

        viewModel.cargarTickets()
        advanceUntilIdle()

        assertEquals("Network error", viewModel.uiState.value.error)
        assertFalse(viewModel.uiState.value.isLoading)
    }

    @Test
    fun `navegarA updates pantallaActual`() {
        viewModel.navegarA(PantallaSoporte.NUEVO_TICKET)
        assertEquals(PantallaSoporte.NUEVO_TICKET, viewModel.uiState.value.pantallaActual)
    }

    @Test
    fun `seleccionarFiltro updates filtro`() {
        viewModel.seleccionarFiltro(FiltroTicket.ABIERTOS)
        assertEquals(FiltroTicket.ABIERTOS, viewModel.uiState.value.filtroSeleccionado)
    }

    @Test
    fun `seleccionarTipo updates tipo`() {
        viewModel.seleccionarTipo(TipoTicket.SUGERENCIA)
        assertEquals(TipoTicket.SUGERENCIA, viewModel.uiState.value.tipoTicket)
    }

    @Test
    fun `onTituloChange updates titulo`() {
        viewModel.onTituloChange("Nuevo")
        assertEquals("Nuevo", viewModel.uiState.value.titulo)
    }

    @Test
    fun `onDescripcionChange updates descripcion within limit`() {
        viewModel.onDescripcionChange("Desc")
        assertEquals("Desc", viewModel.uiState.value.descripcion)
    }

    @Test
    fun `onDescripcionChange ignores over 1000 chars`() {
        val longText = "a".repeat(1001)
        viewModel.onDescripcionChange(longText)
        assertEquals("", viewModel.uiState.value.descripcion)
    }

    @Test
    fun `onCategoriaChange updates categoria`() {
        viewModel.onCategoriaChange(CategoriaTicket.CUENTA)
        assertEquals(CategoriaTicket.CUENTA, viewModel.uiState.value.categoria)
    }

    @Test
    fun `enviarTicket shows error when title blank`() = runTest {
        viewModel.snackbarMessage.test {
            viewModel.enviarTicket()
            advanceUntilIdle()
            assertEquals("Título y descripción son obligatorios.", awaitItem())
        }
    }

    @Test
    fun `enviarTicket shows error when descripcion blank`() = runTest {
        viewModel.snackbarMessage.test {
            viewModel.onTituloChange("Título")
            viewModel.enviarTicket()
            advanceUntilIdle()
            assertEquals("Título y descripción son obligatorios.", awaitItem())
        }
    }

    @Test
    fun `enviarTicket creates ticket successfully`() = runTest {
        val dto = TicketSoporteResponseDTO(
            idTicket = 1L,
            titulo = "Bug",
            descripcion = "Desc",
            tipo = TipoTicket.PROBLEMA,
            categoria = CategoriaTicket.BUG_APP,
            estado = EstadoTicket.ABIERTO,
            creadoEn = LocalDateTime.now(),
            actualizadoEn = null,
            cerradoEn = null,
            nombreUsuario = null,
            apellidoUsuario = null
        )
        coEvery { repository.crearTicket(any()) } returns dto

        viewModel.onTituloChange("Bug")
        viewModel.onDescripcionChange("Desc")
        viewModel.enviarTicket()
        advanceUntilIdle()

        assertEquals(1, viewModel.uiState.value.tickets.size)
        assertTrue(viewModel.uiState.value.mostrarToastExito)
        assertEquals("", viewModel.uiState.value.titulo)
        assertEquals("", viewModel.uiState.value.descripcion)
    }

    @Test
    fun `enviarTicket shows error on failure`() = runTest {
        coEvery { repository.crearTicket(any()) } throws Exception("fail")

        viewModel.onTituloChange("Bug")
        viewModel.onDescripcionChange("Desc")
        viewModel.enviarTicket()
        advanceUntilIdle()

        assertEquals("fail", viewModel.uiState.value.error)
    }

    @Test
    fun `dismissToast resets flag`() {
        viewModel.dismissToast()
        assertFalse(viewModel.uiState.value.mostrarToastExito)
    }

    @Test
    fun `clearError resets error`() {
        viewModel.clearError()
        assertNull(viewModel.uiState.value.error)
    }

    @Test
    fun `ticketsFiltrados returns all when TODOS`() {
        assertEquals(0, viewModel.ticketsFiltrados.size)
    }

    @Test
    fun `ticketsFiltrados filters by estado`() = runTest {
        val dto = TicketSoporteResponseDTO(
            idTicket = 1L, titulo = "T", descripcion = "D",
            tipo = TipoTicket.PROBLEMA, categoria = CategoriaTicket.BUG_APP,
            estado = EstadoTicket.ABIERTO, creadoEn = LocalDateTime.now(),
            actualizadoEn = null, cerradoEn = null,
            nombreUsuario = null, apellidoUsuario = null
        )
        coEvery { repository.getMisTickets() } returns listOf(dto)
        viewModel.cargarTickets()
        advanceUntilIdle()

        viewModel.seleccionarFiltro(FiltroTicket.ABIERTOS)
        assertEquals(1, viewModel.ticketsFiltrados.size)

        viewModel.seleccionarFiltro(FiltroTicket.CERRADOS)
        assertEquals(0, viewModel.ticketsFiltrados.size)
    }
}
