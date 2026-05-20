package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.DocumentoLegalApi
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class DocumentoLegalRepositoryTest {
    private lateinit var api: DocumentoLegalApi
    private lateinit var repository: DocumentoLegalRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = DocumentoLegalRepository(api)
    }

    @Test
    fun `getDocumentoLegal should return success when api returns document`() =
        runTest {
            val id = 1L
            val expected = mockk<DocumentoLegalResponseDTO>()
            coEvery { api.getDocumentoById(id) } returns expected

            val result = repository.getDocumentoLegal(id)

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }

    @Test
    fun `getDocumentoLegal should return failure when api throws`() =
        runTest {
            coEvery { api.getDocumentoById(any()) } throws Exception("Not found")

            val result = repository.getDocumentoLegal(1L)

            assertTrue(result.isFailure)
        }

    @Test
    fun `getAllDocumentos should return success when api succeeds`() =
        runTest {
            val expected = emptyList<DocumentoLegalResponseDTO>()
            coEvery { api.getAllDocumentos() } returns expected

            val result = repository.getAllDocumentos()

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }

    @Test
    fun `deleteDocumento should return success when api succeeds`() =
        runTest {
            val id = 1L
            coEvery { api.eliminarDocumento(id) } returns Unit

            val result = repository.deleteDocumento(id)

            assertTrue(result.isSuccess)
            coVerify { api.eliminarDocumento(id) }
        }

    @Test
    fun `crearDocumento should return success when api succeeds`() =
        runTest {
            val request = mockk<DocumentoLegalRequestDTO>()
            val expected = mockk<DocumentoLegalResponseDTO>()
            coEvery { api.crearDocumento(request) } returns expected

            val result = repository.crearDocumento(request)

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }

    @Test
    fun `editarDocumento should return success when api succeeds`() =
        runTest {
            val id = 1L
            val request = mockk<DocumentoLegalRequestDTO>()
            val expected = mockk<DocumentoLegalResponseDTO>()
            coEvery { api.editarDocumento(id, request) } returns expected

            val result = repository.editarDocumento(id, request)

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }

    @Test
    fun `getDocumentoByTipo should return success when api succeeds`() =
        runTest {
            val tipo = "T"
            val expected = mockk<DocumentoLegalResponseDTO>()
            coEvery { api.getDocumentoByTipo(tipo) } returns expected

            val result = repository.getDocumentoByTipo(tipo)

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }
}
