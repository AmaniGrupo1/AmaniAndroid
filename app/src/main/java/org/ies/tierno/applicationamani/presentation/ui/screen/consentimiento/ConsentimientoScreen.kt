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
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de consentimiento informado durante el proceso de registro.
 *
 * Presenta al usuario las opciones de consentimiento (videoconferencia,
 * comunicación) y permite continuar con el registro una vez aceptadas.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel que gestiona el estado del registro.
 */
@Composable
fun ConsentimientoScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
) {
    var aceptaVideo by remember { mutableStateOf(false) }
    var aceptaComunicacion by remember { mutableStateOf(false) }

    ConsentimientoScreenContent(
        onContinuarClick = {},
    )
}

@Composable
fun ConsentimientoScreenContent(
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
                text = stringResource(R.string.auto_consentimiento_informado),
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onBackground,
            )

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

@Preview(showBackground = true, name = "ConsentimientoScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "ConsentimientoScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "ConsentimientoScreen - FontScale 1.5x")
@Composable
private fun ConsentimientoScreenPreview() {
    AppTheme {
        ConsentimientoScreenContent(onContinuarClick = {})
    }
}
