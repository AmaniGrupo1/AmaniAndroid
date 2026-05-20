package org.ies.tierno.applicationamani.presentation.viewmodels.admin

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class CrearPreguntaViewModelTest {
    private val testDispatcher = StandardTestDispatcher()
    private val crearPreguntaUseCase: CrearPreguntaUseCase = mockk(relaxed = true)
    private lateinit var viewModel: CrearPreguntaViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state has empty request and guardadoExitoso false`() {
        viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)

        assertEquals("", viewModel.request.value.texto)
        assertEquals("", viewModel.request.value.tipo)
        assertTrue(
            viewModel.request.value.opciones
                ?.isEmpty() ?: false,
        )
        assertFalse(viewModel.guardadoExitoso.value)
    }

    @Test
    fun `setTexto updates request texto`() {
        viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
        viewModel.setTexto("¿Cómo te sientes?")

        assertEquals("¿Cómo te sientes?", viewModel.request.value.texto)
    }

    @Test
    fun `setTipo updates request tipo`() {
        viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
        viewModel.setTipo("opcion_multiple")

        assertEquals("opcion_multiple", viewModel.request.value.tipo)
    }

    @Test
    fun `setOpcion builds opciones list filtering blanks`() {
        viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
        viewModel.setOpcion1("Opción A")
        viewModel.setOpcion2("Opción B")
        viewModel.setOpcion3("")
        viewModel.setOpcion4("Opción D")

        assertEquals(listOf("Opción A", "Opción B", "Opción D"), viewModel.request.value.opciones!!)
    }

    @Test
    fun `guardarPregunta success sets guardadoExitoso true`() =
        runTest {
            val dto = OpcionAdminDTO("Test", "opcion_multiple", emptyList())
            coEvery { crearPreguntaUseCase(any()) } returns dto

            viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
            viewModel.guardarPregunta()
            advanceUntilIdle()

            assertTrue(viewModel.guardadoExitoso.value)
        }

    @Test
    fun `guardarPregunta failure sets guardadoExitoso false`() =
        runTest {
            coEvery { crearPreguntaUseCase(any()) } throws Exception("Error API")

            viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
            viewModel.guardarPregunta()
            advanceUntilIdle()

            assertFalse(viewModel.guardadoExitoso.value)
        }

    @Test
    fun `limpiarEstadoGuardado resets guardadoExitoso`() =
        runTest {
            val dto = OpcionAdminDTO("Test", "opcion_multiple", emptyList())
            coEvery { crearPreguntaUseCase(any()) } returns dto

            viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
            viewModel.guardarPregunta()
            advanceUntilIdle()
            assertTrue(viewModel.guardadoExitoso.value)

            viewModel.limpiarEstadoGuardado()
            assertFalse(viewModel.guardadoExitoso.value)
        }

    @Test
    fun `boundary all opciones blank results in empty opciones list`() {
        viewModel = CrearPreguntaViewModel(crearPreguntaUseCase)
        viewModel.setOpcion1("")
        viewModel.setOpcion2("")
        viewModel.setOpcion3("")
        viewModel.setOpcion4("")

        assertTrue(
            viewModel.request.value.opciones
                ?.isEmpty() ?: false,
        )
    }
}
