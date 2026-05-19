package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
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
    private val userSessionDataStore: UserSessionDataStore,
) : ViewModel() {
    // ================= IDIOMA =================

    val idioma =
        userSessionDataStore.sessionFlow
            .map { it?.idioma ?: "es" }
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = "es",
            )

    fun cambiarIdioma(nuevoIdioma: String) {
        viewModelScope.launch {
            val session =
                userSessionDataStore.getSession()
                    ?: return@launch

            if (session.idioma == nuevoIdioma) {
                return@launch
            }

            try {
                // 1. Backend
                idiomaUseCase.actualizarIdioma(
                    session.idUsuario,
                    nuevoIdioma,
                )

                // 2. Local (esto es lo que realmente dispara UI)
                userSessionDataStore.saveSession(
                    session.copy(idioma = nuevoIdioma),
                )

                // Bug 4 Fix: Soporte para API 33+ (Tiramisu)
                val appLocale: LocaleListCompat = LocaleListCompat.forLanguageTags(nuevoIdioma)
                AppCompatDelegate.setApplicationLocales(appLocale)
            } catch (e: Exception) {
                println("Error al cambiar idioma: ${e.message}")
            }
        }
    }

    // ================= TEMA =================

    val tema =
        userSessionDataStore.sessionFlow
            .map { it?.tema ?: false } // false = blanco
            .stateIn(
                scope = viewModelScope,
                started = SharingStarted.WhileSubscribed(5000),
                initialValue = false,
            )

    fun cambiarTema(nuevoTema: Boolean) {
        viewModelScope.launch {
            val session =
                userSessionDataStore.getSession()
                    ?: return@launch

            if (session.tema == nuevoTema) {
                return@launch
            }

            // 1. Local (esto es lo que realmente dispara UI inmediatamente)
            userSessionDataStore.saveSession(
                session.copy(tema = nuevoTema),
            )

            // 2. Backend (intento asíncrono)
            idiomaUseCase
                .actualizarTema(nuevoTema)
                .onFailure {
                    // Log error but keep local theme
                    println("Error al sincronizar tema con backend: ${it.message}")
                }
        }
    }
}
