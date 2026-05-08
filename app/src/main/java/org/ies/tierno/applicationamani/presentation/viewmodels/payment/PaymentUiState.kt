package org.ies.tierno.applicationamani.presentation.viewmodels.payment

sealed class PaymentUiState {
    data object Idle : PaymentUiState()
    data object Loading : PaymentUiState()
    data class PaymentReady(
        val clientSecret: String,
        val paymentIntentId: String,
        val amount: java.math.BigDecimal,
        val currency: String
    ) : PaymentUiState()
    data class Success(val paymentIntentId: String) : PaymentUiState()
    data class Error(val message: String) : PaymentUiState()
}
