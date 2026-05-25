package org.ies.tierno.applicationamani.presentation.navigation.navGraph

import android.net.Uri
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
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
import org.ies.tierno.applicationamani.presentation.screens.profile.PacienteProfileScreen
import org.ies.tierno.applicationamani.presentation.screens.profile.PsicologoProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AdminProfileScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregarAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosBajaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosSimpleScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListarPacienteSinPsicologos
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TerapiasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal.DocumentoLegalDetailScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal.GestionPoliticasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.role.AdminUserManagementScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.Principal
import org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.RegisterScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.diario.DiarioEmocionalScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.AgendaCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.EditarCitaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.HistorialClinicoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.SettingsPacienteScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipalScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.payment.PaymentScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.CrearHistorialClinicoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.EditProfilePsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.EstadisticasPsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.RegistrarPacientePsicologoScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.SettingsPsychologistScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.settings.SettingsAdminScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.situacion.SituacionAdminScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.soporte.MisTicketsScreen
import org.ies.tierno.applicationamani.presentation.ui.screen.soporte.NuevoTicketScreen
import org.ies.tierno.applicationamani.presentation.ui.screens.admin.ViewAdminPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipal
import org.ies.tierno.applicationamani.presentation.ui.screen.tickets.TicketScreen
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.payment.PaymentViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.koin.androidx.compose.koinViewModel
import org.koin.core.parameter.parametersOf
import org.koin.java.KoinJavaComponent.getKoin

@RequiresApi(Build.VERSION_CODES.O)
@Composable
/**
 * Grafo de navegación principal de la aplicación Amani.
 *
 * Define todas las rutas de la aplicación mediante [NavHost] y configura
 * la visibilidad condicional de la barra de navegación inferior según la
 * pantalla activa y el rol del usuario autenticado.
 *
 * @param navController Controlador de navegación de Jetpack Compose.
 */
