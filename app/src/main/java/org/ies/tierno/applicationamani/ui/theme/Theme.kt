package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.ReadOnlyComposable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.koin.java.KoinJavaComponent

// ── Material 3 color schemes ──────────────────────────────────

private val LightColorScheme = lightColorScheme(
    primary = AmaniPurple,
    onPrimary = AmaniBlack,
    primaryContainer = AmaniPurple,
    onPrimaryContainer = AmaniBlack,
    secondary = AmaniPurpleDark,
    onSecondary = AmaniWhite,
    background = AmaniSurface,
    onBackground = AmaniOnSurface,
    surface = AmaniSurface,
    onSurface = AmaniOnSurface,
    surfaceVariant = AmaniWhite,
    outline = AmaniBlack,
)

private val DarkColorScheme = darkColorScheme(
    primary = Color.White,
    onPrimary = Color.Black,
    primaryContainer = Color.DarkGray,
    onPrimaryContainer = Color.White,
    secondary = Color.Gray,
    onSecondary = Color.White,
    background = Color.Black,
    onBackground = Color.White,
    surface = Color.Black,
    onSurface = Color.White,
    surfaceVariant = Color.DarkGray,
    outline = Color.White,
)

// ── Colores extra de Amani ────────────────────────────────────

@Immutable
data class AmaniExtraColors(
    val screenBackground: Color,
    val textFieldContainer: Color,
    val buttonBorder: Color,
    val cardBackground: Color,
    val cardContent: Color,
    val cardBorder: Color,
    val citaLibre: Color = AmaniCitaLibre,
    val citaOcupada: Color = AmaniCitaOcupada,
    val citaOcupadaBg: Color = AmaniCitaOcupadaBg,
    val citaConfirmada: Color = AmaniCitaConfirmada,
    val citaPendiente: Color = AmaniCitaPendiente,
    val citaCancelada: Color = AmaniCitaCancelada,
    val calendarioBg: Color = AmaniCalendarioBg,
)

val LocalAmaniColors = staticCompositionLocalOf {
    AmaniExtraColors(
        screenBackground = AmaniBackground,
        textFieldContainer = AmaniWhite,
        buttonBorder = AmaniBlack,
        cardBackground = AmaniWhite,
        cardContent = AmaniOnSurface,
        cardBorder = AmaniBlack,
    )
}

private val AmaniShapes = Shapes(
    small = RoundedCornerShape(0.dp),
    medium = RoundedCornerShape(0.dp),
    large = RoundedCornerShape(0.dp),
)

/**
 * Tema principal de la aplicación Amani.
 * @param darkThemeOverride true para tema oscuro (negro/blanco), false para tema claro (colores originales)
 *   Si es null, se lee automáticamente de la sesión.
 */
@Composable
fun ApplicationAmaniTheme(
    darkThemeOverride: Boolean? = null,
    content: @Composable () -> Unit
) {
    val context = LocalContext.current

    val darkTheme = if (darkThemeOverride != null) {
        darkThemeOverride
    } else {
        val store = try {
            KoinJavaComponent.getKoin().get<UserSessionDataStore>()
        } catch (e: Exception) {
            UserSessionDataStore(context)
        }
        val session by store.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

        // ✅ CORREGIDO: session?.tema ahora es Boolean
        // false = claro/defecto, true = oscuro
        when (session?.tema) {
            true -> true   // Negro/Oscuro
            false -> false // Blanco/Claro
            else -> false  // Defecto/SYSTEM -> colores originales (claro)
        }
    }

    val colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme

    val extraColors = if (darkTheme) {
        // Modo OSCURO: solo negro y blanco
        AmaniExtraColors(
            screenBackground = Color.Black,
            textFieldContainer = Color.DarkGray,
            buttonBorder = Color.White,
            cardBackground = Color.Black,
            cardContent = Color.White,
            cardBorder = Color.White,
        )
    } else {
        // Modo CLARO/DEFECTO: colores originales de Amani
        AmaniExtraColors(
            screenBackground = AmaniBackground,
            textFieldContainer = AmaniWhite,
            buttonBorder = AmaniBlack,
            cardBackground = AmaniWhite,
            cardContent = AmaniOnSurface,
            cardBorder = AmaniBlack,
        )
    }

    androidx.compose.runtime.CompositionLocalProvider(
        LocalAmaniColors provides extraColors
    ) {
        MaterialTheme(
            colorScheme = colorScheme,
            typography = Typography,
            shapes = AmaniShapes,
            content = content
        )
    }
}

// ── Helpers para consumir colores ─────────────────────────────

@Composable
@ReadOnlyComposable
fun isDarkTheme(): Boolean = MaterialTheme.colorScheme.background == Color.Black

@Composable
fun getCardColors(): CardColors {
    val amaniColors = LocalAmaniColors.current
    return CardColors(
        cardBackground = amaniColors.cardBackground,
        cardContent = amaniColors.cardContent,
        cardBorder = amaniColors.cardBorder
    )
}

data class CardColors(
    val cardBackground: Color,
    val cardContent: Color,
    val cardBorder: Color
)

@Composable
fun getScreenColors(): ScreenColors {
    val amaniColors = LocalAmaniColors.current
    val materialColors = MaterialTheme.colorScheme

    return ScreenColors(
        background = amaniColors.screenBackground,
        surface = materialColors.surface,
        onSurface = materialColors.onSurface,
        primary = materialColors.primary,
        onPrimary = materialColors.onPrimary
    )
}

data class ScreenColors(
    val background: Color,
    val surface: Color,
    val onSurface: Color,
    val primary: Color,
    val onPrimary: Color
)