package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuPrincipal(navController: NavController) {

    var expanded by remember { mutableStateOf(false) }

    val primaryBlue = Color(android.graphics.Color.parseColor("#CCC0E4"))
    val white = Color.White

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = primaryBlue,
            titleContentColor = white
        ),

        title = {
            Image(
                painter = painterResource(id = R.drawable.logo),
                contentDescription = "Logo",
                modifier = Modifier.size(250.dp),
                alpha = 1f
            )
        },

        actions = {

            IconButton(
                onClick = { expanded = true }
            ) {
                Icon(
                    imageVector = Icons.Default.ArrowDropDown,
                    contentDescription = "Menú",
                    modifier = Modifier.size(28.dp),
                    tint = white
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {

                DropdownMenuItem(
                    text = { Text("Inicia sesión") },
                    onClick = {
                        expanded = false
                        navController.navigate("login")
                    }
                )

                DropdownMenuItem(
                    text = { Text("Regístrate") },
                    onClick = {
                        expanded = false
                        navController.navigate("registro")
                    }
                )

                DropdownMenuItem(
                    text = { Text("Más Info") },
                    onClick = {
                        expanded = false
                        navController.navigate("info")
                    }
                )

                DropdownMenuItem(
                    text = { Text("Política de privacidad") },
                    onClick = {
                        expanded = false
                        navController.navigate("privacidad")
                    }
                )
            }
        }
    )
}