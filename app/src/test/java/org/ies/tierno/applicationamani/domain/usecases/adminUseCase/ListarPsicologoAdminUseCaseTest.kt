package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ListarPsicologoAdminUseCaseTest {

    private lateinit var repository: AuthRepository
    private lateinit var useCase: ListarPsicologoAdminUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ListarPsicologoAdminUseCase(repository)
    }

    @Test
    fun `invoke should emit list from repository`() = runTest {
        val list = emptyList<org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO>()
        every { repository.getPsicologos() } returns flowOf(list)

        useCase().test {
            assertEquals(list, awaitItem())
            awaitComplete()
        }
    }
}
