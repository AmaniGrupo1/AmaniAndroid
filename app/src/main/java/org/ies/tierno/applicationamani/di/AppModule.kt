package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.usecases.ListarSituacionUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.koin.android.ext.koin.androidContext


import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module

val appModule = module {
    single{ TokenDataStore(androidContext()) }
    single { UserSessionDataStore(get()) }

    single { AuthRepository(get(), get(), get()) }
    single { TestRepositoryApi(get()) }
    single { SituacionRepository(get()) }
    single { CitasRepository(get()) }
    single { ProfileRepository(get()) }

    factory { LoginUseCase(get()) }
    factory { GetAllClientAndPsicologoUseCase(get()) }
    factory { CrearPreguntaUseCase(get()) }
    factory { ListarPreguntasUseCase(get()) }
    factory { DarBajaPacienteUseCase(get()) }
    factory { TodosLosPacientesUseCase(get()) }
    factory { ListarPsicologoAdminUseCase(get()) }
    factory { AsignarPacienteAlPsicologoUseCase(get()) }
    factory { ResponderTestUseCase(get()) }
    factory { ListarSituacionUseCase(get()) }
    factory { ListarPacientesByPsicologo(get()) }
    factory { ProfileUseCaseGeneral(get()) }

    viewModel { LoginViewModel(get(), get(), get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    viewModel { ListarPacientesViewModel(get(), get()) }
    viewModel { ListarPsicologosAdminViewModel(get()) }
    viewModel { PrincipalClienteViewModel() }
    viewModel { SettingsClienteViewModel() }
    viewModel { SituacionViewModel(get()) }
    viewModel { CitasViewModel(get(), get()) }
    viewModel { QuestionnaireViewModel() }
    viewModel { PsicologoAgendaViewModel(get(),get()) }
    viewModel { CuestionarioViewModel(get()) }
    viewModel { ListarPacientesByPsicologoViewModel(get()) }
    viewModel { ProfilePsicologoViewModel(get()) }
    viewModel { PacienteViewModel(get()) }
}