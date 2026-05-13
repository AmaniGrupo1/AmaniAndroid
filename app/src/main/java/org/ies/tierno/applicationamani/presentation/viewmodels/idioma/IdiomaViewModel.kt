package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase

class IdiomaViewModel(
    private val idiomaUseCase: IdiomaUseCase,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    // Estado observable de idioma (CLAVE)
    val idioma = userSessionDataStore.sessionFlow
        .map { it?.idioma ?: "es" }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = "es"
        )

    fun cambiarIdioma(nuevoIdioma: String) {
        viewModelScope.launch {
            val session = userSessionDataStore.getSession() ?: return@launch

            if (session.idioma == nuevoIdioma) return@launch

            // 1. Backend
            idiomaUseCase.actualizarIdioma(session.idUsuario, nuevoIdioma)

            // 2. Local (esto es lo que realmente dispara UI)
            userSessionDataStore.saveSession(
                session.copy(idioma = nuevoIdioma)
            )
        }
    }

    val tema = userSessionDataStore.sessionFlow
        .map { it?.tema ?: TemaApp.SYSTEM }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = TemaApp.SYSTEM
        )

    fun cambiarTema(nuevoTema: TemaApp) {
        viewModelScope.launch {

            val session = userSessionDataStore.getSession() ?: return@launch

            if (session.tema == nuevoTema) return@launch

            idiomaUseCase.actualizarTema(nuevoTema)
                .onSuccess {

                    userSessionDataStore.saveSession(
                        session.copy(tema = nuevoTema)
                    )
                }
                .onFailure {
                    // Manejar el error
                    print("Error al actualizar tema: ${it.message}")
                }
        }
    }
}