package org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class SituacionViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: SituacionUseCase

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk()
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state with empty flow - situaciones is empty`() = runTest {
        every { useCase.getSituaciones() } returns flowOf(emptyList<SituacionDTO>())

        val viewModel = SituacionViewModel(useCase)
        advanceUntilIdle()

        viewModel.situaciones.test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
        }
    }

    @Test
    fun `when useCase emits list - situaciones updates`() = runTest {
        val situacion1 = SituacionDTO(1L, "Ansiedad", "Emocional", "Descripción")
        val situacion2 = SituacionDTO(2L, "Estrés", "Laboral", "Descripción estrés")
        val expected = listOf(situacion1, situacion2)

        every { useCase.getSituaciones() } returns flowOf(expected)

        val viewModel = SituacionViewModel(useCase)
        advanceUntilIdle()

        viewModel.situaciones.test {
            assertEquals(expected, awaitItem())
        }
    }

    @Test
    fun `when useCase emits empty list - situaciones is empty`() = runTest {
        every { useCase.getSituaciones() } returns flowOf(emptyList<SituacionDTO>())

        val viewModel = SituacionViewModel(useCase)
        advanceUntilIdle()

        viewModel.situaciones.test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
        }
    }

    @Test
    fun `when useCase flow throws - situaciones remains empty without crash`() = runTest {
        every { useCase.getSituaciones() } returns flow { throw RuntimeException("Network error") }

        val viewModel = SituacionViewModel(useCase)
        advanceUntilIdle()

        viewModel.situaciones.test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
        }
    }

    @Test
    fun `useCase emits multiple values sequentially - situaciones takes last value`() = runTest {
        val firstList = listOf(SituacionDTO(1L, "Primera", null, null))
        val secondList = listOf(SituacionDTO(2L, "Segunda", "Cat", null))
        val thirdList = listOf(SituacionDTO(3L, "Tercera", "Cat", "Desc"))

        val mutableFlow = MutableStateFlow(firstList)
        every { useCase.getSituaciones() } returns mutableFlow

        val viewModel = SituacionViewModel(useCase)
        advanceUntilIdle()

        assertEquals(firstList, viewModel.situaciones.value)

        mutableFlow.value = secondList
        advanceUntilIdle()
        assertEquals(secondList, viewModel.situaciones.value)

        mutableFlow.value = thirdList
        advanceUntilIdle()
        assertEquals(thirdList, viewModel.situaciones.value)
    }
}
