package org.ies.tierno.applicationamani.domain.usecases.situaciones

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class SituacionUseCaseTest {

    private lateinit var repository: SituacionRepository
    private lateinit var useCase: SituacionUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = SituacionUseCase(repository)
    }

    @Test
    fun `getSituaciones should emit list from repository`() = runTest {
        val list = listOf(SituacionDTO(idSituacion = 1L, nombre = "Ansiedad", descripcion = "Desc"))
        every { repository.getSituaciones() } returns flowOf(list)

        useCase.getSituaciones().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituaciones should emit empty list when no situaciones`() = runTest {
        every { repository.getSituaciones() } returns flowOf(emptyList())

        useCase.getSituaciones().test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `getSituaciones should propagate error when repository flow throws`() = runTest {
        every { repository.getSituaciones() } returns flow {
            throw RuntimeException("Error API")
        }

        useCase.getSituaciones().test {
            awaitError()
        }
    }

    @Test
    fun `getSituacionById should return result from repository`() = runTest {
        val id = 1L
        val expected = Result.success(mockk<SituacionDTO>())
        coEvery { repository.getSituacionById(id) } returns expected

        val result = useCase.getSituacionById(id)

        assertEquals(expected, result)
    }

    @Test
    fun `createSituacion should return result from repository`() = runTest {
        val request = mockk<SituacionRequest>()
        val expected = Result.success(mockk<SituacionDTO>())
        coEvery { repository.createSituacion(request) } returns expected

        val result = useCase.createSituacion(request)

        assertEquals(expected, result)
    }

    @Test
    fun `updateSituacion should return result from repository`() = runTest {
        val id = 1L
        val request = mockk<SituacionRequest>()
        val expected = Result.success(mockk<SituacionDTO>())
        coEvery { repository.updateSituacion(id, request) } returns expected

        val result = useCase.updateSituacion(id, request)

        assertEquals(expected, result)
    }

    @Test
    fun `deleteSituacion should return result from repository`() = runTest {
        val id = 1L
        val expected = Result.success(Unit)
        coEvery { repository.deleteSituacion(id) } returns expected

        val result = useCase.deleteSituacion(id)

        assertEquals(expected, result)
    }
}

