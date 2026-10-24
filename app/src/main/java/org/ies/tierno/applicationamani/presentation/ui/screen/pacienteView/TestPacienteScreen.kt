package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.content.res.Configuration
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import org.ies.tierno.applicationamani.ui.theme.AppTheme

/**
 * Pantalla de test del paciente (placeholder).
 *
 * Actualmente muestra una estructura vacía con [Scaffold] y [Column].
 * Pendiente de implementar la lógica de visualización de test asignados.
 */
@Composable
fun TestPacienteScreen(modifier: Modifier = Modifier) {
    Scaffold(modifier = modifier) { innerPadding ->
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

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun TestPacienteScreenPreview() {
    AppTheme {
        TestPacienteScreen()
    }
}
