package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarPreguntasUseCaseTest {

    private lateinit var repository: TestRepositoryApi
    private lateinit var useCase: ListarPreguntasUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarPreguntasUseCase(repository)
    }

    @Test
    fun `invoke should emit preguntas from repository`() = runTest {
        val preguntas = listOf(OpcionAdminDTO(texto = "P1", tipo = "opcion_multiple", opciones = emptyList()))
        every { repository.getPreguntasFlow() } returns flowOf(preguntas)

        useCase().test {
            assertEquals(preguntas, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should emit empty list when no preguntas`() = runTest {
        every { repository.getPreguntasFlow() } returns flowOf(emptyList())

        useCase().test {
            assertEquals(emptyList<OpcionAdminDTO>(), awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should propagate error when repository flow throws`() = runTest {
        every { repository.getPreguntasFlow() } returns flow {
            throw RuntimeException("Error API")
        }

        useCase().test {
            awaitError()
        }
    }
}
