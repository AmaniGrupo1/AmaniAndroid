package org.ies.tierno.applicationamani.presentation.viewmodels.idioma

import androidx.appcompat.app.AppCompatDelegate
import androidx.core.os.LocaleListCompat
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
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

            // Bug 4 Fix: Soporte para API 33+ (Tiramisu)
            // En Android 13+, el sistema gestiona los locales por aplicación de forma diferente.
            // Usamos AppCompatDelegate para notificar al sistema del cambio de forma persistente.
            val appLocale: LocaleListCompat = LocaleListCompat.forLanguageTags(nuevoIdioma)
            AppCompatDelegate.setApplicationLocales(appLocale)
        }
    }
}