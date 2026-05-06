package org.ies.tierno.applicationamani.di


import EditProfilePsicologoViewModel
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.data.local.AuthEventChannel
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.data.remoto.FirebaseInstance
import org.ies.tierno.applicationamani.data.repositorio.AjustesRepository
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.NotificacionRepository
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.situaciones.SituacionUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarCitasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.CitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.domain.usecases.StartTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.StopTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.ObserveTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.ObserveUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessageDeliveredUseCase
import org.ies.tierno.applicationamani.domain.usecases.UpdateUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetPacientesSinPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase
import org.ies.tierno.applicationamani.domain.usecases.notificacion.NotificacionUseCase
import org.ies.tierno.applicationamani.domain.usecases.terapia.TerapiasGeneralUseCase
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.PacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.notificacion.NotificacionViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.admin.ProfileAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente.ProfilePacienteViewModel
import org.koin.android.ext.koin.androidContext
import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module

val appModule = module {
    single{ TokenDataStore(androidContext()) }
    single { TokenHolder(get()) }
    single { AuthEventChannel() }
    single { UserSessionDataStore(get()) }

    single { AuthRepository(get(), get(), get()) }
    single { TestRepositoryApi(get()) }
    single { SituacionRepository(get()) }
    single { CitasRepository(get()) }
    single { ProfileRepository(get()) }
    single { NotificacionRepository(get()) }
    single { AjustesRepository(get()) }

    single { FirebaseInstance }
    single { ChatFirebaseService(get()) }
    single<ChatRepository> { ChatRepositoryImpl(get()) }
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
    //REPOSITORIO
    factory { NotificacionUseCase(get()) }
    factory { GetPacientesSinPsicologoUseCase(get()) }


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

    viewModel { LoginViewModel(get(), get(), get(), get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    viewModel { ListarPacientesViewModel(get(), get()) }
    viewModel { ListarPsicologosAdminViewModel(get()) }
    viewModel { PrincipalClienteViewModel() }
    viewModel { SettingsClienteViewModel() }
    viewModel { SituacionViewModel(get()) }
    viewModel { CitasViewModel(get(), get(), get()) }
    viewModel { QuestionnaireViewModel() }
    viewModel { PsicologoAgendaViewModel(get(),get(),get()) }
    viewModel { CuestionarioViewModel(get()) }
    viewModel { ListarPacientesByPsicologoViewModel(get(), get()) }
    viewModel { ProfilePsicologoViewModel(get()) }
    viewModel { EditProfilePsicologoViewModel(get()) }
    viewModel { PacienteViewModel(get()) }
    viewModel { ListarTerapiasViewModel(get(), get()) }
    viewModel { ListarCitasViewModel(get(), get()) }

    viewModel { ChatListViewModel(get(), get(), get()) }
    viewModel { (currentUserId: Long, otherUserId: Long) ->
        ChatViewModel(
            currentUserId = currentUserId,
            otherUserId = otherUserId,
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
            appContext = androidContext()
        )
    }


    //NOTIFICACION
    viewModel { NotificacionViewModel(get()) }
    viewModel { PacientesViewModel(get()) }
    viewModel { IdiomaViewModel(get(), get()) }
    viewModel { ProfileAdminViewModel(get()) }
    viewModel { ProfilePacienteViewModel(get()) }
}
