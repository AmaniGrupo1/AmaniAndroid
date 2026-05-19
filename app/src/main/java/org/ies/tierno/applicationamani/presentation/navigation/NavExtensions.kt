package org.ies.tierno.applicationamani.presentation.navigation

import androidx.navigation.NavController

/**
 * Llama a [NavController.popBackStack] solo si hay entradas previas en el backstack.
 * Evita crashes cuando la pantalla actual es la primera (y única) del stack.
 */
fun NavController.safePopBackStack() {
    if (previousBackStackEntry != null) popBackStack()
}
