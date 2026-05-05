package org.ies.tierno.applicationamani.presentation.ui.screen.situacion

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel

// Colores de la marca Amani
private val AmaniPrimary = Color(0xFF9B87F5)
private val AmaniBackground = Color(0xFFFDF8FF)
private val AmaniCardBackground = Color.White
private val AmaniTextPrimary = Color(0xFF2D2D35)
private val AmaniTextSecondary = Color(0xFF6B6B7A)
private val AmaniDivider = Color(0xFFE8E2F3)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionAdminScreen(
    navController: NavController,
    viewModel: SituacionViewModel
) {
    val situaciones by viewModel.situaciones.collectAsState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var showDialog by remember { mutableStateOf(false) }
    var situacionEditando by remember { mutableStateOf<SituacionDTO?>(null) }
    var situacionAEliminar by remember { mutableStateOf<SituacionDTO?>(null) }

    Scaffold(
        containerColor = AmaniBackground,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.gestion_situaciones),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Volver", tint = Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = AmaniPrimary)
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    situacionEditando = null
                    showDialog = true
                },
                containerColor = AmaniPrimary,
                contentColor = Color.White
            ) {
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.agregar_situacion))
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            when {
                situaciones.isEmpty() -> {
                    EmptySituacionesScreen(onAddClick = {
                        situacionEditando = null
                        showDialog = true
                    })
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(
                            items = situaciones,
                            key = { it.idSituacion }
                        ) { situacion ->
                            TarjetaSituacion(
                                situacion = situacion,
                                onEditClick = {
                                    situacionEditando = situacion
                                    showDialog = true
                                },
                                onDeleteClick = { situacionAEliminar = situacion }
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo de confirmación para eliminar
    if (situacionAEliminar != null) {
        AlertDialog(
            onDismissRequest = { situacionAEliminar = null },
            title = { Text("Confirmar eliminación", fontWeight = FontWeight.Bold, color = AmaniTextPrimary) },
            text = { Text("¿Estás seguro de que quieres eliminar la situación \"${situacionAEliminar!!.nombre}\"?\n\nEsta acción no se puede deshacer.", color = AmaniTextSecondary) },
            confirmButton = {
                Button(
                    onClick = {
                        viewModel.eliminarSituacion(
                            id = situacionAEliminar!!.idSituacion,
                            onResult = { success ->
                                if (success) {
                                    scope.launch { snackbarHostState.showSnackbar("Situación eliminada correctamente") }
                                } else {
                                    scope.launch { snackbarHostState.showSnackbar("Error al eliminar la situación") }
                                }
                            }
                        )
                        situacionAEliminar = null
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error, contentColor = Color.White)
                ) { Text("Eliminar") }
            },
            dismissButton = {
                TextButton(onClick = { situacionAEliminar = null }) { Text("Cancelar") }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = AmaniCardBackground
        )
    }

    // Diálogo para crear/editar situación
    if (showDialog) {
        SituacionDialog(
            situacion = situacionEditando,
            onDismiss = {
                showDialog = false
                situacionEditando = null
            },
            onConfirm = { nombre, categoria, descripcion ->
                val request = SituacionRequest(
                    nombre = nombre,
                    categoria = categoria,
                    descripcion = descripcion,
                    activo = true
                )

                if (situacionEditando == null) {
                    viewModel.crearSituacion(
                        request = request,
                        onResult = { success ->
                            val msg = if (success) "Situación creada correctamente" else "Error al crear la situación"
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        }
                    )
                } else {
                    viewModel.actualizarSituacion(
                        id = situacionEditando!!.idSituacion,
                        request = request,
                        onResult = { success ->
                            val msg = if (success) "Situación actualizada correctamente" else "Error al actualizar la situación"
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        }
                    )
                }
                showDialog = false
                situacionEditando = null
            }
        )
    }
}

@Composable
fun TarjetaSituacion(
    situacion: SituacionDTO,
    onEditClick: () -> Unit,
    onDeleteClick: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(containerColor = AmaniCardBackground)
    ) {
        Column(modifier = Modifier.fillMaxWidth().padding(16.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = situacion.nombre,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = AmaniPrimary
                )
                Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    IconButton(onClick = onEditClick, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Edit, contentDescription = "Editar", tint = AmaniPrimary)
                    }
                    IconButton(onClick = onDeleteClick, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Delete, contentDescription = "Eliminar", tint = Color(0xFFE57373))
                    }
                }
            }

            // Mostrar categoría si existe
            if (!situacion.categoria.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(4.dp))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Category,
                        contentDescription = null,
                        modifier = Modifier.size(14.dp),
                        tint = AmaniTextSecondary
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = situacion.categoria,
                        fontSize = 12.sp,
                        color = AmaniPrimary,
                        fontWeight = FontWeight.Medium
                    )
                }
            }

            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                HorizontalDivider(thickness = 1.dp, color = AmaniDivider)
                Spacer(modifier = Modifier.height(8.dp))
                Text(text = situacion.descripcion, fontSize = 14.sp, color = AmaniTextSecondary, maxLines = 3)
            }
        }
    }
}

