package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.PaymentApiService
import org.ies.tierno.applicationamani.dto.payment.CreatePaymentIntentRequestDTO
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO

class PaymentRepository(
    private val paymentApiService: PaymentApiService,
) {
    suspend fun createPaymentIntent(citaId: Long): Result<PaymentIntentResponseDTO> =
        runCatching { paymentApiService.createPaymentIntent(CreatePaymentIntentRequestDTO(citaId)) }
}
