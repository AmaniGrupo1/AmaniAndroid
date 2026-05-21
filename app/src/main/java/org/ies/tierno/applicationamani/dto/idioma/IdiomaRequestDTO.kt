package org.ies.tierno.applicationamani.dto.idioma

/**
 * DTO de solicitud para cambiar el idioma de la interfaz del usuario.
 *
 * Permite al usuario seleccionar el idioma en el que se muestra
 * la aplicación (p. ej. «es», «en»).
 *
 * @property idioma Código ISO del idioma seleccionado.
 */
data class IdiomaRequestDTO(
    val idioma: String,
)
