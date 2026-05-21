package org.ies.tierno.applicationamani.presentation.viewmodels.payment

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.usecases.payment.CreatePaymentIntentUseCase

/**
 * ViewModel que orquesta el flujo completo del pago de una cita mediante Stripe.
 *
 * Gestiona la creación del `PaymentIntent`, la confirmación del pago desde la UI
 * y el reinicio del estado. Expone [uiState] como único punto de verdad para
 * que la pantalla de pago reaccione a cada fase.
 *
 * @constructor Crea el ViewModel con el caso de uso de creación de intención de pago.
 * @param createPaymentIntentUseCase Caso de uso que crea un `PaymentIntent` en el backend.
 *
 * @see PaymentUiState
 * @see CreatePaymentIntentUseCase
 */
class PaymentViewModel(
    private val createPaymentIntentUseCase: CreatePaymentIntentUseCase,
) : ViewModel() {
    /**
     * Estado observable que representa la fase actual del flujo de pago.
     *
     * @see PaymentUiState
     */
    private val _uiState = MutableStateFlow<PaymentUiState>(PaymentUiState.Idle)
    val uiState: StateFlow<PaymentUiState> = _uiState.asStateFlow()

    /**
     * Inicia la preparación del pago para una cita concreta.
     *
     * Llama al backend para crear un `PaymentIntent` de Stripe. Si la operación
     * tiene éxito, el estado transiciona a [PaymentUiState.PaymentReady]; en caso
     * de error, a [PaymentUiState.Error]. No hace nada si ya hay una operación en curso.
     *
     * @param citaId Identificador de la cita cuyo pago se va a procesar.
     */
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

    /**
     * Notifica que el pago se ha completado exitosamente en la pasarela de Stripe.
     *
     * Transiciona el estado de [PaymentUiState.PaymentReady] a [PaymentUiState.Success].
     */
    fun onPaymentSuccess() {
        val current = _uiState.value
        if (current is PaymentUiState.PaymentReady) {
            _uiState.value = PaymentUiState.Success(current.paymentIntentId)
        }
    }

    /**
     * Notifica que el pago ha fallado con un mensaje descriptivo.
     *
     * @param message Descripción del fallo ocurrido durante el pago.
     */
    fun onPaymentFailed(message: String) {
        _uiState.value = PaymentUiState.Error(message)
    }

    /**
     * Notifica que el usuario canceló el pago manualmente.
     *
     * Transiciona el estado a [PaymentUiState.Error] con un mensaje de cancelación.
     */
    fun onPaymentCanceled() {
        _uiState.value = PaymentUiState.Error("Pago cancelado por el usuario")
    }

    /**
     * Reinicia el estado del flujo de pago al valor inicial [PaymentUiState.Idle].
     */
    fun reset() {
        _uiState.value = PaymentUiState.Idle
    }
}
