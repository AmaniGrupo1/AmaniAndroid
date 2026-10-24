package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Shapes
import androidx.compose.ui.unit.dp

/**
 * Escala de formas de Material Design 3 para Amani.
 *
 * - `extraSmall` (4.dp): indicadores pequeños, etiquetas compactas, barras de progreso.
 * - `small` (8.dp): chips, campos de texto compactos, badges de estado.
 * - `medium` (12.dp): tarjetas estándar (`Card`, `OutlinedCard`), campos de formulario, botones secundarios.
 * - `large` (16.dp): tarjetas destacadas (`ElevatedCard`), hojas modales, contenedores de sección.
 * - `extraLarge` (28.dp): diálogos, bottom sheets, contenedores de pantalla completa.
 */
val AmaniShapes =
    Shapes(
        extraSmall = RoundedCornerShape(4.dp),
        small = RoundedCornerShape(8.dp),
        medium = RoundedCornerShape(12.dp),
        large = RoundedCornerShape(16.dp),
        extraLarge = RoundedCornerShape(28.dp),
    )
