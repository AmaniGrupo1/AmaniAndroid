package org.ies.tierno.applicationamani.domain.usecases.terapia

import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO

class TerapiasGeneralUseCase(val cita: CitasRepository) {
    suspend fun crearTerapia(terapia : TerapiaRequest): Result<TerapiaResponseDTO>{
       return cita.crearTerapia(terapia)
    }


    // ✏️ ACTUALIZAR TERAPIA
    suspend fun actualizarTerapia(
        id: Long,
        terapia: TerapiaRequest
    ): Result<TerapiaResponseDTO> {
        return cita.actualizarTerapia(id, terapia)
    }

    // 🗑️ ELIMINAR TERAPIA
    suspend fun eliminarTerapia(
        id: Long
    ): Result<Unit> {
        return cita.eliminarTerapia(id)
    }
}