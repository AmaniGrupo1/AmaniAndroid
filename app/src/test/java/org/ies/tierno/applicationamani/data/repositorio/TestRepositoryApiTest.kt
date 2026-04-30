package org.ies.tierno.applicationamani.data.repositorio

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class TestRepositoryApiTest {

    private lateinit var testApi: TestApi
    private lateinit var repository: TestRepositoryApi

    @Before
    fun setUp() {
        testApi = mockk()
        repository = TestRepositoryApi(testApi)
    }

    @Test
    fun `createPregunta should return DTO on success`() = runTest {
        val dto = OpcionAdminDTO("Texto", "opcion_multiple", emptyList())
        coEvery { testApi.createPregunta(any()) } returns dto

        val result = repository.createPregunta(PreguntaRequest("Texto", "opcion_multiple", emptyList()))

        assertEquals(dto, result)
    }

    @Test
    fun `createPregunta should return null on exception`() = runTest {
        coEvery { testApi.createPregunta(any()) } throws Exception("fail")

        val result = repository.createPregunta(PreguntaRequest("Texto", "opcion_multiple", emptyList()))

        assertNull(result)
    }

    @Test
    fun `getPreguntasFlow should emit list on success`() = runTest {
        val list = listOf(OpcionAdminDTO("Texto", "opcion_multiple", emptyList()))
        coEvery { testApi.getPreguntas() } returns list

        repository.getPreguntasFlow().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getPreguntasFlow should emit empty list on exception`() = runTest {
        coEvery { testApi.getPreguntas() } throws Exception("fail")

        repository.getPreguntasFlow().test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `responderTest should return true on success`() = runTest {
        coEvery { testApi.responderTest(any(), any()) } returns Unit

        val result = repository.responderTest(1L, emptyList())

        assertTrue(result)
    }

    @Test
    fun `responderTest should return false on exception`() = runTest {
        coEvery { testApi.responderTest(any(), any()) } throws Exception("fail")

        val result = repository.responderTest(1L, emptyList())

        assertFalse(result)
    }
}
