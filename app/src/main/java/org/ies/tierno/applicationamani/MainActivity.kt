package org.ies.tierno.applicationamani

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
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
    /**
     * Callback del ciclo de vida invocado cuando se crea la actividad.
     *
     * @param savedInstanceState Estado previamente guardado, o `null`
     *   si la actividad se crea por primera vez.
     */
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
