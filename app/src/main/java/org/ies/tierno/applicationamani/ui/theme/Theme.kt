package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.ReadOnlyComposable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.koin.java.KoinJavaComponent

// ── Material 3 ColorScheme: Light ──────────────────────────────────

val AmaniLightColorScheme =
    lightColorScheme(
        primary = LightPrimary,
        onPrimary = LightOnPrimary,
        primaryContainer = LightPrimaryContainer,
        onPrimaryContainer = LightOnPrimaryContainer,
        inversePrimary = LightInversePrimary,
        secondary = LightSecondary,
        onSecondary = LightOnSecondary,
        secondaryContainer = LightSecondaryContainer,
        onSecondaryContainer = LightOnSecondaryContainer,
        tertiary = LightTertiary,
        onTertiary = LightOnTertiary,
        tertiaryContainer = LightTertiaryContainer,
        onTertiaryContainer = LightOnTertiaryContainer,
        error = LightError,
        onError = LightOnError,
        errorContainer = LightErrorContainer,
        onErrorContainer = LightOnErrorContainer,
        background = LightBackground,
        onBackground = LightOnBackground,
        surface = LightSurface,
        onSurface = LightOnSurface,
        surfaceVariant = LightSurfaceVariant,
        onSurfaceVariant = LightOnSurfaceVariant,
        surfaceTint = LightSurfaceTint,
        inverseSurface = LightInverseSurface,
        inverseOnSurface = LightInverseOnSurface,
        outline = LightOutline,
        outlineVariant = LightOutlineVariant,
        scrim = LightScrim,
        surfaceBright = LightSurfaceBright,
        surfaceDim = LightSurfaceDim,
        surfaceContainer = LightSurfaceContainer,
        surfaceContainerHigh = LightSurfaceContainerHigh,
        surfaceContainerHighest = LightSurfaceContainerHighest,
        surfaceContainerLow = LightSurfaceContainerLow,
        surfaceContainerLowest = LightSurfaceContainerLowest,
    )

// ── Material 3 ColorScheme: Dark ───────────────────────────────────

val AmaniDarkColorScheme =
    darkColorScheme(
        primary = DarkPrimary,
        onPrimary = DarkOnPrimary,
        primaryContainer = DarkPrimaryContainer,
        onPrimaryContainer = DarkOnPrimaryContainer,
        inversePrimary = DarkInversePrimary,
        secondary = DarkSecondary,
        onSecondary = DarkOnSecondary,
        secondaryContainer = DarkSecondaryContainer,
        onSecondaryContainer = DarkOnSecondaryContainer,
        tertiary = DarkTertiary,
        onTertiary = DarkOnTertiary,
        tertiaryContainer = DarkTertiaryContainer,
        onTertiaryContainer = DarkOnTertiaryContainer,
        error = DarkError,
        onError = DarkOnError,
        errorContainer = DarkErrorContainer,
        onErrorContainer = DarkOnErrorContainer,
        background = DarkBackground,
        onBackground = DarkOnBackground,
        surface = DarkSurface,
        onSurface = DarkOnSurface,
        surfaceVariant = DarkSurfaceVariant,
        onSurfaceVariant = DarkOnSurfaceVariant,
        surfaceTint = DarkSurfaceTint,
        inverseSurface = DarkInverseSurface,
        inverseOnSurface = DarkInverseOnSurface,
        outline = DarkOutline,
        outlineVariant = DarkOutlineVariant,
        scrim = DarkScrim,
        surfaceBright = DarkSurfaceBright,
        surfaceDim = DarkSurfaceDim,
        surfaceContainer = DarkSurfaceContainer,
        surfaceContainerHigh = DarkSurfaceContainerHigh,
        surfaceContainerHighest = DarkSurfaceContainerHighest,
        surfaceContainerLow = DarkSurfaceContainerLow,
        surfaceContainerLowest = DarkSurfaceContainerLowest,
    )

// ── Tokens semánticos extendidos de Amani ──────────────────────────

@Immutable
data class AmaniExtraColors(
    val isDark: Boolean = false,
    val success: Color = LightSuccess,
    val onSuccess: Color = LightOnSuccess,
    val successContainer: Color = LightSuccessContainer,
    val onSuccessContainer: Color = LightOnSuccessContainer,
    val warning: Color = LightWarning,
    val onWarning: Color = LightOnWarning,
    val warningContainer: Color = LightWarningContainer,
    val onWarningContainer: Color = LightOnWarningContainer,
    val screenBackground: Color = LightBackground,
    val textFieldContainer: Color = LightSurfaceContainerLowest,
    val buttonBorder: Color = LightOutline,
    val cardBackground: Color = LightSurfaceContainerLowest,
    val cardContent: Color = LightOnSurface,
    val cardBorder: Color = LightOutlineVariant,
    val citaLibre: Color = LightSuccess,
    val citaLibreBg: Color = LightSuccessContainer,
    val citaOcupada: Color = LightError,
    val citaOcupadaBg: Color = LightErrorContainer,
    val citaConfirmada: Color = LightSuccess,
    val citaConfirmadaBg: Color = LightSuccessContainer,
    val citaPendiente: Color = LightWarning,
    val citaPendienteBg: Color = LightWarningContainer,
    val citaCancelada: Color = LightError,
    val citaCanceladaBg: Color = LightErrorContainer,
    val calendarioBg: Color = LightSurfaceContainerLow,
)

