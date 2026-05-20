package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.ResponseBody.Companion.toResponseBody
import org.ies.tierno.applicationamani.data.remoto.SoporteTicketApi
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteRequestDTO
import org.ies.tierno.applicationamani.dto.soporte.TicketSoporteResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response
import java.time.LocalDateTime

class SoporteTicketRepositoryTest {
    private lateinit var api: SoporteTicketApi
    private lateinit var repository: SoporteTicketRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = SoporteTicketRepository(api)
    }

    @Test
    fun `getMisTickets should return body when successful`() =
        runTest {
            val list =
                listOf(
                    TicketSoporteResponseDTO(
                        1L,
                        "T",
                        "D",
                        TipoTicket.PROBLEMA,
                        CategoriaTicket.BUG_APP,
                        EstadoTicket.ABIERTO,
                        LocalDateTime.now(),
                        null,
                        null,
                        null,
                        null,
                    ),
                )
            coEvery { api.getMisTickets() } returns Response.success(list)

            val result = repository.getMisTickets()

            assertEquals(list, result)
        }

    @Test(expected = Exception::class)
    fun `getMisTickets should throw when not successful`() =
        runTest {
            val errorBody = "".toResponseBody("application/json".toMediaTypeOrNull())
            coEvery { api.getMisTickets() } returns Response.error(500, errorBody)

            repository.getMisTickets()
        }

    @Test
    fun `getTicketById should return ticket when successful`() =
        runTest {
            val ticket =
                TicketSoporteResponseDTO(
                    1L,
                    "T",
                    "D",
                    TipoTicket.PROBLEMA,
                    CategoriaTicket.BUG_APP,
                    EstadoTicket.ABIERTO,
                    LocalDateTime.now(),
                    null,
                    null,
                    null,
                    null,
                )
            coEvery { api.getTicketById(1L) } returns Response.success(ticket)

            val result = repository.getTicketById(1L)

            assertEquals(ticket, result)
        }

    @Test(expected = Exception::class)
    fun `getTicketById should throw when not successful`() =
        runTest {
            val errorBody = "".toResponseBody("application/json".toMediaTypeOrNull())
            coEvery { api.getTicketById(1L) } returns Response.error(404, errorBody)

            repository.getTicketById(1L)
        }

    @Test
    fun `crearTicket should return ticket when successful`() =
        runTest {
            val ticket =
                TicketSoporteResponseDTO(
                    1L,
                    "T",
                    "D",
                    TipoTicket.PROBLEMA,
                    CategoriaTicket.BUG_APP,
                    EstadoTicket.ABIERTO,
                    LocalDateTime.now(),
                    null,
                    null,
                    null,
                    null,
                )
            coEvery { api.crearTicket(any()) } returns Response.success(ticket)

            val result = repository.crearTicket(TicketSoporteRequestDTO("T", "D", TipoTicket.PROBLEMA, CategoriaTicket.BUG_APP))

            assertEquals(ticket, result)
        }

    @Test(expected = Exception::class)
    fun `crearTicket should throw when not successful`() =
        runTest {
            val errorBody = "".toResponseBody("application/json".toMediaTypeOrNull())
            coEvery { api.crearTicket(any()) } returns Response.error(400, errorBody)

            repository.crearTicket(TicketSoporteRequestDTO("T", "D", TipoTicket.PROBLEMA, CategoriaTicket.BUG_APP))
        }
}
