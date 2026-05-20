package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.AjustesApi
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class AjustesRepositoryTest {
    private lateinit var api: AjustesApi
    private lateinit var repository: AjustesRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = AjustesRepository(api)
    }

    @Test
    fun `cambiarIdioma should call api`() =
        runTest {
            val id = 1L
            val idioma = "es"
            coEvery { api.actualizarIdioma(id, any()) } returns Unit

            repository.cambiarIdioma(id, idioma)

            coVerify { api.actualizarIdioma(id, any()) }
        }

    @Test
    fun `actualizarTema should return success when api succeeds`() =
        runTest {
            val expected = mockk<AjusteResponseDTO>()
            coEvery { api.actualizarTema(any()) } returns Response.success(expected)

            val result = repository.actualizarTema(true)

            assertTrue(result.isSuccess)
            assertEquals(expected, result.getOrNull())
        }

    @Test
    fun `actualizarTema should return failure when api returns error`() =
        runTest {
            coEvery { api.actualizarTema(any()) } returns Response.error(500, mockk(relaxed = true))

            val result = repository.actualizarTema(true)

            assertTrue(result.isFailure)
            assertTrue(result.exceptionOrNull()?.message?.contains("500") == true)
        }
}
