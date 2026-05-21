package org.ies.tierno.applicationamani.domain.models.enumm

/**
 * Define los temas visuales disponibles para la interfaz de usuario de la aplicación.
 *
 * @property LIGHT Tema claro con fondo blanco y texto oscuro.
 * @property DARK Tema oscuro con fondo negro y texto claro.
 * @property SYSTEM El tema sigue la configuración del sistema operativo del dispositivo.
 */
enum class TemaApp {
    LIGHT,
    DARK,
    SYSTEM,
}
