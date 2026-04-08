package org.ies.tierno.applicationamani.data.repositorio

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO

class ProfileRepository(private val api: ProfileApi){

    suspend fun getProfile(id : Long): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.getProfilePsicologo(id)  // ya es PsicologoProfileResponseDTO
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    // Subir o actualizar foto de perfil
    suspend fun uploadFoto(id: Long, file: MultipartBody.Part): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.uploadFoto(id, file)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}