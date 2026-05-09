
package org.ies.tierno.applicationamani

import android.content.Context
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.core.view.WindowCompat
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
                NavGraph(navController = navController)
            }
        }
    }
}
