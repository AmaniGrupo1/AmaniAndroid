package org.ies.tierno.applicationamani.presentation.ui.componente

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import androidx.compose.material3.MaterialTheme

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
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BottomSheetCambiarRol(
    user: UsuarioDTO,
    onDismiss: () -> Unit,
    onConfirm: (Rol) -> Unit,
) {
    var selectedRol by remember { mutableStateOf(user.rol ?: Rol.paciente) }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false),
    ) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            shape = RoundedCornerShape(16.dp),
            colors = CardDefaults.cardColors(containerColor = Color.White),
        ) {
            Column(
                modifier = Modifier.padding(20.dp),
            ) {
                // Header
                Text(stringResource(R.string.auto_cambiar_rol_de_usuario),
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary,
                )

                Spacer(modifier = Modifier.height(8.dp))

                Text(
                    "${user.nombre ?: ""} ${user.apellido ?: ""}".trim(),
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Medium,
                )

                Text(
                    user.email ?: "",
                    fontSize = 13.sp,
                    color = Color.Gray,
                )

                Spacer(modifier = Modifier.height(24.dp))

                // Rol actual
                Surface(
                    shape = RoundedCornerShape(8.dp),
                    color = Color(0xFFE3F2FD),
                ) {
                    Row(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(12.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(stringResource(R.string.auto_rol_actual), fontSize = 14.sp)
                        Text(
                            when (user.rol ?: Rol.paciente) {
                                Rol.admin -> "👑 Administrador"
                                Rol.psicologo -> "🧠 Psicólogo"
                                Rol.paciente -> "👤 Paciente"
                            },
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Bold,
                            color =
                                when (user.rol ?: Rol.paciente) {
                                    Rol.admin -> Color(0xFFE53935)
                                    Rol.psicologo -> Color(0xFF43A047)
                                    Rol.paciente -> Color(0xFF1E88E5)
                                },
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Selector de nuevo rol
                Text(stringResource(R.string.auto_nuevo_rol),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                )

                Spacer(modifier = Modifier.height(8.dp))

                // Botones de roles
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    RolOptionButton(
                        rol = Rol.admin,
                        isSelected = selectedRol == Rol.admin,
                        onClick = { selectedRol = Rol.admin },
                    )

                    RolOptionButton(
                        rol = Rol.psicologo,
                        isSelected = selectedRol == Rol.psicologo,
                        onClick = { selectedRol = Rol.psicologo },
                    )

                    RolOptionButton(
                        rol = Rol.paciente,
                        isSelected = selectedRol == Rol.paciente,
                        onClick = { selectedRol = Rol.paciente },
                    )
                }

                Spacer(modifier = Modifier.height(24.dp))

                // Botones de acción
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    OutlinedButton(
                        onClick = onDismiss,
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp),
                    ) {
                        Text(stringResource(R.string.auto_cancelar))
                    }

                    Button(
                        onClick = { onConfirm(selectedRol) },
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp),
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = MaterialTheme.colorScheme.primary,
                            ),
                    ) {
                        Text(stringResource(R.string.auto_confirmar))
                    }
                }
            }
        }
    }
}

/**
 * Chip de selección que representa una opción de rol en el diálogo
 * [BottomSheetCambiarRol].
 *
 * Muestra un emoji, una etiqueta descriptiva y un color distintivo
 * para cada rol. El estado [isSelected] determina el estilo visual
 * del chip.
 *
 * @param rol Rol representado por este chip.
 * @param isSelected `true` si este chip es la opción activa.
 * @param onClick Callback invocado al pulsar el chip.
 */
@Composable
fun RolOptionButton(
    rol: Rol,
    isSelected: Boolean,
    onClick: () -> Unit,
) {
    val (icon, label, color) =
        when (rol) {
            Rol.admin -> Triple("👑", "Admin", Color(0xFFE53935))
            Rol.psicologo -> Triple("🧠", "Psicólogo", Color(0xFF43A047))
            Rol.paciente -> Triple("👤", "Paciente", Color(0xFF1E88E5))
        }

    FilterChip(
        selected = isSelected,
        onClick = onClick,
        label = { Text("$icon $label") },
        colors =
            FilterChipDefaults.filterChipColors(
                selectedContainerColor = color.copy(alpha = 0.1f),
                selectedLabelColor = color,
            ),
    )
}
