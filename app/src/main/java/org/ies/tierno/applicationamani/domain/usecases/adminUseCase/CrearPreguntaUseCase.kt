package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest

/**
 * Caso de uso para crear una nueva pregunta de test.
 *
 * Encapsula la lógica de invocación del repositorio de tests para
 * registrar una pregunta con sus opciones en el backend.
 *
 * @property repository Repositorio que gestiona la comunicación con la API de tests.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
 */
class CrearPreguntaUseCase(
    val repository: TestRepositoryApi,
) {
    /**
     * Crea una pregunta en el backend.
     *
     * @param pregunta Datos de la pregunta a crear (texto, tipo y opciones).
     * @return [OpcionAdminDTO] con la pregunta creada, o `null` si ocurre un error.
     */
    suspend operator fun invoke(pregunta: PreguntaRequest): OpcionAdminDTO? = repository.createPregunta(pregunta)
}
