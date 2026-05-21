package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.payment.CreatePaymentIntentRequestDTO
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO
import retrofit2.http.Body
import retrofit2.http.POST

/**
 * Interfaz Retrofit para la creación de intenciones de pago a través de Stripe.
 *
 * Se comunica con el backend para generar un PaymentIntent que el cliente
 * puede confirmar posteriormente desde la interfaz de pago.
 */
interface PaymentApiService {
    /**
     * Crea una intención de pago en el backend y devuelve el cliente secreto
     * necesario para confirmar el pago en el frontend.
     *
     * @param request Datos de la intención de pago (importe, moneda, método).
     * @return Respuesta con el identificador del PaymentIntent y el secreto del cliente.
     */
    @POST("/api/payments/create-intent")
    suspend fun createPaymentIntent(
        @Body request: CreatePaymentIntentRequestDTO,
    ): PaymentIntentResponseDTO
}
