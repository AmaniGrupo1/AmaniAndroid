package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

/**
 * Tokens de tema para vistas de administración basados en [MaterialTheme.colorScheme].
 */
@Composable
fun rememberAdminThemeTokens(): AdminThemeTokens {
    val colorScheme = MaterialTheme.colorScheme

    return AdminThemeTokens(
        primary = colorScheme.primary,
        onPrimary = colorScheme.onPrimary,
        cardBackground = colorScheme.surfaceContainerLow,
        cardContent = colorScheme.onSurface,
        screenBackground = colorScheme.background,
    )
}

data class AdminThemeTokens(
    val primary: Color,
    val onPrimary: Color,
    val cardBackground: Color,
    val cardContent: Color,
    val screenBackground: Color,
)
