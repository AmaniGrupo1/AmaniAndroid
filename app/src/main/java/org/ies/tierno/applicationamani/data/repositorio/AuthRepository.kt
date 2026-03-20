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

/**
 * Repositorio de autenticación y gestión de usuarios.
 *
 * Actúa como capa intermedia entre los casos de uso del dominio y la
 * interfaz de red [AuthApi]. Cada método envuelve la llamada HTTP en
 * [Dispatchers.IO] y devuelve [Result] para manejar errores de forma
 * declarativa, o [Flow] para datos observables.
 *
 * @property api Cliente Retrofit que ejecuta las peticiones HTTP.
 * @constructor Crea un repositorio con la interfaz de API proporcionada.
 *
 * @see AuthApi
 * @see org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
 */
class AuthRepository(private val api: AuthApi) {

    /**
     * Autentica a un usuario con sus credenciales.
     *
     * @param request Credenciales del usuario (email y contraseña).
     * @return [Result.success] con [LoginResponseDTO] si las credenciales son válidas,
     *         o [Result.failure] con la excepción correspondiente.
     */
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

    /**
     * Registra un nuevo paciente desde la aplicación pública.
     *
     * @param request Datos completos del paciente a registrar.
     * @return [Result.success] con [LoginResponseDTO] del paciente creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
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

    /**
     * Registra un nuevo paciente desde el panel de administración.
     *
     * @param request Datos completos del paciente a registrar.
     * @return [Result.success] con [LoginResponseDTO] del paciente creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
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

    /**
     * Registra un nuevo usuario con rol de administrador.
     *
     * @param request Datos básicos del administrador.
     * @return [Result.success] con [LoginResponseDTO] del admin creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
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

    /**
     * Registra un nuevo usuario with rol de psicólogo.
     *
     * @param request Datos básicos del psicólogo.
     * @return [Result.success] con [LoginResponseDTO] del psicólogo creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
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

    /**
     * Obtiene un flujo con la lista de pacientes y su psicólogo asignado.
     *
     * @return [Flow] que emite una lista de [ListaPacientesAndPsicologo].
     *         En caso de error emite una lista vacía.
     */
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

    /**
     * Obtiene un flujo con la lista de todos los pacientes para administración.
     *
     * @return [Flow] que emite una lista de [DatosPacienteAdminDTO].
     *         En caso de error emite una lista vacía.
     */
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

    /**
     * Da de baja a un paciente por su identificador.
     *
     * @param id Identificador único del paciente.
     * @return [Result.success] con mensaje de confirmación,
     *         o [Result.failure] con la excepción correspondiente.
     */
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