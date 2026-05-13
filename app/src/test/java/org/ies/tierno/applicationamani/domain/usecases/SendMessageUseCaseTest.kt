package org.ies.tierno.applicationamani.domain.usecases

import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class SendMessageUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var sendMessageUseCase: SendMessageUseCase

    @Before
    fun setUp() {
        repository = mockk()
        sendMessageUseCase = SendMessageUseCase(repository)
    }

    @Test
    fun `when send message succeeds, it should return success and not save offline`() = runTest {
        // Given
        coEvery { 
            repository.sendMessage(any(), any(), any(), any(), any(), any()) 
        } returns Result.success(Unit)

        // When
        val result = sendMessageUseCase(1L, 2L, "Hello")

        // Then
        assertTrue(result.isSuccess)
        coVerify(exactly = 0) { repository.saveMessageOffline(any()) }
    }

    @Test
    fun `when send message fails, it should save it offline and return failure`() = runTest {
        // Given
        val exception = Exception("Network error")
        coEvery { 
            repository.sendMessage(any(), any(), any(), any(), any(), any()) 
        } returns Result.failure(exception)
        coEvery { repository.saveMessageOffline(any()) } returns Result.success(Unit)

        // When
        val result = sendMessageUseCase(1L, 2L, "Hello")

        // Then
        assertTrue(result.isFailure)
        assertEquals(exception, result.exceptionOrNull())
        coVerify { 
            repository.saveMessageOffline(match { 
                it.status == MessageStatus.PENDING_RETRY && it.content == "Hello" 
            }) 
        }
    }

    @Test
    fun `when send message fails with specific error, it propagates it correctly`() = runTest {
        // Given
        val exception = IllegalStateException("Unauthorized")
        coEvery { 
            repository.sendMessage(any(), any(), any(), any(), any(), any()) 
        } returns Result.failure(exception)
        coEvery { repository.saveMessageOffline(any()) } returns Result.success(Unit)

        // When
        val result = sendMessageUseCase(1L, 2L, "Hello")

        // Then
        assertTrue(result.isFailure)
        assertTrue(result.exceptionOrNull() is IllegalStateException)
    }
}
