package org.ies.tierno.applicationamani.presentation.navigation.navGraph


import TestScreen
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.runtime.Composable
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.ConsentimientoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento.RegistroExitosoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.cuestionario.Cuestionario
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.TestPacienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.ViewPsicologoPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.androidx.compose.koinViewModel

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun NavGraph(startDestination: String = Screens.principal.route) {
    val navController = rememberNavController()
    val loginViewModel: LoginViewModel = koinViewModel()
    NavHost(navController = navController, startDestination = startDestination) {
        composable(Screens.principal.route) {
            Principal(navController)
        }
        composable(Screens.login.route) {
            LoginScreen(navController)
        }
        composable(Screens.registro.route) {
            RegisterScreen(navController, loginViewModel)
        }
        composable(Screens.test.route) {
            TestScreen(navController)
        }

        //lOGIN
        composable(Screens.adminHome.route) {
            ViewAdminPrincipal(navController)
        }
        composable(Screens.psicologoHome.route) {
            ViewPsicologoPrincipal(navController)
        }
        composable(Screens.pacienteHome.route) {
            ViewPacientePrincipal(navController)
        }

        composable(Screens.agregarPsicologo.route) {
            AgregaPsicologoScreen(navController, loginViewModel)
        }
        composable(Screens.agregarAdmin.route) {
            AgregarAdministrador(navController, loginViewModel)
        }
        composable(Screens.cuestionario.route) {
            Cuestionario(navController, loginViewModel)
        }

        composable(Screens.pacientes.route) {
            ListadoPacientesScreen(navController)
        }
        composable(Screens.agregarPacienteAdmin.route) {
            RegistrarPacienteDesdeAdminScreen(navController, loginViewModel)
        }
        composable(
            route = Screens.testPaciente.route,
            arguments = listOf(navArgument("pacienteId") { type = NavType.LongType })
        ) { backStackEntry ->
            val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
            TestPacienteScreen(navController, idPaciente = pacienteId)
        }
        composable(Screens.settings.route) {
            SettingsClienteScreen(navController)
        }
        composable(Screens.vistaPrincipalPaciente.route) {
            PrincipalClienteScreen(navController)
        }
        composable(Screens.agregarPsicologoAdmin.route) {
            AgregaPsicologoScreen(navController, loginViewModel)
        }

        composable(Screens.asignarPsicologo.route) { backStackEntry ->
            val pacienteId = backStackEntry.arguments?.getString("pacienteId")
            if (pacienteId != null) {
                ListadoPsicologosScreen(navController, pacienteId, loginViewModel)
            }
        }

        //CONSENTIMIENTO
        composable(Screens.consentimiento.route) {
            ConsentimientoScreen(navController, loginViewModel)
        }
        composable(Screens.registroConsentimiento.route) {
            RegistroExitosoScreen(navController)
        }
    }
}
