package org.ies.tierno.applicationamani.domain.usecases.terapia

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class TerapiasGeneralUseCaseTest {
    private lateinit var repository: CitasRepository
    private lateinit var useCase: TerapiasGeneralUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = TerapiasGeneralUseCase(repository)
    }

    @Test
    fun `crearTerapia should return result from repository`() =
        runTest {
            val request = mockk<TerapiaRequest>()
            val expected = Result.success(mockk<TerapiaResponseDTO>())
            coEvery { repository.crearTerapia(request) } returns expected

            val result = useCase.crearTerapia(request)

            assertEquals(expected, result)
        }

    @Test
    fun `actualizarTerapia should return result from repository`() =
        runTest {
            val id = 1L
            val request = mockk<TerapiaRequest>()
            val expected = Result.success(mockk<TerapiaResponseDTO>())
            coEvery { repository.actualizarTerapia(id, request) } returns expected

            val result = useCase.actualizarTerapia(id, request)

            assertEquals(expected, result)
        }

    @Test
    fun `eliminarTerapia should return result from repository`() =
        runTest {
            val id = 1L
            val expected = Result.success(Unit)
            coEvery { repository.eliminarTerapia(id) } returns expected

            val result = useCase.eliminarTerapia(id)

            assertEquals(expected, result)
        }
}
