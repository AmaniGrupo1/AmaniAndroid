package org.ies.tierno.applicationamani.presentation.viewmodels.diario

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.data.repositorio.DiarioEmocionalRepository
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class DiarioEmocionalViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private val repository: DiarioEmocionalRepository = mockk(relaxed = true)
    private lateinit var viewModel: DiarioEmocionalViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        every { repository.observeEntradas() } returns flowOf(emptyList())
        viewModel = DiarioEmocionalViewModel(repository)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `initial state is correct`() = runTest {
        assertEquals("", viewModel.uiState.value.titulo)
        assertEquals("", viewModel.uiState.value.contenido)
        assertEquals(5f, viewModel.uiState.value.intensidad, 0.01f)
        assertEquals(0, viewModel.uiState.value.currentStep)
        assertNull(viewModel.uiState.value.editandoId)
    }

    @Test
    fun `onTituloChange updates title`() {
        viewModel.onTituloChange("Nuevo título")
        assertEquals("Nuevo título", viewModel.uiState.value.titulo)
    }

    @Test
    fun `onContenidoChange updates content within limit`() {
        viewModel.onContenidoChange("Contenido")
        assertEquals("Contenido", viewModel.uiState.value.contenido)
    }

    @Test
    fun `onContenidoChange ignores content over 500 chars`() {
        val longText = "a".repeat(501)
        viewModel.onContenidoChange(longText)
        assertEquals("", viewModel.uiState.value.contenido)
    }

    @Test
    fun `onNextStep increases step up to 2`() {
        viewModel.onNextStep()
        assertEquals(1, viewModel.uiState.value.currentStep)
        viewModel.onNextStep()
        assertEquals(2, viewModel.uiState.value.currentStep)
        viewModel.onNextStep()
        assertEquals(2, viewModel.uiState.value.currentStep)
    }

    @Test
    fun `onPreviousStep decreases step down to 0`() {
        viewModel.onNextStep()
        viewModel.onNextStep()
        viewModel.onPreviousStep()
        assertEquals(1, viewModel.uiState.value.currentStep)
        viewModel.onPreviousStep()
        assertEquals(0, viewModel.uiState.value.currentStep)
        viewModel.onPreviousStep()
        assertEquals(0, viewModel.uiState.value.currentStep)
    }

    @Test
    fun `guardarEntrada shows error when title is blank`() = runTest {
        viewModel.guardarEntrada()
        assertEquals("Título y contenido son obligatorios.", viewModel.uiState.value.mensajeError)
    }

    @Test
    fun `guardarEntrada shows error when content is blank`() = runTest {
        viewModel.onTituloChange("Título")
        viewModel.guardarEntrada()
        assertEquals("Título y contenido son obligatorios.", viewModel.uiState.value.mensajeError)
    }

    @Test
    fun `guardarEntrada calls repository when valid`() = runTest {
        viewModel.onTituloChange("Título")
        viewModel.onContenidoChange("Contenido")
        coEvery { repository.guardarEntrada(any(), any(), any(), any(), any()) } returns Unit

        viewModel.guardarEntrada()
        advanceUntilIdle()

        coVerify { repository.guardarEntrada(null, "Título", "Contenido", "", 5) }
    }

    @Test
    fun `editarEntrada populates state`() {
        val entrada = EntradaDiario(
            id = 1L,
            titulo = "T",
            contenido = "C",
            emocion = "Feliz",
            intensidad = 8,
            createdAt = 0L,
            updatedAt = 0L
        )
        viewModel.editarEntrada(entrada)

        assertEquals(1L, viewModel.uiState.value.editandoId)
        assertEquals("T", viewModel.uiState.value.titulo)
        assertEquals(8f, viewModel.uiState.value.intensidad, 0.01f)
    }

    @Test
    fun `eliminarEntrada calls repository`() = runTest {
        val entrada = EntradaDiario(
            id = 1L, titulo = "T", contenido = "C", emocion = "Feliz",
            intensidad = 5, createdAt = 0L, updatedAt = 0L
        )
        coEvery { repository.eliminarEntrada(entrada) } returns Unit

        viewModel.eliminarEntrada(entrada)
        advanceUntilIdle()

        coVerify { repository.eliminarEntrada(entrada) }
    }

    @Test
    fun `forzarSincronizacion calls repository`() = runTest {
        coEvery { repository.syncNow() } returns Unit

        viewModel.forzarSincronizacion()
        advanceUntilIdle()

        coVerify { repository.syncNow() }
    }
}
