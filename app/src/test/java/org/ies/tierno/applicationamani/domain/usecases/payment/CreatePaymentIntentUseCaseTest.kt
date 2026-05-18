package org.ies.tierno.applicationamani.domain.usecases.payment

import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.ies.tierno.applicationamani.data.repositorio.PaymentRepository
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test

class CreatePaymentIntentUseCaseTest {

    private lateinit var repository: PaymentRepository
    private lateinit var useCase: CreatePaymentIntentUseCase

    @Before
    fun setUp() {
        repository = mockk()
        useCase = CreatePaymentIntentUseCase(repository)
    }

    @Test
    fun `invoke should return result from repository`() = runTest {
        val citaId = 1L
        val expected = Result.success(mockk<PaymentIntentResponseDTO>())
        coEvery { repository.createPaymentIntent(citaId) } returns expected

        val result = useCase(citaId)

        assertEquals(expected, result)
    }
}
