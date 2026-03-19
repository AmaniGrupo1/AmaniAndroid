package org.ies.tierno.applicationamani

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import org.ies.tierno.applicationamani.presentation.navigation.navGraph.NavGraph
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme

class MainActivity : ComponentActivity() {
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
