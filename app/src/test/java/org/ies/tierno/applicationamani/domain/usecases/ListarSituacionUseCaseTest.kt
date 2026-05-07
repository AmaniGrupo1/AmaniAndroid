package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarSituacionUseCaseTest {

    private lateinit var repository: SituacionRepository
    private lateinit var useCase: ListarSituacionUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarSituacionUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() = runTest {
        val list = listOf(SituacionDTO(idSituacion = 1L, nombre = "Ansiedad", descripcion = "Desc"))
        every { repository.getSituaciones() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should emit empty list when no situaciones`() = runTest {
        every { repository.getSituaciones() } returns flowOf(emptyList())

        useCase().test {
            assertEquals(emptyList<SituacionDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should propagate error when repository flow throws`() = runTest {
        every { repository.getSituaciones() } returns flow {
            throw RuntimeException("Error API")
        }

        useCase().test {
            awaitError()
        }
    }
}
