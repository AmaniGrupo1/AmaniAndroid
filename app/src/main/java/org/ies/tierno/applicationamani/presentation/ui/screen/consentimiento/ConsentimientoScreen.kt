package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel

@Composable
fun ConsentimientoScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
) {

    var aceptaVideo by remember { mutableStateOf(false) }
    var aceptaComunicacion by remember { mutableStateOf(false) }

    Scaffold { padding ->

        Column(
            modifier = Modifier
                .padding(padding)
                .padding(20.dp)
                .fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {

            Text(
                text = "Consentimiento informado",
                style = MaterialTheme.typography.titleLarge
            )

//            Row(verticalAlignment = Alignment.CenterVertically) {
//                Checkbox(
//                    checked = aceptaVideo,
//                    onCheckedChange = {
//                        aceptaVideo = it
//                        loginViewModel.setAceptaVideo(it)
//                    }
//                )
//                Text("Acepto videoconferencia")
//            }
//
//            Row(verticalAlignment = Alignment.CenterVertically) {
//                Checkbox(
//                    checked = aceptaComunicacion,
//                    onCheckedChange = {
//                        aceptaComunicacion = it
//                        loginViewModel.setAceptaComunicacion(it)
//                    }
//                )
//                Text("Acepto comunicación")
//            }

            Spacer(modifier = Modifier.height(20.dp))

            Button(
                onClick = {

//                    if (aceptaVideo || aceptaComunicacion) {
//
//                        navController.navigate(
//                            Screens.opcionPago.createRoute()
//                        )
//
//                    }

                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("Continuar")
            }
        }
    }
}