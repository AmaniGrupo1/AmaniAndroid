package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.presentation.viewmodels.profile.EditProfilePsicologoViewModel
import androidx.room.Room
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.data.local.AuthEventChannel
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.local.diario.AmaniDatabase
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.data.remoto.DiarioRemoteRepository
import org.ies.tierno.applicationamani.data.remoto.DiarioSyncManager
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.data.remoto.FirebaseInstance
import org.ies.tierno.applicationamani.data.remoto.SyncDiarioWorker
import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.DiarioEmocionalRepository
import org.ies.tierno.applicationamani.data.repositorio.DocumentoLegalRepository
import org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
import org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository
import org.ies.tierno.applicationamani.data.repositorio.PaymentRepository
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.data.repositorio.SoporteTicketRepository
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.data.repositorio.TicketsRepository
import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetPacientesSinPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.domain.usecases.documentoLegal.DocumentoLegalUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.MarkMessageDeliveredUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.ObserveTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.ObserveUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.SendMessageUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.StartTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.StopTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.generalizado.UpdateUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.historialClinico.HistorialClinicoUseCase
import org.ies.tierno.applicationamani.domain.usecases.historialCita.HistorialCitaUseCase
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.domain.usecases.notificacion.NotificacionUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
import org.ies.tierno.applicationamani.domain.usecases.payment.CreatePaymentIntentUseCase
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo
import org.ies.tierno.applicationamani.domain.usecases.role.GetUsuariosUseCase
import org.ies.tierno.applicationamani.domain.usecases.role.RoleAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.domain.usecases.terapia.TerapiasGeneralUseCase
import org.ies.tierno.applicationamani.domain.usecases.ticketsUseCase.TicketsUseCase
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.PacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.CitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.diario.DiarioEmocionalViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.notificacion.NotificacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.payment.PaymentViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.admin.ProfileAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente.ProfilePacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminRoleViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminUserViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.soporte.SoporteTicketViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel.TicketsViewModel
import org.koin.android.ext.koin.androidContext
import org.koin.androidx.workmanager.dsl.worker
import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module
import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.firestore.FirebaseFirestore
import org.ies.tierno.applicationamani.data.local.FirebaseAuthManager

/**
 * Módulo principal de inyección de dependencias con Koin.
 *
 * Declara todas las dependencias de la aplicación organizadas por capa:
 * - Repositorios y APIs (singleton)
 * - Casos de uso (factory)
 * - ViewModels (viewModel)
 * - Workers de WorkManager (worker)
 *
 * Las dependencias se resuelven de forma automática a través de los
 * constructores anotados de cada clase, respetando la arquitectura limpia.
 */
