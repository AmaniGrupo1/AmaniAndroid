package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier

/**
 * Pantalla de test del paciente (placeholder).
 *
 * Actualmente muestra una estructura vacía con [Scaffold] y [Column].
 * Pendiente de implementar la lógica de visualización de test asignados.
 */
@Composable
fun TestPacienteScreen() {
    Scaffold { innerPadding ->
        Column(
            modifier =
                Modifier
                    .padding(innerPadding)
                    .fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
        }
    }
}
