package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.usecases.generalizado.MarkMessageAsReadUseCase
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class MarkMessageAsReadUseCaseTest {
    private lateinit var repository: ChatRepository
    private lateinit var useCase: MarkMessageAsReadUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = MarkMessageAsReadUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() =
        runTest {
            coEvery { repository.markMessageAsRead(1L, 2L) } returns Result.success(Unit)

            val result = useCase(1L, 2L)

            assertTrue(result.isSuccess)
            coVerify { repository.markMessageAsRead(1L, 2L) }
        }

    @Test
    fun `invoke should return failure when repository fails`() =
        runTest {
            val exception = Exception("Network error")
            coEvery { repository.markMessageAsRead(1L, 2L) } returns Result.failure(exception)

            val result = useCase(1L, 2L)

            assertTrue(result.isFailure)
            assertEquals(exception, result.exceptionOrNull())
        }

    @Test
    fun `invoke with boundary id 0 delegates to repository`() =
        runTest {
            coEvery { repository.markMessageAsRead(0L, 0L) } returns Result.success(Unit)

            val result = useCase(0L, 0L)

            assertTrue(result.isSuccess)
            coVerify { repository.markMessageAsRead(0L, 0L) }
        }
}
