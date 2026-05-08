package org.ies.tierno.applicationamani.presentation.navigation.navGraph

import android.net.Uri
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.navArgument
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.payment.PaymentScreen
import org.ies.tierno.applicationamani.presentation.viewmodels.payment.PaymentViewModel
import org.ies.tierno.applicationamani.presentation.screens.profile.PacienteProfileScreen
import org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AdminProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListarPacienteSinPsicologos
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TerapiasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.diario.DiarioEmocionalScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.AgendaCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.EditarCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipalScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.SettingsPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.EstadisticasPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.soporte.MisTicketsScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.soporte.NuevoTicketScreen
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.HistorialClinicoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.SettingsPacienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.CrearHistorialClinicoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.EditProfilePsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.RegistrarPacientePsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.SettingsPsychologistScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.settings.SettingsAdminScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.situacion.SituacionAdminScreen
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
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
    val profilePsicolgo : ProfilePsicologoViewModel = koinViewModel()
    val historialClinicoPacienteViewModel : HistorialClinicoPacienteViewModel = koinViewModel()
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val currentBackStackEntry by navController.currentBackStackEntryAsState()
    val idiomaViewModel : IdiomaViewModel = koinViewModel()
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
                    currentRoute == Screens.principal.route ||
                    currentRoute?.startsWith("chat") == true
            if (!hideBottomBar) {
                AmaniBottomBar(navController, bottomBarConfig)
            }
        }
    ) { innerPadding ->
        NavHost(
            navController = navController,
            startDestination = startDestination,
            modifier = Modifier
                .padding(innerPadding)
                .consumeWindowInsets(innerPadding)
        ) {
            composable(Screens.principal.route) {
                Principal(navController, userSessionDataStore)
            }
            composable(Screens.login.route) {
                LoginScreen(navController, loginViewModel)
            }

            composable(Screens.psicologoHome.route) {
                ViewPsicologoPrincipal(userSessionDataStore, navController)
            }
            composable(Screens.estadisticasPsicologo.route) {
                EstadisticasPsicologoScreen()
            }
            composable(Screens.registro.route) {
                RegisterScreen(
                    navController = navController,
                    loginViewModel = loginViewModel,
                    situacionViewModel = situacionViewModel
                )
            }
            composable(Screens.questionnaire.route) {
                QuestionnaireScreen(navController)
            }
            composable(Screens.principalCliente.route) {
                PrincipalClienteScreen(navController)
            }
            composable(Screens.settingsCliente.route) {
                SettingsPacienteScreen(navController, userSessionDataStore, idiomaViewModel)
            }
            composable(Screens.settingsPsicologo.route) {
                val idPsicologo = session?.idPsicologo ?: 0L
                SettingsPsicologoScreen(idPsicologo, navController)
            }
            composable(Screens.agregarPsicologo.route) {
                AgregaPsicologoScreen(
                    onBack = { navController.popBackStack() },
                    loginViewModel = loginViewModel
                )
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
                PsicologoProfileScreen(idPsicologo, navController, profilePsicolgo)
            }

            composable(Screens.pacienteHome.route) {
                ViewPacientePrincipalScreen(navController, profilePsicolgo)
            }

            composable(Screens.chatList.route) {
                val viewModel: ChatListViewModel = koinViewModel()
                ChatListScreen(navController = navController, viewModel = viewModel)
            }

            composable(Screens.diarioEmocional.route) {
                DiarioEmocionalScreen()
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
                val otherUserName = Uri.decode(backStackEntry.arguments?.getString("otherUserName") ?: "")

                if (currentUserId <= 0L || otherUserId <= 0L) {
                    LaunchedEffect(Unit) {
                        navController.popBackStack()
                    }
                    return@composable
                }

                val viewModel: ChatViewModel = koinViewModel(parameters = { parametersOf(currentUserId, otherUserId, otherUserName) })

                ChatScreen(
                    viewModel = viewModel,
                    onNavigateBack = { navController.popBackStack() },
                    otherUserName = otherUserName
                )
            }

            composable(Screens.citas.route) {
                CitasScreen(
                    navController,
                    psicologoAgendaViewModel,
                    listarTerapiasViewModel
                )
            }

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

            composable(Screens.nuevoTicket.route) {
                NuevoTicketScreen(navController)
            }

            composable(
                route = Screens.paymentScreen.route,
                arguments = listOf(
                    androidx.navigation.navArgument("citaId") { type = androidx.navigation.NavType.LongType },
                    androidx.navigation.navArgument("psicologoName") { type = androidx.navigation.NavType.StringType },
                    androidx.navigation.navArgument("fecha") { type = androidx.navigation.NavType.StringType },
                    androidx.navigation.navArgument("monto") { type = androidx.navigation.NavType.StringType }
                )
            ) { backStackEntry ->
                val citaId = backStackEntry.arguments?.getLong("citaId") ?: 0L
                val psicologoName = backStackEntry.arguments?.getString("psicologoName") ?: ""
                val fecha = backStackEntry.arguments?.getString("fecha") ?: ""
                val monto = backStackEntry.arguments?.getString("monto") ?: ""
                val paymentViewModel: PaymentViewModel = org.koin.androidx.compose.koinViewModel()
                PaymentScreen(
                    citaId = citaId,
                    psicologoName = psicologoName,
                    fecha = fecha,
                    monto = monto,
                    viewModel = paymentViewModel,
                    onPaymentSuccess = { navController.popBackStack() },
                    onPaymentCanceled = { navController.popBackStack() }
                )
            }
            composable(Screens.misTickets.route) {
                MisTicketsScreen(navController)
            }
            composable(Screens.registroPacienteDesdePsicologo.route){
                RegistrarPacientePsicologoScreen(navController, loginViewModel, situacionViewModel)
            }
            composable(Screens.pacientesSinPsicologo.route){
                ListarPacienteSinPsicologos(navController)
            }

            composable(Screens.settingsAdmin.route){
                SettingsAdminScreen(navController, userSessionDataStore, idiomaViewModel)
            }


            composable(
                route = Screens.editProfilePsicologo.route,
                arguments = listOf(
                    navArgument("identificador") {
                        type = NavType.LongType
                    }
                )
            ) { backStackEntry ->
                val idPsicologo = backStackEntry.arguments?.getLong("identificador") ?: 0L
                EditProfilePsicologoScreen(navController, idPsicologo)
            }

            composable(Screens.settingPsicologo.route){
                SettingsPsychologistScreen(navController, userSessionDataStore, idiomaViewModel)
            }
            composable(Screens.terapias.route){
                TerapiasScreen(navController, listarTerapiasViewModel)
            }
            composable(Screens.crearSituaciones.route){
                SituacionAdminScreen(navController, situacionViewModel)
            }
            composable(
                route = Screens.profileAdmin.route,
                arguments = listOf(
                    navArgument("adminId") {
                        type = NavType.LongType
                    }
                )
            ) { backStackEntry ->
                val adminId = backStackEntry.arguments?.getLong("adminId") ?: 0L
                AdminProfileScreen(adminId, navController)
            }
            composable(
                route = Screens.perfilPaciente.route,
                arguments = listOf(
                    navArgument("pacienteId") {
                        type = NavType.LongType
                    }
                )
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                PacienteProfileScreen(pacienteId, navController)
            }

            composable(
                route = Screens.historialClinico.route,
                arguments = listOf(
                    navArgument("pacienteId") {
                        type = NavType.LongType
                    }
                )
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                HistorialClinicoScreen(navController, pacienteId, historialClinicoPacienteViewModel)
            }

            composable(
                route = Screens.crearHistorialClinico.route,
                arguments = listOf(
                    navArgument("pacienteId") {
                        type = NavType.LongType
                    }
                )
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                CrearHistorialClinicoScreen(
                    navController = navController,
                    pacienteId = pacienteId,
                    historialClinicoPacienteViewModel
                )
            }
        }
    }
}
