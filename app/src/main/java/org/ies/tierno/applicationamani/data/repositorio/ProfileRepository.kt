package org.ies.tierno.applicationamani.data.repositorio

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO

class ProfileRepository(private val api: ProfileApi){

    suspend fun getProfile(id : Long): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.getProfilePsicologo(id)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun uploadFoto(id: Long, file: MultipartBody.Part): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.uploadFoto(id, file)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.obtenerPsicologoAsignado(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun getPacienteById(idPaciente: Long): Result<PacienteProfileResponseDTO> {
        return try {
            val response = api.getPacienteById(idPaciente)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun getPsicologoById(idPsicologo: Long): Result<PsicologoProfileResponseDTO> {
        return try {
            val response = api.getPsicologoById(idPsicologo)
            Result.success(response)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}