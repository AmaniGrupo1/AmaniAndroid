package org.ies.tierno.applicationamani.domain.usecases

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO

class ListarSituacionUseCase(private val repository: SituacionRepository) {
     operator fun invoke(): Flow<List<SituacionDTO>>  {
        return repository.getSituaciones()
    }
}