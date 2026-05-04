package org.ies.tierno.applicationamani.data

import com.google.firebase.auth.FirebaseAuth
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
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

                        // GUARDAR TOKEN
                        tokenDataStore.saveToken(body.token)

                        // GUARDAR SESION
                        userSessionDataStore.saveSession(
                            UserSession(
                                idUsuario = body.idUsuario,
                                nombre = body.nombre,
                                rol = body.rol,
                                idPsicologo = body.idPsicologo,
                                idPaciente = body.idPaciente
                            )
                        )

                        // AUTENTICACIÓN CON FIREBASE
                        try {
                            val firebaseTokenResponse = api.getFirebaseToken()
                            if (firebaseTokenResponse.isSuccessful) {
                                val firebaseToken = firebaseTokenResponse.body()?.get("firebaseToken")
                                if (firebaseToken != null) {
                                    FirebaseAuth.getInstance().signInWithCustomToken(firebaseToken).await()
                                }
                            }
                        } catch (e: Exception) {
                            // Log and ignore Firebase errors to allow login even if chat is down
                            android.util.Log.e("AuthRepository", "Error signing in to Firebase", e)
                        }

                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }
                } else {
                    val errorBody = response.errorBody()?.string()
                    val errorMessage = when (response.code()) {
                        401 -> "Credenciales incorrectas"
                        403 -> "Acceso denegado"
                        404 -> "Usuario no encontrado"
                        500 -> "Error del servidor"
                        else -> errorBody ?: "Error HTTP: ${response.code()}"
                    }
                    Result.failure(Exception(errorMessage))
                }

            } catch (e: Exception) {
                val errorMsg = when {
                    e.message?.contains("Connection", ignoreCase = true) == true -> 
                        "No se puede conectar al servidor. Verifica que el backend este ejecutandose en http://10.0.2.2:8080"
                    e.message?.contains("timeout", ignoreCase = true) == true -> 
                        "Tiempo de espera agotado. Intenta de nuevo."
                    else -> e.message ?: "Error de conexion"
                }
                Result.failure(Exception(errorMsg))
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

//    suspend fun crearPacienteAdmin(request: PacienteRequest): Result<DatosPacienteAdminDTO> {
//        return withContext(Dispatchers.IO) {
//            try {
//                val response = api.crearPaciente(request)
//
//                if (response.isSuccessful) {
//                    val body = response.body()
//
//                    if (body != null) {
//                        Result.success(body)
//                    } else {
//                        Result.failure(Exception("Response body is null"))
//                    }
//
//                } else {
//                    val errorMsg = when (response.code()) {
//                        400 -> "Datos inválidos"
//                        401 -> "No autorizado"
//                        403 -> "Acceso denegado"
//                        404 -> "Recurso no encontrado"
//                        500 -> "Error del servidor"
//                        else -> "Error HTTP: ${response.code()}"
//                    }
//
//                    Result.failure(Exception(errorMsg))
//                }
//
//            } catch (e: Exception) {
//                Result.failure(e)
//            }
//        }
//    }

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

    fun getPacientesByPsicologo(): Flow<List<PacientePsicologoResponseDTO>> =
        flow {
            val response = api.getPacientesByPsicologo()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                throw HttpException(response)
            }
        }.catch {
            emit(emptyList())
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

    suspend fun crearPacienteDesdePsicologo(
        request: PacienteRequest
    ): Result<LoginResponseDTO> {
        return withContext(Dispatchers.IO) {
            try {
                val response = api.crearPacienteDesdePsicologo(request)

                if (response.isSuccessful) {
                    val body = response.body()

                    if (body != null) {
                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }

                } else {
                    val errorMessage = when (response.code()) {
                        401 -> "No autorizado"
                        403 -> "Acceso denegado"
                        404 -> "Endpoint no encontrado"
                        500 -> "Error del servidor"
                        else -> "Error HTTP: ${response.code()}"
                    }

                    Result.failure(Exception(errorMessage))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }


    fun getPacientesSinPsicologo(): Flow<List<PacienteBasicoResponseDTO>> = flow {
        try {
            val response = api.getPacientesSinPsicologo()

            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                if (response.code() == 401) throw HttpException(response)
                emit(emptyList())
            }

        } catch (e: Exception) {
            emit(emptyList())
        }
    }
}