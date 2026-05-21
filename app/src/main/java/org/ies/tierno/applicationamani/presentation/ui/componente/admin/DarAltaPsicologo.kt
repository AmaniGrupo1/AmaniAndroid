package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import androidx.compose.animation.*
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Barra superior (TopAppBar) para la pantalla de alta de psicólogo.
 *
 * Incluye animación de transición entre el logo y el título, un badge
 * de notificaciones y un menú desplegable con la opción de dar de alta
 * a un nuevo psicólogo. Utiliza los colores primarios del tema Material 3.
 *
 * @param title Título a mostrar en la barra.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param showBackButton Indica si se debe mostrar el botón de retroceso.
 * @param showLogo Indica si se debe mostrar el logotipo junto al título.
 * @param onLogout Callback opcional invocado al cerrar sesión.
 * @param actions Contenido adicional a la derecha de la barra.
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun DarAltaPsicologo(
    title: String,
    navController: NavController,
    showBackButton: Boolean = false,
    showLogo: Boolean = false,
    onLogout: (() -> Unit)? = null,
    actions: @Composable RowScope.() -> Unit = {},
) {
    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme

    TopAppBar(
        modifier =
            Modifier
                .shadow(elevation = 4.dp, shape = RoundedCornerShape(bottomStart = 0.dp, bottomEnd = 0.dp)),
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.primary,
                titleContentColor = colors.onPrimary,
                navigationIconContentColor = colors.onPrimary,
                actionIconContentColor = colors.onPrimary,
            ),
        title = {
            AnimatedContent(
                targetState = showLogo to title,
                transitionSpec = {
                    fadeIn().togetherWith(fadeOut())
                },
            ) { (showLogoValue, titleValue) ->
                if (showLogoValue) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                    ) {
                        Icon(
                            painter = painterResource(id = R.drawable.logo_original),
                            contentDescription = "Logo",
                            modifier = Modifier.size(32.dp),
                            tint = Color.Unspecified,
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = titleValue,
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.onPrimary,
                            maxLines = 1,
                        )
                    }
                } else {
                    Text(
                        text = titleValue,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onPrimary,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        },
        actions = {
            actions()

            IconButton(
                onClick = { /* Navegar a notificaciones */ },
            ) {
                Badge(
                    containerColor = colors.error,
                    modifier = Modifier.offset(x = (-4).dp, y = 4.dp),
                ) {
                    Text("3", fontSize = 10.sp)
                }
                Icon(
                    imageVector = Icons.Default.Notifications,
                    contentDescription = "Notificaciones",
                    tint = colors.onPrimary,
                )
            }

            IconButton(
                onClick = { expanded = true },
            ) {
                Icon(
                    imageVector = Icons.Default.Menu,
                    contentDescription = "Menú de navegación",
                    tint = colors.onPrimary,
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
                modifier =
                    Modifier
                        .shadow(elevation = 8.dp)
                        .clip(RoundedCornerShape(12.dp))
                        .width(280.dp),
                shape = RoundedCornerShape(12.dp),
            ) {
                DropdownMenuItem(
                    text = {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                        ) {
                            Icon(
                                imageVector = Icons.Default.Psychology,
                                contentDescription = null,
                                modifier = Modifier.size(20.dp),
                                tint = MaterialTheme.colorScheme.primary,
                            )
                            Text(
                                text = "Dar de alta psicólogo",
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Medium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                        }
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.listarPsicologosBaja.route)
                    },
                )
            }
        },
    )
}
