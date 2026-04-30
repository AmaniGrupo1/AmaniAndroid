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

class ObserveMessageDeliveryUseCaseTest {

    private lateinit var repository: ChatRepository
    private lateinit var useCase: ObserveMessageDeliveryUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = ObserveMessageDeliveryUseCase(repository)
    }

    @Test
    fun `invoke should emit boolean from repository`() = runTest {
        every { repository.observeMessageDelivery(1L, 2L) } returns flowOf(true)

        useCase(1L, 2L).test {
            assertEquals(true, awaitItem())
            awaitComplete()
        }
    }
}
