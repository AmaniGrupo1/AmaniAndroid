package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
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
    fun `invoke should emit list from repository`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO>()
        every { repository.getPreguntasFlow() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }
}
