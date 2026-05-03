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

// ── Colores semánticos de citas ────────────────────────────────

/** Verde para franjas horarias libres. */
val AmaniCitaLibre    = Color(0xFF4CAF50)

/** Rojo suave para franjas horarias ocupadas. */
val AmaniCitaOcupada  = Color(0xFFE57373)

/** Fondo de una tarjeta de franja ocupada. */
val AmaniCitaOcupadaBg = Color(0xFFFCE4EC)

// ── Colores semánticos de estados de cita ─────────────────────

/** Verde profundo para citas confirmadas. */
val AmaniCitaConfirmada = Color(0xFF2E7D32)

/** Naranja para citas pendientes de confirmación. */
val AmaniCitaPendiente  = Color(0xFFE65100)

/** Rojo profundo para citas canceladas. */
val AmaniCitaCancelada  = Color(0xFFC62828)

/** Fondo suave con tinte lila para el calendario. */
val AmaniCalendarioBg   = Color(0xFFF5F0FF)

// ── Colores sugeridos para completar M3 ────────────────────────

/** Color terciario sugerido (fucsia/lila). */
val AmaniFuchsia            = Color(0xFF7B5C9E)
val AmaniOnFuchsia          = Color(0xFFFFFFFF)
val AmaniFuchsiaContainer   = Color(0xFFEADDFF)
val AmaniOnFuchsiaContainer = Color(0xFF21005D)

/** Colores de error estándar de Material 3. */
val AmaniError              = Color(0xFFBA1A1A)
val AmaniOnError            = Color(0xFFFFFFFF)
val AmaniErrorContainer     = Color(0xFFFFDAD6)
val AmaniOnErrorContainer   = Color(0xFF410002)

/** Tinte de superficie (basado en el color primario). */
val AmaniSurfaceTint        = AmaniPurple

