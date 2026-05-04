package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO

class DiarioRemoteRepository(
    private val api: DiarioApi
) {

    suspend fun getAll(): Result<List<DiarioEmocionResponseDTO>> = runCatching { api.getAll() }

    suspend fun getById(id: Long): Result<DiarioEmocionResponseDTO> = runCatching { api.getById(id) }

    suspend fun getByPaciente(idPaciente: Long): Result<List<DiarioEmocionResponseDTO>> =
        runCatching { api.getByPaciente(idPaciente) }

    suspend fun create(request: DiarioEmocionRequestDTO): Result<DiarioEmocionResponseDTO> =
        runCatching { api.create(request) }

    suspend fun update(id: Long, request: DiarioEmocionRequestDTO): Result<DiarioEmocionResponseDTO> =
        runCatching { api.update(id, request) }

    suspend fun delete(id: Long): Result<Unit> = runCatching { api.delete(id) }
}
