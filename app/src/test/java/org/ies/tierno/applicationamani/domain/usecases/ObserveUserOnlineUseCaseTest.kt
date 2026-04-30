package org.ies.tierno.applicationamani.domain.usecases

import app.cash.turbine.test
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class ObserveUserOnlineUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: ObserveUserOnlineUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ObserveUserOnlineUseCase(repository)
    }

    @Test
    fun `invoke should emit boolean from repository`() = runTest {
        every { repository.observeUserOnline(1L) } returns flowOf(true)

        useCase(1L).test {
            assertEquals(true, awaitItem())
            awaitComplete()
        }
    }
}
