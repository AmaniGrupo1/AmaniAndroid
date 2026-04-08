package org.ies.tierno.applicationamani.presentation.navigation.navGraph

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegistrarPacienteDesdeAdminScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.androidx.compose.koinViewModel
import TestScreen
import androidx.navigation.NavType
import androidx.navigation.navArgument
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologo.PsicologoAgendaScreen
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal
import org.koin.java.KoinJavaComponent.getKoin

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun NavGraph(startDestination: String = Screens.principal.route) {
    val navController = rememberNavController()
    val loginViewModel: LoginViewModel = koinViewModel()

    // ✅ CORRECTO: Obtener repositorios de Koin directamente
    val citasRepository = getKoin().get<CitasRepository>()
    val userSessionDataStore = getKoin().get<UserSessionDataStore>()

    NavHost(navController = navController, startDestination = startDestination) {
        composable(Screens.principal.route) {
            Principal(navController)
        }
        composable(Screens.login.route) {
            LoginScreen(navController, loginViewModel)
        }

        composable (Screens.psicologoHome.route){
            ViewPsicologoPrincipal(userSessionDataStore,navController)
        }
        composable(Screens.registro.route) {
            RegisterScreen(navController, loginViewModel)
        }
        composable(Screens.questionnaire.route) {
            QuestionnaireScreen(navController)
        }
        composable(Screens.principalCliente.route) {
            PrincipalClienteScreen(navController)
        }
        composable(Screens.settingsCliente.route) {
            SettingsClienteScreen(navController)
        }
        composable(Screens.agregarPsicologo.route) {
            AgregaPsicologoScreen(navController, loginViewModel)
        }
        composable(Screens.test.route) {
            TestScreen(navController)
        }
        composable(
            route = Screens.listarPsicologo.route,
            arguments = listOf(
                navArgument("pacienteId") {
                    type = NavType.LongType
                }
            )
        ) { backStackEntry ->
            val idPaciente = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
            ListadoPsicologosScreen(
                navController = navController,
                loginViewModel = loginViewModel,
                pacienteId = idPaciente
            )
        }
        composable(Screens.pacientes.route) {
            ListadoPacientesScreen(navController)
        }
        composable(Screens.agregarAdmin.route) {
            AgregarAdministrador(navController, loginViewModel)
        }
        composable(Screens.agregarPacienteAdmin.route) {
            RegistrarPacienteDesdeAdminScreen(navController, loginViewModel)
        }
        composable(Screens.adminHome.route) {
            ViewAdminPrincipal(navController)
        }
        composable(Screens.citas.route) {
            CitasScreen(navController)
        }
        composable(Screens.psicologoAgenda.route) {
            PsicologoAgendaScreen(navController)
        }
        composable(Screens.calendario.route) {
            CalendarioView()
        }
        // PERFIL PSICOLOGO
        composable(
            route = Screens.perfilPsicologo.route,
            arguments = listOf(
                navArgument("psicologoId") {
                    type = NavType.LongType
                }
            )
        ) { backStackEntry ->
            val idPsicologo = backStackEntry.arguments?.getLong("psicologoId") ?: 0L
            PsicologoProfileScreen(idPsicologo, navController)
        }

    }
}