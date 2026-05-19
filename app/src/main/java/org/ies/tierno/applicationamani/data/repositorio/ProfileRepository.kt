package org.ies.tierno.applicationamani.data.repositorio

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO

class ProfileRepository(
    private val api: ProfileApi,
) {
    suspend fun getProfile(id: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.getProfilePsicologo(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

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

    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.obtenerPsicologoAsignado(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    suspend fun getPacienteById(idPaciente: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteById(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    suspend fun getPacienteByIdFirebase(idPaciente: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteByIdFirebase(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

    suspend fun getPsicologoById(idPsicologo: Long): Result<PsicologoProfileResponseDTO> =
        try {
            val response = api.getPsicologoById(idPsicologo)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

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

    suspend fun getAdminProfile(id: Long): Result<AdminDTO> =
        try {
            val response = api.getAdminProfile(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

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

    suspend fun getPacienteProfile(id: Long): Result<PacienteProfileResponseDTO> =
        try {
            val response = api.getPacienteProfile(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }

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
}
