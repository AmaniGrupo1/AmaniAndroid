package org.ies.tierno.applicationamani.presentation.viewmodels.payment

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.payment.CreatePaymentIntentUseCase

class PaymentViewModel(
    private val createPaymentIntentUseCase: CreatePaymentIntentUseCase,
) : ViewModel() {
    private val _uiState = MutableStateFlow<PaymentUiState>(PaymentUiState.Idle)
    val uiState: StateFlow<PaymentUiState> = _uiState.asStateFlow()

    fun preparePayment(citaId: Long) {
        if (_uiState.value is PaymentUiState.Loading) return
        _uiState.value = PaymentUiState.Loading

        viewModelScope.launch {
            createPaymentIntentUseCase(citaId)
                .onSuccess { response ->
                    _uiState.value =
                        PaymentUiState.PaymentReady(
                            clientSecret = response.clientSecret,
                            paymentIntentId = response.paymentIntentId,
                            amount = response.amount,
                            currency = response.currency,
                        )
                }.onFailure { throwable ->
                    _uiState.value =
                        PaymentUiState.Error(
                            throwable.message ?: "Error al preparar el pago",
                        )
                }
        }
    }

    fun onPaymentSuccess() {
        val current = _uiState.value
        if (current is PaymentUiState.PaymentReady) {
            _uiState.value = PaymentUiState.Success(current.paymentIntentId)
        }
    }

    fun onPaymentFailed(message: String) {
        _uiState.value = PaymentUiState.Error(message)
    }

    fun onPaymentCanceled() {
        _uiState.value = PaymentUiState.Error("Pago cancelado por el usuario")
    }

    fun reset() {
        _uiState.value = PaymentUiState.Idle
    }
}
