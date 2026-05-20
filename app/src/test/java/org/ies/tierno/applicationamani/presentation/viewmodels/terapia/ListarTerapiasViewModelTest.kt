package org.ies.tierno.applicationamani.presentation.viewmodels.terapia

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.usecases.terapia.TerapiasGeneralUseCase
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.math.BigDecimal

@OptIn(ExperimentalCoroutinesApi::class)
class ListarTerapiasViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val repository: CitasRepository = mockk(relaxed = true)
    private val terapiasGeneralUseCase: TerapiasGeneralUseCase = mockk(relaxed = true)

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `init loads terapias from repository`() =
        runTest {
            val terapias =
                listOf(
                    TerapiaResponseDTO(idTipo = 1L, nombre = "Cognitivo-Conductual", duracionMinutos = 60, precio = BigDecimal("50")),
                )
            coEvery { repository.getTerapias() } returns Result.success(terapias)

            val viewModel = ListarTerapiasViewModel(repository, terapiasGeneralUseCase)
            advanceUntilIdle()

            assertEquals(1, viewModel.terapias.value.size)
            assertEquals("Cognitivo-Conductual", viewModel.terapias.value[0].nombre)
        }

    @Test
    fun `init on failure sets empty list`() =
        runTest {
            coEvery { repository.getTerapias() } returns Result.failure(Exception("Error API"))

            val viewModel = ListarTerapiasViewModel(repository, terapiasGeneralUseCase)
            advanceUntilIdle()

            assertTrue(viewModel.terapias.value.isEmpty())
        }

    @Test
    fun `cargarTerapias refreshes data`() =
        runTest {
            val terapias = listOf(TerapiaResponseDTO(idTipo = 1L, nombre = "Test", duracionMinutos = 60, precio = BigDecimal("50")))
            coEvery { repository.getTerapias() } returns Result.success(terapias)

            val viewModel = ListarTerapiasViewModel(repository, terapiasGeneralUseCase)
            advanceUntilIdle()
            assertEquals(1, viewModel.terapias.value.size)

            val nuevasTerapias =
                listOf(
                    TerapiaResponseDTO(idTipo = 1L, nombre = "Test", duracionMinutos = 60, precio = BigDecimal("50")),
                    TerapiaResponseDTO(idTipo = 2L, nombre = "Otra", duracionMinutos = 45, precio = BigDecimal("40")),
                )
            coEvery { repository.getTerapias() } returns Result.success(nuevasTerapias)

            viewModel.cargarTerapias()
            advanceUntilIdle()

            assertEquals(2, viewModel.terapias.value.size)
        }

    @Test
    fun `boundary empty terapias list`() =
        runTest {
            coEvery { repository.getTerapias() } returns Result.success(emptyList())

            val viewModel = ListarTerapiasViewModel(repository, terapiasGeneralUseCase)
            advanceUntilIdle()

            assertTrue(viewModel.terapias.value.isEmpty())
        }
}
