package org.ies.tierno.applicationamani.presentation.navigation.navGraph

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.RegisterScreen

/**
 * Grafo de navegación principal de la aplicación Amani.
 *
 * Define todas las rutas y las asocia a sus composables de pantalla
 * correspondientes mediante Jetpack Navigation Compose.
 *
 * El flujo de navegación es:
 * 1. [Principal] → pantalla de bienvenida (destino inicial).
 * 2. [LoginScreen] → inicio de sesión.
 * 3. [RegisterScreen] → registro de nuevo usuario.
 * 4. [QuestionnaireScreen] → cuestionario de evaluación.
 * 5. [PrincipalClienteScreen] → pantalla principal del cliente autenticado.
 *
 * @param startDestination Ruta de la pantalla inicial. Por defecto es
 *   [Screens.principal].
 *
 * @see Screens
 */
@Composable
fun NavGraph(startDestination: String = Screens.principal.route) {
    val navController = rememberNavController()
    NavHost(navController = navController, startDestination = startDestination) {
        composable(Screens.principal.route){
            Principal(navController)
        }
        composable(Screens.login.route){
            LoginScreen(navController)
        }
        composable(Screens.registro.route){
            RegisterScreen(navController)
        }
        composable(Screens.questionnaire.route){
            QuestionnaireScreen(navController)
        }
        composable(Screens.principalCliente.route){
            PrincipalClienteScreen(navController)
        }
    }
}
