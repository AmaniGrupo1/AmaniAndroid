package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ObserveMessageReadUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: ObserveMessageReadUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ObserveMessageReadUseCase(repository)
    }

    @Test
    fun `invoke should emit read status from repository`() = runTest {
        every { repository.observeMessageRead(1L, 2L) } returns flowOf(true)

        useCase(1L, 2L).test {
            assertEquals(true, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should emit false when not read`() = runTest {
        every { repository.observeMessageRead(1L, 2L) } returns flowOf(false)

        useCase(1L, 2L).test {
            assertEquals(false, awaitItem())
            awaitComplete()
        }
    }

    @Test
    fun `invoke should propagate error when repository flow throws`() = runTest {
        every { repository.observeMessageRead(1L, 2L) } returns flow {
            throw RuntimeException("Firebase error")
        }

        useCase(1L, 2L).test {
            awaitError()
        }
    }
}
