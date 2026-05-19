package org.ies.tierno.applicationamani.domain.usecases.payment

import org.ies.tierno.applicationamani.data.repositorio.PaymentRepository
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO

class CreatePaymentIntentUseCase(
    private val paymentRepository: PaymentRepository,
) {
    suspend operator fun invoke(citaId: Long): Result<PaymentIntentResponseDTO> = paymentRepository.createPaymentIntent(citaId)
}
