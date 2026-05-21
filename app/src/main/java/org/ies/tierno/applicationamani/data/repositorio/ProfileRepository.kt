package org.ies.tierno.applicationamani.data.repositorio

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
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
 * Repositorio para la gestión de perfiles de usuario.
 *
 * Proporciona operaciones de consulta y actualización de perfiles para los tres
 * roles del sistema: psicólogos, pacientes y administradores. Incluye soporte
 * para carga de fotos de perfil mediante multipart.
 *
 * @property api Interfaz Retrofit para los endpoints de perfil.
 */
class ProfileRepository(
    private val api: ProfileApi,
) {
    /**
     * Obtiene el perfil de un psicólogo por su identificador.
     *
     * @param id Identificador del psicólogo.
     * @return [Result] con [PsicologoProfileResponseDTO].
     */
    suspend fun getProfile(id: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.getProfilePsicologo(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Sube una foto de perfil para un psicólogo.
     *
     * @param id Identificador del psicólogo.
     * @param file Archivo de imagen en formato multipart.
     * @return [Result] con [PsicologoProfileResponseDTO] actualizado.
     */
    suspend fun uploadFoto(
        id: Long,
        file: MultipartBody.Part,
    ): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.uploadFoto(id, file)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Obtiene el psicólogo asignado a un paciente.
     *
     * @param idPaciente Identificador del paciente.
     * @return [Result] con [PsicologoProfileResponseDTO] del psicólogo asignado.
     */
    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.obtenerPsicologoAsignado(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Obtiene el perfil de un paciente por su identificador.
     *
     * @param idPaciente Identificador del paciente.
     * @return [Result] con [PacienteProfileResponseDTO].
     */
    suspend fun getPacienteById(idPaciente: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteById(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Obtiene el perfil de un paciente usando su identificador de Firebase.
     *
     * @param idPaciente Identificador del paciente en Firebase.
     * @return [Result] con [PacienteProfileResponseDTO].
     */
    suspend fun getPacienteByIdFirebase(idPaciente: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteByIdFirebase(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Obtiene el perfil de un psicólogo por su identificador.
     *
     * @param idPsicologo Identificador del psicólogo.
     * @return [Result] con [PsicologoProfileResponseDTO].
     */
    suspend fun getPsicologoById(idPsicologo: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.getPsicologoById(idPsicologo)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza los datos del perfil de un psicólogo.
     *
     * @param id Identificador del psicólogo.
     * @param profile DTO con los nuevos datos del perfil.
     * @return [Result] con [PsicologoProfileResponseDTO] actualizado.
     */
    suspend fun updateProfile(
        id: Long,
        profile: UpdatePsicologoRequestDTO,
    ): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.updateProfile(id, profile)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    // =====================================================
    // 🟡 ADMIN
    // =====================================================

    /**
     * Obtiene el perfil de un administrador.
     *
     * @param id Identificador del administrador.
     * @return [Result] con [AdminDTO].
     */
    suspend fun getAdminProfile(id: Long): Result<AdminDTO> =
        try {
            val response = api.getAdminProfile(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza los datos del perfil de un administrador.
     *
     * @param id Identificador del administrador.
     * @param dto DTO con los nuevos datos.
     * @return [Result] con [AdminResponseDTO] actualizado.
     */
    suspend fun updateAdmin(
        id: Long,
        dto: UpdateAdminRequestDTO,
    ): Result<AdminResponseDTO> =
        try {
            val response = api.updateAdmin(id, dto)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza la foto de perfil de un administrador.
     *
     * @param id Identificador del administrador.
     * @param file Archivo de imagen en formato multipart.
     * @return [Result] con [AdminDTO] actualizado.
     */
    suspend fun updateAdminPhoto(
        id: Long,
        file: MultipartBody.Part,
    ): Result<AdminDTO> =
        try {
            val response = api.updateAdminPhoto(id, file)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    // =====================================================
    // 🟢 PACIENTE
    // =====================================================

    /**
     * Obtiene el perfil de un paciente.
     *
     * @param id Identificador del paciente.
     * @return [Result] con [PacienteProfileResponseDTO].
     */
    suspend fun getPacienteProfile(id: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteProfile(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza los datos del perfil de un paciente.
     *
     * @param id Identificador del paciente.
     * @param dto DTO con los nuevos datos.
     * @return [Result] con [PacienteResponseDTO] actualizado.
     */
    suspend fun updatePaciente(
        id: Long,
        dto: UpdatePacienteRequestDTO,
    ): Result<PacienteResponseDTO> =
        try {
            val response = api.updatePaciente(id, dto)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza la foto de perfil de un paciente.
     *
     * @param id Identificador del paciente.
     * @param file Archivo de imagen en formato multipart.
     * @return [Result] con [PacienteProfileResponseDTO] actualizado.
     */
    suspend fun updatePacientePhoto(
        id: Long,
        file: MultipartBody.Part,
    ): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.updatePacientePhoto(id, file)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    // =====================================================
    // 🔵 ACTUALIZAR PSICÓLOGO DESDE ADMIN
    // =====================================================

    /**
     * Actualiza el perfil de un psicólogo desde el panel de administrador.
     *
     * @param id Identificador del psicólogo.
     * @param dto DTO con los nuevos datos del psicólogo.
     * @return [Result] con [PsicologoConPacientesDTO] actualizado.
     */
    suspend fun updatePerfilPsicologoAdmin(
        id: Long,
        dto: PsicologoRequestDTO
    ): Result<PsicologoConPacientesDTO> {

        return try {

            val response = api.updatePerfilPsicologoAdmin(id, dto)

            Result.success(response)

        } catch (e: Exception) {

            Result.failure(e)
        }
    }
}
