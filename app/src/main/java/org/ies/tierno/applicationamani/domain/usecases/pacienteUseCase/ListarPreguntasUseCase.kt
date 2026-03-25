package org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO

/**
 * Caso de uso para obtener la lista de preguntas del test.
 *
 * Devuelve un [Flow] reactivo que emite las preguntas disponibles
 * para que el paciente las responda en el cuestionario.
 *
 * @property repository Repositorio de tests que comunica con la API REST.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
 */
class ListarPreguntasUseCase(val repository: TestRepositoryApi) {
    /**
     * Obtiene un flujo con la lista de preguntas del test.
     *
     * @return [Flow] que emite una lista de [OpcionAdminDTO], o `null` si no hay datos.
     */
     operator fun invoke():Flow<List<OpcionAdminDTO>?> {
        return repository.getPreguntasFlow()
    }
}