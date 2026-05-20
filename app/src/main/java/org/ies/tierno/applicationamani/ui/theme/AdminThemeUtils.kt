package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

/**
 * @deprecated Usar [getCardColors] y [getScreenColors] en su lugar
 * Este objeto se mantiene por compatibilidad pero delega en las nuevas funciones
 */
@Composable
fun rememberAdminThemeTokens(): AdminThemeTokens {
    val cardColors = getCardColors()
    val screenColors = getScreenColors()

    return AdminThemeTokens(
        primary = screenColors.primary,
        onPrimary = screenColors.onPrimary,
        cardBackground = cardColors.cardBackground,
        cardContent = cardColors.cardContent,
        screenBackground = screenColors.background,
    )
}

data class AdminThemeTokens(
    val primary: Color,
    val onPrimary: Color,
    val cardBackground: Color,
    val cardContent: Color,
    val screenBackground: Color,
)
