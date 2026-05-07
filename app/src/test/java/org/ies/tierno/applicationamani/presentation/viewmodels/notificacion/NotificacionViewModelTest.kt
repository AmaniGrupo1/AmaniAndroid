package org.ies.tierno.applicationamani.presentation.viewmodels.notificacion

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
import org.ies.tierno.applicationamani.domain.usecases.notificacion.NotificacionUseCase
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class NotificacionViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val notificacionUseCase: NotificacionUseCase = mockk()
    private lateinit var viewModel: NotificacionViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `toggle activates notifications`() = runTest {
        coEvery { notificacionUseCase.toggleNotificaciones(1L, true) } returns Unit

        viewModel = NotificacionViewModel(notificacionUseCase)
        viewModel.toggle(1L, true)
        advanceUntilIdle()

        coVerify { notificacionUseCase.toggleNotificaciones(1L, true) }
    }

    @Test
    fun `toggle deactivates notifications`() = runTest {
        coEvery { notificacionUseCase.toggleNotificaciones(1L, false) } returns Unit

        viewModel = NotificacionViewModel(notificacionUseCase)
        viewModel.toggle(1L, false)
        advanceUntilIdle()

        coVerify { notificacionUseCase.toggleNotificaciones(1L, false) }
    }

    @Test
    fun `toggle when useCase throws does not crash`() = runTest {
        coEvery { notificacionUseCase.toggleNotificaciones(1L, true) } throws RuntimeException("Error API")

        viewModel = NotificacionViewModel(notificacionUseCase)
        viewModel.toggle(1L, true)
        advanceUntilIdle()

        // If no exception propagated, test passes
        coVerify { notificacionUseCase.toggleNotificaciones(1L, true) }
    }

    @Test
    fun `boundary toggle with id 0 calls useCase`() = runTest {
        coEvery { notificacionUseCase.toggleNotificaciones(0L, true) } returns Unit

        viewModel = NotificacionViewModel(notificacionUseCase)
        viewModel.toggle(0L, true)
        advanceUntilIdle()

        coVerify { notificacionUseCase.toggleNotificaciones(0L, true) }
    }
}
