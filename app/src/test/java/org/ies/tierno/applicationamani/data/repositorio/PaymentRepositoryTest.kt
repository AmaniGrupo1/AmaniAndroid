package org.ies.tierno.applicationamani.data.repositorio

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.remoto.PaymentApiService
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class PaymentRepositoryTest {

    private lateinit var api: PaymentApiService
    private lateinit var repository: PaymentRepository

    @Before
    fun setUp() {
        api = mockk()
        repository = PaymentRepository(api)
    }

    @Test
    fun `createPaymentIntent should return success when api succeeds`() = runTest {
        val citaId = 1L
        val expected = mockk<PaymentIntentResponseDTO>()
        coEvery { api.createPaymentIntent(any()) } returns expected

        val result = repository.createPaymentIntent(citaId)

        assertTrue(result.isSuccess)
        assertEquals(expected, result.getOrNull())
    }

    @Test
    fun `createPaymentIntent should return failure when api throws`() = runTest {
        coEvery { api.createPaymentIntent(any()) } throws Exception("API error")

        val result = repository.createPaymentIntent(1L)

        assertTrue(result.isFailure)
        assertEquals("API error", result.exceptionOrNull()?.message)
    }
}
