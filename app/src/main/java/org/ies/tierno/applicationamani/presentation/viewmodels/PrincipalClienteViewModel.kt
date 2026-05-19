package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.lifecycle.ViewModel

/**
 * ViewModel de la pantalla principal del cliente autenticado.
 *
 * Proporciona los datos del psicólogo asignado que se muestran en
 * [org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen], como la lista de especialidades.
 * Actualmente contiene datos de ejemplo estáticos.
 *
 * @see org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen
 */
class PrincipalClienteViewModel : ViewModel() {
    /**
     * Lista de especialidades del psicólogo asignado al usuario.
     *
     * En una versión futura se obtendrá desde el repositorio remoto.
     */
    val especialidades =
        listOf(
            "Especialidad 1",
            "Especialidad 2",
            "Especialidad 3",
            "Especialidad 4",
        )
}
