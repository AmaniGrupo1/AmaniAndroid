package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

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
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.AttachMoney
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.FitnessCenter
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import java.math.BigDecimal

// Colores de la marca Amani
private val AmaniPrimary = Color(0xFF9B87F5) // Morado suave
private val AmaniPrimaryLight = Color(0xFFEDE7FF) // Morado muy claro para fondos
private val AmaniSecondary = Color(0xFF7E69D6) // Morado mas oscuro para acentos
private val AmaniBackground = Color(0xFFFDF8FF) // Fondo blanco con tono lila muy suave
private val AmaniCardBackground = Color.White
private val AmaniTextPrimary = Color(0xFF2D2D35)
private val AmaniTextSecondary = Color(0xFF6B6B7A)
private val AmaniDivider = Color(0xFFE8E2F3)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TerapiasScreen(
    navController: NavController,
    viewModel: ListarTerapiasViewModel = viewModel(),
) {
    val terapias by viewModel.terapias.collectAsState()
    val loading by viewModel.loading.collectAsState()
    val error by viewModel.error.collectAsState()
    val showDialog by viewModel.showDialog.collectAsState()
    val terapiaEditando by viewModel.terapiaEditando.collectAsState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Estado para el dialogo de confirmacion de eliminacion
    var terapiaAEliminar by remember { mutableStateOf<TerapiaResponseDTO?>(null) }

    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = it,
                    duration = SnackbarDuration.Short,
                )
                viewModel.limpiarError()
            }
        }
    }

    val amaniColors = LocalAmaniColors.current

    Scaffold(
        containerColor = amaniColors.screenBackground,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.gestion_terapias),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = Color.White,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.volver),
                            tint = Color.White,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = AmaniPrimary,
                    ),
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { viewModel.mostrarDialogCrear() },
                containerColor = AmaniPrimary,
                contentColor = Color.White,
                elevation = FloatingActionButtonDefaults.elevation(4.dp),
            ) {
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.agregar_terapia))
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
                loading && terapias.isEmpty() -> {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center),
                        color = AmaniPrimary,
                    )
                }
                terapias.isEmpty() -> {
                    EmptyTerapiasScreen(
                        onAddClick = { viewModel.mostrarDialogCrear() },
                    )
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(
                            items = terapias,
                            key = { it.idTipo },
                        ) { terapia ->
                            TarjetaTerapia(
                                terapia = terapia,
                                onEditClick = { viewModel.mostrarDialogEditar(terapia) },
                                onDeleteClick = { terapiaAEliminar = terapia },
                            )
                        }
                    }
                }
            }
        }
    }

    // Dialogo de confirmacion para eliminar
    if (terapiaAEliminar != null) {
        AlertDialog(
            onDismissRequest = { terapiaAEliminar = null },
            title = {
                Text(
                    text = stringResource(R.string.confirmar_eliminacion),
                    fontWeight = FontWeight.Bold,
                    color = AmaniTextPrimary,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.confirmar_eliminar_terapia, terapiaAEliminar!!.nombre),
                    color = AmaniTextSecondary,
                )
            },
            confirmButton = {
                Button(
                    onClick = {
                        viewModel.eliminarTerapia(terapiaAEliminar!!.idTipo)
                        terapiaAEliminar = null
                    },
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.error,
                            contentColor = Color.White,
                        ),
                    shape = RoundedCornerShape(8.dp),
                ) {
                    Text(stringResource(R.string.eliminar))
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { terapiaAEliminar = null },
                    colors =
                        ButtonDefaults.textButtonColors(
                            contentColor = AmaniTextSecondary,
                        ),
                ) {
                    Text(stringResource(R.string.cancelar))
                }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = amaniColors.cardBackground,
        )
    }

    // Dialog para crear/editar terapia
    if (showDialog) {
        TerapiaDialog(
            terapia = terapiaEditando,
            onDismiss = { viewModel.ocultarDialog() },
            onConfirm = { nombre, duracion, precio ->
                if (terapiaEditando == null) {
                    viewModel.crearTerapia(nombre, duracion, precio)
                } else {
                    viewModel.actualizarTerapia(
                        id = terapiaEditando!!.idTipo,
                        nombre = nombre,
                        duracion = duracion,
                        precio = precio,
                    )
                }
            },
        )
    }
}

@Composable
fun TarjetaTerapia(
    terapia: TerapiaResponseDTO,
    onEditClick: () -> Unit,
    onDeleteClick: () -> Unit,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(containerColor = LocalAmaniColors.current.cardBackground),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = terapia.nombre,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = AmaniPrimary,
                )

                Row(
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    IconButton(
                        onClick = onEditClick,
                        modifier = Modifier.size(36.dp),
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.editar),
                            tint = AmaniPrimary,
                        )
                    }

                    IconButton(
                        onClick = onDeleteClick,
                        modifier = Modifier.size(36.dp),
                    ) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = stringResource(R.string.eliminar),
                            tint = Color(0xFFE57373),
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            HorizontalDivider(
                thickness = 1.dp,
                color = AmaniDivider,
            )

            Spacer(modifier = Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp),
                        tint = AmaniTextSecondary,
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = stringResource(R.string.duracion_minutos, terapia.duracionMinutos),
                        fontSize = 14.sp,
                        color = AmaniTextSecondary,
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.AttachMoney,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp),
                        tint = AmaniPrimary,
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = stringResource(R.string.precio_formato, terapia.precio.toString()),
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Medium,
                        color = AmaniPrimary,
                    )
                }
            }
        }
    }
}

