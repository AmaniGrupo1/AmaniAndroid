package org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase

import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
import org.ies.tierno.applicationamani.dto.ajuste.AjusteResponseDTO

/**
 * Caso de uso para la gestión de ajustes de idioma y tema del usuario.
 *
 * Delega en el repositorio de ajustes la actualización del idioma
 * y del tema (modo claro / oscuro) de la aplicación.
 *
 * @property ajustesRepository Repositorio de ajustes de usuario.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
 */
class IdiomaUseCase(
    private val ajustesRepository: AjustesRepository,
) {
    /**
     * Actualiza el idioma preferido del usuario.
     *
     * @param idUsuario Identificador único del usuario.
     * @param idioma Código del idioma (por ejemplo, "es", "en").
     */
    suspend fun actualizarIdioma(
        idUsuario: Long,
        idioma: String,
    ) {
        ajustesRepository.cambiarIdioma(idUsuario, idioma)
    }

    /**
     * Actualiza la preferencia de tema (claro / oscuro).
     *
     * @param tema `true` para modo oscuro, `false` para modo claro.
     * @return [Result.success] con [AjusteResponseDTO] actualizado,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun actualizarTema(tema: Boolean): Result<AjusteResponseDTO> = ajustesRepository.actualizarTema(tema)
}
