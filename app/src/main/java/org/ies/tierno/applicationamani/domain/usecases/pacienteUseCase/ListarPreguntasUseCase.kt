package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO

class ListarPreguntasUseCase(val repository: TestRepositoryApi) {
     operator fun invoke():Flow<List<OpcionAdminDTO>?> {
        return repository.getPreguntasFlow()
    }
}