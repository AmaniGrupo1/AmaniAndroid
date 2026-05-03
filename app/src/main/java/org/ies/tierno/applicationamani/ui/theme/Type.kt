/**
 * Sistema tipográfico centralizado de la aplicación Amani.
 *
 * Define las tres familias tipográficas de la marca ([Roboto], [Nunito] y
 * [BarlowCondensed]) y las mapea a los slots semánticos de [Typography]
 * de Material 3. Las pantallas deben consumir estos estilos mediante
 * `MaterialTheme.typography` en lugar de crear [FontFamily] locales.
 *
 * ### Tabla de correspondencia
 * | Slot              | Fuente           | Uso típico                          |
 * |-------------------|------------------|-------------------------------------|
 * | `displayLarge`    | Nunito 50 sp     | Título de marca ("AMANI")           |
 * | `headlineMedium`  | BarlowCondensed  | Encabezados de pantalla             |
 * | `headlineSmall`   | Roboto 25 sp     | Instrucciones grandes (cuestionario)|
 * | `titleLarge`      | Nunito 25 sp     | Títulos de sección                  |
 * | `titleMedium`     | Roboto 20 sp     | Subtítulos y texto destacado        |
 * | `bodyLarge`       | Roboto 16 sp     | Cuerpo principal                    |
 * | `bodyMedium`      | Roboto 14 sp     | Cuerpo secundario                   |
 * | `labelLarge`      | Roboto Bold 16sp | Botones y elementos de menú         |
 *
 * @see ApplicationAmaniTheme
 */
package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import org.ies.tierno.applicationamani.R

// ── Familias tipográficas de Amani ────────────────────────────
/** Familia tipográfica Roboto — fuente principal para cuerpo y botones. */
val Roboto = FontFamily(
    Font(R.font.roboto_variablefont_wdth_wght)
)

/** Familia tipográfica Nunito — fuente decorativa para títulos de marca. */
val Nunito = FontFamily(
    Font(R.font.nunito_variablefont_wght)
)

/** Familia tipográfica Barlow Condensed — fuente para encabezados de pantalla. */
val BarlowCondensed = FontFamily(
    Font(R.font.barlow_condensed_black)
)

// ── Typography de Material 3 ──────────────────────────────────
/**
 * Configuración de tipografía de Material 3 para Amani.
 *
 * Cada slot se vincula a la familia tipográfica y tamaño adecuados
 * según la guía de diseño de la aplicación.
 */
val Typography = Typography(

    // Nunito – títulos grandes de marca ("AMANI")
    displayLarge = TextStyle(
        fontFamily = Nunito,
        fontWeight = FontWeight.Normal,
        fontSize = 57.sp,
        lineHeight = 64.sp,
        letterSpacing = (-0.25).sp,
    ),

    // Barlow Condensed – encabezados de pantalla ("Crear cuenta")
    headlineMedium = TextStyle(
        fontFamily = BarlowCondensed,
        fontWeight = FontWeight.Normal,
        fontSize = 30.sp,
        lineHeight = 36.sp,
    ),

    // Roboto – instrucciones grandes (cuestionario)
    headlineSmall = TextStyle(
        fontFamily = Roboto,
        fontWeight = FontWeight.Normal,
        fontSize = 25.sp,
        lineHeight = 32.sp,
    ),

    // Nunito – títulos de sección (nombre de psicólogo, etc.)
    titleLarge = TextStyle(
        fontFamily = Nunito,
        fontWeight = FontWeight.Normal,
        fontSize = 25.sp,
        lineHeight = 32.sp,
    ),

    // Roboto – subtítulos / texto destacado (biografía, preguntas)
    titleMedium = TextStyle(
        fontFamily = Roboto,
        fontWeight = FontWeight.Medium,
        fontSize = 16.sp,
        lineHeight = 24.sp,
        letterSpacing = 0.15.sp,
    ),

    // Roboto – cuerpo principal (descripciones, párrafos)
    bodyLarge = TextStyle(
        fontFamily = Roboto,
        fontWeight = FontWeight.Normal,
        fontSize = 16.sp,
        lineHeight = 26.sp,
        letterSpacing = 0.5.sp,
    ),

    // Roboto – cuerpo secundario
    bodyMedium = TextStyle(
        fontFamily = Roboto,
        fontWeight = FontWeight.Normal,
        fontSize = 14.sp,
        lineHeight = 20.sp,
        letterSpacing = 0.25.sp,
    ),

    // Roboto – botones y elementos de menú
    labelLarge = TextStyle(
        fontFamily = Roboto,
        fontWeight = FontWeight.Bold,
        fontSize = 16.sp,
        lineHeight = 20.sp,
    ),
)