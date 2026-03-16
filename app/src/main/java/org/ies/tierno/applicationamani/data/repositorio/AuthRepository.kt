package org.ies.tierno.applicationamani.data

import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.LoginResponseDTO
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.domain.models.RegistryPacienteDTO
import retrofit2.HttpException

class AuthRepository(private val api: AuthApi) {

    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.login(request)
                if (response.isSuccessful) {
                    val body = response.body()
                    if (body != null) {
                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }
                } else {
                    Result.failure(HttpException(response))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }

    suspend fun registerPaciente(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.registerPaciente(request)
                if (response.isSuccessful) {
                    val body = response.body()
                    if (body != null) {
                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }
                } else {
                    Result.failure(HttpException(response))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
}