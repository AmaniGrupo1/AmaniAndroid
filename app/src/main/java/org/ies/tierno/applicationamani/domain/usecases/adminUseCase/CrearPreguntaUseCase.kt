package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest

class CrearPreguntaUseCase(val repository: TestRepositoryApi) {
    suspend operator fun invoke(pregunta: PreguntaRequest): OpcionAdminDTO? {
        return repository.createPregunta(pregunta)
    }
}
