package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.AjustesApi
import org.ies.tierno.applicationamani.dto.idioma.IdiomaRequestDTO

class AjustesRepository(private val api: AjustesApi) {

    suspend fun cambiarIdioma(idUsuario: Long, idioma: String) {
        api.actualizarIdioma(
            idUsuario,
            IdiomaRequestDTO(idioma)
        )
    }
}