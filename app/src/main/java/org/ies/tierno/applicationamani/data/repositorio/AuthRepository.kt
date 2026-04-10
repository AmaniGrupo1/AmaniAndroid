package org.ies.tierno.applicationamani.data

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
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
                                idPsicologo = body.idPsicologo,
                                idPaciente = body.idPaciente
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

    suspend fun asignarPsicologo(idPaciente: Long, idPsicologo: Long): Result<Boolean> {
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
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                // No ocultar errores 401 - dejar que el interceptor los maneje
                if (response.code() == 401) {
                    throw HttpException(response)
                }
                emit(emptyList())
            }
        } catch (e: HttpException) {
            // Re-lanzar excepciones HTTP para que el interceptor las maneje
            if (e.code() == 401) throw e
            emit(emptyList())
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    fun getPaciente(): Flow<List<DatosPacienteAdminDTO>> = flow {
        try {
            val response = api.getPacientes()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                // No ocultar errores 401 - dejar que el interceptor los maneje
                if (response.code() == 401) {
                    throw HttpException(response)
                }
                emit(emptyList())
            }
        } catch (e: HttpException) {
            // Re-lanzar excepciones HTTP 401 para que el interceptor las maneje
            if (e.code() == 401) throw e
            emit(emptyList())
        } catch (e: Exception) {
            emit(emptyList())
        }
    }

    fun getPsicologos(): Flow<List<PsicologoSelfResponseDTO>> = flow {
        try {
            val response = api.getPsicologos()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                // No ocultar errores 401 - dejar que el interceptor los maneje
                if (response.code() == 401) {
                    throw HttpException(response)
                }
                emit(emptyList())
            }
        } catch (e: HttpException) {
            // Re-lanzar excepciones HTTP 401 para que el interceptor las maneje
            if (e.code() == 401) throw e
            emit(emptyList())
        } catch (_: Exception) {
            emit(emptyList())
        }
    }

    fun getPacientesByPsicologo(): Flow<List<PacientePsicologoResponseDTO>> = flow {
        try {
            val response = api.getPacientesByPsicologo()
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