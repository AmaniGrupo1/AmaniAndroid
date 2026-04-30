package org.ies.tierno.applicationamani.data

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.ResponseBody.Companion.toResponseBody
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
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
    fun `getSituaciones should emit mapped list when successful`() = runTest {
        val dtos = listOf(SituacionDTO(1L, "S1", "C1", "D1"))
        coEvery { api.getSituaciones() } returns Response.success(dtos)

        repository.getSituaciones().test {
            assertEquals(dtos, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituaciones should emit empty list on exception`() = runTest {
        coEvery { api.getSituaciones() } throws Exception("fail")

        repository.getSituaciones().test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituacionById should return success when api succeeds`() = runTest {
        val dto = SituacionDTO(1L, "S1", "C1", "D1")
        coEvery { api.getSituacionById(1L) } returns Response.success(dto)

        val result = repository.getSituacionById(1L)

        assertTrue(result.isSuccess)
        assertEquals(dto, result.getOrNull())
    }

    @Test
    fun `getSituacionById should return failure when api returns error`() = runTest {
        val errorBody = "".toResponseBody("application/json".toMediaTypeOrNull())
        coEvery { api.getSituacionById(1L) } returns Response.error(404, errorBody)

        val result = repository.getSituacionById(1L)

        assertTrue(result.isFailure)
    }
}
