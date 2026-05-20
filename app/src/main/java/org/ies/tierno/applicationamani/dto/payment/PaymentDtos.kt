package org.ies.tierno.applicationamani.dto.payment

import com.google.gson.annotations.SerializedName
import java.math.BigDecimal

/**
 * DTO de solicitud para crear una intención de pago en Stripe.
 *
 * Se envía al backend con el identificador de la cita para generar
 * un `PaymentIntent` y obtener el `clientSecret` necesario en el frontend.
 *
 * @property citaId Identificador de la cita asociada al pago, mapeado desde «citaId» en JSON.
 */
data class CreatePaymentIntentRequestDTO(
    @SerializedName("citaId")
    val citaId: Long,
)

/**
 * DTO de respuesta con los datos de una intención de pago.
 *
 * Contiene el `clientSecret` para confirmar el pago en el frontend,
 * el identificador del `PaymentIntent` y el importe en la moneda configurada.
 *
 * @property clientSecret Secreto de cliente para confirmar el pago en Stripe, mapeado desde «clientSecret».
 * @property paymentIntentId Identificador único del `PaymentIntent` en Stripe, mapeado desde «paymentIntentId».
 * @property amount Importe del pago, mapeado desde «amount».
 * @property currency Código ISO de la moneda (p. ej. «eur»), mapeado desde «currency».
 */
data class PaymentIntentResponseDTO(
    @SerializedName("clientSecret")
    val clientSecret: String,
    @SerializedName("paymentIntentId")
    val paymentIntentId: String,
    @SerializedName("amount")
    val amount: BigDecimal,
    @SerializedName("currency")
    val currency: String,
)
