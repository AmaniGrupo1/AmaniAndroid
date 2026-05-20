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

class MainActivity : ComponentActivity() {
    override fun attachBaseContext(newBase: Context) {
        // Bug 1 Fix: Leer de DataStore con manejo de errores y fallback explícito
        // attachBaseContext ocurre muy temprano, por lo que runBlocking es necesario aquí
        val lang =
            runBlocking {
                try {
                    UserSessionDataStore(newBase)
                        .sessionFlow
                        .firstOrNull()
                        ?.idioma ?: "es" // Fallback a español si no hay valor
                } catch (e: Exception) {
                    "es" // Fallback de seguridad en caso de error de lectura
                }
            }

        val context = LanguageManager.setLocale(newBase, lang)
        super.attachBaseContext(context)
    }

    @RequiresApi(Build.VERSION_CODES.O)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        WindowCompat.setDecorFitsSystemWindows(window, false)
        setContent {
            // ApplicationAmaniTheme ya maneja internamente la lectura de la sesión para el tema
            ApplicationAmaniTheme {
                val navController = rememberNavController()
                NavGraph(navController = navController)
            }
        }
    }
}
