package org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase

import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository

class IdiomaUseCase(private val ajustesRepository: AjustesRepository) {

    suspend fun actualizarIdioma(idUsuario: Long, idioma: String) {
        ajustesRepository.cambiarIdioma(idUsuario, idioma)
    }
}