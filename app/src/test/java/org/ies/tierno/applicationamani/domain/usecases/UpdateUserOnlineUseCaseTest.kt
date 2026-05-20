package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.usecases.generalizado.UpdateUserOnlineUseCase
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class UpdateUserOnlineUseCaseTest {
    private lateinit var repository: ChatRepository
    private lateinit var useCase: UpdateUserOnlineUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = UpdateUserOnlineUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() =
        runTest {
            coEvery { repository.updateUserOnline(1L, true) } returns Result.success(Unit)

            val result = useCase(1L, true)

            assertTrue(result.isSuccess)
            coVerify { repository.updateUserOnline(1L, true) }
        }

    @Test
    fun `invoke should return failure when repository fails`() =
        runTest {
            val exception = Exception("Firebase error")
            coEvery { repository.updateUserOnline(1L, true) } returns Result.failure(exception)

            val result = useCase(1L, true)

            assertTrue(result.isFailure)
            assertEquals(exception, result.exceptionOrNull())
        }

    @Test
    fun `invoke with isOnline false delegates correctly`() =
        runTest {
            coEvery { repository.updateUserOnline(1L, false) } returns Result.success(Unit)

            val result = useCase(1L, false)

            assertTrue(result.isSuccess)
            coVerify { repository.updateUserOnline(1L, false) }
        }
}
