package org.ies.tierno.applicationamani.presentation.viewmodels.payment

import app.cash.turbine.test
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.StandardTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.ies.tierno.applicationamani.domain.usecases.payment.CreatePaymentIntentUseCase
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import java.math.BigDecimal

@OptIn(ExperimentalCoroutinesApi::class)
class PaymentViewModelTest {

    private val testDispatcher = StandardTestDispatcher()
    private lateinit var createPaymentIntentUseCase: CreatePaymentIntentUseCase
    private lateinit var viewModel: PaymentViewModel

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        createPaymentIntentUseCase = mockk()
        viewModel = PaymentViewModel(createPaymentIntentUseCase)
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun preparePayment_success_emits_PaymentReady() = runTest {
        val response = PaymentIntentResponseDTO(
            clientSecret = "pi_secret_123",
            paymentIntentId = "pi_123",
            amount = BigDecimal("50.00"),
            currency = "EUR"
        )
        coEvery { createPaymentIntentUseCase(100L) } returns Result.success(response)

        viewModel.preparePayment(100L)
        testDispatcher.scheduler.advanceUntilIdle()

        viewModel.uiState.test {
            val state = awaitItem()
            assertTrue(state is PaymentUiState.PaymentReady)
            assertEquals("pi_secret_123", (state as PaymentUiState.PaymentReady).clientSecret)
        }
    }

    @Test
    fun preparePayment_failure_emits_Error() = runTest {
        coEvery { createPaymentIntentUseCase(100L) } returns Result.failure(RuntimeException("Network error"))

        viewModel.preparePayment(100L)
        testDispatcher.scheduler.advanceUntilIdle()

        viewModel.uiState.test {
            val state = awaitItem()
            assertTrue(state is PaymentUiState.Error)
            assertEquals("Network error", (state as PaymentUiState.Error).message)
        }
    }

    @Test
    fun onPaymentSuccess_transitions_to_Success() = runTest {
        val response = PaymentIntentResponseDTO(
            clientSecret = "pi_secret_123",
            paymentIntentId = "pi_123",
            amount = BigDecimal("50.00"),
            currency = "EUR"
        )
        coEvery { createPaymentIntentUseCase(100L) } returns Result.success(response)

        viewModel.preparePayment(100L)
        testDispatcher.scheduler.advanceUntilIdle()
        viewModel.onPaymentSuccess()

        viewModel.uiState.test {
            val state = awaitItem()
            assertTrue(state is PaymentUiState.Success)
            assertEquals("pi_123", (state as PaymentUiState.Success).paymentIntentId)
        }
    }

    @Test
    fun reset_returns_to_Idle() = runTest {
        viewModel.onPaymentFailed("Error")
        viewModel.reset()

        viewModel.uiState.test {
            val state = awaitItem()
            assertTrue(state is PaymentUiState.Idle)
        }
    }
}