val appModule = module {
    single { TokenDataStore(androidContext()) }
    single { TokenHolder(get()) }
    single { AuthEventChannel() }
    single { UserSessionDataStore(get()) }
    single {
        Room
            .databaseBuilder(
                androidContext(),
                AmaniDatabase::class.java,
                "amani_local.db",
            ).addMigrations(AmaniDatabase.MIGRATION_1_2)
            .build()
    }
    single { FirebaseFirestore.getInstance() }
    single { get<AmaniDatabase>().diarioEmocionalDao() }

    single { FirebaseDatabase.getInstance() }

    single { AuthRepository(get(), get(), get(), get(), get(), get()) }
    single { TestRepositoryApi(get()) }
    single { SituacionRepository(get()) }
    single { CitasRepository(get(), get()) }
    single { ProfileRepository(get()) }
    single { DiarioEmocionalRepository(get(), get()) }
    single { DiarioRemoteRepository(get()) }
    single { DiarioSyncManager(androidContext(), get(), get(), get()) }
    single { NotificacionRepository(get()) }
    single { SoporteTicketRepository(get()) }
    single { AjustesRepository(get()) }
    single { HistorialRepository(get()) }
    single { DocumentoLegalRepository(get()) }
    single { AdminRepository(get()) }
    single { TicketsRepository(get()) }

    single { FirebaseInstance }
    single { ChatFirebaseService(get()) }
    single<ChatRepositoryImpl> { ChatRepositoryImpl(get(), get()) }
    single<ChatRepository> { get<ChatRepositoryImpl>() }
    single { FileStorageService(get(), androidContext()) }

    factory { LoginUseCase(get()) }
    factory { GetAllClientAndPsicologoUseCase(get()) }
    factory { CrearPreguntaUseCase(get()) }
    factory { ListarPreguntasUseCase(get()) }
    factory { DarBajaPacienteUseCase(get()) }
    factory { TodosLosPacientesUseCase(get()) }
    factory { ListarPsicologoAdminUseCase(get()) }
    factory { AsignarPacienteAlPsicologoUseCase(get()) }
    factory { ResponderTestUseCase(get()) }
    factory { SituacionUseCase(get()) }
    factory { ProfileUseCaseGeneral(get()) }
    factory { NotificacionUseCase(get()) }
    factory { GetPacientesSinPsicologoUseCase(get()) }
    factory { ListarPacientesByPsicologo(get()) }
    factory { HistorialClinicoUseCase(get()) }
    factory { DocumentoLegalUseCase(get()) }

    factory { SendMessageUseCase(get()) }
    factory { GetMessagesUseCase(get()) }
    factory { MarkMessagesAsReadUseCase(get()) }
    factory { ListarCitasUseCase(get()) }
    factory { StartTypingUseCase(get()) }
    factory { StopTypingUseCase(get()) }
    factory { ObserveTypingUseCase(get()) }
    factory { ObserveUserOnlineUseCase(get()) }
    factory { MarkMessageDeliveredUseCase(get()) }
    factory { UpdateUserOnlineUseCase(get()) }
    factory { IdiomaUseCase(get()) }
    factory { TerapiasGeneralUseCase(get()) }
    factory { GetUsuariosUseCase(get()) }
    factory { RoleAdminUseCase(get()) }
    factory { HistorialCitaUseCase(get()) }
    factory { TicketsUseCase(get()) }
    factory { FirebaseAuthManager() }

    viewModel { LoginViewModel(get(), get(), get(), get(), get(), get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    viewModel { ListarPacientesViewModel(get(), get(), get()) }
    viewModel { ListarPsicologosAdminViewModel(get(), get(), get()) }
    viewModel { PrincipalClienteViewModel() }
    viewModel { SettingsClienteViewModel(get(), get()) }
    viewModel { SituacionViewModel(get(), get()) }
    viewModel { CitasViewModel(get(), get(), get(), get()) }
    viewModel { QuestionnaireViewModel() }
    viewModel { PsicologoAgendaViewModel(get(), get(), get()) }
    viewModel { CuestionarioViewModel(get()) }
    viewModel { ListarPacientesByPsicologoViewModel(get(), get()) }
    viewModel { EstadisticasPsicologoViewModel(get(), get()) }
    viewModel { ProfilePsicologoViewModel(get()) }
    viewModel { EditProfilePsicologoViewModel(get()) }
    viewModel { PacienteViewModel(get()) }
    viewModel { ListarTerapiasViewModel(get(), get()) }
    viewModel { ListarCitasViewModel(get(), get(), get(), get()) }
    viewModel { DiarioEmocionalViewModel(get()) }
    viewModel { AdminRoleViewModel(get()) }
    viewModel { AdminUserViewModel(get()) }
    viewModel { TicketsViewModel(get(), get(), get()) }

    worker { SyncDiarioWorker(get(), get(), get()) }

    viewModel { ChatListViewModel(get(), get(), get()) }
    viewModel { (currentUserId: Long, otherUserId: Long, otherUserName: String) ->
        ChatViewModel(
            currentUserId = currentUserId,
            otherUserId = otherUserId,
            otherUserName = otherUserName,
            sendMessageUseCase = get(),
            getMessagesUseCase = get(),
            markMessagesAsReadUseCase = get(),
            markMessageDeliveredUseCase = get(),
            fileStorageService = get(),
            startTypingUseCase = get(),
            stopTypingUseCase = get(),
            observeTypingUseCase = get(),
            observeUserOnlineUseCase = get(),
            updateUserOnlineUseCase = get(),
            profileUseCaseGeneral = get(),
            authRepository = get(),
            chatRepositoryImpl = get(),
            crashReporter = get(),
            appContext = androidContext(),
        )
    }

    viewModel { NotificacionViewModel(get()) }
    viewModel { PacientesViewModel(get()) }

    single { PaymentRepository(get()) }
    factory { CreatePaymentIntentUseCase(get()) }
    viewModel { PaymentViewModel(get(), get()) }

    viewModel { SoporteTicketViewModel(get()) }
    viewModel { IdiomaViewModel(get(), get(), get()) }
    viewModel { ProfileAdminViewModel(get()) }
    viewModel { ProfilePacienteViewModel(get()) }
    viewModel { HistorialClinicoPacienteViewModel(get()) }
    viewModel { DocumentoLegalViewModel(get()) }
}
