package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.RespuestasRepository
import org.ies.tierno.applicationamani.domain.models.Opcion

class GuardarRespuestaUseCase(
    private val respuestasRepository: RespuestasRepository
) {

    suspend operator fun invoke(pacienteId: String,preguntaId: String,opcion: Opcion) {
        respuestasRepository.guardarRespuesta(
            pacienteId,
            preguntaId,
            opcion
        )
    }
}
