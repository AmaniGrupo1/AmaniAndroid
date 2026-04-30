package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class StopTypingUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: StopTypingUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = StopTypingUseCase(repository)
    }

    @Test
    fun `invoke should return success when repository succeeds`() = runTest {
        coEvery { repository.stopTyping(1L, 2L) } returns Result.success(Unit)

        val result = useCase(1L, 2L)

        assertTrue(result.isSuccess)
        coVerify { repository.stopTyping(1L, 2L) }
    }
}
