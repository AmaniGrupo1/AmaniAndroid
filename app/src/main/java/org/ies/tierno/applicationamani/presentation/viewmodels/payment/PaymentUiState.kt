package org.ies.tierno.applicationamani.presentation.viewmodels.payment

/**
 * Estado sellado que representa todas las fases del flujo de pago por Stripe.
 *
 * La UI observa este estado mediante [PaymentViewModel.uiState] para decidir
 * qué pantalla mostrar: reposo, carga, formulario de pago, éxito o error.
 *
 * @see PaymentViewModel
 */
sealed class PaymentUiState {
    /** Estado inicial: no se ha iniciado ninguna operación de pago. */
    data object Idle : PaymentUiState()

    /** El intento de pago se está creando en el backend. */
    data object Loading : PaymentUiState()

    /**
     * El `PaymentIntent` de Stripe está listo y la UI puede mostrar el formulario de pago.
     *
     * @property clientSecret Secreto de cliente necesario para confirmar el pago en Stripe.
     * @property paymentIntentId Identificador del `PaymentIntent` en Stripe.
     * @property amount Monto del pago en la moneda configurada.
     * @property currency Código ISO de la moneda (ej. \"eur\").
     */
    data class PaymentReady(
        val clientSecret: String,
        val paymentIntentId: String,
        val amount: java.math.BigDecimal,
        val currency: String,
    ) : PaymentUiState()

    /**
     * El pago se confirmó exitosamente en Stripe.
     *
     * @property paymentIntentId Identificador del `PaymentIntent` confirmado.
     */
    data class Success(
        val paymentIntentId: String,
    ) : PaymentUiState()

    /**
     * Ocurrió un error durante el flujo de pago.
     *
     * @property message Mensaje descriptivo del error.
     */
    data class Error(
        val message: String,
    ) : PaymentUiState()
}
