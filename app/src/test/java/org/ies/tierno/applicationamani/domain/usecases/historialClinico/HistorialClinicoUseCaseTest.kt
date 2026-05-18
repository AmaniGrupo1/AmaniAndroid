package org.ies.tierno.applicationamani.domain.usecases.historialClinico

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class HistorialClinicoUseCaseTest {

    private lateinit var repository: HistorialRepository
    private lateinit var useCase: HistorialClinicoUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = HistorialClinicoUseCase(repository)
    }

    @Test
    fun `getHistorialClinico should return list from repository`() = runTest {
        val idPaciente = 1L
        val token = "token"
        val expected = emptyList<HistorialClinicoResponseDTO>()
        coEvery { repository.getHistorialPaciente(idPaciente, token) } returns expected

        val result = useCase.getHistorialClinico(idPaciente, token)

        assertEquals(expected, result)
    }

    @Test
    fun `createHistorialClinico should return response from repository`() = runTest {
        val request = mockk<HistorialClinicoRequestDTO>()
        val expected = mockk<HistorialClinicoResponseDTO>()
        coEvery { repository.createHistorialClinico(request) } returns expected

        val result = useCase.createHistorialClinico(request)

        assertEquals(expected, result)
    }
}
