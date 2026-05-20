package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO

/**
 * Caso de uso para listar psicólogos en el panel de administración.
 *
 * Proporciona métodos para obtener tanto los psicólogos activos
 * como los dados de baja, cada uno mediante un flujo reactivo independiente.
 *
 * @property authRepository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 */
class ListarPsicologoAdminUseCase(
    private val authRepository: AuthRepository,
) {
    /**
     * Obtiene un flujo con la lista de psicólogos activos.
     *
     * @return [Flow] que emite una lista de [PsicologoSelfResponseDTO].
     */
    operator fun invoke(): Flow<List<PsicologoSelfResponseDTO>> = authRepository.getPsicologos()

    /**
     * Obtiene un flujo con la lista de psicólogos dados de baja.
     *
     * @return [Flow] que emite una lista de [PsicologoSelfResponseDTO].
     */
    fun getPsicologosBaja(): Flow<List<PsicologoSelfResponseDTO>> = authRepository.getPsicologosBaja()
}