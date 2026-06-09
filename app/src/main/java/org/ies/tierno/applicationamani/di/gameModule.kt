package org.ies.tierno.applicationamani.di


import org.ies.tierno.applicationamani.presentation.viewmodels.juego.SnakeViewModel
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module

val gameModule = module {
    viewModel { SnakeViewModel() }
}