package org.ies.tierno.applicationamani.data.repositorio.copiloto

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.copiloto.CopilotoAi
import org.ies.tierno.applicationamani.dto.copiloto.AskRequest
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto
import org.ies.tierno.applicationamani.dto.copiloto.UploadResponseDto

class CopilotoAi(
    private val copiloto: CopilotoAi
) {

    suspend fun ask(
        question: String
    ): Result<List<ChunkResponseDto>> {

        return try {

            val response = copiloto.ask(
                AskRequest(question)
            )

            if (response.isSuccessful) {

                Result.success(
                    response.body().orEmpty()
                )

            } else {

                Result.failure(
                    Exception("Error ${response.code()}")
                )
            }

        } catch (e: Exception) {

            Result.failure(e)
        }
    }

    suspend fun uploadPdf(
        file: MultipartBody.Part
    ): Result<UploadResponseDto> {

        return try {

            val response = copiloto.uploadPdf(file)

            if (response.isSuccessful) {

                response.body()?.let {

                    Result.success(it)

                } ?: Result.failure(
                    Exception("Respuesta vacía")
                )

            } else {

                Result.failure(
                    Exception("Error ${response.code()}")
                )
            }

        } catch (e: Exception) {

            Result.failure(e)
        }
    }
}