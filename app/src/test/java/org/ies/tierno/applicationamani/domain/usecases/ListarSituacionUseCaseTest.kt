package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.SituacionRepository
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
        val list = emptyList<org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO>()
        every { repository.getSituaciones() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }
}
