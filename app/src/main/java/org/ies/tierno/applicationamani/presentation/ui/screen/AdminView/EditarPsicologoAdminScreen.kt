package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

/**
 * Pantalla de edición de los datos de un psicólogo desde el panel de administración.
 *
 * Carga los datos actuales del psicólogo identificado por [psicologoId] y
 * permite modificar nombre, apellidos, email, especialidad, experiencia,
 * descripción, licencia y teléfono. Al guardar, envía un
 * [PsicologoRequestDTO] al ViewModel y muestra una notificación de éxito.
 *
 * @param navController Controlador de navegación para volver atrás tras guardar.
 * @param viewModel ViewModel que gestiona la lista de psicólogos y su edición.
 * @param psicologoId Identificador del psicólogo a editar.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditarPsicologoAdminScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    psicologoId: Long
) {
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold)
    )

    // Colores dinámicos
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else Color(0xFF6C63FF)
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFF8F9FA)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color.White
    val textPrimary = if (isDark) cardColors.cardContent else Color(0xFF2C3E50)
    val textSecondary = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else Color(0xFF7F8C8D)

    // Obtener la lista de psicólogos
    val psicologos by viewModel.psicologos.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()

    // Buscar el psicólogo por ID
    val psicologo = remember(psicologos, psicologoId) {
        psicologos.find { it.idPsicologo == psicologoId }
    }

    // Estados para el formulario
    var nombre by remember { mutableStateOf("") }
    var apellido by remember { mutableStateOf("") }
    var especialidad by remember { mutableStateOf("") }
    var experiencia by remember { mutableStateOf("") }
    var descripcion by remember { mutableStateOf("") }
    var licencia by remember { mutableStateOf("") }
    var telefono by remember { mutableStateOf("") }
    var email by remember { mutableStateOf("") }

    var isSaving by remember { mutableStateOf(false) }

    // Cargar datos del psicólogo cuando estén disponibles
    LaunchedEffect(psicologo) {
        if (psicologo != null) {
            nombre = psicologo.nombre ?: ""
            apellido = psicologo.apellido ?: ""
            especialidad = psicologo.especialidad ?: ""
            experiencia = psicologo.experiencia?.toString() ?: ""
            descripcion = psicologo.descripcion ?: ""
            licencia = psicologo.licencia ?: ""
            telefono = psicologo.telefono ?: ""
            email = psicologo.email ?: ""
        }
    }

    // Validar formulario
    val isFormValid = nombre.isNotBlank() &&
            apellido.isNotBlank() &&
            especialidad.isNotBlank()

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = Color.White,
                shadowElevation = 8.dp,
                shape = RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 20.dp, vertical = 16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(
                        onClick = { navController.popBackStack() },
                        modifier = Modifier.size(40.dp)
                    ) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = primaryColor,
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Spacer(modifier = Modifier.width(8.dp))

                    Text(
                        text = "Editar Psicólogo",
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold,
                        fontFamily = roboto,
                        color = textPrimary
                    )
                }
            }
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(
                            Color(0xFFF8F9FA),
                            Color(0xFFF0F2F5)
                        )
                    )
                )
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 20.dp, vertical = 16.dp),
            verticalArrangement = Arrangement.spacedBy(20.dp)
        ) {
            if (isLoading && psicologo == null) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator(color = primaryColor)
                }
            } else {
                val textFieldShape = RoundedCornerShape(12.dp)

                // Card de información personal
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp)
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .background(
                                        brush = Brush.linearGradient(
                                            colors = listOf(
                                                primaryColor,
                                                primaryColor.copy(alpha = 0.7f)
                                            )
                                        ),
                                        shape = RoundedCornerShape(12.dp)
                                    ),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(
                                "Información Personal",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary
                            )
                        }

                        Spacer(modifier = Modifier.height(16.dp))

                        // Nombre
                        OutlinedTextField(
                            value = nombre,
                            onValueChange = { nombre = it },
                            label = {
                                Text(
                                    "Nombre *",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Apellido
                        OutlinedTextField(
                            value = apellido,
                            onValueChange = { apellido = it },
                            label = {
                                Text(
                                    "Apellido *",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Email (solo lectura)
                        OutlinedTextField(
                            value = email,
                            onValueChange = {},
                            label = {
                                Text(
                                    "Email",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            readOnly = true,
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )
                    }
                }

                // Card de información profesional
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp)
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .background(
                                        brush = Brush.linearGradient(
                                            colors = listOf(
                                                primaryColor,
                                                primaryColor.copy(alpha = 0.7f)
                                            )
                                        ),
                                        shape = RoundedCornerShape(12.dp)
                                    ),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    Icons.Default.MedicalServices,
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(
                                "Información Profesional",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary
                            )
                        }

                        Spacer(modifier = Modifier.height(16.dp))

                        // Especialidad
                        OutlinedTextField(
                            value = especialidad,
                            onValueChange = { especialidad = it },
                            label = {
                                Text(
                                    "Especialidad *",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Experiencia
                        OutlinedTextField(
                            value = experiencia,
                            onValueChange = { experiencia = it },
                            label = {
                                Text(
                                    "Años de experiencia",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Licencia
                        OutlinedTextField(
                            value = licencia,
                            onValueChange = { licencia = it },
                            label = {
                                Text(
                                    "Número de licencia",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Teléfono
                        OutlinedTextField(
                            value = telefono,
                            onValueChange = { telefono = it },
                            label = {
                                Text(
                                    "Teléfono",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Descripción
                        OutlinedTextField(
                            value = descripcion,
                            onValueChange = { descripcion = it },
                            label = {
                                Text(
                                    "Descripción profesional",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            minLines = 3,
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color(0xFFECF0F1),
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )
                    }
                }

                // Botón guardar
                Button(
                    onClick = {
                        val experienciaInt =
                            if (experiencia.isNotBlank()) experiencia.toIntOrNull() else null

                        val request = PsicologoRequestDTO(
                            nombrePsicologo = nombre,
                            apellidoPsicologo = apellido,
                            email = email,
                            password = "",
                            especialidad = especialidad,
                            experiencia = experienciaInt,
                            descripcion = descripcion.ifBlank { null },
                            licencia = licencia.ifBlank { null },
                            telefono = telefono.ifBlank { null }
                        )

                        isSaving = true
                        viewModel.editarPsicologo(psicologoId, request)

                        scope.launch {
                            delay(1000)
                            isSaving = false
                            snackbarHostState.showSnackbar("✓ Psicólogo actualizado exitosamente")
                            delay(1000)
                            navController.popBackStack()
                        }
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(56.dp),
                    enabled = !isSaving && isFormValid,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = primaryColor,
                        disabledContainerColor = textSecondary.copy(alpha = 0.5f)
                    ),
                    shape = RoundedCornerShape(16.dp)
                ) {
                    if (isSaving) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            color = Color.White,
                            strokeWidth = 2.dp
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text("Guardando...", fontSize = 16.sp, fontWeight = FontWeight.SemiBold)
                    } else {
                        Text(
                            "💾 GUARDAR CAMBIOS",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold
                        )
                    }
                }
            }
        }
    }
}