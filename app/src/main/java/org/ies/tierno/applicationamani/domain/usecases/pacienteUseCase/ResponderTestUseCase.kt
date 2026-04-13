package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO

class ResponderTestUseCase(
    private val repository: TestRepositoryApi
) {

    suspend operator fun invoke(
        idPaciente: Long,
        respuestas: List<RespuestasRequestDTO>
    ): Boolean {

        return repository.responderTest(
            idPaciente,
            respuestas
        )

    }
}