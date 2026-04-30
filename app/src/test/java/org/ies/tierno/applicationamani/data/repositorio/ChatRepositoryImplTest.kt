package org.ies.tierno.applicationamani.data.repositorio

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.domain.models.Message
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ChatRepositoryImplTest {

    private lateinit var chatFirebaseService: ChatFirebaseService
    private lateinit var chatRepository: ChatRepositoryImpl

    @Before
    fun setUp() {
        chatFirebaseService = mockk()
        chatRepository = ChatRepositoryImpl(chatFirebaseService)
    }

    @Test
    fun `observeMessages should delegate to Firebase service`() = runTest {
        // Given
        val userId1 = 1L
        val userId2 = 2L
        val messages = listOf(Message(content = "Hello"))
        every { chatFirebaseService.observeMessages(userId1, userId2) } returns flowOf(messages)

        // When & Then
        chatRepository.observeMessages(userId1, userId2).test {
            assertEquals(messages, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `sendMessage should return success when Firebase service succeeds`() = runTest {
        // Given
        coEvery {
            chatFirebaseService.sendMessage(any(), any(), any(), any(), any(), any())
        } returns Result.success(Unit)

        // When
        val result = chatRepository.sendMessage(1L, 2L, "Hello")

        // Then
        assertEquals(Result.success(Unit), result)
    }

    @Test
    fun `sendMessage should return failure when Firebase service fails`() = runTest {
        // Given
        val exception = Exception("Firebase Error")
        coEvery {
            chatFirebaseService.sendMessage(any(), any(), any(), any(), any(), any())
        } returns Result.failure(exception)

        // When
        val result = chatRepository.sendMessage(1L, 2L, "Hello")

        // Then
        assertEquals(Result.failure<Unit>(exception), result)
    }

    @Test
    fun `observeTyping should delegate to Firebase service`() = runTest {
        // Given
        every { chatFirebaseService.observeTyping(any(), any()) } returns flowOf(true)

        // When & Then
        chatRepository.observeTyping(1L, 2L).test {
            assertEquals(true, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `updateUserOnline should delegate to Firebase service`() = runTest {
        // Given
        coEvery { chatFirebaseService.updateUserOnline(any(), any()) } returns Result.success(Unit)

        // When
        val result = chatRepository.updateUserOnline(1L, true)

        // Then
        assertEquals(Result.success(Unit), result)
    }
}
