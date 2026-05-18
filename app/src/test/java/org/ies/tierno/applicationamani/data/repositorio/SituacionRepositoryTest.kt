package org.ies.tierno.applicationamani.data.repositorio

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class SituacionRepositoryTest {

    private lateinit var api: SituacionApi
    private lateinit var repository: SituacionRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = SituacionRepository(api)
    }

    @Test
    fun `getSituaciones should emit list when api succeeds`() = runTest {
        val dto = SituacionDTO(1L, "N", "C", "D")
        coEvery { api.getSituaciones() } returns Response.success(listOf(dto))

        repository.getSituaciones().test {
            assertEquals(listOf(dto), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituaciones should emit empty list when api fails`() = runTest {
        coEvery { api.getSituaciones() } returns Response.error(500, mockk(relaxed = true))

        repository.getSituaciones().test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituacionById should return success when api succeeds`() = runTest {
        val dto = SituacionDTO(1L, "N", "C", "D")
        coEvery { api.getSituacionById(1L) } returns Response.success(dto)

        val result = repository.getSituacionById(1L)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `createSituacion should return success when api succeeds`() = runTest {
        val request = SituacionRequest("N", "C", "D")
        val dto = SituacionDTO(1L, "N", "C", "D")
        coEvery { api.createSituacion(request) } returns Response.success(dto)

        val result = repository.createSituacion(request)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `updateSituacion should return success when api succeeds`() = runTest {
        val request = SituacionRequest("N", "C", "D")
        val dto = SituacionDTO(1L, "N", "C", "D")
        coEvery { api.updateSituacion(1L, request) } returns Response.success(dto)

        val result = repository.updateSituacion(1L, request)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `deleteSituacion should return success when api succeeds`() = runTest {
        coEvery { api.deleteSituacion(1L) } returns Response.success(Unit)

        val result = repository.deleteSituacion(1L)

        assertTrue(result.isSuccess)
    }
}
