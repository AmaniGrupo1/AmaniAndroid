package org.ies.tierno.applicationamani.presentation.viewmodels.notificacion

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
        viewModel = NotificacionViewModel(notificacionUseCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `toggle should call useCase`() = runTest {
        coEvery { notificacionUseCase.toggleNotificaciones(1L, true) } returns Unit

        viewModel.toggle(1L, true)
        advanceUntilIdle()

        coVerify { notificacionUseCase.toggleNotificaciones(1L, true) }
    }
}
