package org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase

import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO

class IdiomaUseCase(private val ajustesRepository: AjustesRepository) {

    suspend fun actualizarIdioma(idUsuario: Long, idioma: String) {
        ajustesRepository.cambiarIdioma(idUsuario, idioma)
    }

    suspend fun actualizarTema( tema: TemaApp): Result<AjusteResponseDTO> {
        return ajustesRepository.actualizarTema(tema)
    }
}