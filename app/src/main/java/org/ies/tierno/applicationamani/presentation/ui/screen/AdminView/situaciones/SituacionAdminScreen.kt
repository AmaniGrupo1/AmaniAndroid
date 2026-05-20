package org.ies.tierno.applicationamani.presentation.ui.screen.situacion

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

// Colores originales para el modo DEFECTO (Amani)
private val AmaniDefaultPrimary = Color(0xFF9B87F5)
private val AmaniDefaultBackground = Color(0xFFFDF8FF)
private val AmaniDefaultCardBackground = Color.White
private val AmaniDefaultTextPrimary = Color(0xFF2D2D35)
private val AmaniDefaultTextSecondary = Color(0xFF6B6B7A)
private val AmaniDefaultDivider = Color(0xFFE8E2F3)
private val AmaniDefaultError = Color(0xFFE57373)

/**
 * Pantalla de gestión de situaciones desde el panel de administración.
 *
 * Permite listar, crear, editar y eliminar situaciones (categorías de
 * contexto del paciente) que pueden ser asignadas a los historiales
 * clínicos. Incluye un [FloatingActionButton] para añadir nuevas
 * situaciones y un diálogo de edición con campos de nombre, categoría
 * y descripción.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el CRUD de situaciones.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionAdminScreen(
    navController: NavController,
    viewModel: SituacionViewModel,
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val situaciones by viewModel.situaciones.collectAsState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var showDialog by remember { mutableStateOf(false) }
    var situacionEditando by remember { mutableStateOf<SituacionDTO?>(null) }
    var situacionAEliminar by remember { mutableStateOf<SituacionDTO?>(null) }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores segun el tema
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AmaniDefaultPrimary
    val backgroundColor = if (isDark) screenColors.background else AmaniDefaultBackground
    val cardBackgroundColor = if (isDark) cardColors.cardBackground else AmaniDefaultCardBackground
    val textPrimaryColor = if (isDark) cardColors.cardContent else AmaniDefaultTextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniDefaultTextSecondary
    val dividerColor = if (isDark) cardColors.cardContent.copy(alpha = 0.2f) else AmaniDefaultDivider
    val errorColor = AmaniDefaultError

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.gestion_situaciones),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White,
                        fontFamily = roboto,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = primaryColor,
                    ),
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    situacionEditando = null
                    showDialog = true
                },
                containerColor = primaryColor,
                contentColor = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White,
            ) {
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.agregar_situacion))
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                situaciones.isEmpty() -> {
                    EmptySituacionesScreen(
                        onAddClick = {
                            situacionEditando = null
                            showDialog = true
                        },
                        primaryColor = primaryColor,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        roboto = roboto,
                        isDark = isDark,
                    )
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(
                            items = situaciones,
                            key = { it.idSituacion },
                        ) { situacion ->
                            TarjetaSituacion(
                                situacion = situacion,
                                onEditClick = {
                                    situacionEditando = situacion
                                    showDialog = true
                                },
                                onDeleteClick = { situacionAEliminar = situacion },
                                primaryColor = primaryColor,
                                cardBackgroundColor = cardBackgroundColor,
                                textPrimaryColor = textPrimaryColor,
                                textSecondaryColor = textSecondaryColor,
                                dividerColor = dividerColor,
                                errorColor = errorColor,
                                roboto = roboto,
                                isDark = isDark,
                            )
                        }
                    }
                }
            }
        }
    }

    // Dialogo de confirmacion para eliminar
    if (situacionAEliminar != null) {
        AlertDialog(
            onDismissRequest = { situacionAEliminar = null },
            containerColor = cardBackgroundColor,
            title = {
                Text(
                    text = "Confirmar eliminacion",
                    fontWeight = FontWeight.Bold,
                    color = textPrimaryColor,
                    fontFamily = roboto,
                )
            },
            text = {
                Text(
                    text = "Estas seguro de que quieres eliminar la situacion \"${situacionAEliminar!!.nombre}\"?\n\nEsta accion no se puede deshacer.",
                    color = textSecondaryColor,
                    fontFamily = roboto,
                )
            },
            confirmButton = {
                Button(
                    onClick = {
                        viewModel.eliminarSituacion(
                            id = situacionAEliminar!!.idSituacion,
                            onResult = { success, _ ->
                                if (success) {
                                    scope.launch { snackbarHostState.showSnackbar("Situacion eliminada correctamente") }
                                } else {
                                    scope.launch { snackbarHostState.showSnackbar("Error al eliminar la situacion") }
                                }
                            },
                        )
                        situacionAEliminar = null
                    },
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = errorColor,
                            contentColor = Color.White,
                        ),
                ) {
                    Text("Eliminar", fontFamily = roboto)
                }
            },
            dismissButton = {
                TextButton(onClick = { situacionAEliminar = null }) {
                    Text("Cancelar", fontFamily = roboto, color = primaryColor)
                }
            },
            shape = RoundedCornerShape(16.dp),
        )
    }

    // Dialogo para crear/editar situacion
    if (showDialog) {
        SituacionDialog(
            situacion = situacionEditando,
            onDismiss = {
                showDialog = false
                situacionEditando = null
            },
            onConfirm = { nombre, categoria, descripcion ->
                val request =
                    SituacionRequest(
                        nombre = nombre,
                        categoria = categoria,
                        descripcion = descripcion,
                        activo = true,
                    )

                if (situacionEditando == null) {
                    viewModel.crearSituacion(
                        request = request,
                        onResult = { success, _ ->
                            val msg = if (success) "Situacion creada correctamente" else "Error al crear la situacion"
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        },
                    )
                } else {
                    viewModel.actualizarSituacion(
                        id = situacionEditando!!.idSituacion,
                        request = request,
                        onResult = { success, _ ->
                            val msg = if (success) "Situacion actualizada correctamente" else "Error al actualizar la situacion"
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        },
                    )
                }
                showDialog = false
                situacionEditando = null
            },
            primaryColor = primaryColor,
            cardBackgroundColor = cardBackgroundColor,
            textPrimaryColor = textPrimaryColor,
            textSecondaryColor = textSecondaryColor,
            roboto = roboto,
            isDark = isDark,
        )
    }
}

@Composable
fun TarjetaSituacion(
    situacion: SituacionDTO,
    onEditClick: () -> Unit,
    onDeleteClick: () -> Unit,
    primaryColor: Color,
    cardBackgroundColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    dividerColor: Color,
    errorColor: Color,
    roboto: FontFamily,
    isDark: Boolean,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackgroundColor),
    ) {
        Column(modifier = Modifier.fillMaxWidth().padding(16.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = situacion.nombre,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = primaryColor,
                    fontFamily = roboto,
                )
                Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    IconButton(onClick = onEditClick, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Edit, contentDescription = "Editar", tint = primaryColor)
                    }
                    IconButton(onClick = onDeleteClick, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Delete, contentDescription = "Eliminar", tint = errorColor)
                    }
                }
            }

            // Mostrar categoria si existe
            if (!situacion.categoria.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(4.dp))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Category,
                        contentDescription = null,
                        modifier = Modifier.size(14.dp),
                        tint = textSecondaryColor,
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = situacion.categoria,
                        fontSize = 12.sp,
                        color = primaryColor,
                        fontWeight = FontWeight.Medium,
                        fontFamily = roboto,
                    )
                }
            }

            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                HorizontalDivider(thickness = 1.dp, color = dividerColor)
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = situacion.descripcion,
                    fontSize = 14.sp,
                    color = textSecondaryColor,
                    maxLines = 3,
                    fontFamily = roboto,
                )
            }
        }
    }
}

@Composable
fun EmptySituacionesScreen(
    onAddClick: () -> Unit,
    primaryColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily,
    isDark: Boolean,
) {
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            Icons.AutoMirrored.Filled.List,
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = primaryColor.copy(alpha = 0.4f),
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "No hay situaciones disponibles",
            fontSize = 18.sp,
            fontWeight = FontWeight.Medium,
            color = textPrimaryColor,
            fontFamily = roboto,
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "Presiona el boton + para agregar una situacion",
            fontSize = 14.sp,
            color = textSecondaryColor,
            fontFamily = roboto,
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onAddClick,
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Agregar Situacion", fontFamily = roboto)
        }
    }
}

/**
 * Diálogo de creación/edición de una situación.
 *
 * Presenta un formulario con campos de nombre, categoría y descripción.
 * Si [situacion] no es `null`, el diálogo opera en modo edición;
 * en caso contrario, en modo creación.
 *
 * @param situacion Situación a editar, o `null` para crear una nueva.
 * @param onDismiss Callback invocado al cerrar el diálogo sin guardar.
 * @param onConfirm Callback invocado al confirmar, recibe nombre, categoría y descripción.
 * @param primaryColor Color primario para los elementos del diálogo.
 * @param cardBackgroundColor Color de fondo de la tarjeta del diálogo.
 * @param textPrimaryColor Color del texto principal.
 * @param textSecondaryColor Color del texto secundario.
 * @param roboto Familia tipográfica Roboto.
 * @param isDark Indica si el tema oscuro está activo.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionDialog(
    situacion: SituacionDTO?,
    onDismiss: () -> Unit,
    onConfirm: (nombre: String, categoria: String, descripcion: String) -> Unit,
    primaryColor: Color,
    cardBackgroundColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily,
    isDark: Boolean,
) {
    var nombre by remember(situacion) { mutableStateOf(situacion?.nombre ?: "") }
    var categoria by remember(situacion) { mutableStateOf(situacion?.categoria ?: "") }
    var descripcion by remember(situacion) { mutableStateOf(situacion?.descripcion ?: "") }

    val isEditando = situacion != null
    val titulo = if (isEditando) "Editar Situacion" else "Nueva Situacion"
    val botonTexto = if (isEditando) "Actualizar" else "Crear"

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = cardBackgroundColor,
        title = {
            Text(
                text = titulo,
                fontWeight = FontWeight.Bold,
                color = primaryColor,
                fontSize = 20.sp,
                fontFamily = roboto,
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                OutlinedTextField(
                    value = nombre,
                    onValueChange = { nombre = it },
                    label = { Text("Nombre de la situacion", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            focusedLabelColor = primaryColor,
                            focusedTextColor = textPrimaryColor,
                            unfocusedTextColor = textPrimaryColor,
                        ),
                )
                OutlinedTextField(
                    value = categoria,
                    onValueChange = { categoria = it },
                    label = { Text("Categoria", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            focusedLabelColor = primaryColor,
                            focusedTextColor = textPrimaryColor,
                            unfocusedTextColor = textPrimaryColor,
                        ),
                    placeholder = {
                        Text(
                            "Ej: Personal, Laboral, Social...",
                            color = textSecondaryColor.copy(alpha = 0.5f),
                            fontFamily = roboto,
                        )
                    },
                )
                OutlinedTextField(
                    value = descripcion,
                    onValueChange = { descripcion = it },
                    label = { Text("Descripcion (opcional)", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 4,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            focusedLabelColor = primaryColor,
                            focusedTextColor = textPrimaryColor,
                            unfocusedTextColor = textPrimaryColor,
                        ),
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
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                shape = RoundedCornerShape(10.dp),
            ) {
                Text(botonTexto, fontFamily = roboto, color = if (isDark) Color.Black else Color.White)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar", fontFamily = roboto, color = primaryColor)
            }
        },
        shape = RoundedCornerShape(20.dp),
    )
}
