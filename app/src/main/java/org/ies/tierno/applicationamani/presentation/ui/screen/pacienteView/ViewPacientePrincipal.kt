package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController

/**
 * Pantalla principal de la vista del paciente (placeholder).
 *
 * Muestra un texto identificativo «Paciente». Pendiente de implementar
 * el contenido real (resumen de citas, estado emocional, etc.).
 *
 * @param navController Controlador de navegación.
 */
@Composable
fun ViewPacientePrincipal(navController: NavController) {
    Scaffold() {
        innerPaddding ->
        Column(modifier = Modifier.padding(innerPaddding)
            .fillMaxSize()){
            Text(
                text = "Paciente",
                fontSize = 54.sp
            )
        }
    }
}