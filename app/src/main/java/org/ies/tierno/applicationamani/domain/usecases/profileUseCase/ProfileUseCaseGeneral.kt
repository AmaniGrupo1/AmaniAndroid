package org.ies.tierno.applicationamani.domain.usecases.profileUseCase

import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO

class ProfileUseCaseGeneral(val repository: ProfileRepository) {

    //Obtener perfil
    suspend fun getProfile(id: Long): Result<PsicologoProfileResponseDTO> {
        return repository.getProfile(id)
    }

    //Subir foto de perfil
    suspend fun uploadPerfil(
        id: Long,
        file: MultipartBody.Part
    ): Result<PsicologoProfileResponseDTO> {
        return repository.uploadFoto(id, file)
    }

    suspend fun obtenerPsicologoAsignado(idPaciente: Long): Result<PsicologoProfileResponseDTO> {
        return repository.obtenerPsicologoAsignado(idPaciente)
    }

}

