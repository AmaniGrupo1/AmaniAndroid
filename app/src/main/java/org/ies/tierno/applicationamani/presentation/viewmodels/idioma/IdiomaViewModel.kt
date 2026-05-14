package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.usecases.idiomaUseCase.IdiomaUseCase

class IdiomaViewModel(
    private val idiomaUseCase: IdiomaUseCase,
    private val userSessionDataStore: UserSessionDataStore
) : ViewModel() {

    // ================= IDIOMA =================

    val idioma = userSessionDataStore.sessionFlow
        .map { it?.idioma ?: "es" }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = "es"
        )

    fun cambiarIdioma(nuevoIdioma: String) {

        viewModelScope.launch {

            val session = userSessionDataStore.getSession()
                ?: return@launch

            if (session.idioma == nuevoIdioma) {
                return@launch
            }

            try {

                // Backend
                idiomaUseCase.actualizarIdioma(
                    session.idUsuario,
                    nuevoIdioma
                )

                // Local
                userSessionDataStore.saveSession(
                    session.copy(
                        idioma = nuevoIdioma
                    )
                )

            } catch (e: Exception) {

                println("Error al cambiar idioma: ${e.message}")
            }
        }
    }

    // ================= TEMA =================

    val tema = userSessionDataStore.sessionFlow
        .map { it?.tema ?: false } // false = blanco
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = false
        )

    fun cambiarTema(nuevoTema: Boolean) {

        viewModelScope.launch {

            val session = userSessionDataStore.getSession()
                ?: return@launch

            if (session.tema == nuevoTema) {
                return@launch
            }

            idiomaUseCase.actualizarTema(nuevoTema)
                .onSuccess {

                    userSessionDataStore.saveSession(
                        session.copy(
                            tema = nuevoTema
                        )
                    )
                }
                .onFailure {

                    println(
                        "Error al actualizar tema: ${it.message}"
                    )
                }
        }
    }
}