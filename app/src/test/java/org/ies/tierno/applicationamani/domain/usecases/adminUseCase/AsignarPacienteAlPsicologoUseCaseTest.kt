package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.AuthRepository
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class AsignarPacienteAlPsicologoUseCaseTest {
    private lateinit var repository: AuthRepository
    private lateinit var useCase: AsignarPacienteAlPsicologoUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = AsignarPacienteAlPsicologoUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() =
        runTest {
            coEvery { repository.asignarPsicologo(1L, 2L) } returns Result.success(true)

            val result = useCase(1L, 2L)

            assertTrue(result.isSuccess)
            assertEquals(true, result.getOrNull())
            coVerify { repository.asignarPsicologo(1L, 2L) }
        }

    @Test
    fun `invoke should return failure when repository fails`() =
        runTest {
            val exception = Exception("Network error")
            coEvery { repository.asignarPsicologo(1L, 2L) } returns Result.failure(exception)

            val result = useCase(1L, 2L)

            assertTrue(result.isFailure)
            assertEquals(exception, result.exceptionOrNull())
        }
}
