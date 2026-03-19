package org.ies.tierno.applicationamani.data

import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
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

    suspend fun registerPaciente(request: PacienteRequest): Result<LoginResponseDTO> {
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

    suspend fun registerPacienteAdmin(request: PacienteRequest): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.registerPacienteAdmin(request)
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

    suspend fun registerAdmin(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.registerAdmin(
                    RegistryPacienteDTO(
                        nombre = request.nombre,
                        apellido = request.apellido,
                        email = request.email,
                        password = request.password
                    )
                )
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

    suspend fun registerPsicologo(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.registerPsicologo(
                    RegistryPacienteDTO(
                        nombre = request.nombre,
                        apellido = request.apellido,
                        email = request.email,
                        password = request.password
                    )
                )
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

    fun getPacientesConPsicologo(): Flow<List<ListaPacientesAndPsicologo>> = flow {
        try {
            val response = api.getPacientesConPsicologo()

            if (response.isSuccessful) {
                val body = response.body()
                emit(body ?: emptyList())
            } else {
                emit(emptyList())
            }
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    fun getPaciente(): Flow<List<DatosPacienteAdminDTO>> = flow {
        try {
            val response = api.getPacientes()
            if (response.isSuccessful) {
                val body = response.body()
                emit(body ?: emptyList())
            } else {
                emit(emptyList())
            }
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    suspend fun darBajaPaciente(id: Long): Result<String> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.darBajaPaciente(id)
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