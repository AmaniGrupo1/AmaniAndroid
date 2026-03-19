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

import org.ies.tierno.applicationamani.data.repositorio.CustomerRepository


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
//    single { FirebaseFirestore.getInstance() }
//    single { CustomerRepository(get()) }
//
//    factory { ListBookUseCase(get()) }
//
//
//    // Crea el viewModel con las dependencias que tenga definidas
//    viewModel { LibrosViewModel(get(), get()) }

}