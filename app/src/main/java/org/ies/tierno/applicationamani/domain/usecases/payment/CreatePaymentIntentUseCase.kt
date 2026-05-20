package org.ies.tierno.applicationamani.domain.usecases.payment

import org.ies.tierno.applicationamani.data.repositorio.PaymentRepository
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO

/**
 * Caso de uso para crear una intención de pago (Stripe) asociada a una cita.
 *
 * Delega en el repositorio de pagos la creación del Payment Intent
 * que permite al paciente completar el pago de una cita.
 *
 * @property paymentRepository Repositorio de pagos.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.PaymentRepository
 */
class CreatePaymentIntentUseCase(
    private val paymentRepository: PaymentRepository,
) {
    /**
     * Crea una intención de pago para la cita especificada.
     *
     * @param citaId Identificador único de la cita a pagar.
     * @return [Result.success] con [PaymentIntentResponseDTO] que contiene el client secret,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(citaId: Long): Result<PaymentIntentResponseDTO> = paymentRepository.createPaymentIntent(citaId)
}
