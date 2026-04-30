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

class DarBajaPacienteUseCaseTest {

    private lateinit var repository: AuthRepository
    private lateinit var useCase: DarBajaPacienteUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = DarBajaPacienteUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() = runTest {
        coEvery { repository.darBajaPaciente(1L) } returns Result.success("Baja correcta")

        val result = useCase(1L)

        assertTrue(result.isSuccess)
        assertEquals("Baja correcta", result.getOrNull())
        coVerify { repository.darBajaPaciente(1L) }
    }

    @Test
    fun `invoke should return failure when repository fails`() = runTest {
        val exception = Exception("fail")
        coEvery { repository.darBajaPaciente(1L) } returns Result.failure(exception)

        val result = useCase(1L)

        assertTrue(result.isFailure)
        assertEquals(exception, result.exceptionOrNull())
    }
}
