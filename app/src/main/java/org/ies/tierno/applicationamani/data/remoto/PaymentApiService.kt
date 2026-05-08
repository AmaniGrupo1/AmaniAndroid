package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.payment.CreatePaymentIntentRequestDTO
import org.ies.tierno.applicationamani.dto.payment.PaymentIntentResponseDTO
import retrofit2.http.Body
import retrofit2.http.POST

interface PaymentApiService {

    @POST("/api/payments/create-intent")
    suspend fun createPaymentIntent(
        @Body request: CreatePaymentIntentRequestDTO
    ): PaymentIntentResponseDTO
}
