package org.ies.tierno.applicationamani.domain.usecases.historialCita

import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO

class HistorialCitaUseCase(val repository: CitasRepository) {

    suspend fun getHistorialCitas(): Result<List<HistorialCitaResponseDTO>>{
        return repository.getHistorialCitas()
    }
}