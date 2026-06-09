package org.ies.tierno.applicationamani.presentation.ui.components

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.koin.androidx.compose.koinViewModel
import org.koin.java.KoinJavaComponent.getKoin

/**
 * Selector desplegable de tema (claro/oscuro) para la pantalla de ajustes.
 *
 * Muestra el tema actual como texto pulsable y despliega un [DropdownMenu]
 * con las opciones \»Claro\» y \»Oscuro\». Al seleccionar una opción,
 * invoca [IdiomaViewModel.cambiarTema] para persistir la preferencia.
 *
 * @param currentTema Estado actual del tema: `true` para oscuro, `false` para claro.
 * @param userSessionDataStore Almacén de sesión opcional; si es `null`, se obtiene de Koin.
 * @param session Sesión actual del usuario.
 * @param idiomaViewModel ViewModel que gestiona el cambio de tema e idioma.
 */
@Composable
fun ThemeModeSelector(
    currentTema: Boolean,
    userSessionDataStore: UserSessionDataStore? = null,
    session: UserSession?,
    idiomaViewModel: IdiomaViewModel = koinViewModel(),
) {
    var expanded by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val colors = LocalAmaniColors.current

    val store =
        userSessionDataStore ?: try {
            getKoin().get() as UserSessionDataStore
        } catch (e: Exception) {
            UserSessionDataStore(context)
        }

    // Determinar el texto a mostrar según el tema actual
    val currentText = if (currentTema) "Oscuro" else "Claro"

    Row(modifier = Modifier.fillMaxWidth()) {
        Row(
            modifier =
                Modifier
                    .weight(1f)
                    .clickable { expanded = true }
                    .padding(start = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = currentText,
                color = colors.cardContent,
            )

            Icon(
                Icons.Default.ArrowDropDown,
                contentDescription = null,
                modifier = Modifier.padding(start = 6.dp),
                tint = colors.cardContent,
            )
        }

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false },
        ) {
            DropdownMenuItem(
                text = { Text(stringResource(R.string.auto_claro), color = colors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        idiomaViewModel.cambiarTema(false) // false = claro
                    }
                },
            )

            DropdownMenuItem(
                text = { Text(stringResource(R.string.auto_oscuro), color = colors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        idiomaViewModel.cambiarTema(true) // true = oscuro
                    }
                },
            )
        }
    }
}
