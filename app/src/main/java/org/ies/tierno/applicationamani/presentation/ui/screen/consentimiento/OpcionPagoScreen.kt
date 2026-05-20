package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController

@Composable
fun OpcionPagoScreen(navController: NavController) {
    var metodoPago by remember { mutableStateOf("") }

    Scaffold { padding ->

        Column(
            modifier =
                Modifier
                    .padding(padding)
                    .padding(20.dp)
                    .fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Text(
                "Selecciona método de pago",
                style = MaterialTheme.typography.titleLarge,
            )

            Button(
                onClick = { metodoPago = "PRESENCIAL" },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text("Pago presencial")
            }

            Button(
                onClick = { metodoPago = "ONLINE" },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text("Pago online")
            }

            Spacer(modifier = Modifier.height(20.dp))

            Button(
                onClick = {
                    if (metodoPago.isNotEmpty()) {
                        // aquí podrías guardar el método de pago si quieres

//                        navController.navigate(
//                        //    Screens.opcionPago.route
//                        )
                    }
                },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text("Continuar")
            }
        }
    }
}
