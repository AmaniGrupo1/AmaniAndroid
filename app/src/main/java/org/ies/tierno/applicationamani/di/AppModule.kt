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
import org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
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

    factory { LoginUseCase(get()) }
    factory { GetAllClientAndPsicologoUseCase(get()) }
    factory { CrearPreguntaUseCase(get()) }
    factory { ListarPreguntasUseCase(get()) }
    factory { DarBajaPacienteUseCase(get()) }
    factory { TodosLosPacientesUseCase(get()) }

    viewModel { LoginViewModel(get()) }
    viewModel { GetAllPacientAndPsicologoVeiwModel(get()) }
    viewModel { CrearPreguntaViewModel(get()) }
    viewModel { CuestionarioViewModel(get()) }
    viewModel { ListarPacientesViewModel(get(), get()) }
}