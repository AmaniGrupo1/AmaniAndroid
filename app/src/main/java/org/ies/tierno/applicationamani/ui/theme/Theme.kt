/**
 * Configuración del tema visual de la aplicación Amani.
 *
 * Incluye los esquemas de color claro y oscuro de Material 3, los colores
 * extra propios de Amani expuestos mediante [LocalAmaniColors], y la
 * función composable [ApplicationAmaniTheme] que envuelve toda la interfaz.
 *
 * @see Color
 * @see Type
 */
package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color

// ── Material 3 color schemes ──────────────────────────────────
/**
 * Esquema de colores para el modo claro.
 *
 * Mapea los tokens de [Color.kt] a los slots de Material 3 (primary,
 * onPrimary, background, surface, etc.).
 */
private val LightColorScheme = lightColorScheme(
    primary            = AmaniPurple,
    onPrimary          = AmaniBlack,
    primaryContainer   = AmaniPurple,
    onPrimaryContainer = AmaniBlack,
    secondary          = AmaniPurpleDark,
    onSecondary        = AmaniWhite,
    background         = AmaniSurface,
    onBackground       = AmaniOnSurface,
    surface            = AmaniSurface,
    onSurface          = AmaniOnSurface,
    surfaceVariant     = AmaniWhite,
    outline            = AmaniBlack,
)

/**
 * Esquema de colores para el modo oscuro.
 *
 * Intercambia las variantes claras y oscuras de la paleta para
 * garantizar contraste adecuado sobre fondos oscuros.
 */
private val DarkColorScheme = darkColorScheme(
    primary            = AmaniPurpleDark,
    onPrimary          = AmaniWhite,
    primaryContainer   = AmaniPurpleDark,
    onPrimaryContainer = AmaniWhite,
    secondary          = AmaniPurple,
    onSecondary        = AmaniBlack,
    background         = Color(0xFF1C1B1F),
    onBackground       = AmaniWhite,
    surface            = Color(0xFF1C1B1F),
    onSurface          = AmaniWhite,
    surfaceVariant     = Color(0xFF49454F),
    outline            = AmaniWhite,
)

// ── Colores extra de Amani (no cubiertos por Material 3) ──────
/**
 * Colores adicionales de Amani que no están cubiertos por los slots de Material 3.
 *
 * Se proporcionan a través de [LocalAmaniColors] y se consumen desde
 * cualquier composable con `LocalAmaniColors.current`.
 *
 * @property screenBackground Color de fondo para pantallas de autenticación.
 * @property textFieldContainer Color del contenedor de los campos de texto.
 * @property buttonBorder Color del borde de los botones con contorno.
 */
@Immutable
data class AmaniExtraColors(
    val screenBackground: Color = AmaniBackground,
    val textFieldContainer: Color = AmaniWhite,
    val buttonBorder: Color = AmaniBlack,
    val citaLibre: Color = AmaniCitaLibre,
    val citaOcupada: Color = AmaniCitaOcupada,
    val citaOcupadaBg: Color = AmaniCitaOcupadaBg,
)

/**
 * [CompositionLocal] que provee una instancia de [AmaniExtraColors].
 *
 * Permite a cualquier composable descendiente acceder a los colores
 * extra de la app sin necesidad de pasarlos como parámetros.
 */
val LocalAmaniColors = staticCompositionLocalOf { AmaniExtraColors() }

/**
 * Tema principal de la aplicación Amani.
 *
 * Configura [MaterialTheme] con el esquema de color adecuado según la
 * preferencia de tema del sistema y provee [AmaniExtraColors] mediante
 * [CompositionLocalProvider].
 *
 * Debe envolver todo el contenido de la app (normalmente en `setContent`).
 *
 * @param darkTheme Indica si se debe usar el tema oscuro. Por defecto
 *   sigue la configuración del sistema.
 * @param content Contenido composable que se renderizará dentro del tema.
 */
@Composable
fun ApplicationAmaniTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme

    androidx.compose.runtime.CompositionLocalProvider(
        LocalAmaniColors provides AmaniExtraColors()
    ) {
        MaterialTheme(
            colorScheme = colorScheme,
            typography = Typography,
            content = content
        )
    }
}