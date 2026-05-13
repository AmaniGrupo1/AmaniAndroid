package org.ies.tierno.applicationamani.domain.usecases.notificacion

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class NotificacionUseCaseTest {

    private lateinit var repository: NotificacionRepository
    private lateinit var useCase: NotificacionUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = NotificacionUseCase(repository)
    }

    @Test
    fun `getNotificaciones should delegate to repository`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.notificacion.NotificacionResponseDTO>()
        coEvery { repository.getNotificaciones(1L) } returns Response.success(list)

        val result = useCase.getNotificaciones(1L)

        assertEquals(list, result.body())
        coVerify { repository.getNotificaciones(1L) }
    }

    @Test
    fun `marcarLeida should delegate to repository`() = runTest {
        coEvery { repository.marcarLeida(1L) } returns Response.success(mockk())

        useCase.marcarLeida(1L)

        coVerify { repository.marcarLeida(1L) }
    }

    @Test
    fun `marcarTodasLeidas should delegate to repository`() = runTest {
        coEvery { repository.marcarTodasLeidas(1L) } returns Response.success(Unit)

        useCase.marcarTodasLeidas(1L)

        coVerify { repository.marcarTodasLeidas(1L) }
    }

    @Test
    fun `contarNoLeidas should delegate to repository`() = runTest {
        coEvery { repository.contarNoLeidas(1L) } returns Response.success(5L)

        val result = useCase.contarNoLeidas(1L)

        assertEquals(5L, result.body())
        coVerify { repository.contarNoLeidas(1L) }
    }

    @Test
    fun `toggleNotificaciones should delegate to repository`() = runTest {
        coEvery { repository.toggleNotificaciones(1L, true) } returns Unit

        useCase.toggleNotificaciones(1L, true)

        coVerify { repository.toggleNotificaciones(1L, true) }
    }

    @Test
    fun `getEstadoNotificaciones should delegate to repository`() = runTest {
        coEvery { repository.getEstadoNotificaciones(1L) } returns Response.success(true)

        val result = useCase.getEstadoNotificaciones(1L)

        assertEquals(true, result.body())
        coVerify { repository.getEstadoNotificaciones(1L) }
    }
}
