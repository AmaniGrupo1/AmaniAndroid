package org.ies.tierno.applicationamani.data.local

import android.content.Context
import android.content.res.Configuration
import java.util.Locale

/**
 * Singleton encargado de aplicar cambios de idioma en tiempo de ejecución.
 *
 * Modifica la configuración regional del contexto actual sin necesidad de
 * reiniciar la actividad, permitiendo el cambio de idioma inmediato en la UI.
 */
object LanguageManager {
    /**
     * Aplica el idioma indicado al contexto y devuelve un nuevo contexto configurado.
     *
     * @param context Contexto original de la aplicación o actividad.
     * @param language Código de idioma ISO (ej. "es", "en").
     * @return Nuevo contexto con la configuración regional actualizada.
     */
    fun setLocale(
        context: Context,
        language: String,
    ): Context {
        val locale = Locale(language)
        Locale.setDefault(locale)

        val config = Configuration(context.resources.configuration)
        config.setLocale(locale)
        config.setLayoutDirection(locale)

        return context.createConfigurationContext(config)
    }
}
