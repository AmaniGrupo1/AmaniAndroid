package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento
import org.ies.tierno.applicationamani.ui.theme.AppTheme

import android.content.res.Configuration
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de selección del método de pago durante el registro.
 *
 * Permite al usuario elegir entre pago presencial y pago online antes
 * de finalizar el proceso de alta en la plataforma.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 */
@Composable
fun OpcionPagoScreen(navController: NavController) {
    var metodoPago by remember { mutableStateOf("") }

    OpcionPagoScreenContent(
        onMetodoSelected = { metodoPago = it },
        onContinuarClick = {},
    )
}

@Composable
fun OpcionPagoScreenContent(
    onMetodoSelected: (String) -> Unit,
    onContinuarClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
    ) { padding ->
        Column(
            modifier =
                Modifier
                    .padding(padding)
                    .padding(Spacing.l)
                    .fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            Text(
                stringResource(R.string.auto_selecciona_metodo_de_pago),
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onBackground,
            )

            Button(
                onClick = { onMetodoSelected("PRESENCIAL") },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_pago_presencial))
            }

            Button(
                onClick = { onMetodoSelected("ONLINE") },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_pago_online))
            }

            Spacer(modifier = Modifier.height(Spacing.l))

            Button(
                onClick = onContinuarClick,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_continuar))
            }
        }
    }
}

@Preview(showBackground = true, name = "OpcionPagoScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "OpcionPagoScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "OpcionPagoScreen - FontScale 1.5x")
@Composable
private fun OpcionPagoScreenPreview() {
    AppTheme {
        OpcionPagoScreenContent(
            onMetodoSelected = {},
            onContinuarClick = {},
        )
    }
}
