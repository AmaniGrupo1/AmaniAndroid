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
