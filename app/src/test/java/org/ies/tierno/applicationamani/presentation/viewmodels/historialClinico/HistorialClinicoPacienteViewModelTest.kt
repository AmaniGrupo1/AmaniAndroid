package org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.historialClinico.HistorialClinicoUseCase
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class HistorialClinicoPacienteViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: HistorialClinicoUseCase
    private lateinit var viewModel: HistorialClinicoPacienteViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
        viewModel = HistorialClinicoPacienteViewModel(useCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `cargarHistorialClinico updates historial on success`() =
        runTest {
            val expected = listOf(mockk<HistorialClinicoResponseDTO>())
            coEvery { useCase.getHistorialClinico(any(), any()) } returns expected

            viewModel.cargarHistorialClinico(1L, "token")
            advanceUntilIdle()

            assertEquals(expected, viewModel.historial.value)
            assertNull(viewModel.error.value)
        }

    @Test
    fun `crearHistorialClinico updates historialCreado on success`() =
        runTest {
            val expected = mockk<HistorialClinicoResponseDTO>()
            coEvery { useCase.createHistorialClinico(any()) } returns expected

            viewModel.crearHistorialClinico(mockk())
            advanceUntilIdle()

            assertEquals(expected, viewModel.historialCreado.value)
        }

    @Test
    fun `resetHistorialCreado sets it to null`() =
        runTest {
            // First set it
            val expected = mockk<HistorialClinicoResponseDTO>()
            coEvery { useCase.createHistorialClinico(any()) } returns expected
            viewModel.crearHistorialClinico(mockk())
            advanceUntilIdle()

            viewModel.resetHistorialCreado()
            assertNull(viewModel.historialCreado.value)
        }
}
