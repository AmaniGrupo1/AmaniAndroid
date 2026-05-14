// M3: Complete Material 3 theme with surfaceContainer tokens + dynamic color support
package org.ies.tierno.applicationamani.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
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
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.koin.java.KoinJavaComponent

// ── Material 3 color scheme: light ─────────────────────────────────

private val LightColorScheme = lightColorScheme(
    primary = AmaniPurple,
    onPrimary = AmaniBlack,
    primaryContainer = AmaniPurple,
    onPrimaryContainer = AmaniBlack,
    secondary = AmaniPurpleDark,
    onSecondary = AmaniWhite,
    tertiary = AmaniFuchsia,
    onTertiary = AmaniOnFuchsia,
    tertiaryContainer = AmaniFuchsiaContainer,
    onTertiaryContainer = AmaniOnFuchsiaContainer,
    error = AmaniError,
    onError = AmaniOnError,
    errorContainer = AmaniErrorContainer,
    onErrorContainer = AmaniOnErrorContainer,
    background = AmaniSurface,
    onBackground = AmaniOnSurface,
    surface = AmaniSurface,
    onSurface = AmaniOnSurface,
    surfaceVariant = AmaniWhite,
    surfaceContainerLowest = Color(0xFFFFFFFF),
    surfaceContainerLow = Color(0xFFF7F2FA),
    surfaceContainer = Color(0xFFF3EDF7),
    surfaceContainerHigh = Color(0xFFEDE8F2),
    surfaceContainerHighest = Color(0xFFE7E2EC),
    outline = AmaniBlack,
    outlineVariant = AmaniBlack.copy(alpha = 0.38f),
    surfaceTint = AmaniSurfaceTint,
)

// ── Material 3 color scheme: dark ──────────────────────────────────

private val DarkColorScheme = darkColorScheme(
    primary = AmaniPurpleDark,
    onPrimary = AmaniWhite,
    primaryContainer = AmaniPurpleDark,
    onPrimaryContainer = AmaniWhite,
    secondary = AmaniPurple,
    onSecondary = AmaniBlack,
    tertiary = AmaniFuchsiaContainer,
    onTertiary = AmaniOnFuchsiaContainer,
    tertiaryContainer = AmaniFuchsia,
    onTertiaryContainer = AmaniOnFuchsia,
    error = AmaniErrorContainer,
    onError = AmaniOnErrorContainer,
    errorContainer = AmaniError,
    onErrorContainer = AmaniOnError,
    background = AmaniBlack,
    onBackground = AmaniWhite,
    surface = AmaniBlack,
    onSurface = AmaniWhite,
    surfaceVariant = Color(0xFF49454F),
    surfaceContainerLowest = Color(0xFF0E0E12),
    surfaceContainerLow = Color(0xFF1A1A1F),
    surfaceContainer = Color(0xFF1E1E23),
    surfaceContainerHigh = Color(0xFF29282E),
    surfaceContainerHighest = Color(0xFF343339),
    outline = AmaniWhite,
    outlineVariant = AmaniWhite.copy(alpha = 0.38f),
    surfaceTint = AmaniSurfaceTint,
)

// ── Amani extra colors ─────────────────────────────────────────────

@Immutable
data class AmaniExtraColors(
    val screenBackground: Color = AmaniBackground,
    val textFieldContainer: Color = AmaniWhite,
    val buttonBorder: Color = AmaniBlack,
    val cardBackground: Color = AmaniWhite,
    val cardContent: Color = AmaniOnSurface,
    val cardBorder: Color = AmaniBlack,
    val citaLibre: Color = AmaniCitaLibre,
    val citaLibreBg: Color = AmaniCalendarioBg,
    val citaOcupada: Color = AmaniCitaOcupada,
    val citaOcupadaBg: Color = AmaniCitaOcupadaBg,
    val citaConfirmada: Color = AmaniCitaConfirmada,
    val citaConfirmadaBg: Color = AmaniCalendarioBg,
    val citaPendiente: Color = AmaniCitaPendiente,
    val citaPendienteBg: Color = AmaniCalendarioBg,
    val citaCancelada: Color = AmaniCitaCancelada,
    val citaCanceladaBg: Color = AmaniCitaOcupadaBg,
    val calendarioBg: Color = AmaniCalendarioBg,
)

val LocalAmaniColors = staticCompositionLocalOf { AmaniExtraColors() }

