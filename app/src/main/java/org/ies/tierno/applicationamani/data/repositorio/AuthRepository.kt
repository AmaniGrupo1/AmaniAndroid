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
import org.ies.tierno.applicationamani.dto.admin.MessageResponse
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import retrofit2.HttpException
import timber.log.Timber

/**
 * Repositorio encargado de la gestión de autenticación y usuarios.
 *
 * Administra el acceso al backend para login, registro y gestión de perfiles de pacientes,
 * psicólogos y administradores. También gestiona la persistencia local de tokens y sesiones.
 *
 * @property api Interfaz de acceso a la API de autenticación.
 * @property tokenDataStore Almacenamiento local para el token de acceso.
 * @property userSessionDataStore Almacenamiento local para los datos de la sesión de usuario.
 * @property tokenHolder Contenedor en memoria para acceso inmediato al token JWT.
 */
class AuthRepository(
    private val api: AuthApi,
    private val tokenDataStore: TokenDataStore,
    private val tokenHolder: org.ies.tierno.applicationamani.data.local.TokenHolder,
    private val userSessionDataStore: UserSessionDataStore,
) {
    /**
     * Realiza el proceso de inicio de sesión.
     *
     * Valida las credenciales con el backend, almacena el token y la sesión localmente,
     * e intenta autenticar con Firebase para funcionalidades de chat en tiempo real.
     *
     * @param request Datos del inicio de sesión (email y contraseña).
     * @return [Result] con los datos de respuesta del login o la excepción ocurrida.
     */
    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> =
        withContext(Dispatchers.IO) {
            try {
                val response = api.login(request)

                if (response.isSuccessful) {
                    val body = response.body()

                    if (body != null) {
                        // GUARDAR TOKEN
                        tokenDataStore.saveToken(body.token)
                        // Actualizar cache en memoria inmediatamente para evitar condiciones de carrera
                        tokenHolder.setToken(body.token)
                        // Log para depuración: confirmar token guardado
                        timber.log.Timber.d("Saved token: %s", body.token)

                        // GUARDAR SESION
                        userSessionDataStore.saveSession(
                            UserSession(
                                idUsuario = body.idUsuario,
                                nombre = body.nombre,
                                rol = body.rol,
                                email = request.email,
                                idPsicologo = body.idPsicologo,
                                idPaciente = body.idPaciente,
                            ),
                        )

                        // AUTENTICACIÓN CON FIREBASE
                        try {
                            val firebaseTokenResponse = api.getFirebaseToken()
                            if (firebaseTokenResponse.isSuccessful) {
                                val responseBody = firebaseTokenResponse.body()
                                val rawToken = responseBody?.get("firebaseToken")

                                if (rawToken != null) {
                                    // Limpiar el token de posibles comillas, espacios o saltos de línea
                                    val sanitizedToken = rawToken.trim().replace("\"", "")
                                    android.util.Log.d(
                                        "AuthRepository",
                                        "Sanitized Firebase token length: ${sanitizedToken.length}, starts: ${sanitizedToken.take(20)}",
                                    )

                                    if (sanitizedToken.isNotEmpty()) {
                                        FirebaseAuth.getInstance().signInWithCustomToken(sanitizedToken).await()
                                        android.util.Log.d("AuthRepository", "Firebase sign-in OK")
                                    }
                                } else {
                                    android.util.Log.e("AuthRepository", "firebaseToken key not found in response: $responseBody")
                                }
                            } else {
                                android.util.Log.e(
                                    "AuthRepository",
                                    "getFirebaseToken HTTP ${firebaseTokenResponse.code()}: ${firebaseTokenResponse.errorBody()?.string()}",
                                )
                            }
                        } catch (e: Exception) {
                            android.util.Log.e(
                                "AuthRepository",
                                "Error signing in to Firebase (Posible reloj desincronizado en emulador)",
                                e,
                            )
                        }

                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }
                } else {
                    val errorBody = response.errorBody()?.string()
                    val errorMessage =
                        when (response.code()) {
                            401 -> "Credenciales incorrectas"
                            403 -> "Acceso denegado"
                            404 -> "Usuario no encontrado"
                            500 -> "Error del servidor"
                            else -> errorBody ?: "Error HTTP: ${response.code()}"
                        }
                    Result.failure(Exception(errorMessage))
                }
            } catch (e: Exception) {
                val errorMsg =
                    when {
                        e.message?.contains("Connection", ignoreCase = true) == true ->
                            "No se puede conectar al servidor. Verifica que el backend este ejecutandose en http://10.0.2.2:8080"
                        e.message?.contains("timeout", ignoreCase = true) == true ->
                            "Tiempo de espera agotado. Intenta de nuevo."
                        else -> e.message ?: "Error de conexion"
                    }
                Result.failure(Exception(errorMsg))
            }
        }

    /**
     * Asigna un psicólogo a un paciente específico.
     *
     * @param idPaciente Identificador del paciente.
     * @param idPsicologo Identificador del psicólogo a asignar.
     * @return [Result] booleano indicando el éxito de la asignación.
     */
    suspend fun asignarPsicologo(
        idPaciente: Long,
        idPsicologo: Long,
    ): Result<Boolean> =
        withContext(Dispatchers.IO) {
            try {
                val request =
                    AsignarPacienteAlPsicologoRequestDTO(
                        idPaciente = idPaciente,
                        idPsicologo = idPsicologo,
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

    /**
     * Registra un nuevo paciente en el sistema.
     *
     * @param request Datos del registro del paciente.
     * @return [Result] con los datos de sesión tras el registro exitoso.
     */
    suspend fun registerPaciente(request: PacienteRequest): Result<LoginResponseDTO> =
        withContext(Dispatchers.IO) {
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

    /**
     * Registra un nuevo administrador en el sistema.
     *
     * @param request Datos del registro del administrador.
     * @return [Result] con los datos de sesión tras el registro.
     */
    suspend fun registerAdmin(request: RegistryPacienteDTO): Result<LoginResponseDTO> =
        withContext(Dispatchers.IO) {
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

    /**
     * Registra un nuevo psicólogo en el sistema.
     *
     * @param request Datos del registro del psicólogo.
     * @return [Result] con la información del psicólogo registrado.
     */
    suspend fun registerPsicologo(request: PsicologoRequestDTO): Result<PsicologoSelfResponseDTO> =
        withContext(Dispatchers.IO) {
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

    /**
     * Obtiene un flujo de datos con la lista de pacientes y sus psicólogos asignados.
     *
     * @return [Flow] que emite la lista de emparejamientos paciente-psicólogo.
     */
    fun getPacientesConPsicologo(): Flow<List<ListaPacientesAndPsicologo>> =
        flow {
            val response = api.getPacientesConPsicologo()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                // Si backend responde 401, emitimos lista vacía y dejamos que
                // el TokenRefreshInterceptor notifique la sesión no autorizada.
                if (response.code() == 401) {
                    Timber.w("getPacientesConPsicologo - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            if (e is HttpException) {
                Timber.e(e, "HTTP exception while fetching pacientes con psicologo")
            } else {
                Timber.e(e, "Unexpected exception in getPacientesConPsicologo")
            }
            emit(emptyList())
        }

    /**
     * Obtiene un flujo de datos con la lista de todos los pacientes.
     *
     * @return [Flow] que emite la lista de datos administrativos de los pacientes.
     */
    fun getPaciente(): Flow<List<DatosPacienteAdminDTO>> =
        flow {
            val response = api.getPacientes()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                if (response.code() == 401) {
                    Timber.w("getPaciente - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            if (e is HttpException) {
                Timber.e(e, "HTTP exception while fetching paciente")
            } else {
                Timber.e(e, "Unexpected exception in getPaciente")
            }
            emit(emptyList())
        }

    /**
     * Obtiene un flujo de datos con la lista de todos los psicólogos registrados.
     *
     * @return [Flow] que emite la lista de perfiles de psicólogos.
     */
    fun getPsicologos(): Flow<List<PsicologoSelfResponseDTO>> =
        flow {
            Timber.d("=== getPsicologos - INICIO ===")
            val response = api.getPsicologos()
            Timber.d("Response code: ${response.code()}")

            if (response.isSuccessful) {
                val body = response.body()
                Timber.d("Body recibido: ${body?.size} psicólogos")
                emit(body ?: emptyList())
            } else {
                Timber.e("Error en response: ${response.code()} - ${response.message()}")
                if (response.code() == 401) {
                    Timber.w("getPsicologos - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            if (e is HttpException) {
                Timber.e(e, "HTTP exception while fetching psicologos")
            }
            emit(emptyList())
        }

    /**
     * Obtiene un flujo de datos con la lista de psicólogos dados de baja.
     *
     * @return [Flow] que emite la lista de perfiles de psicólogos en estado de baja.
     */
    fun getPsicologosBaja(): Flow<List<PsicologoSelfResponseDTO>> =
        flow {
            val response = api.getPsicologosBaja()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                if (response.code() == 401) {
                    Timber.w("getPsicologosBaja - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            if (e is HttpException) {
                Timber.e(e, "HTTP exception while fetching psicologos")
            }
            emit(emptyList())
        }

    /**
     * Obtiene los pacientes asignados al psicólogo autenticado actualmente.
     *
     * @return [Flow] que emite la lista de pacientes del psicólogo.
     */
    fun getPacientesByPsicologo(): Flow<List<PacientePsicologoResponseDTO>> =
        flow {
            val response = api.getPacientesByPsicologo()
            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                if (response.code() == 401) {
                    Timber.w("getPacientesByPsicologo - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            Timber.e(e, "Exception in getPacientesByPsicologo")
            emit(emptyList())
        }

    /**
     * Da de baja a un paciente del sistema.
     *
     * @param id Identificador único del paciente a dar de baja.
     * @return [Result] con el mensaje de confirmación de la operación o el error correspondiente.
     */
    suspend fun darBajaPaciente(id: Long): Result<MessageResponse> =
        withContext(Dispatchers.IO) {
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
                    val errorMessage =
                        when (response.code()) {
                            401 -> "No autorizado"
                            403 -> "Acceso denegado"
                            404 -> "Paciente no encontrado"
                            500 -> "Error del servidor"
                            else -> "Error HTTP: ${response.code()}"
                        }

                    Result.failure(Exception(errorMessage))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /**
     * Reactiva a un psicólogo previamente dado de baja.
     *
     * @param id Identificador único del psicólogo a dar de alta.
     * @return [Result] con el mensaje de confirmación de la operación o el error correspondiente.
     */
    suspend fun darAltaPsicologo(id: Long): Result<MessageResponse> =
        withContext(Dispatchers.IO) {
            try {
                val response = api.darAltaPsicologo(id)

                if (response.isSuccessful) {
                    val body = response.body()

                    if (body != null) {
                        Result.success(body)
                    } else {
                        Result.failure(Exception("Response body is null"))
                    }
                } else {
                    val errorMessage =
                        when (response.code()) {
                            401 -> "No autorizado"
                            403 -> "Acceso denegado"
                            404 -> "Psicólogo no encontrado"
                            500 -> "Error del servidor"
                            else -> "Error HTTP: ${response.code()}"
                        }

                    Result.failure(Exception(errorMessage))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /**
     * Asegura que el usuario esté autenticado en Firebase y que el token sea válido.
     * Si el usuario ya existe, fuerza un refresco del token.
     * Si no hay un usuario actual, intenta obtener un nuevo token del backend.
     */
    suspend fun ensureFirebaseAuthenticated() {
        val firebaseAuth = FirebaseAuth.getInstance()
        val user = firebaseAuth.currentUser

        if (user != null) {
            try {
                // Forzar refresco del token para evitar errores 403 por token expirado
                user.getIdToken(true).await()
                Timber.d("Token de Firebase refrescado correctamente para UID: ${user.uid}")
                return
            } catch (e: Exception) {
                Timber.w(e, "No se pudo refrescar el token, intentando re-login...")
                // Si falla el refresco, continuamos para intentar re-login con custom token
            }
        }

        Timber.d("Intentando sign-in con custom token...")
        try {
            val response = api.getFirebaseToken()
            if (response.isSuccessful) {
                val responseBody = response.body()
                val rawToken = responseBody?.get("firebaseToken")
                if (rawToken != null) {
                    val sanitizedToken = rawToken.trim().replace("\"", "")
                    if (sanitizedToken.isNotEmpty()) {
                        firebaseAuth.signInWithCustomToken(sanitizedToken).await()
                        Timber.i("Firebase sign-in exitoso. UID: ${firebaseAuth.currentUser?.uid}")
                    }
                }
            } else {
                Timber.e("Error al obtener Firebase token: ${response.code()} - ${response.errorBody()?.string()}")
            }
        } catch (e: Exception) {
            Timber.e(e, "Excepción al asegurar autenticación Firebase")
        }
    }

    /**
     * Cierra la sesión actual eliminando el token y los datos de sesión almacenados.
     */
    suspend fun logout() {
        FirebaseAuth.getInstance().signOut()
        tokenDataStore.clearToken()
        userSessionDataStore.clearSession()
    }

    /**
     * Permite a un psicólogo registrar a un nuevo paciente.
     *
     * @param request Datos del paciente a registrar.
     * @return [Result] con los datos de acceso para el nuevo paciente.
     */
    suspend fun crearPacienteDesdePsicologo(request: PacienteRequest): Result<LoginResponseDTO> =
        withContext(Dispatchers.IO) {
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
                    val errorMessage =
                        when (response.code()) {
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

    /**
     * Obtiene un flujo de datos con los pacientes que no tienen un psicólogo asignado.
     *
     * @return [Flow] que emite la lista de pacientes sin psicólogo.
     */
    fun getPacientesSinPsicologo(): Flow<List<PacienteBasicoResponseDTO>> =
        flow {
            val response = api.getPacientesSinPsicologo()

            if (response.isSuccessful) {
                emit(response.body() ?: emptyList())
            } else {
                if (response.code() == 401) {
                    Timber.w("getPacientesSinPsicologo - received 401, emitting empty list")
                }
                emit(emptyList())
            }
        }.catch { e ->
            Timber.e(e, "Error in getPacientesSinPsicologo")
            emit(emptyList())
        }
}
