package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.PaymentApiService
import org.ies.tierno.applicationamani.dto.payment.CreatePaymentIntentRequestDTO
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO

/**
 * Repositorio para la gestión de pagos mediante Stripe.
 *
 * Encapsula la creación de intenciones de pago para las citas a través
 * del servicio de pagos externo.
 *
 * @property paymentApiService Interfaz Retrofit para los endpoints de pago.
 */
class PaymentRepository(
    private val paymentApiService: PaymentApiService,
) {
    /**
     * Crea una intención de pago en Stripe para una cita determinada.
     *
     * @param citaId Identificador de la cita a pagar.
     * @return [Result] con [PaymentIntentResponseDTO] incluyendo el client secret de Stripe.
     */
    suspend fun createPaymentIntent(citaId: Long): Result<PaymentIntentResponseDTO> =
        runCatching { paymentApiService.createPaymentIntent(CreatePaymentIntentRequestDTO(citaId)) }
}
