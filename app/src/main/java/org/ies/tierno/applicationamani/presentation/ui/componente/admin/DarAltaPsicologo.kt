package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import android.content.res.Configuration
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.PersonAdd
import androidx.compose.material3.Badge
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Barra superior (TopAppBar) para la pantalla de alta de psicólogo.
 *
 * Incluye animación de transición entre el logo y el título, un badge
 * de notificaciones y un menú desplegable con la opción de dar de alta
 * a un nuevo psicólogo. Utiliza los colores primarios del tema Material 3.
 *
 * @param title Título a mostrar en la barra.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param modifier Modificador externo opcional.
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
    modifier: Modifier = Modifier,
    showBackButton: Boolean = false,
    showLogo: Boolean = false,
    onLogout: (() -> Unit)? = null,
    actions: @Composable RowScope.() -> Unit = {},
) {
    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme

    TopAppBar(
        modifier = modifier,
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.surface,
                titleContentColor = colors.onSurface,
                navigationIconContentColor = colors.onSurface,
                actionIconContentColor = colors.onSurface,
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
                            contentDescription = stringResource(R.string.auto_logo),
                            modifier = Modifier.size(Dimensions.avatarSmall),
                            tint = Color.Unspecified,
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            text = titleValue,
                            style = MaterialTheme.typography.titleLarge,
                            color = colors.onSurface,
                            maxLines = 1,
                        )
                    }
                } else {
                    Text(
                        text = titleValue,
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onSurface,
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
                    contentColor = colors.onError,
                    modifier = Modifier.offset(x = -Spacing.xs, y = Spacing.xs),
                ) {
                    Text(
                        text = "3",
                        style = MaterialTheme.typography.labelSmall,
                    )
                }
                Icon(
                    imageVector = Icons.Default.Notifications,
                    contentDescription = stringResource(R.string.auto_notificaciones),
                    tint = colors.onSurface,
                )
            }

            IconButton(
                onClick = { expanded = true },
            ) {
                Icon(
                    imageVector = Icons.Default.Menu,
                    contentDescription = stringResource(R.string.auto_menu_de_navegacion),
                    tint = colors.onSurface,
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
                shape = MaterialTheme.shapes.medium,
            ) {
                DropdownMenuItem(
                    text = {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.sMedium),
                        ) {
                            Icon(
                                imageVector = Icons.Default.PersonAdd,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.iconMedium),
                                tint = colors.primary,
                            )
                            Text(
                                text = stringResource(R.string.auto_dar_de_alta_psicologo),
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = FontWeight.Medium,
                                color = colors.onSurface,
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

@Preview(name = "DarAltaPsicologo - Light", showBackground = true)
@Preview(name = "DarAltaPsicologo - Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "DarAltaPsicologo - Large Font", fontScale = 1.5f, showBackground = true)
@Composable
private fun DarAltaPsicologoPreview() {
    AppTheme {
        DarAltaPsicologo(
            title = "Psicólogos",
            navController = rememberNavController(),
            showLogo = true,
        )
    }
}

