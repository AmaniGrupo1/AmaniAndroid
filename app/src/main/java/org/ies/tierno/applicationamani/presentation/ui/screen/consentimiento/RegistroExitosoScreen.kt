package org.ies.tierno.applicationamani.presentation.ui.screen.consentimiento
import org.ies.tierno.applicationamani.ui.theme.AppTheme

import android.content.res.Configuration
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

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
    RegistroExitosoScreenContent(
        onIrAlLoginClick = { navController.navigate(Screens.login.route) },
    )
}

@Composable
fun RegistroExitosoScreenContent(
    onIrAlLoginClick: () -> Unit,
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
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Text(
                text = stringResource(R.string.auto_registro_completado_correctamente),
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onBackground,
                textAlign = TextAlign.Center,
            )

            Spacer(modifier = Modifier.height(Spacing.l))
            Button(
                onClick = onIrAlLoginClick,
            ) {
                Text(stringResource(R.string.auto_ir_al_login))
            }
        }
    }
}

@Preview(showBackground = true, name = "RegistroExitosoScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "RegistroExitosoScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "RegistroExitosoScreen - FontScale 1.5x")
@Composable
private fun RegistroExitosoScreenPreview() {
    AppTheme {
        RegistroExitosoScreenContent(onIrAlLoginClick = {})
    }
}
