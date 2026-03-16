package org.ies.tierno.applicationamani.di

import com.google.firebase.firestore.FirebaseFirestore
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.data.repositorio.CustomerRepository
import org.ies.tierno.applicationamani.data.repositorio.PreguntasRepository
import org.ies.tierno.applicationamani.data.repositorio.RespuestasRepository
import org.ies.tierno.applicationamani.domain.usecases.GuardarRespuestaUseCase
import org.ies.tierno.applicationamani.domain.usecases.InsertarPreguntasAndRequestUseCase
import org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.TestPacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.TestScreenViewModel


import org.koin.core.module.dsl.viewModel
import org.koin.dsl.module

val appModule = module {
    single { FirebaseFirestore.getInstance() }
    single { PreguntasRepository() }
    single { RespuestasRepository() }
    single { AuthRepository(get()) }
//
    factory { InsertarPreguntasAndRequestUseCase(get()) }
    factory { GuardarRespuestaUseCase(get()) }
    factory { LoginUseCase(get()) }
//
//
//    // Crea el viewModel con las dependencias que tenga definidas
    viewModel { LoginViewModel(get()) }
    viewModel { TestScreenViewModel(get()) }
    viewModel { TestPacienteViewModel(get(), get()) }
}