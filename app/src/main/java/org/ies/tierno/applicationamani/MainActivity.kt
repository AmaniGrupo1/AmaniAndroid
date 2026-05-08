
package org.ies.tierno.applicationamani

import android.content.Context
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.core.view.WindowCompat
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BugReport
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.google.firebase.crashlytics.FirebaseCrashlytics
import androidx.annotation.RequiresApi
import androidx.compose.runtime.getValue
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme

import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.runBlocking
import org.ies.tierno.applicationamani.data.local.LanguageManager

class MainActivity : ComponentActivity() {

    override fun attachBaseContext(newBase: Context) {
        val session = runBlocking {
            UserSessionDataStore(newBase).sessionFlow.firstOrNull()
        }

        val lang = session?.idioma ?: "es"
        val context = LanguageManager.setLocale(newBase, lang)

        super.attachBaseContext(context)
    }

    @RequiresApi(Build.VERSION_CODES.O)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        WindowCompat.setDecorFitsSystemWindows(window, false)
        setContent {
            ApplicationAmaniTheme {
                val navController = rememberNavController()
                Box {
                    NavGraph(navController = navController)

                    // Botón de prueba para forzar un crash y verificar Crashlytics.
                    // Sólo visible en DEBUG para no afectar usuarios finales.
                    if (BuildConfig.DEBUG) {
                        FloatingActionButton(
                            onClick = {
                                // Activar la recolección temporalmente en DEBUG para la prueba,
                                // registrar y lanzar una excepción no atrapada
                                FirebaseCrashlytics.getInstance().setCrashlyticsCollectionEnabled(true)
                                FirebaseCrashlytics.getInstance().log("Botón de crash pulsado")
                                FirebaseCrashlytics.getInstance().recordException(Exception("Excepción no fatal de prueba"))
                                throw RuntimeException("Crash de prueba para Crashlytics")
                            },
                            modifier = Modifier
                                .align(Alignment.TopEnd)
                                .padding(16.dp)
                        ) {
                            Icon(Icons.Filled.BugReport, contentDescription = "Crash de prueba")
                        }
                    }
                }
            }
        }
    }
}
