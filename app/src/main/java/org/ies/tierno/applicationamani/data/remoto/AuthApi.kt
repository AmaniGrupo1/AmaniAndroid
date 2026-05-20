package org.ies.tierno.applicationamani.data.remoto

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
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz Retrofit para los endpoints de autenticación y gestión de usuarios.
 *
 * Cubre el ciclo completo de autenticación: login, registro de pacientes,
 * psicólogos y administradores, asignación de psicólogos, gestión de bajas/altas
 * y obtención de tokens para Firebase.
 */
interface AuthApi {
    /**
     * Inicia sesión con credenciales de usuario.
     *
     * @param request DTO con email y contraseña.
     * @return [Response] con [LoginResponseDTO] incluyendo token y datos de sesión.
     */
    @POST("auth/login")
    suspend fun login(
        @Body request: LoginRequestDTO,
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo paciente en el sistema.
     *
     * @param request DTO con los datos del paciente.
     * @return [Response] con [LoginResponseDTO] tras el registro.
     */
    @POST("/auth/register-paciente")
    suspend fun registerPaciente(
        @Body request: PacienteRequest,
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo administrador.
     *
     * @param request DTO con los datos del administrador.
     * @return [Response] con [LoginResponseDTO] tras el registro.
     */
    @POST("/auth/register-admin")
    suspend fun registerAdmin(
        @Body request: RegistryPacienteDTO,
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo psicólogo desde el panel de administración.
     *
     * @param request DTO con los datos del psicólogo.
     * @return [Response] con [PsicologoSelfResponseDTO].
     */
    @POST("/api/admin/psicologos/create")
    suspend fun registerPsicologo(
        @Body request: PsicologoRequestDTO,
    ): Response<PsicologoSelfResponseDTO>

    /**
     * Obtiene la lista de pacientes con sus psicólogos asignados.
     *
     * @return [Response] con la lista de [ListaPacientesAndPsicologo].
     */
    @GET("/api/admin/psicologos/pacientes")
    suspend fun getPacientesConPsicologo(): Response<List<ListaPacientesAndPsicologo>>

    // OBTENEMOS  TODOS LOS PACIENTES
    /**
     * Obtiene todos los pacientes registrados (vista admin).
     *
     * @return [Response] con la lista de [DatosPacienteAdminDTO].
     */
    @GET("/api/pacientes/admin")
    suspend fun getPacientes(): Response<List<DatosPacienteAdminDTO>>

    /**
     * Da de baja a un paciente.
     *
     * @param id Identificador del paciente.
     * @return [Response] con [MessageResponse].
     */
    @PUT("/auth/pacientes/{id}/baja")
    suspend fun darBajaPaciente(
        @Path("id") id: Long,
    ): Response<MessageResponse>

    /**
     * Reactiva a un psicólogo dado de baja.
     *
     * @param id Identificador del psicólogo.
     * @return [Response] con [MessageResponse].
     */
    @PUT("/auth/psicologos/{id}/alta")
    suspend fun darAltaPsicologo(
        @Path("id") id: Long,
    ): Response<MessageResponse>

    // ASIGNAMOS UN PSICÓLOGO
    /**
     * Asigna un psicólogo a un paciente.
     *
     * @param request DTO con IDs de paciente y psicólogo.
     * @return [Response] con booleano de confirmación.
     */
    @POST("/api/admin/psicologos/asignar-psicologo")
    suspend fun asignarPsicologo(
        @Body request: AsignarPacienteAlPsicologoRequestDTO,
    ): Response<Boolean>

    // LISTAMOS LOS PSICÓLOGOS
    /**
     * Obtiene la lista de todos los psicólogos.
     *
     * @return [Response] con la lista de [PsicologoSelfResponseDTO].
     */
    @GET("/api/admin/psicologos")
    suspend fun getPsicologos(): Response<List<PsicologoSelfResponseDTO>>

    /**
     * Obtiene los psicólogos dados de baja.
     *
     * @return [Response] con la lista de [PsicologoSelfResponseDTO].
     */
    @GET("/api/admin/psicologos/listaPsicologoBaja")
    suspend fun getPsicologosBaja(): Response<List<PsicologoSelfResponseDTO>>

    // LISTAMOS LOS PACIENTES POR PSICÓLOGO
    /**
     * Obtiene los pacientes asignados al psicólogo autenticado.
     *
     * @return [Response] con la lista de [PacientePsicologoResponseDTO].
     */
    @GET("/api/psicologo/pacientes/getAll")
    suspend fun getPacientesByPsicologo(): Response<List<PacientePsicologoResponseDTO>>

    /**
     * Permite a un psicólogo registrar un nuevo paciente.
     *
     * @param request DTO con los datos del paciente.
     * @return [Response] con [LoginResponseDTO].
     */
    @POST("/auth/registrar/pacienteDesde/psicologo")
    suspend fun crearPacienteDesdePsicologo(
        @Body request: PacienteRequest,
    ): Response<LoginResponseDTO>

    /**
     * Obtiene los pacientes sin psicólogo asignado.
     *
     * @return [Response] con la lista de [PacienteBasicoResponseDTO].
     */
    @GET("/api/pacientes/sin-psicologo")
    suspend fun getPacientesSinPsicologo(): Response<List<PacienteBasicoResponseDTO>>

    /**
     * Obtiene un token personalizado para autenticación Firebase.
     *
     * @return [Response] con mapa clave-valor incluyendo 'firebaseToken'.
     */
    @GET("/api/auth/firebase-token")
    suspend fun getFirebaseToken(): Response<Map<String, String>>
}
