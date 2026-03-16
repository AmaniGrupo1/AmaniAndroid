package org.ies.tierno.applicationamani.presentation.navigation.navGraph


import TestScreen
import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.ViewPsicologoPrincipal

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
        composable(Screens.test.route){
            TestScreen(navController)
        }

        //lOGIN
        composable(Screens.adminHome.route){
            ViewAdminPrincipal(navController)
        }
        composable(Screens.psicologoHome.route){
            ViewPsicologoPrincipal(navController)
        }
        composable(Screens.pacienteHome.route){
            ViewPacientePrincipal(navController)
        }
    }
}
