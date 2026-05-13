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
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.koin.java.KoinJavaComponent.getKoin

@Composable
fun ThemeModeSelector(
    currentTema: TemaApp,
    userSessionDataStore: UserSessionDataStore? = null,
    session: UserSession?
) {
    var expanded by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val colors = LocalAmaniColors.current

    val store = userSessionDataStore ?: try {
        getKoin().get() as UserSessionDataStore
    } catch (e: Exception) {
        UserSessionDataStore(context)
    }

    Row(modifier = Modifier.fillMaxWidth()) {
        Row(
            modifier = Modifier
                .weight(1f)
                .clickable { expanded = true }
                .padding(start = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = when (currentTema) {
                    TemaApp.LIGHT -> "Blanco"
                    TemaApp.DARK -> "Negro"
                    TemaApp.SYSTEM -> "Defecto"
                },
                color = colors.cardContent
            )

            Icon(
                Icons.Default.ArrowDropDown,
                contentDescription = null,
                modifier = Modifier.padding(start = 6.dp),
                tint = colors.cardContent
            )
        }

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false }
        ) {
            DropdownMenuItem(
                text = { Text("Blanco", color = colors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        saveTemaToSession(store, session, TemaApp.LIGHT)
                    }
                }
            )

            DropdownMenuItem(
                text = { Text("Negro", color = colors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        saveTemaToSession(store, session, TemaApp.DARK)
                    }
                }
            )

            DropdownMenuItem(
                text = { Text("Defecto", color = colors.cardContent) },
                onClick = {
                    expanded = false
                    scope.launch {
                        saveTemaToSession(store, session, TemaApp.SYSTEM)
                    }
                }
            )
        }
    }
}

private suspend fun saveTemaToSession(
    userSessionDataStore: UserSessionDataStore,
    session: UserSession?,
    newTema: TemaApp
) {
    if (session != null) {
        val updated = session.copy(tema = newTema)
        userSessionDataStore.saveSession(updated)
    } else {
        val newSession = UserSession(
            idUsuario = 0L,
            nombre = null,
            rol = "guest",
            idPsicologo = null,
            idPaciente = null,
            idioma = "es",
            tema = newTema
        )
        userSessionDataStore.saveSession(newSession)
    }
}