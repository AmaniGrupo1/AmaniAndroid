package org.ies.tierno.applicationamani.dto.payment

import com.google.gson.annotations.SerializedName
import java.math.BigDecimal

data class CreatePaymentIntentRequestDTO(
    @SerializedName("citaId")
    val citaId: Long,
)

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
