package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipal
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

/**
 * Pantalla principal de bienvenida para usuarios no autenticados.
 *
 * Muestra el nombre de la marca «AMANI», frases motivacionales, un botón
 * para acceder al cuestionario de evaluación y un botón para obtener
 * un consejo aleatorio.
 *
 * Incluye la barra superior [MenuPrincipal] con opciones de navegación
 * hacia login, registro y la propia pantalla principal.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 *
 * @see MenuPrincipal
 * @see QuestionnaireScreen
 */
@Composable
fun Principal(navController: NavController) {
    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography

    Scaffold(
        topBar = {
            MenuPrincipal(navController)
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier.padding(innerPadding)
                .padding(16.dp)
                .fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text(
                "AMANI",
                style = typography.displayLarge,
                modifier = Modifier.padding(16.dp),
            )
            Text(
                "Aquí comienza tu camino de autoconocimiento,bienestar y paz interior",
                style = typography.bodyLarge,
                modifier = Modifier.padding(16.dp)
                    .fillMaxWidth(),
                textAlign = TextAlign.Center,
            )
            Text(
                "Cada paso que das hacia tu bienestar, por pequeño que parezca, es un acto de valentía y amor propio.",
                style = typography.bodyLarge,
                modifier = Modifier.padding(16.dp)
                    .fillMaxWidth(),
                textAlign = TextAlign.Center,
            )

            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                onClick = {

                },
                border = BorderStroke(2.dp, amaniColors.buttonBorder),
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.primary,
                    contentColor = colors.onPrimary,
                )
            ) {
                Text(
                    "Realizar cuestionario",
                    style = typography.labelLarge
                )
            }
            Spacer(modifier = Modifier.height(16.dp))
            var esta by remember { mutableStateOf(false) }
            if (esta) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                        .clickable {
                            esta = false
                        }
                        .border(2.dp, colors.outline, RoundedCornerShape(8.dp))
                ) {
                    Text(
                        "Consejo",
                        style = typography.bodyLarge,
                        modifier = Modifier.padding(16.dp)
                            .fillMaxWidth(),
                    )
                }
            }
            Spacer(modifier = Modifier.height(16.dp))
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                onClick = {
                    esta = true
                },
                border = BorderStroke(2.dp, amaniColors.buttonBorder),
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.primary,
                    contentColor = colors.onPrimary,
                )
            ) {
                Text(
                    "Consejo",
                    style = typography.labelLarge
                )
            }
        }
    }
}

/**
 * Vista previa de [Principal] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true)
@Composable
fun PrincipalPreview() {
    Principal(rememberNavController())
}