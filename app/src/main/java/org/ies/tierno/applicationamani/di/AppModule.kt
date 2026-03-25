package org.ies.tierno.applicationamani.di

import com.google.firebase.firestore.FirebaseFirestore
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.SituacionRepository
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
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel


import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module

val appModule = module {
    single { AuthRepository(get()) }
    single { TestRepositoryApi(get()) }
    single { SituacionRepository(get()) }

    factory { LoginUseCase(get()) }
    factory { GetAllClientAndPsicologoUseCase(get()) }
    factory { CrearPreguntaUseCase(get()) }
    //factory { ListarPreguntasUseCase(get()) }
    factory { DarBajaPacienteUseCase(get()) }
    factory { TodosLosPacientesUseCase(get()) }
    factory { ListarPsicologoAdminUseCase(get()) }
    factory { AsignarPacienteAlPsicologoUseCase(get()) }
    factory { ResponderTestUseCase(get()) }
    factory { ListarSituacionUseCase(get()) }

    viewModel { LoginViewModel(get(), get(), get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    //viewModel { CuestionarioViewModel(get(), get()) }
    viewModel { ListarPacientesViewModel(get(), get()) }
    viewModel { ListarPsicologosAdminViewModel(get()) }
    viewModel { PrincipalClienteViewModel() }
    viewModel { SettingsClienteViewModel() }
    viewModel { SituacionViewModel(get()) }
}