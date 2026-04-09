package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuSetting(
    navController: NavController,
    idPsicologo: Long?  // ← Asegurar que este parámetro existe
) {

    LaunchedEffect(idPsicologo) {
        println("ID Psicologo actualizado: $idPsicologo")
    }

    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = colors.primary,
            titleContentColor = colors.onPrimary
        ),
        navigationIcon = {
            Image(
                painter = painterResource(id = R.drawable.logo_original),
                contentDescription = "Logo",
                modifier = Modifier.size(40.dp)
            )
        },
        title = { },
        actions = {
            IconButton(onClick = { expanded = !expanded }) {
                Icon(
                    Icons.Default.Menu,
                    contentDescription = "Menu",
                    tint = colors.onPrimary
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {
                DropdownMenuItem(
                    text = { Text("Perfil", style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        print("idPsicologo en MenuSetting: $idPsicologo") // Debug
                        navController.navigate(Screens.perfilPsicologo.createRoute(idPsicologo))
                    }
                )

                DropdownMenuItem(
                    text = { Text("Sign out", style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    }
                )
            }
        }
    )
}