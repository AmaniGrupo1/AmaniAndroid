package org.ies.tierno.applicationamani.data.remoto.copiloto

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.dto.copiloto.AskRequest
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto
import org.ies.tierno.applicationamani.dto.copiloto.UploadResponseDto
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.Part

interface CopilotoAi {

    @POST("api/rag/ask")
    suspend fun ask(
        @Body request: AskRequest
    ): Response<List<ChunkResponseDto>>

    @Multipart
    @POST("api/rag/upload")
    suspend fun uploadPdf(
        @Part file: MultipartBody.Part
    ): Response<UploadResponseDto>
}