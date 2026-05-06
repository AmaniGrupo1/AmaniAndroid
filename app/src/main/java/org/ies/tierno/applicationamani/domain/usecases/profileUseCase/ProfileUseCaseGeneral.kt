package org.ies.tierno.applicationamani.domain.usecases.profileUseCase

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
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

}

