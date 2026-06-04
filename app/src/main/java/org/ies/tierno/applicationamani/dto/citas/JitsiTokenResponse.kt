package org.ies.tierno.applicationamani.dto.citas

import com.google.gson.annotations.SerializedName

data class JitsiTokenResponse(
    @SerializedName("token") val token: String
)
