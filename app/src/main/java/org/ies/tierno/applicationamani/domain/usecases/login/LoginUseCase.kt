package org.ies.tierno.applicationamani.domain.usecases.login

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest

/**
 * Caso de uso que agrupa las operaciones de autenticación y registro de usuarios.
 *
 * Proporciona métodos para iniciar sesión, registrar pacientes (públicos y
 * desde admin), administradores y psicólogos, delegando en [AuthRepository].
 *
 * @property repository Repositorio que ejecuta las peticiones HTTP de autenticación.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
 */
class LoginUseCase(
    private val repository: AuthRepository,
) {
    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> = repository.login(request)

    /**
     * Registra un nuevo paciente desde la aplicación pública.
     *
     * @param request Datos completos del paciente a registrar.
     * @return [Result.success] con [LoginResponseDTO] del paciente creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun registerPaciente(request: PacienteRequest): Result<LoginResponseDTO> = repository.registerPaciente(request)

    /**
     * Registra un nuevo paciente desde el panel de administración.
     *
     * @param request Datos completos del paciente a registrar.
     * @return [Result.success] con [LoginResponseDTO] del paciente creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
//    suspend fun registerPacienteAdmin(request: PacienteRequest): Result<DatosPacienteAdminDTO> {
//        return repository.crearPacienteAdmin(request)
//    }

    /**
     * Registra un nuevo usuario con rol de administrador.
     *
     * @param request Datos básicos del administrador.
     * @return [Result.success] con [LoginResponseDTO] del admin creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun registrarAdmin(request: RegistryPacienteDTO): Result<LoginResponseDTO> = repository.registerAdmin(request)

    /**
     * Registra un nuevo usuario con rol de psicólogo.
     *
     * @param request Datos básicos del psicólogo.
     * @return [Result.success] con [LoginResponseDTO] del psicólogo creado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun registrarPsicologo(request: PsicologoRequestDTO): Result<PsicologoSelfResponseDTO> = repository.registerPsicologo(request)

    suspend fun registrarPacienteDesdePsicologo(request: PacienteRequest): Result<LoginResponseDTO> =
        repository.crearPacienteDesdePsicologo(request)
}
