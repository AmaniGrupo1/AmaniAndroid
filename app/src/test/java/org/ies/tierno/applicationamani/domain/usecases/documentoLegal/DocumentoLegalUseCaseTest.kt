package org.ies.tierno.applicationamani.domain.usecases.documentoLegal

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.DocumentoLegalRepository
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class DocumentoLegalUseCaseTest {
    private lateinit var repository: DocumentoLegalRepository
    private lateinit var useCase: DocumentoLegalUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = DocumentoLegalUseCase(repository)
    }

    @Test
    fun `getAllDocumentos should return result from repository`() =
        runTest {
            val expected = Result.success(emptyList<DocumentoLegalResponseDTO>())
            coEvery { repository.getAllDocumentos() } returns expected

            val result = useCase.getAllDocumentos()

            assertEquals(expected, result)
        }

    @Test
    fun `getDocumentoById should return result from repository`() =
        runTest {
            val id = 1L
            val expected = Result.success(mockk<DocumentoLegalResponseDTO>())
            coEvery { repository.getDocumentoLegal(id) } returns expected

            val result = useCase.getDocumentoById(id)

            assertEquals(expected, result)
        }

    @Test
    fun `crearDocumento should return result from repository`() =
        runTest {
            val request = mockk<DocumentoLegalRequestDTO>()
            val expected = Result.success(mockk<DocumentoLegalResponseDTO>())
            coEvery { repository.crearDocumento(request) } returns expected

            val result = useCase.crearDocumento(request)

            assertEquals(expected, result)
        }

    @Test
    fun `editarDocumento should return result from repository`() =
        runTest {
            val id = 1L
            val request = mockk<DocumentoLegalRequestDTO>()
            val expected = Result.success(mockk<DocumentoLegalResponseDTO>())
            coEvery { repository.editarDocumento(id, request) } returns expected

            val result = useCase.editarDocumento(id, request)

            assertEquals(expected, result)
        }

    @Test
    fun `eliminarDocumento should return result from repository`() =
        runTest {
            val id = 1L
            val expected = Result.success(Unit)
            coEvery { repository.deleteDocumento(id) } returns expected

            val result = useCase.eliminarDocumento(id)

            assertEquals(expected, result)
        }

    @Test
    fun `getDocumentoByTipo should return result from repository`() =
        runTest {
            val tipo = "POLITICA_PRIVACIDAD"
            val expected = Result.success(mockk<DocumentoLegalResponseDTO>())
            coEvery { repository.getDocumentoByTipo(tipo) } returns expected

            val result = useCase.getDocumentoByTipo(tipo)

            assertEquals(expected, result)
        }
}
