package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.HistorialApi
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class HistorialRepositoryTest {
    private lateinit var api: HistorialApi
    private lateinit var repository: HistorialRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = HistorialRepository(api)
    }

    @Test
    fun `getHistorialPaciente should return list from api`() =
        runTest {
            val id = 1L
            val token = "t"
            val expected = emptyList<HistorialClinicoResponseDTO>()
            coEvery { api.getHistorialPaciente(id, token) } returns expected

            val result = repository.getHistorialPaciente(id, token)

            assertEquals(expected, result)
        }

    @Test
    fun `createHistorialClinico should return response from api`() =
        runTest {
            val request = mockk<HistorialClinicoRequestDTO>()
            val expected = mockk<HistorialClinicoResponseDTO>()
            coEvery { api.createHistorialClinico(request) } returns expected

            val result = repository.createHistorialClinico(request)

            assertEquals(expected, result)
        }
}