// ── Material 3 shapes ──────────────────────────────────────────────
// M3: ShapeDefaults values per spec: xs=4, sm=8, md=12, lg=16, xl=28

private val AmaniShapes = Shapes(
    extraSmall = RoundedCornerShape(4.dp),
    small = RoundedCornerShape(8.dp),
    medium = RoundedCornerShape(12.dp),
    large = RoundedCornerShape(16.dp),
    extraLarge = RoundedCornerShape(28.dp),
)

// ── Theme composable ───────────────────────────────────────────────

/**
 * Tema principal de la aplicación Amani.
 *
 * Soporta Material 3 dynamic color en Android 12+ y permite al usuario
 * seleccionar un tema fijo (LIGHT, DARK) o SYSTEM a través de [TemaApp].
 *
 * @param darkTheme Define si se usa tema oscuro cuando [TemaApp] es SYSTEM o null.
 * @param dynamicColor Habilita colores dinámicos en Android 12+ cuando [TemaApp] es SYSTEM o null.
 * @param content Contenido de la UI.
 */
@Composable
fun ApplicationAmaniTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    dynamicColor: Boolean = true,
    content: @Composable () -> Unit
) {
    val context = LocalContext.current

    // Leer preferencia de tema desde la sesión
    val store = try {
        KoinJavaComponent.getKoin().get<UserSessionDataStore>()
    } catch (e: Exception) {
        UserSessionDataStore(context)
    }
    val session by store.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    // TemaApp del usuario tiene prioridad sobre darkTheme del sistema
    val effectiveDarkTheme = when (session?.tema) {
        TemaApp.DARK  -> true
        TemaApp.LIGHT -> false
        else          -> darkTheme  // SYSTEM o null: respetar tema del sistema
    }

    // Dynamic color solo cuando el usuario no ha fijado LIGHT o DARK
    val useDynamicColor = dynamicColor
            && (session?.tema == null || session?.tema == TemaApp.SYSTEM)

    val colorScheme = when {
        useDynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            if (effectiveDarkTheme) dynamicDarkColorScheme(context)
            else dynamicLightColorScheme(context)
        }
        effectiveDarkTheme -> DarkColorScheme
        else               -> LightColorScheme
    }

    // Derivar colores extra desde el esquema activo
    val extraColors = if (effectiveDarkTheme) {
        AmaniExtraColors(
            screenBackground = colorScheme.background,
            textFieldContainer = colorScheme.surfaceVariant,
            buttonBorder = colorScheme.outline,
            cardBackground = colorScheme.surface,
            cardContent = colorScheme.onSurface,
            cardBorder = colorScheme.outline,
            citaLibre = colorScheme.primary,
            citaLibreBg = colorScheme.primaryContainer,
            citaOcupada = colorScheme.tertiary,
            citaOcupadaBg = colorScheme.tertiaryContainer,
            citaConfirmada = colorScheme.secondary,
            citaConfirmadaBg = colorScheme.secondaryContainer,
            citaPendiente = colorScheme.secondaryContainer,
            citaPendienteBg = colorScheme.secondaryContainer,
            citaCancelada = colorScheme.error,
            citaCanceladaBg = colorScheme.errorContainer,
            calendarioBg = colorScheme.surfaceVariant,
        )
    } else {
        AmaniExtraColors(
            screenBackground = AmaniBackground,
            textFieldContainer = AmaniWhite,
            buttonBorder = AmaniBlack,
            cardBackground = AmaniWhite,
            cardContent = AmaniOnSurface,
            cardBorder = AmaniBlack,
            citaLibre = colorScheme.primary,
            citaLibreBg = colorScheme.primaryContainer,
            citaOcupada = colorScheme.tertiary,
            citaOcupadaBg = colorScheme.tertiaryContainer,
            citaConfirmada = colorScheme.secondary,
            citaConfirmadaBg = colorScheme.secondaryContainer,
            citaPendiente = colorScheme.secondaryContainer,
            citaPendienteBg = colorScheme.secondaryContainer,
            citaCancelada = colorScheme.error,
            citaCanceladaBg = colorScheme.errorContainer,
            calendarioBg = colorScheme.surfaceVariant,
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
fun isDarkTheme(): Boolean {
    val background = MaterialTheme.colorScheme.background
    // En Amani, el fondo oscuro es AmaniBlack (0xFF1C1B1F) o Color.Black
    return background == AmaniBlack || background == Color(0xFF1C1B1F) || background == Color.Black
}

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
