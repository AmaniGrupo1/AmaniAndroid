package org.ies.tierno.applicationamani.data.remoto

import retrofit2.Response
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz de la API REST de autenticación y gestión de usuarios.
 *
 * Define los endpoints HTTP que Retrofit implementará en tiempo de
 * ejecución para operaciones de login, registro de distintos roles
 * (paciente, admin, psicólogo) y gestión administrativa de pacientes.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 */
interface AuthApi {

    /**
     * Inicia sesión de un usuario existente.
     *
     * @param request Credenciales del usuario (email y contraseña).
     * @return Respuesta con los datos de sesión ([LoginResponseDTO]) si las credenciales son válidas.
     */
    @POST("auth/login")
    suspend fun login(
        @Body request: LoginRequestDTO
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo paciente desde la aplicación pública.
     *
     * @param request Datos completos del paciente a registrar.
     * @return Respuesta con los datos de sesión del paciente recién creado.
     */
    @POST("/auth/register-paciente")
    suspend fun registerPaciente(
        @Body request: PacienteRequest
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo paciente desde el panel de administración.
     *
     * @param request Datos completos del paciente a registrar.
     * @return Respuesta con los datos de sesión del paciente recién creado.
     */
    @POST("/auth/registry/pacienteAdmin")
    suspend fun registerPacienteAdmin(
        @Body request: PacienteRequest
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo usuario con rol de administrador.
     *
     * @param request Datos básicos del administrador (nombre, apellido, email, contraseña).
     * @return Respuesta con los datos de sesión del administrador recién creado.
     */
    @POST("/auth/register-admin")
    suspend fun registerAdmin(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

    /**
     * Registra un nuevo usuario con rol de psicólogo.
     *
     * @param request Datos básicos del psicólogo (nombre, apellido, email, contraseña).
     * @return Respuesta con los datos de sesión del psicólogo recién creado.
     */
    @POST("/auth/register-psicologo")
    suspend fun registerPsicologo(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

    /**
     * Obtiene la lista de pacientes con su psicólogo asignado.
     *
     * @return Lista de [ListaPacientesAndPsicologo] con la relación paciente-psicólogo.
     */
    @GET("/api/admin/psicologos/pacientes")
    suspend fun getPacientesConPsicologo(): Response<List<ListaPacientesAndPsicologo>>

    /**
     * Obtiene la lista de todos los pacientes para la vista de administración.
     *
     * @return Lista de [DatosPacienteAdminDTO] con los datos de cada paciente.
     */
    @GET("/api/pacientes/admin")
    suspend fun getPacientes(): Response<List<DatosPacienteAdminDTO>>

    /**
     * Da de baja a un paciente por su identificador.
     *
     * @param id Identificador único del paciente a dar de baja.
     * @return Mensaje de confirmación de la baja.
     */
    @PUT("/auth/pacientes/{id}/baja")
    suspend fun darBajaPaciente(
        @Path("id") id: Long
    ): Response<String>
}
