package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.NotificacionApi
import org.ies.tierno.applicationamani.dto.notificacion.NotificacionResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class NotificacionRepositoryTest {

    private lateinit var api: NotificacionApi
    private lateinit var repository: NotificacionRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = NotificacionRepository(api)
    }

    @Test
    fun `toggleNotificaciones should call api`() = runTest {
        coEvery { api.actualizarNotificaciones(1L, true) } returns Response.success(mockk())

        repository.toggleNotificaciones(1L, true)

        coVerify { api.actualizarNotificaciones(1L, true) }
    }

    @Test
    fun `getEstadoNotificaciones should return api response body`() = runTest {
        coEvery { api.obtenerEstadoNotificaciones(1L) } returns Response.success(true)

        val result = repository.getEstadoNotificaciones(1L)

        assertEquals(true, result.body())
    }

    @Test
    fun `getNotificaciones should return api response`() = runTest {
        val list = listOf(NotificacionResponseDTO(1L, "Titulo", "Mensaje", false, "2024-01-01"))
        coEvery { api.getNotificaciones(1L) } returns Response.success(list)

        val result = repository.getNotificaciones(1L)

        assertEquals(list, result.body())
    }

    @Test
    fun `marcarLeida should call api`() = runTest {
        coEvery { api.marcarLeida(1L) } returns Response.success(mockk())

        repository.marcarLeida(1L)

        coVerify { api.marcarLeida(1L) }
    }

    @Test
    fun `marcarTodasLeidas should call api`() = runTest {
        coEvery { api.marcarTodasLeidas(1L) } returns Response.success(Unit)

        repository.marcarTodasLeidas(1L)

        coVerify { api.marcarTodasLeidas(1L) }
    }

    @Test
    fun `contarNoLeidas should return count`() = runTest {
        coEvery { api.contarNoLeidas(1L) } returns Response.success(5L)

        val result = repository.contarNoLeidas(1L)

        assertEquals(5L, result.body())
    }
}
