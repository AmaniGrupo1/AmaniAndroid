package org.ies.tierno.applicationamani

import android.content.Context
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.annotation.RequiresApi
import androidx.core.view.WindowCompat
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.runBlocking
import org.ies.tierno.applicationamani.data.local.LanguageManager
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme

/**
 * Actividad principal de la aplicación Amani.
 *
 * Punto de entrada de la UI. Aplica el idioma configurado en sesión durante
 * {@code attachBaseContext}, habilita el modo edge-to-edge, y despliega el
 * grafo de navegación principal con el tema de la aplicación.
 */
class MainActivity : ComponentActivity() {
    /**
     * Aplica el idioma almacenado en la sesión del usuario antes de que la
     * actividad se inicialice, garantizando que los recursos se carguen
     * en el idioma correcto desde el primer momento.
     *
     * @param newBase Contexto base proporcionado por el sistema.
     */
    override fun attachBaseContext(newBase: Context) {
        val sharedPrefs = newBase.getSharedPreferences("amani_lang_prefs", Context.MODE_PRIVATE)
        var lang = sharedPrefs.getString("language", null)

        if (lang == null) {
            lang = runBlocking {
                try {
                    UserSessionDataStore(newBase)
                        .sessionFlow
                        .firstOrNull()
                        ?.idioma ?: "es"
                } catch (e: Exception) {
                    "es"
                }
            }
            sharedPrefs.edit().putString("language", lang).apply()
        }

        val context = LanguageManager.setLocale(newBase, lang)
        super.attachBaseContext(context)
    }

    /**
     * Configura la interfaz de usuario principal tras la creación de la actividad.
     *
     * Habilita el renderizado edge-to-edge y establece el contenido raíz con
     * el tema [ApplicationAmaniTheme] y el grafo de navegación [NavGraph].
     *
     * @param savedInstanceState Estado previamente guardado de la actividad, o {@code null}.
     */
    @RequiresApi(Build.VERSION_CODES.O)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        WindowCompat.setDecorFitsSystemWindows(window, false)
        setContent {
            ApplicationAmaniTheme {
                val navController = rememberNavController()
                NavGraph(navController = navController)
            }
        }
    }
}
