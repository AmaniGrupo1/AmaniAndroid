package org.ies.tierno.applicationamani.domain.usecases.profileUseCase

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.domain.models.admin.PsicologoConPacientesDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO

/**
 * Caso de uso genérico para la gestión de perfiles de psicólogos, pacientes y administradores.
 *
 * Delega en el repositorio de perfiles las operaciones de consulta,
 * actualización y subida de foto para los tres tipos de usuario.
 *
 * @property repository Repositorio de perfiles.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
 */
class ProfileUseCaseGeneral(
    val repository: ProfileRepository,
) {
    // =====================================================
    // 🟣 PSICÓLOGO
    // =====================================================

    /**
     * Obtiene el perfil del psicólogo autenticado.
     *
     * @param id Identificador único del psicólogo.
     * @return [Result.success] con [PsicologoProfileResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getProfile(id: Long): Result<PsicologoProfileResponseDTO> = repository.getProfile(id)

    /**
     * Sube la foto de perfil del psicólogo.
     *
     * @param id Identificador único del psicólogo.
     * @param file Archivo de imagen como [MultipartBody.Part].
     * @return [Result.success] con [PsicologoProfileResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun uploadPerfil(
        id: Long,
        file: MultipartBody.Part,
    ): Result<PsicologoProfileResponseDTO> = repository.uploadFoto(id, file)

    /**
     * Obtiene el psicólogo asignado a un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @return [Result.success] con [PsicologoProfileResponseDTO] del psicólogo asignado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> =
        repository.obtenerPsicologoAsignado(idPaciente)

    /**
     * Obtiene el perfil de un paciente por su identificador.
     *
     * @param idPaciente Identificador único del paciente.
     * @return [Result.success] con [PacienteProfileResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getPacienteById(idPaciente: Long): Result<PacienteProfileResponseDTO> = repository.getPacienteById(idPaciente)

    /**
     * Obtiene el perfil de un paciente por su identificador de Firebase.
     *
     * @param idPaciente Identificador único del paciente en Firebase.
     * @return [Result.success] con [PacienteProfileResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getPacienteByIdFirebase(idPaciente: Long): Result<PacienteProfileResponseDTO> =
        repository.getPacienteByIdFirebase(idPaciente)

    /**
     * Obtiene el perfil de un psicólogo por su identificador.
     *
     * @param idPsicologo Identificador único del psicólogo.
     * @return [Result.success] con [PsicologoProfileResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getPsicologoById(idPsicologo: Long): Result<PsicologoProfileResponseDTO> = repository.getPsicologoById(idPsicologo)

    /**
     * Actualiza los datos del perfil del psicólogo.
     *
     * @param idPsicologo Identificador único del psicólogo.
     * @param profileData Datos actualizados del perfil.
     * @return [Result.success] con [PsicologoProfileResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updatePsicologoProfile(
        idPsicologo: Long,
        profileData: UpdatePsicologoRequestDTO,
    ): Result<PsicologoProfileResponseDTO> = repository.updateProfile(idPsicologo, profileData)

    // =====================================================
    // 🟡 ADMIN
    // =====================================================

    /**
     * Obtiene el perfil del administrador autenticado.
     *
     * @param id Identificador único del administrador.
     * @return [Result.success] con [AdminDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getAdminProfile(id: Long): Result<AdminDTO> = repository.getAdminProfile(id)

    /**
     * Actualiza los datos del perfil del administrador.
     *
     * @param id Identificador único del administrador.
     * @param dto Datos actualizados del perfil.
     * @return [Result.success] con [AdminResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updateAdminProfile(
        id: Long,
        dto: UpdateAdminRequestDTO,
    ): Result<AdminResponseDTO> = repository.updateAdmin(id, dto)

    /**
     * Sube la foto de perfil del administrador.
     *
     * @param id Identificador único del administrador.
     * @param file Archivo de imagen como [MultipartBody.Part].
     * @return [Result.success] con [AdminDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updateAdminPhoto(
        id: Long,
        file: MultipartBody.Part,
    ): Result<AdminDTO> = repository.updateAdminPhoto(id, file)

    // =====================================================
    // 🟢 PACIENTE
    // =====================================================

    /**
     * Obtiene el perfil del paciente autenticado.
     *
     * @param id Identificador único del paciente.
     * @return [Result.success] con [PacienteProfileResponseDTO],
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun getPacienteProfile(id: Long): Result<PacienteProfileResponseDTO> = repository.getPacienteProfile(id)

    /**
     * Actualiza los datos del perfil del paciente.
     *
     * @param id Identificador único del paciente.
     * @param dto Datos actualizados del perfil.
     * @return [Result.success] con [PacienteResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updatePacienteProfile(
        id: Long,
        dto: UpdatePacienteRequestDTO,
    ): Result<PacienteResponseDTO> = repository.updatePaciente(id, dto)

    /**
     * Sube la foto de perfil del paciente.
     *
     * @param id Identificador único del paciente.
     * @param file Archivo de imagen como [MultipartBody.Part].
     * @return [Result.success] con [PacienteProfileResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updatePacientePhoto(
        id: Long,
        file: MultipartBody.Part,
    ): Result<PacienteProfileResponseDTO> = repository.updatePacientePhoto(id, file)

    // =====================================================
    // 🔵 ACTUALIZAR PSICÓLOGO DESDE ADMIN
    // =====================================================

    /**
     * Actualiza el perfil de un psicólogo desde el panel de administración.
     *
     * @param id Identificador único del psicólogo.
     * @param dto Datos actualizados del perfil del psicólogo.
     * @return [Result.success] con [PsicologoConPacientesDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun updatePerfilPsicologoAdmin(
        id: Long,
        dto: PsicologoRequestDTO
    ): Result<PsicologoConPacientesDTO> {

        return repository.updatePerfilPsicologoAdmin(id, dto)
    }
}
