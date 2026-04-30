package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
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
    fun `invoke should return success when repository succeeds`() = runTest {
        coEvery { repository.updateUserOnline(1L, true) } returns Result.success(Unit)

        val result = useCase(1L, true)

        assertTrue(result.isSuccess)
        coVerify { repository.updateUserOnline(1L, true) }
    }
}
