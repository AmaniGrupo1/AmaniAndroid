package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class MarkMessageDeliveredUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: MarkMessageDeliveredUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = MarkMessageDeliveredUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() = runTest {
        coEvery { repository.markMessageDelivered(1L, 2L) } returns Result.success(Unit)

        val result = useCase(1L, 2L)

        assertTrue(result.isSuccess)
        coVerify { repository.markMessageDelivered(1L, 2L) }
    }

    @Test
    fun `invoke should return failure when repository fails`() = runTest {
        val exception = Exception("Network error")
        coEvery { repository.markMessageDelivered(1L, 2L) } returns Result.failure(exception)

        val result = useCase(1L, 2L)

        assertTrue(result.isFailure)
        assertEquals(exception, result.exceptionOrNull())
    }

    @Test
    fun `invoke with negative ids delegates to repository`() = runTest {
        coEvery { repository.markMessageDelivered(-1L, -2L) } returns Result.success(Unit)

        val result = useCase(-1L, -2L)

        assertTrue(result.isSuccess)
        coVerify { repository.markMessageDelivered(-1L, -2L) }
    }
}
