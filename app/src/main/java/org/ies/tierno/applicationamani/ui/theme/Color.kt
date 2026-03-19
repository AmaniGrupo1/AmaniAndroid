/**
 * Definición de la paleta de colores personalizada de la aplicación Amani.
 *
 * Contiene todos los tokens de color utilizados en los esquemas de color
 * claro y oscuro de Material 3, así como en los colores extra de la app.
 * Ninguna pantalla debe declarar colores directamente; en su lugar, debe
 * consumirlos a través de [MaterialTheme.colorScheme] o [LocalAmaniColors].
 *
 * @see org.ies.tierno.applicationamani.ui.theme.Theme
 */
package org.ies.tierno.applicationamani.ui.theme

import androidx.compose.ui.graphics.Color

// ── Paleta principal de Amani ──────────────────────────────────

/** Color marca principal de Amani (lila claro). */
val AmaniPurple       = Color(0xFFCCC0E4)

/** Variante oscura de la marca, utilizada en el tema oscuro. */
val AmaniPurpleDark   = Color(0xFF9B8CBF)

/** Negro de la app — textos e iconos sobre fondos claros. */
val AmaniBlack        = Color(0xFF1C1B1F)

/** Blanco de la app — superficies, campos de texto y botones. */
val AmaniWhite        = Color(0xFFFFFFFF)

/** Fondo de las pantallas de autenticación (login / registro). */
val AmaniBackground   = Color(0xFFCCC0E4)

/** Superficie general (cards, scaffolds). */
val AmaniSurface      = Color(0xFFFFFBFE)

/** Color de texto sobre superficies generales. */
val AmaniOnSurface    = Color(0xFF1C1B1F)
