package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
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
}
