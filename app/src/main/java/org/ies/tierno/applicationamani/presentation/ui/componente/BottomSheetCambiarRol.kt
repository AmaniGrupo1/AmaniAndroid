package org.ies.tierno.applicationamani.presentation.ui.componente

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AdminPanelSettings
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Diálogo modal para cambiar el rol de un usuario existente.
 *
 * Muestra la información actual del usuario (nombre, email, rol) y
 * permite seleccionar un nuevo rol mediante [FilterChip] antes de
 * confirmar o cancelar la operación.
 *
 * @param user Datos del usuario cuyo rol se desea modificar.
 * @param onDismiss Callback invocado al cancelar o cerrar el diálogo.
 * @param onConfirm Callback invocado al confirmar el cambio, recibe el nuevo [Rol] seleccionado.
 * @param modifier Modificador externo opcional.
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun BottomSheetCambiarRol(
    user: UsuarioDTO,
    onDismiss: () -> Unit,
    onConfirm: (Rol) -> Unit,
    modifier: Modifier = Modifier,
) {
    var selectedRol by remember { mutableStateOf(user.rol ?: Rol.paciente) }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        BottomSheetCambiarRolContent(
            user = user,
            selectedRol = selectedRol,
            onRolSelect = { selectedRol = it },
            onDismiss = onDismiss,
            onConfirm = { onConfirm(selectedRol) },
            modifier = modifier,
        )
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun BottomSheetCambiarRolContent(
    user: UsuarioDTO,
    selectedRol: Rol,
    onRolSelect: (Rol) -> Unit,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val currentRol = user.rol ?: Rol.paciente

    Card(
        modifier =
            modifier
                .fillMaxWidth()
                .padding(Spacing.m),
        shape = MaterialTheme.shapes.large,
        colors =
            CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
                contentColor = MaterialTheme.colorScheme.onSurface,
            ),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.l),
        ) {
            Text(
                text = stringResource(R.string.auto_cambiar_rol_de_usuario),
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.primary,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            Text(
                text = "${user.nombre ?: ""} ${user.apellido ?: ""}".trim(),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onSurface,
            )

            Text(
                text = user.email ?: "",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )

            Spacer(modifier = Modifier.height(Spacing.l))

            // Rol actual
            Surface(
                shape = MaterialTheme.shapes.small,
                color = MaterialTheme.colorScheme.secondaryContainer,
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.sMedium),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.auto_rol_actual),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSecondaryContainer,
                    )
                    Text(
                        text =
                            when (currentRol) {
                                Rol.admin -> stringResource(R.string.rol_administrador)
                                Rol.psicologo -> stringResource(R.string.rol_psicologo)
                                Rol.paciente -> stringResource(R.string.paciente)
                            },
                        style = MaterialTheme.typography.labelLarge,
                        fontWeight = FontWeight.Bold,
                        color =
                            when (currentRol) {
                                Rol.admin -> MaterialTheme.colorScheme.error
                                Rol.psicologo -> MaterialTheme.colorScheme.primary
                                Rol.paciente -> MaterialTheme.colorScheme.tertiary
                            },
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            // Selector de nuevo rol
            Text(
                text = stringResource(R.string.auto_nuevo_rol),
                style = MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.onSurface,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            // Botones de roles
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                verticalArrangement = Arrangement.spacedBy(Spacing.xs),
            ) {
                RolOptionButton(
                    rol = Rol.admin,
                    isSelected = selectedRol == Rol.admin,
                    onClick = { onRolSelect(Rol.admin) },
                )

                RolOptionButton(
                    rol = Rol.psicologo,
                    isSelected = selectedRol == Rol.psicologo,
                    onClick = { onRolSelect(Rol.psicologo) },
                )

                RolOptionButton(
                    rol = Rol.paciente,
                    isSelected = selectedRol == Rol.paciente,
                    onClick = { onRolSelect(Rol.paciente) },
                )
            }

            Spacer(modifier = Modifier.height(Spacing.l))

            // Botones de acción
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.sMedium),
            ) {
                OutlinedButton(
                    onClick = onDismiss,
                    modifier = Modifier.weight(1f),
                    shape = MaterialTheme.shapes.small,
                ) {
                    Text(stringResource(R.string.auto_cancelar))
                }

                Button(
                    onClick = onConfirm,
                    modifier = Modifier.weight(1f),
                    shape = MaterialTheme.shapes.small,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.primary,
                            contentColor = MaterialTheme.colorScheme.onPrimary,
                        ),
                ) {
                    Text(stringResource(R.string.auto_confirmar))
                }
            }
        }
    }
}

/**
 * Chip de selección que representa una opción de rol en el diálogo
 * [BottomSheetCambiarRol].
 *
 * Muestra un icono vectorial semántico, una etiqueta descriptiva y colores
 * del sistema Material 3 para cada rol. El estado [isSelected] determina
 * el estilo visual del chip.
 *
 * @param rol Rol representado por este chip.
 * @param isSelected `true` si este chip es la opción activa.
 * @param onClick Callback invocado al pulsar el chip.
 * @param modifier Modificador externo opcional.
 */
@Composable
fun RolOptionButton(
    rol: Rol,
    isSelected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val scheme = MaterialTheme.colorScheme
    val icon =
        when (rol) {
            Rol.admin -> Icons.Default.AdminPanelSettings
            Rol.psicologo -> Icons.Default.MedicalServices
            Rol.paciente -> Icons.Default.Person
        }
    val label =
        when (rol) {
            Rol.admin -> stringResource(R.string.rol_admin)
            Rol.psicologo -> stringResource(R.string.rol_psicologo)
            Rol.paciente -> stringResource(R.string.paciente)
        }
    val selectedContainerColor =
        when (rol) {
            Rol.admin -> scheme.errorContainer
            Rol.psicologo -> scheme.primaryContainer
            Rol.paciente -> scheme.tertiaryContainer
        }
    val selectedLabelColor =
        when (rol) {
            Rol.admin -> scheme.onErrorContainer
            Rol.psicologo -> scheme.onPrimaryContainer
            Rol.paciente -> scheme.onTertiaryContainer
        }

    FilterChip(
        selected = isSelected,
        onClick = onClick,
        modifier = modifier,
        leadingIcon = {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(Dimensions.iconSmall),
            )
        },
        label = {
            Text(
                text = label,
                style = MaterialTheme.typography.labelLarge,
            )
        },
        colors =
            FilterChipDefaults.filterChipColors(
                selectedContainerColor = selectedContainerColor,
                selectedLabelColor = selectedLabelColor,
                selectedLeadingIconColor = selectedLabelColor,
            ),
    )
}

@Preview(name = "CambiarRol - Light", showBackground = true)
@Preview(name = "CambiarRol - Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "CambiarRol - Large Font", fontScale = 1.5f, showBackground = true)
@Composable
private fun BottomSheetCambiarRolPreview() {
    AppTheme {
        BottomSheetCambiarRolContent(
            user =
                UsuarioDTO(
                    idUsuario = 1L,
                    nombre = "Elena",
                    apellido = "Martínez",
                    email = "elena.martinez@amani.es",
                    rol = Rol.paciente,
                ),
            selectedRol = Rol.psicologo,
            onRolSelect = {},
            onDismiss = {},
            onConfirm = {},
        )
    }
}

