package org.ies.tierno.applicationamani

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
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme

/**
 * Actividad principal y punto de entrada de la aplicación Amani.
 *
 * Se encarga de:
 * - Habilitar el modo *edge-to-edge* para aprovechar toda la pantalla.
 * - Aplicar el tema personalizado [ApplicationAmaniTheme].
 * - Montar el grafo de navegación [NavGraph] dentro de `setContent`.
 * - Crear el NavController que se pasará a [NavGraph] para mantener estado de navegación.
 *
 * @see ApplicationAmaniTheme
 * @see NavGraph
 */
class MainActivity : ComponentActivity() {
    /**
     * Callback del ciclo de vida invocado cuando se crea la actividad.
     *
     * @param savedInstanceState Estado previamente guardado, o `null`
     *   si la actividad se crea por primera vez.
     */
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
