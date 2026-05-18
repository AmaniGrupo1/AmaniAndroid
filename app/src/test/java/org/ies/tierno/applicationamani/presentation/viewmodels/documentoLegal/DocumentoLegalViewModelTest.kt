package org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.documentoLegal.DocumentoLegalUseCase
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class DocumentoLegalViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private lateinit var useCase: DocumentoLegalUseCase
    private lateinit var viewModel: DocumentoLegalViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        useCase = mockk(relaxed = true)
        viewModel = DocumentoLegalViewModel(useCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `getAllDocumentos updates documentos list on success`() = runTest {
        val expected = listOf(mockk<DocumentoLegalResponseDTO>())
        coEvery { useCase.getAllDocumentos() } returns Result.success(expected)

        viewModel.getAllDocumentos()
        advanceUntilIdle()

        assertEquals(expected, viewModel.documentos.value)
        assertNull(viewModel.error.value)
    }

    @Test
    fun `crearDocumento calls getAllDocumentos on success`() = runTest {
        coEvery { useCase.crearDocumento(any()) } returns Result.success(mockk())
        coEvery { useCase.getAllDocumentos() } returns Result.success(emptyList())

        viewModel.crearDocumento(mockk())
        advanceUntilIdle()

        coEvery { useCase.getAllDocumentos() }
    }

    @Test
    fun `getDocumentoByTipo updates seleccionado on success`() = runTest {
        val expected = mockk<DocumentoLegalResponseDTO>()
        coEvery { useCase.getDocumentoByTipo("T") } returns Result.success(expected)

        viewModel.getDocumentoByTipo("T")
        advanceUntilIdle()

        assertEquals(expected, viewModel.documentoSeleccionado.value)
    }
}
