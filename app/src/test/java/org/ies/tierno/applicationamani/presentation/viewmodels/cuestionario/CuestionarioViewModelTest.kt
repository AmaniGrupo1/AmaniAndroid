package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class CuestionarioViewModelTest {

    private val testDispatcher = StandardTestDispatcher()

    private lateinit var listarPreguntasUseCase: ListarPreguntasUseCase
    private lateinit var viewModel: CuestionarioViewModel

    private val samplePregunta = OpcionAdminDTO(
        texto = "¿Con qué frecuencia se siente ansioso?",
        tipo = "selección única",
        opciones = listOf("Nunca", "A veces", "A menudo", "Siempre")
    )

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        listarPreguntasUseCase = mockk()
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `preguntas is initially empty list`() = runTest {
        every { listarPreguntasUseCase() } returns flowOf(listOf(samplePregunta))

        viewModel = CuestionarioViewModel(listarPreguntasUseCase)

        assertEquals(emptyList<OpcionAdminDTO>(), viewModel.preguntas.value)
    }

    @Test
    fun `when useCase emits list, preguntas updates`() = runTest {
        val preguntas = listOf(samplePregunta, samplePregunta.copy(texto = "¿Cómo duerme?"))
        every { listarPreguntasUseCase() } returns flowOf(preguntas)

        viewModel = CuestionarioViewModel(listarPreguntasUseCase)

        viewModel.preguntas.test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            assertEquals(preguntas, awaitItem())
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when useCase emits null, preguntas updates to null`() = runTest {
        every { listarPreguntasUseCase() } returns flowOf(null)

        viewModel = CuestionarioViewModel(listarPreguntasUseCase)

        viewModel.preguntas.test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            assertEquals(null, awaitItem())
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when useCase emits empty list, preguntas is empty list`() = runTest {
        every { listarPreguntasUseCase() } returns flowOf(emptyList())

        viewModel = CuestionarioViewModel(listarPreguntasUseCase)

        viewModel.preguntas.test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `when useCase flow throws exception, preguntas remains at initial value`() = runTest {
        every { listarPreguntasUseCase() } returns flow { throw RuntimeException("Error de red") }

        viewModel = CuestionarioViewModel(listarPreguntasUseCase)

        viewModel.preguntas.test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            cancelAndIgnoreRemainingEvents()
        }
    }
}
