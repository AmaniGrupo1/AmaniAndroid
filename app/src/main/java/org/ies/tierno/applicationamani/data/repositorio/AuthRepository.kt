package org.ies.tierno.applicationamani.data

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import retrofit2.HttpException

class AuthRepository(
    private val api: AuthApi,
    private val tokenDataStore: TokenDataStore,
    private val userSessionDataStore: UserSessionDataStore
) {

    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.login(request)

                if (response.isSuccessful) {
                    val body = response.body()

                    if (body != null) {

                        // 🔥 GUARDAR TOKEN
                        tokenDataStore.saveToken(body.token)

                        // 🔥 GUARDAR SESIÓN
                        userSessionDataStore.saveSession(
                            UserSession(
                                idUsuario = body.idUsuario,
                                nombre = body.nombre,
                                rol = body.rol,
                            )
                        )

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

    suspend fun asignarPsicologo(idPaciente: Long, idPsicologo: Long): Result<String> {
        return withContext(Dispatchers.IO) {
            try {
                val request = AsignarPacienteAlPsicologoRequestDTO(
                    idPaciente = idPaciente,
                    idPsicologo = idPsicologo
                )

                val response = api.asignarPsicologo(request)

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
                val response = api.registerAdmin(request)

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

    suspend fun registerPsicologo(request: PsicologoRequestDTO): Result<PsicologoSelfResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.registerPsicologo(request)

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
            emit(if (response.isSuccessful) response.body() ?: emptyList() else emptyList())
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    fun getPaciente(): Flow<List<DatosPacienteAdminDTO>> = flow {
        try {
            val response = api.getPacientes()
            emit(if (response.isSuccessful) response.body() ?: emptyList() else emptyList())
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    fun getPsicologos(): Flow<List<PsicologoSelfResponseDTO>> = flow {
        try {
            val response = api.getPsicologos()
            emit(if (response.isSuccessful) response.body() ?: emptyList() else emptyList())
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

    // LOGOUT COMPLETO
    suspend fun logout() {
        tokenDataStore.clearToken()
        userSessionDataStore.clearSession()
    }
}