fun NavGraph(
    navController: NavHostController,
    startDestination: String = Screens.principal.route,
) {
    val loginViewModel: LoginViewModel = koinViewModel()
    val situacionViewModel: SituacionViewModel = koinViewModel()
    val psicologoAgendaViewModel: PsicologoAgendaViewModel = koinViewModel()
    val listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel()
    val userSessionDataStore: UserSessionDataStore = getKoin().get()
    val profilePsicolgo: ProfilePsicologoViewModel = koinViewModel()
    val listaPsicologoSimple: ListarPsicologosAdminViewModel = koinViewModel()
    val historialClinicoPacienteViewModel: HistorialClinicoPacienteViewModel = koinViewModel()
    val listarPacientesViewModel: ListarPacientesViewModel = koinViewModel()

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val currentBackStackEntry by navController.currentBackStackEntryAsState()
    val idiomaViewModel: IdiomaViewModel = koinViewModel()
    val bottomBarConfig =
        when (session?.rol?.lowercase()?.trim()) {
            "admin", "administrador" -> BottomBarConfig.Admin
            "psicologo", "psicóloga", "psicologa" -> BottomBarConfig.Psicologo
            else -> BottomBarConfig.Paciente
        }

    Scaffold(
        bottomBar = {
            val currentRoute = currentBackStackEntry?.destination?.route
            val hideBottomBar =
                currentRoute == Screens.login.route ||
                        currentRoute == Screens.registro.route ||
                        currentRoute == Screens.principal.route ||
                        currentRoute?.startsWith("chat") == true
            if (!hideBottomBar) {
                AmaniBottomBar(navController, bottomBarConfig)
            }
        },
    ) { innerPadding ->
        NavHost(
            navController = navController,
            startDestination = startDestination,
            modifier =
                Modifier
                    .padding(innerPadding)
                    .consumeWindowInsets(innerPadding),
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
                    situacionViewModel = situacionViewModel,
                )
            }
            composable(Screens.registroPacienteDesdePsicologo.route) {
                RegistrarPacientePsicologoScreen(
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
                SettingsPsychologistScreen(navController, userSessionDataStore, idiomaViewModel)
            }
            composable(Screens.agregarPsicologo.route) {
                AgregaPsicologoScreen(
                    onBack = { navController.popBackStack() },
                    loginViewModel = loginViewModel,
                )
            }
            composable(Screens.test.route) {
                TestScreen(navController)
            }
            composable(
                route = Screens.listarPsicologo.route,
                arguments =
                    listOf(
                        navArgument("pacienteId") {
                            type = NavType.LongType
                        },
                    ),
            ) { backStackEntry ->
                val idPaciente = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                ListadoPsicologosScreen(
                    navController = navController,
                    loginViewModel = loginViewModel,
                    pacienteId = idPaciente,
                    viewModel = listaPsicologoSimple,
                    listarPacientesViewModel = listarPacientesViewModel,
                )
            }
            composable(Screens.pacientes.route) {
                ListadoPacientesScreen(navController, listarPacientesViewModel)
            }
            composable(Screens.pacientesSinPsicologo.route) {
                ListarPacienteSinPsicologos(navController)
            }
            composable(Screens.listarPsicologosBaja.route) {
                ListadoPsicologosBajaScreen(
                    navController,
                    listaPsicologoSimple,
                    listarPacientesViewModel
                )
            }
            composable(Screens.cambiarRol.route) {
                // Pasar lambda de navegación para que el botón de volver funcione correctamente
                AdminUserManagementScreen(onNavigateBack = { navController.popBackStack() })
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
                    listarTerapiasViewModel,
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
                arguments =
                    listOf(
                        navArgument("psicologoId") {
                            type = NavType.LongType
                        },
                    ),
            ) { backStackEntry ->
                val idPsicologo = backStackEntry.arguments?.getLong("psicologoId") ?: 0L
                PsicologoProfileScreen(idPsicologo, navController, profilePsicolgo)
            }

            composable(Screens.pacienteHome.route) {
                ViewPacientePrincipalScreen(navController, profilePsicolgo)
            }
            composable(Screens.listarPsicologoSimple.route) {
                ListadoPsicologosSimpleScreen(
                    navController,
                    listaPsicologoSimple,
                    listarPacientesViewModel
                )
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
                arguments =
                    listOf(
                        navArgument("currentUserId") {
                            type = NavType.LongType
                        },
                        navArgument("otherUserId") {
                            type = NavType.LongType
                        },
                        navArgument("otherUserName") {
                            type = NavType.StringType
                        },
                    ),
            ) { backStackEntry ->
                val currentUserId = backStackEntry.arguments?.getLong("currentUserId") ?: 0L
                val otherUserId = backStackEntry.arguments?.getLong("otherUserId") ?: 0L
                val otherUserName =
                    Uri.decode(backStackEntry.arguments?.getString("otherUserName") ?: "")

                if (currentUserId <= 0L || otherUserId <= 0L) {
                    LaunchedEffect(Unit) {
                        navController.popBackStack()
                    }
                    return@composable
                }

                val viewModel: ChatViewModel = koinViewModel(parameters = {
                    parametersOf(
                        currentUserId,
                        otherUserId,
                        otherUserName
                    )
                })

                ChatScreen(
                    viewModel = viewModel,
                    onNavigateBack = { navController.popBackStack() },
                    otherUserName = otherUserName,
                )
            }

            composable(Screens.citas.route) {
                CitasScreen(
                    navController,
                    psicologoAgendaViewModel,
                    listarTerapiasViewModel,
                )
            }

            composable(
                route = Screens.editarCitaScreen.route,
                arguments =
                    listOf(
                        navArgument("citaId") {
                            type = NavType.StringType
                        },
                    ),
            ) { backStackEntry ->
                backStackEntry.arguments?.getString("citaId")?.let { citaId ->
                    EditarCitaScreen(
                        navController,
                        citaId,
                        psicologoAgendaViewModel,
                        listarTerapiasViewModel,
                    )
                }
            }

            composable(Screens.nuevoTicket.route) {
                NuevoTicketScreen(navController)
            }

            composable(
                route = Screens.paymentScreen.route,
                arguments =
                    listOf(
                        navArgument("citaId") { type = NavType.LongType },
                        navArgument("psicologoName") { type = NavType.StringType },
                        navArgument("fecha") { type = NavType.StringType },
                        navArgument("monto") { type = NavType.StringType },
                    ),
            ) { backStackEntry ->
                val citaId = backStackEntry.arguments?.getLong("citaId") ?: 0L
                val psicologoName =
                    Uri.decode(backStackEntry.arguments?.getString("psicologoName") ?: "")
                val fecha = backStackEntry.arguments?.getString("fecha") ?: ""
                val monto = backStackEntry.arguments?.getString("monto") ?: ""

                val viewModel: PaymentViewModel = koinViewModel()
                PaymentScreen(
                    citaId = citaId,
                    psicologoName = psicologoName,
                    fecha = fecha,
                    monto = monto,
                    viewModel = viewModel,
                    onPaymentSuccess = { navController.popBackStack() },
                    onPaymentCanceled = { navController.popBackStack() },
                )
            }

            composable(Screens.misTickets.route) {
                MisTicketsScreen(navController)
            }

            composable(Screens.editProfilePsicologo.route) { backStackEntry ->
                val identificador =
                    backStackEntry.arguments?.getString("identificador")?.toLongOrNull() ?: 0L
                EditProfilePsicologoScreen(
                    navController = navController,
                    identificador = identificador,
                )
            }

            composable(Screens.settingPsicologo.route) {
                SettingsPsychologistScreen(
                    navController = navController,
                    userSessionDataStore = userSessionDataStore,
                    idiomaViewModel = idiomaViewModel,
                )
            }

            composable(Screens.terapias.route) {
                TerapiasScreen(navController, listarTerapiasViewModel)
            }

            composable(Screens.crearSituaciones.route) {
                SituacionAdminScreen(navController, situacionViewModel)
            }

            composable(Screens.politicaPrivacidad.route) {
                GestionPoliticasScreen(navController)
            }
            composable(Screens.settingsAdmin.route) {
                SettingsAdminScreen(navController, userSessionDataStore, idiomaViewModel)
            }

            composable(
                route = Screens.historialClinico.route,
                arguments = listOf(navArgument("pacienteId") { type = NavType.LongType }),
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                HistorialClinicoScreen(
                    navController = navController,
                    idPaciente = pacienteId,
                    viewModel = historialClinicoPacienteViewModel,
                    userSessionDataStore = userSessionDataStore,
                )
            }

            composable(
                route = Screens.profileAdmin.route,
                arguments = listOf(navArgument("adminId") { type = NavType.LongType }),
            ) { backStackEntry ->
                val adminId = backStackEntry.arguments?.getLong("adminId") ?: 0L
                AdminProfileScreen(
                    adminId = adminId,
                    navController = navController,
                )
            }

            composable(
                route = Screens.perfilPaciente.route,
                arguments = listOf(navArgument("pacienteId") { type = NavType.LongType }),
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                PacienteProfileScreen(
                    pacienteId = pacienteId,
                    navController = navController,
                )
            }

            composable(
                route = Screens.crearHistorialClinico.route,
                arguments = listOf(navArgument("pacienteId") { type = NavType.LongType }),
            ) { backStackEntry ->
                val pacienteId = backStackEntry.arguments?.getLong("pacienteId") ?: 0L
                CrearHistorialClinicoScreen(
                    navController = navController,
                    pacienteId = pacienteId,
                    viewModel = historialClinicoPacienteViewModel,
                )
            }

            composable(
                route = Screens.documentoLegalDetail.route,
                arguments = listOf(navArgument("tipo") { type = NavType.StringType }),
            ) { backStackEntry ->
                val tipo = backStackEntry.arguments?.getString("tipo") ?: "terminos"
                DocumentoLegalDetailScreen(
                    navController = navController,
                    tipoDocumento = tipo,
                )
            }

            composable(Screens.reportarProblema.route){
                TicketScreen(navController = navController)
            }
        }
    }
}
