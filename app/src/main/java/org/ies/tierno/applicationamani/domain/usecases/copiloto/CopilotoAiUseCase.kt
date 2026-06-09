package org.ies.tierno.applicationamani.domain.usecases.copiloto

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.copiloto.CopilotoAi
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto
import org.ies.tierno.applicationamani.dto.copiloto.UploadResponseDto

class CopilotoAiUseCase(
    private val copiloto: CopilotoAi
) {

    suspend fun ask(
        question: String
    ) :  Result<List<ChunkResponseDto>>{
        return copiloto.ask(question)
    }

    suspend fun uploadPdf(
        file: MultipartBody.Part
    ) :Result<UploadResponseDto>{
       return copiloto.uploadPdf(file)
    }

}