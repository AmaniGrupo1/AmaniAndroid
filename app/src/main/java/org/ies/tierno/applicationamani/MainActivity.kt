package org.ies.tierno.applicationamani

import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.annotation.RequiresApi
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme

/**
 * Actividad principal y punto de entrada de la aplicación Amani.
 *
 * Se encarga de:
 * - Habilitar el modo *edge-to-edge* para aprovechar toda la pantalla.
 * - Aplicar el tema personalizado [ApplicationAmaniTheme].
 * - Montar el grafo de navegación [NavGraph] dentro de `setContent`.
 *
 * @see ApplicationAmaniTheme
 * @see NavGraph
 */
class MainActivity : ComponentActivity() {
    @RequiresApi(Build.VERSION_CODES.O)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            ApplicationAmaniTheme {
               NavGraph()
            }
        }
    }
}
