package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.ui.unit.dp

/**
 * Escala única de espaciado del sistema de diseño de Amani (rejilla base de 4.dp / 8.dp).
 *
 * Sustituye todos los valores mágicos de padding, arrangement y Spacer en las pantallas.
 */
object Spacing {
    /** 0.dp — sin espaciado. */
    val none = 0.dp

    /** 2.dp — micro-ajuste entre elementos densos (ej. indicador e icono inline). */
    val xxs = 2.dp

    /** 4.dp — separación mínima entre texto secundario, etiquetas o badges. */
    val xs = 4.dp

    /** 8.dp — separación estándar entre elementos relacionados dentro de un mismo grupo. */
    val s = 8.dp

    /** 12.dp — espaciado intermedio para paddings internos de tarjetas compactas y filas. */
    val sm = 12.dp
    val sMedium = sm

    /** 16.dp — margen horizontal de pantalla y padding interno estándar de tarjetas. */
    val m = 16.dp

    /** 24.dp — separación entre secciones de una misma pantalla o padding de diálogo. */
    val l = 24.dp

    /** 32.dp — separación amplia entre bloques principales. */
    val xl = 32.dp

    /** 48.dp — tamaño mínimo de objetivo táctil accesible (WCAG / Android Accessibility). */
    val xxl = 48.dp
}

/**
 * Escala de elevación tonal de Material 3.
 */
object Elevation {
    val level0 = 0.dp
    val level1 = 1.dp
    val level2 = 3.dp
    val level3 = 6.dp
    val level4 = 8.dp
    val level5 = 12.dp
}

/**
 * Tamaños normalizados de icono y avatar en la UI de Amani.
 */
object Dimensions {
    val borderThin = 1.dp
    val dividerThickness = borderThin
    val borderMedium = 2.dp
    val progressStroke = 3.dp
    val dotIndicator = 8.dp
    val iconSmall = 16.dp
    val iconButton = 18.dp
    val iconMedium = 20.dp
    val iconDefault = 24.dp
    val iconLarge = 32.dp
    val iconExtraLarge = 48.dp
    val iconHero = 64.dp
    val touchTarget = 48.dp
    val minTouchTarget = touchTarget
    val buttonHeight = 48.dp
    val buttonHeightLarge = 56.dp
    val avatarSmall = 36.dp
    val avatarMedium = 48.dp
    val avatarLarge = 72.dp
    val avatarProfile = 96.dp
    val avatarHero = 120.dp
    val logoHero = 140.dp
    val bannerHeight = 200.dp
    val gameCardSize = 200.dp
    val wheelSize = 300.dp
    val pagerHeightCompact = 320.dp
    val pagerHeightExpanded = 520.dp
    val dropdownMaxHeight = 400.dp
    val dialogMaxHeight = 550.dp
    val maxContentWidth = 600.dp
    val colorStripWidth = 6.dp
    val bottomContentSpacer = 80.dp
}

