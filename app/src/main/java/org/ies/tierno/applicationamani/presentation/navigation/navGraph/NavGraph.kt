package org.ies.tierno.applicationamani.presentation.navigation.navGraph

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.NavController
import androidx.navigation.NavHostController
import androidx.navigation.navArgument
import kotlinx.coroutines.runBlocking
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListarPacienteSinPsicologos
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipalScreen
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.AgendaCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.EditarCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.RegistrarPacientePsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.settings.SettingsAdminScreen
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.koin.androidx.compose.koinViewModel
import org.koin.core.parameter.parametersOf
import org.koin.java.KoinJavaComponent.getKoin

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun NavGraph(
    navController: NavHostController,
    startDestination: String = Screens.principal.route
) {
    val loginViewModel: LoginViewModel = koinViewModel()
    val situacionViewModel : SituacionViewModel = koinViewModel()
    val psicologoAgendaViewModel: PsicologoAgendaViewModel = koinViewModel()
    val listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel()
    val userSessionDataStore: UserSessionDataStore = getKoin().get()
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val currentBackStackEntry by navController.currentBackStackEntryAsState()

    val bottomBarConfig = when (session?.rol?.lowercase()?.trim()) {
        "admin", "administrador" -> BottomBarConfig.Admin
        "psicologo", "psicóloga", "psicologa" -> BottomBarConfig.Psicologo
        else -> BottomBarConfig.Paciente
    }

    Scaffold(
        bottomBar = {
            val currentRoute = currentBackStackEntry?.destination?.route
            val hideBottomBar = currentRoute == Screens.login.route ||
                    currentRoute == Screens.registro.route ||
                    currentRoute == Screens.principal.route
            if (!hideBottomBar) {
                AmaniBottomBar(navController, bottomBarConfig)
            }
        }
    ) { innerPadding ->
        NavHost(
            navController = navController,
            startDestination = startDestination,
            modifier = Modifier.padding(innerPadding)
        ) {
            composable(Screens.principal.route) {
                Principal(navController)
            }
            composable(Screens.login.route) {
                LoginScreen(navController, loginViewModel)
            }

            composable(Screens.psicologoHome.route) {
                ViewPsicologoPrincipal(userSessionDataStore, navController)
            }
            composable(Screens.registro.route) {
                RegisterScreen(navController, loginViewModel, situacionViewModel)
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
            composable(Screens.adminHome.route) {
                ViewAdminPrincipal(navController)
            }
            composable(Screens.psicologoAgenda.route) {
                PsicologoAgendaScreen(
                    navController,
                    psicologoAgendaViewModel,
                    listarTerapiasViewModel
                )
            }

            composable(Screens.calendario.route) {
                CalendarioView()
            }

            composable(Screens.agendaCitaScreen.route) {
                AgendaCitaScreen(navController)
            }


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


            composable(Screens.pacienteHome.route) {
                ViewPacientePrincipalScreen(navController)
            }

            composable(Screens.chatList.route) {
                val viewModel: ChatListViewModel = koinViewModel()
                ChatListScreen(navController = navController, viewModel = viewModel)
            }

            composable(
                route = Screens.chat.route,
                arguments = listOf(
                    navArgument("currentUserId") {
                        type = NavType.LongType
                    },
                    navArgument("otherUserId") {
                        type = NavType.LongType
                    },
                    navArgument("otherUserName") {
                        type = NavType.StringType
                    }
                )
            ) { backStackEntry ->
                val currentUserId = backStackEntry.arguments?.getLong("currentUserId") ?: 0L
                val otherUserId = backStackEntry.arguments?.getLong("otherUserId") ?: 0L
                val otherUserName = backStackEntry.arguments?.getString("otherUserName") ?: ""

                val viewModel: ChatViewModel =
                    koinViewModel(parameters = { parametersOf(currentUserId, otherUserId) })

                ChatScreen(
                    viewModel = viewModel,
                    onNavigateBack = { navController.popBackStack() },
                    otherUserName = otherUserName
                )
            }

            // CREAR CITA
            composable(Screens.citas.route) {

                CitasScreen(
                    navController,
                    psicologoAgendaViewModel,
                    listarTerapiasViewModel
                )
            }

// EDITAR / REAGENDAR CITA
            composable(
                route = Screens.editarCitaScreen.route,
                arguments = listOf(
                    navArgument("citaId") {
                        type = NavType.StringType
                    }
                )
            ) { backStackEntry ->

                backStackEntry.arguments?.getString("citaId")?.let { citaId ->
                    EditarCitaScreen(
                        navController,
                        citaId,
                        psicologoAgendaViewModel,
                        listarTerapiasViewModel
                    )
                }
            }

            composable(Screens.registroPacienteDesdePsicologo.route){
                RegistrarPacientePsicologoScreen(navController, loginViewModel, situacionViewModel)
            }
            composable(Screens.pacientesSinPsicologo.route){
                ListarPacienteSinPsicologos(navController)
            }

            composable(Screens.settingsAdmin.route){
                SettingsAdminScreen(navController, userSessionDataStore)
            }
        }
    }
}