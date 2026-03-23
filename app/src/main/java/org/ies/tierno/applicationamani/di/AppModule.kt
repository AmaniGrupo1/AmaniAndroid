/**
 * Módulo Koin de la capa de aplicación.
 *
 * Registra los repositorios, casos de uso y ViewModels como
 * dependencias inyectables. Actualmente vacío a la espera de que
 * se definan las implementaciones concretas.
 *
 * @see retrofitModule
 */
package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ResponderTestUseCase
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel


import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module

/**
 * Módulo Koin para dependencias generales de la aplicación.
 *
 * Aquí se deben registrar:
 * - `single { ... }` para repositorios y servicios.
 * - `factory { ... }` para casos de uso.
 * - `viewModel { ... }` para ViewModels con dependencias inyectadas.
 */
val appModule = module {
    single { AuthRepository(get()) }
    single { TestRepositoryApi(get()) }
    single { CitasRepository(get()) }

    factory { LoginUseCase(get()) }
    factory { GetAllClientAndPsicologoUseCase(get()) }
    factory { CrearPreguntaUseCase(get()) }
    factory { ListarPreguntasUseCase(get()) }
    factory { DarBajaPacienteUseCase(get()) }
    factory { TodosLosPacientesUseCase(get()) }
    factory { ListarPsicologoAdminUseCase(get()) }
    factory { AsignarPacienteAlPsicologoUseCase(get()) }
    factory { ResponderTestUseCase(get()) }

    viewModel { LoginViewModel(get(), get(), get(), get()) }
    viewModel { CitasViewModel(get(), get()) }
    viewModel { PsicologoAgendaViewModel(get(), get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    viewModel { CuestionarioViewModel(get(), get()) }
    viewModel { ListarPacientesViewModel(get(), get()) }
    viewModel { ListarPsicologosAdminViewModel(get()) }
    viewModel { PrincipalClienteViewModel() }
    viewModel { SettingsClienteViewModel() }
}
