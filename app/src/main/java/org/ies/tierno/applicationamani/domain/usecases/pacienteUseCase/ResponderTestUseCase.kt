package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO

/**
 * Caso de uso para enviar las respuestas del test del paciente.
 *
 * Delega en el repositorio de tests el envío de las respuestas
 * del cuestionario completado por el paciente.
 *
 * @property repository Repositorio de tests.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
 */
class ResponderTestUseCase(
    private val repository: TestRepositoryApi,
) {
    /**
     * Envía las respuestas del test al backend.
     *
     * @param idPaciente Identificador único del paciente.
     * @param respuestas Lista de [RespuestasRequestDTO] con las respuestas del test.
     * @return `true` si el envío fue exitoso, `false` en caso contrario.
     */
    suspend operator fun invoke(
        idPaciente: Long,
        respuestas: List<RespuestasRequestDTO>,
    ): Boolean =
        repository.responderTest(
            idPaciente,
            respuestas,
        )
}