@Composable
fun EmptySituacionesScreen(onAddClick: () -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(Icons.Default.List, contentDescription = null, modifier = Modifier.size(80.dp), tint = AmaniPrimary.copy(alpha = 0.4f))
        Spacer(modifier = Modifier.height(16.dp))
        Text(text = "No hay situaciones disponibles", fontSize = 18.sp, fontWeight = FontWeight.Medium, color = AmaniTextPrimary)
        Spacer(modifier = Modifier.height(8.dp))
        Text(text = "Presiona el botón + para agregar una situación", fontSize = 14.sp, color = AmaniTextSecondary)
        Spacer(modifier = Modifier.height(24.dp))
        Button(onClick = onAddClick, shape = RoundedCornerShape(12.dp), colors = ButtonDefaults.buttonColors(containerColor = AmaniPrimary)) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Agregar Situación")
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionDialog(
    situacion: SituacionDTO?,
    onDismiss: () -> Unit,
    onConfirm: (nombre: String, categoria: String, descripcion: String) -> Unit
) {
    var nombre by remember(situacion) { mutableStateOf(situacion?.nombre ?: "") }
    var categoria by remember(situacion) { mutableStateOf(situacion?.categoria ?: "") }
    var descripcion by remember(situacion) { mutableStateOf(situacion?.descripcion ?: "") }

    val isEditando = situacion != null
    val titulo = if (isEditando) "Editar Situación" else "Nueva Situación"
    val botonTexto = if (isEditando) "Actualizar" else "Crear"

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = titulo, fontWeight = FontWeight.Bold, color = AmaniPrimary, fontSize = 20.sp) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                OutlinedTextField(
                    value = nombre,
                    onValueChange = { nombre = it },
                    label = { Text("Nombre de la situación") },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = AmaniPrimary, focusedLabelColor = AmaniPrimary)
                )
                OutlinedTextField(
                    value = categoria,
                    onValueChange = { categoria = it },
                    label = { Text("Categoría") },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = AmaniPrimary, focusedLabelColor = AmaniPrimary),
                    placeholder = { Text("Ej: Personal, Laboral, Social...", color = AmaniTextSecondary.copy(alpha = 0.5f)) }
                )
                OutlinedTextField(
                    value = descripcion,
                    onValueChange = { descripcion = it },
                    label = { Text("Descripción (opcional)") },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 4,
                    colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = AmaniPrimary, focusedLabelColor = AmaniPrimary)
                )
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    if (nombre.isNotBlank() && categoria.isNotBlank()) {
                        onConfirm(nombre, categoria, descripcion)
                    }
                },
                enabled = nombre.isNotBlank() && categoria.isNotBlank(),
                colors = ButtonDefaults.buttonColors(containerColor = AmaniPrimary),
                shape = RoundedCornerShape(10.dp)
            ) { Text(botonTexto) }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text("Cancelar") }
        },
        shape = RoundedCornerShape(20.dp),
        containerColor = AmaniCardBackground
    )
}