@Composable
fun EmptyTerapiasScreen(onAddClick: () -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            Icons.Default.FitnessCenter,
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = AmaniPrimary.copy(alpha = 0.4f),
        )

        Spacer(modifier = Modifier.height(16.dp))

        Text(
            text = stringResource(R.string.no_hay_terapias),
            fontSize = 18.sp,
            fontWeight = FontWeight.Medium,
            color = AmaniTextPrimary,
        )

        Spacer(modifier = Modifier.height(8.dp))

        Text(
            text = stringResource(R.string.presiona_para_agregar),
            fontSize = 14.sp,
            color = AmaniTextSecondary,
        )

        Spacer(modifier = Modifier.height(24.dp))

        Button(
            onClick = onAddClick,
            shape = RoundedCornerShape(12.dp),
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = AmaniPrimary,
                    contentColor = Color.White,
                ),
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text(stringResource(R.string.agregar_terapia))
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TerapiaDialog(
    terapia: TerapiaResponseDTO?,
    onDismiss: () -> Unit,
    onConfirm: (nombre: String, duracion: Int, precio: BigDecimal) -> Unit,
) {
    var nombre by remember(terapia) { mutableStateOf(terapia?.nombre ?: "") }
    var duracion by remember(terapia) { mutableStateOf(terapia?.duracionMinutos?.toString() ?: "") }
    var precio by remember(terapia) { mutableStateOf(terapia?.precio?.toString() ?: "") }

    val isEditando = terapia != null
    val titulo = if (isEditando) stringResource(R.string.editar_terapia) else stringResource(R.string.nueva_terapia)
    val botonTexto = if (isEditando) stringResource(R.string.actualizar) else stringResource(R.string.crear)

    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = titulo,
                fontWeight = FontWeight.Bold,
                color = AmaniPrimary,
                fontSize = 20.sp,
            )
        },
        text = {
            Column(
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                OutlinedTextField(
                    value = nombre,
                    onValueChange = { nombre = it },
                    label = { Text(stringResource(R.string.nombre_terapia)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = AmaniPrimary,
                            unfocusedBorderColor = AmaniDivider,
                            focusedLabelColor = AmaniPrimary,
                        ),
                )

                OutlinedTextField(
                    value = duracion,
                    onValueChange = { duracion = it },
                    label = { Text(stringResource(R.string.duracion_minutos_label)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    keyboardOptions =
                        androidx.compose.foundation.text.KeyboardOptions(
                            keyboardType = androidx.compose.ui.text.input.KeyboardType.Number,
                        ),
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = AmaniPrimary,
                            unfocusedBorderColor = AmaniDivider,
                            focusedLabelColor = AmaniPrimary,
                        ),
                )

                OutlinedTextField(
                    value = precio,
                    onValueChange = { precio = it },
                    label = { Text(stringResource(R.string.precio_label)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    leadingIcon = { Text("EUR", color = AmaniTextSecondary) },
                    keyboardOptions =
                        androidx.compose.foundation.text.KeyboardOptions(
                            keyboardType = androidx.compose.ui.text.input.KeyboardType.Decimal,
                        ),
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = AmaniPrimary,
                            unfocusedBorderColor = AmaniDivider,
                            focusedLabelColor = AmaniPrimary,
                        ),
                )
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    val duracionInt = duracion.toIntOrNull()
                    val precioDecimal = precio.toBigDecimalOrNull()

                    if (nombre.isNotBlank() &&
                        duracionInt != null &&
                        duracionInt > 0 &&
                        precioDecimal != null &&
                        precioDecimal > BigDecimal.ZERO
                    ) {
                        onConfirm(nombre, duracionInt, precioDecimal)
                    }
                },
                enabled =
                    nombre.isNotBlank() &&
                        duracion.toIntOrNull() != null &&
                        duracion.toIntOrNull()!! > 0 &&
                        precio.toBigDecimalOrNull() != null &&
                        precio.toBigDecimalOrNull()!! > BigDecimal.ZERO,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = AmaniPrimary,
                        contentColor = Color.White,
                    ),
                shape = RoundedCornerShape(10.dp),
            ) {
                Text(botonTexto)
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                colors =
                    ButtonDefaults.textButtonColors(
                        contentColor = AmaniTextSecondary,
                    ),
            ) {
                Text(stringResource(R.string.cancelar))
            }
        },
        shape = RoundedCornerShape(20.dp),
        containerColor = AmaniCardBackground,
    )
}
