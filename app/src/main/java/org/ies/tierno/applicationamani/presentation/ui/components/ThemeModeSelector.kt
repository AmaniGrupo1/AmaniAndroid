package org.ies.tierno.applicationamani.presentation.ui.components

import android.content.res.Configuration
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Selector desplegable de tema (claro/oscuro) para la pantalla de ajustes.
 *
 * Muestra el tema actual como texto pulsable y despliega un [DropdownMenu]
 * con las opciones «Claro» y «Oscuro». Al seleccionar una opción,
 * invoca [IdiomaViewModel.cambiarTema] para persistir la preferencia.
 *
 * @param currentTema Estado actual del tema: `true` para oscuro, `false` para claro.
 * @param userSessionDataStore Almacén de sesión opcional; si es `null`, se obtiene de Koin.
 * @param session Sesión actual del usuario.
 * @param modifier Modificador externo opcional.
 * @param idiomaViewModel ViewModel que gestiona el cambio de tema e idioma.
 */
@Composable
fun ThemeModeSelector(
    currentTema: Boolean,
    userSessionDataStore: UserSessionDataStore? = null,
    session: UserSession?,
    modifier: Modifier = Modifier,
    idiomaViewModel: IdiomaViewModel = koinViewModel(),
) {
    val scope = rememberCoroutineScope()
    ThemeModeSelectorContent(
        currentTema = currentTema,
        onTemaSelected = { nuevoTema ->
            scope.launch {
                idiomaViewModel.cambiarTema(nuevoTema)
            }
        },
        modifier = modifier,
    )
}

@Composable
fun ThemeModeSelectorContent(
    currentTema: Boolean,
    onTemaSelected: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
) {
    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme
    val currentText =
        if (currentTema) {
            stringResource(R.string.auto_oscuro)
        } else {
            stringResource(R.string.auto_claro)
        }

    Row(modifier = modifier.fillMaxWidth()) {
        Row(
            modifier =
                Modifier
                    .weight(1f)
                    .defaultMinSize(minHeight = Dimensions.minTouchTarget)
                    .clickable { expanded = true }
                    .padding(start = Spacing.s),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = currentText,
                style = MaterialTheme.typography.bodyLarge,
                color = colors.onSurface,
            )

            Icon(
                imageVector = Icons.Default.ArrowDropDown,
                contentDescription = null,
                modifier = Modifier.padding(start = Spacing.xs),
                tint = colors.onSurfaceVariant,
            )
        }

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false },
        ) {
            DropdownMenuItem(
                text = {
                    Text(
                        text = stringResource(R.string.auto_claro),
                        style = MaterialTheme.typography.bodyMedium,
                        color = colors.onSurface,
                    )
                },
                onClick = {
                    expanded = false
                    onTemaSelected(false)
                },
            )

            DropdownMenuItem(
                text = {
                    Text(
                        text = stringResource(R.string.auto_oscuro),
                        style = MaterialTheme.typography.bodyMedium,
                        color = colors.onSurface,
                    )
                },
                onClick = {
                    expanded = false
                    onTemaSelected(true)
                },
            )
        }
    }
}

@Preview(name = "ThemeModeSelector - Light", showBackground = true)
@Preview(name = "ThemeModeSelector - Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ThemeModeSelector - Large Font", fontScale = 1.5f, showBackground = true)
@Composable
private fun ThemeModeSelectorPreview() {
    AppTheme {
        ThemeModeSelectorContent(
            currentTema = false,
            onTemaSelected = {},
        )
    }
}

