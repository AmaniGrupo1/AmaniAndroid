package org.ies.tierno.applicationamani.domain.usecases.profileUseCase

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO

class ProfileUseCaseGeneral(val repository: ProfileRepository) {

    suspend fun getProfile(id: Long): Result<PsicologoProfileResponseDTO> {
        return repository.getProfile(id)
    }

    suspend fun uploadPerfil(
        id: Long,
        file: MultipartBody.Part
    ): Result<PsicologoProfileResponseDTO> {
        return repository.uploadFoto(id, file)
    }

    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> {
        return repository.obtenerPsicologoAsignado(idPaciente)
    }

    suspend fun getPacienteById(idPaciente: Long): Result<PacienteProfileResponseDTO> {
        return repository.getPacienteById(idPaciente)
    }

    suspend fun getPacienteByIdFirebase(idPaciente: Long): Result<PacienteProfileResponseDTO> {
        return repository.getPacienteByIdFirebase(idPaciente)
    }

    suspend fun getPsicologoById(idPsicologo: Long): Result<PsicologoProfileResponseDTO> {
        return repository.getPsicologoById(idPsicologo)
    }

    suspend fun updatePsicologoProfile(
        idPsicologo: Long,
        profileData: UpdatePsicologoRequestDTO
    ): Result<PsicologoProfileResponseDTO> {
        return repository.updateProfile(idPsicologo, profileData)
    }


    // =====================================================
    // 🟡 ADMIN
    // =====================================================

    suspend fun getAdminProfile(id: Long): Result<AdminDTO> {
        return repository.getAdminProfile(id)
    }

    suspend fun updateAdminProfile(
        id: Long,
        dto: UpdateAdminRequestDTO
    ): Result<AdminResponseDTO> {
        return repository.updateAdmin(id, dto)
    }

    suspend fun updateAdminPhoto(
        id: Long,
        file: MultipartBody.Part
    ): Result<AdminDTO> {
        return repository.updateAdminPhoto(id, file)
    }

    // =====================================================
    // 🟢 PACIENTE
    // =====================================================

    suspend fun getPacienteProfile(id: Long): Result<PacienteProfileResponseDTO> {
        return repository.getPacienteProfile(id)
    }

    suspend fun updatePacienteProfile(
        id: Long,
        dto: UpdatePacienteRequestDTO
    ): Result<PacienteResponseDTO> {
        return repository.updatePaciente(id, dto)
    }

    suspend fun updatePacientePhoto(
        id: Long,
        file: MultipartBody.Part
    ): Result<PacienteProfileResponseDTO> {
        return repository.updatePacientePhoto(id, file)
    }

}

