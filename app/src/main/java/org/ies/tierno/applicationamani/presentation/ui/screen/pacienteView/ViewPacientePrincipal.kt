package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.components.BottomBar

/**
 * Pantalla principal de la vista del paciente (placeholder).
 *
 * Muestra un texto identificativo «Paciente» centrado.
 * Incluye la [BottomBar] para la navegación del paciente.
 *
 * @param navController Controlador de navegación.
 */
@Composable
fun ViewPacientePrincipal(navController: NavController) {
    Scaffold(
        bottomBar = { BottomBar(navController) }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .padding(innerPadding)
                .fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = "Paciente",
                fontSize = 54.sp
            )
        }
    }
}
