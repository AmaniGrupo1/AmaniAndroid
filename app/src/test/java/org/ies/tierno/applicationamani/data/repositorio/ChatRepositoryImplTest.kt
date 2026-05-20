package org.ies.tierno.applicationamani.data.repositorio

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.ChatApi
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.domain.models.Message
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response

class ChatRepositoryImplTest {
    private lateinit var chatFirebaseService: ChatFirebaseService
    private lateinit var chatApi: ChatApi
    private lateinit var chatRepository: ChatRepositoryImpl

    @Before
    fun setUp() {
        chatFirebaseService = mockk()
        chatApi = mockk()
        chatRepository = ChatRepositoryImpl(chatFirebaseService, chatApi)
    }

    @Test
    fun `observeMessages should delegate to Firebase service`() =
        runTest {
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
    fun `sendMessage should return success when API service succeeds`() =
        runTest {
            // Given
            val response =
                org.ies.tierno.applicationamani.data.remoto.SendMessageResponse(
                    idMensaje = 1L,
                    idSender = 1L,
                    idReceiver = 2L,
                    mensaje = "Hello",
                    leido = false,
                )
            coEvery {
                chatApi.sendMessage(any())
            } returns Response.success(response)

            // When
            val result = chatRepository.sendMessage(1L, 2L, "Hello")

            // Then
            assertEquals(Result.success(Unit), result)
        }

    @Test
    fun `sendMessage should return failure when API service fails`() =
        runTest {
            // Given
            coEvery {
                chatApi.sendMessage(any())
            } returns Response.error(400, mockk(relaxed = true))

            // When
            val result = chatRepository.sendMessage(1L, 2L, "Hello")

            // Then
            assertTrue(result.isFailure)
        }

    @Test
    fun `observeTyping should delegate to Firebase service`() =
        runTest {
            // Given
            every { chatFirebaseService.observeTyping(any(), any()) } returns flowOf(true)

            // When & Then
            chatRepository.observeTyping(1L, 2L).test {
                assertEquals(true, awaitItem())
                awaitComplete()
            }
        }

    @Test
    fun `updateUserOnline should delegate to Firebase service`() =
        runTest {
            // Given
            coEvery { chatFirebaseService.updateUserOnline(any(), any()) } returns Result.success(Unit)

            // When
            val result = chatRepository.updateUserOnline(1L, true)

            // Then
            assertEquals(Result.success(Unit), result)
        }
}
