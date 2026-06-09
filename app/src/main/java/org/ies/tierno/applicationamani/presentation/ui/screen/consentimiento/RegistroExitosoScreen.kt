package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Pantalla de confirmación de registro exitoso.
 *
 * Muestra un mensaje de éxito tras completar el proceso de registro y
 * ofrece un botón para navegar a la pantalla de inicio de sesión.
 *
 * @param navController Controlador de navegación para ir al login.
 */
@Composable
fun RegistroExitosoScreen(navController: NavController) {
    Scaffold(
        containerColor = Color(0xFFCCC0E4),
    ) { padding ->

        Column(
            modifier =
                Modifier
                    .padding(padding)
                    .fillMaxSize(),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Text(
                text = stringResource(R.string.auto_registro_completado_correctamente),
                style = MaterialTheme.typography.titleLarge,
            )

            Spacer(modifier = Modifier.height(20.dp))
            Button(
                onClick = {
                    navController.navigate(Screens.login.route)
                },
            ) {
                Text(stringResource(R.string.auto_ir_al_login))
            }
        }
    }
}