private val LightExtraColors =
    AmaniExtraColors(
        isDark = false,
        success = LightSuccess,
        onSuccess = LightOnSuccess,
        successContainer = LightSuccessContainer,
        onSuccessContainer = LightOnSuccessContainer,
        warning = LightWarning,
        onWarning = LightOnWarning,
        warningContainer = LightWarningContainer,
        onWarningContainer = LightOnWarningContainer,
        screenBackground = LightBackground,
        textFieldContainer = LightSurfaceContainerLowest,
        buttonBorder = LightOutline,
        cardBackground = LightSurfaceContainerLowest,
        cardContent = LightOnSurface,
        cardBorder = LightOutlineVariant,
        citaLibre = LightSuccess,
        citaLibreBg = LightSuccessContainer,
        citaOcupada = LightError,
        citaOcupadaBg = LightErrorContainer,
        citaConfirmada = LightSuccess,
        citaConfirmadaBg = LightSuccessContainer,
        citaPendiente = LightWarning,
        citaPendienteBg = LightWarningContainer,
        citaCancelada = LightError,
        citaCanceladaBg = LightErrorContainer,
        calendarioBg = LightSurfaceContainerLow,
    )

private val DarkExtraColors =
    AmaniExtraColors(
        isDark = true,
        success = DarkSuccess,
        onSuccess = DarkOnSuccess,
        successContainer = DarkSuccessContainer,
        onSuccessContainer = DarkOnSuccessContainer,
        warning = DarkWarning,
        onWarning = DarkOnWarning,
        warningContainer = DarkWarningContainer,
        onWarningContainer = DarkOnWarningContainer,
        screenBackground = DarkBackground,
        textFieldContainer = DarkSurfaceContainerHigh,
        buttonBorder = DarkOutline,
        cardBackground = DarkSurfaceContainerLow,
        cardContent = DarkOnSurface,
        cardBorder = DarkOutlineVariant,
        citaLibre = DarkSuccess,
        citaLibreBg = DarkSuccessContainer,
        citaOcupada = DarkError,
        citaOcupadaBg = DarkErrorContainer,
        citaConfirmada = DarkSuccess,
        citaConfirmadaBg = DarkSuccessContainer,
        citaPendiente = DarkWarning,
        citaPendienteBg = DarkWarningContainer,
        citaCancelada = DarkError,
        citaCanceladaBg = DarkErrorContainer,
        calendarioBg = DarkSurfaceContainer,
    )

val LocalAmaniColors = staticCompositionLocalOf { LightExtraColors }

/**
 * Acceso tipado a los tokens extendidos del sistema de diseño de Amani.
 */
object AmaniTheme {
    val colors: AmaniExtraColors
        @Composable
        @ReadOnlyComposable
        get() = LocalAmaniColors.current
}

// ── Punto de entrada único del tema: AppTheme ──────────────────────

/**
 * Punto de entrada único del sistema de diseño de Amani basado en Material Design 3.
 *
 * Envuelve [MaterialTheme] proporcionando `colorScheme`, `typography`, `shapes` y
 * los tokens semánticos extendidos ([LocalAmaniColors]).
 * Dynamic color está desactivado por decisión de diseño (DEC-02) para preservar la
 * identidad de marca de Amani y garantizar el contraste WCAG 2.1 AA en todos los pares.
 *
 * @param darkTheme Define si se utiliza el esquema oscuro. En modo preview usa directamente
 *   este parámetro; en ejecución respeta la preferencia guardada en sesión si existe.
 * @param content Contenido composable de la interfaz.
 */
@Composable
fun AppTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit,
) {
    val isInPreview = LocalInspectionMode.current
    val context = LocalContext.current

    val effectiveDarkTheme =
        if (isInPreview) {
            darkTheme
        } else {
            val store =
                try {
                    KoinJavaComponent.getKoin().get<UserSessionDataStore>()
                } catch (_: Exception) {
                    UserSessionDataStore(context)
                }
            val session by store.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
            when (session?.tema) {
                true -> true
                false -> false
                else -> darkTheme
            }
        }

    val colorScheme = if (effectiveDarkTheme) AmaniDarkColorScheme else AmaniLightColorScheme
    val extraColors = if (effectiveDarkTheme) DarkExtraColors else LightExtraColors

    CompositionLocalProvider(
        LocalAmaniColors provides extraColors,
    ) {
        MaterialTheme(
            colorScheme = colorScheme,
            typography = Typography,
            shapes = AmaniShapes,
            content = content,
        )
    }
}

/**
 * Alias de compatibilidad que delega en [AppTheme].
 */
@Composable
fun ApplicationAmaniTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    dynamicColor: Boolean = false,
    content: @Composable () -> Unit,
) {
    AppTheme(
        darkTheme = darkTheme,
        content = content,
    )
}

// ── Helpers de tema ────────────────────────────────────────────────

@Composable
@ReadOnlyComposable
fun isDarkTheme(): Boolean = LocalAmaniColors.current.isDark

@Composable
@ReadOnlyComposable
fun getCardColors(): CardColors {
    val amaniColors = LocalAmaniColors.current
    return CardColors(
        cardBackground = amaniColors.cardBackground,
        cardContent = amaniColors.cardContent,
        cardBorder = amaniColors.cardBorder,
    )
}

@Immutable
data class CardColors(
    val cardBackground: Color,
    val cardContent: Color,
    val cardBorder: Color,
)

@Composable
@ReadOnlyComposable
fun getScreenColors(): ScreenColors {
    val amaniColors = LocalAmaniColors.current
    val materialColors = MaterialTheme.colorScheme

    return ScreenColors(
        background = amaniColors.screenBackground,
        surface = materialColors.surface,
        onSurface = materialColors.onSurface,
        primary = materialColors.primary,
        onPrimary = materialColors.onPrimary,
    )
}

@Immutable
data class ScreenColors(
    val background: Color,
    val surface: Color,
    val onSurface: Color,
    val primary: Color,
    val onPrimary: Color,
)
