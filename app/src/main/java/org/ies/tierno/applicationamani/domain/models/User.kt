package org.ies.tierno.applicationamani.domain.models

/**
 * Modelo de dominio que representa los datos personales de un usuario.
 *
 * Se utiliza en la pantalla de ajustes ([SettingsClienteScreen][org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen])
 * para cargar y persistir la información del perfil del cliente.
 *
 * @property nombre Nombre del usuario.
 * @property apellidos Apellidos del usuario.
 * @property genero Género del usuario.
 * @property direccion Dirección postal del usuario.
 * @property telefono Número de teléfono de contacto.
 * @property codigoPostal Código postal de la dirección.
 */
data class User(
    val nombre: String,
    val apellidos: String,
    val genero: String,
    val direccion: String,
    val telefono: String,
    val codigoPostal: String
)