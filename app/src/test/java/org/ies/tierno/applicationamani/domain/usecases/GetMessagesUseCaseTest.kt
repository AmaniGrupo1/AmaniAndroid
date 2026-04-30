package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.Message
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class GetMessagesUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: GetMessagesUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = GetMessagesUseCase(repository)
    }

    @Test
    fun `invoke should emit messages from repository`() = runTest {
        val messages = listOf(Message(content = "Hello"))
        every { repository.observeMessages(1L, 2L) } returns flowOf(messages)

        useCase(1L, 2L).test {
            assertEquals(messages, awaitItem())
            awaitComplete()
        }
    }
}
