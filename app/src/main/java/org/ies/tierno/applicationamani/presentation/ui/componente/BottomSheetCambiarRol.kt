package org.ies.tierno.applicationamani.presentation.ui.componente

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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BottomSheetCambiarRol(
    user: UsuarioDTO,
    onDismiss: () -> Unit,
    onConfirm: (Rol) -> Unit,
) {
    var selectedRol by remember { mutableStateOf(user.rol ?: Rol.PACIENTE) }

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
                Text(
                    "Cambiar Rol de Usuario",
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
                        Text("Rol actual:", fontSize = 14.sp)
                        Text(
                            when (user.rol ?: Rol.PACIENTE) {
                                Rol.ADMIN -> "👑 Administrador"
                                Rol.PSICOLOGO -> "🧠 Psicólogo"
                                Rol.PACIENTE -> "👤 Paciente"
                            },
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Bold,
                            color =
                                when (user.rol ?: Rol.PACIENTE) {
                                    Rol.ADMIN -> Color(0xFFE53935)
                                    Rol.PSICOLOGO -> Color(0xFF43A047)
                                    Rol.PACIENTE -> Color(0xFF1E88E5)
                                },
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Selector de nuevo rol
                Text(
                    "Nuevo rol:",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                )

                Spacer(modifier = Modifier.height(8.dp))

                // Botones de roles
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    RolOptionButton(
                        rol = Rol.ADMIN,
                        isSelected = selectedRol == Rol.ADMIN,
                        onClick = { selectedRol = Rol.ADMIN },
                    )

                    RolOptionButton(
                        rol = Rol.PSICOLOGO,
                        isSelected = selectedRol == Rol.PSICOLOGO,
                        onClick = { selectedRol = Rol.PSICOLOGO },
                    )

                    RolOptionButton(
                        rol = Rol.PACIENTE,
                        isSelected = selectedRol == Rol.PACIENTE,
                        onClick = { selectedRol = Rol.PACIENTE },
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
                        Text("Cancelar")
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
                        Text("Confirmar")
                    }
                }
            }
        }
    }
}

@Composable
fun RolOptionButton(
    rol: Rol,
    isSelected: Boolean,
    onClick: () -> Unit,
) {
    val (icon, label, color) =
        when (rol) {
            Rol.ADMIN -> Triple("👑", "Admin", Color(0xFFE53935))
            Rol.PSICOLOGO -> Triple("🧠", "Psicólogo", Color(0xFF43A047))
            Rol.PACIENTE -> Triple("👤", "Paciente", Color(0xFF1E88E5))
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
