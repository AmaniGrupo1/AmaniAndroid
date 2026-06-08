package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.Image
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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.HourglassEmpty
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.School
import androidx.compose.material.icons.filled.Send
import androidx.compose.material.icons.outlined.AccessTime
import androidx.compose.material.icons.outlined.LocationOn

import org.ies.tierno.applicationamani.dto.tickets.TicketModel
import org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel.TicketsViewModel
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.rememberAsyncImagePainter
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.CardColors
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.getKoin
import org.koin.compose.koinInject
import java.time.LocalDateTime
import android.content.Context
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.TextButton
import androidx.compose.runtime.livedata.observeAsState

// Imports para el Copiloto
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material.icons.filled.QuestionAnswer
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Divider
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.draw.shadow
import org.ies.tierno.applicationamani.presentation.viewmodels.copiloto.CopilotoAiViewModel
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ViewPacientePrincipalScreen(
    navController: NavController,
    profilePsicologoViewModel: ProfilePsicologoViewModel,
    pacienteViewModel: PacienteViewModel = koinViewModel(),
    ticketsViewModel: TicketsViewModel = koinViewModel(),
    copilotoViewModel: CopilotoAiViewModel = koinViewModel(),
    userSessionDataStore: UserSessionDataStore = getKoin().get()
) {
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    val pacienteInfo by profilePsicologoViewModel.perfil.collectAsStateWithLifecycle()
    val isLoadingPaciente by profilePsicologoViewModel.isLoading.collectAsStateWithLifecycle()

    val psicologo by pacienteViewModel.psicologoAsignado.collectAsStateWithLifecycle()
    val isLoadingPsicologo by pacienteViewModel.isLoading.collectAsStateWithLifecycle()
    val errorPsicologo by pacienteViewModel.error.collectAsStateWithLifecycle()

    var showLogoutDialog by remember { mutableStateOf(false) }
    var showCopilotDialog by remember { mutableStateOf(false) }

    // Estados del copiloto
    val chunks by copilotoViewModel.chunks.collectAsStateWithLifecycle()
    val loadingCopilot by copilotoViewModel.loading.collectAsStateWithLifecycle()
    val errorCopilot by copilotoViewModel.error.collectAsStateWithLifecycle()

    LaunchedEffect(session) {
        val idPaciente = session?.idPaciente ?: return@LaunchedEffect
        pacienteViewModel.cargarPsicologoAsignado(idPaciente)
        ticketsViewModel.cargarEmailUsuario()
    }

    val isLoading = isLoadingPaciente || isLoadingPsicologo
    val error = errorPsicologo

    val nombrePaciente = psicologo?.usuario?.nombre?.split(" ")?.firstOrNull()
        ?: session?.nombre?.split(" ")?.firstOrNull()
        ?: "Paciente"

    val hora = LocalDateTime.now().hour
    val saludo = when {
        hora < 12 -> "🌅 Buenos días"
        hora < 18 -> "☀️ Buenas tardes"
        else -> "🌙 Buenas noches"
    }

    if (showLogoutDialog) {
        AlertDialog(
            onDismissRequest = { showLogoutDialog = false },
            title = {
                Text(
                    text = "Cerrar Sesión",
                    fontWeight = FontWeight.Bold,
                    color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface
                )
            },
            text = {
                Text(
                    text = "¿Estás seguro de que deseas cerrar sesión?",
                    color = if (isDark) Color.White.copy(alpha = 0.8f) else MaterialTheme.colorScheme.onSurfaceVariant
                )
            },
            confirmButton = {
                Button(
                    onClick = {
                        showLogoutDialog = false
                        navController.navigate(Screens.login.route) {
                            popUpTo(0) { inclusive = true }
                        }
                    },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.error
                    )
                ) {
                    Text("Cerrar Sesión", color = Color.White)
                }
            },
            dismissButton = {
                Button(
                    onClick = { showLogoutDialog = false },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.secondaryContainer
                    )
                ) {
                    Text("Cancelar")
                }
            },
            containerColor = if (isDark) Color(0xFF2D2D2D) else MaterialTheme.colorScheme.surface,
            titleContentColor = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface,
            textContentColor = if (isDark) Color.White.copy(alpha = 0.8f) else MaterialTheme.colorScheme.onSurfaceVariant
        )
    }

    Scaffold { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(if (isDark) Color.Black else screenColors.background)
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(48.dp),
                                color = MaterialTheme.colorScheme.primary,
                                strokeWidth = 3.dp
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                stringResource(R.string.auto_cargando_tu_informacion),
                                fontSize = 14.sp,
                                color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }

                psicologo != null -> {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                    ) {
                        GreetingCard(
                            nombrePaciente = nombrePaciente,
                            saludo = saludo,
                            isDark = isDark,
                            onLogoutClick = { showLogoutDialog = true }
                        )

                        val ticketsState by ticketsViewModel.tickets.observeAsState(emptyList())
                        val latestTicket = ticketsState.firstOrNull()

                        PsicologoContent(
                            psicologo = psicologo!!,
                            navController = navController,
                            isDark = isDark,
                            cardColors = cardColors,
                            latestTicket = latestTicket
                        )
                    }
                }

                error != null -> {
                    ErrorState(
                        error = error,
                        onRetry = {
                            val idPaciente = session?.idPaciente ?: return@ErrorState
                            pacienteViewModel.cargarPsicologoAsignado(idPaciente)
                            profilePsicologoViewModel.fetchProfile(idPaciente)
                        },
                        isDark = isDark
                    )
                }

                else -> {
                    NoPsicologoAssignedState(navController, isDark)
                }
            }

            // Botón flotante del Copiloto
            FloatingActionButton(
                onClick = { showCopilotDialog = true },
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(16.dp),
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White,
                elevation = FloatingActionButtonDefaults.elevation(8.dp)
            ) {
                Icon(
                    Icons.Default.QuestionAnswer,
                    contentDescription = "Asistente IA",
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }

    // Diálogo del Copiloto
    if (showCopilotDialog) {
        CopilotDialog(
            onDismiss = { showCopilotDialog = false },
            copilotoViewModel = copilotoViewModel,
            chunks = chunks,
            isLoading = loadingCopilot,
            error = errorCopilot,
            isDark = isDark
        )
    }
}

@Composable
fun CopilotDialog(
    onDismiss: () -> Unit,
    copilotoViewModel: CopilotoAiViewModel,
    chunks: List<ChunkResponseDto>,
    isLoading: Boolean,
    error: String?,
    isDark: Boolean
) {
    var question by remember { mutableStateOf("") }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(
            usePlatformDefaultWidth = false,
            decorFitsSystemWindows = false
        )
    ) {
        Card(
            modifier = Modifier
                .fillMaxWidth(0.95f)
                .fillMaxHeight(0.8f)
                .shadow(24.dp, RoundedCornerShape(24.dp)),
            shape = RoundedCornerShape(24.dp),
            colors = CardDefaults.cardColors(
                containerColor = if (isDark) Color(0xFF1E1E1E) else Color.White
            )
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(16.dp)
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.QuestionAnswer,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary,
                            modifier = Modifier.size(28.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = "Asistente IA - Copiloto",
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface
                        )
                    }
                    IconButton(onClick = onDismiss) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = "Cerrar",
                            tint = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))
                Divider(color = if (isDark) Color.White.copy(alpha = 0.1f) else Color.Gray.copy(alpha = 0.2f))

                // Área de respuestas
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .padding(vertical = 12.dp)
                ) {
                    when {
                        isLoading -> {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(40.dp),
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                    Spacer(modifier = Modifier.height(8.dp))
                                    Text(
                                        text = "Buscando información...",
                                        fontSize = 14.sp,
                                        color = if (isDark) Color.White.copy(alpha = 0.7f) else Color.Gray
                                    )
                                }
                            }
                        }
                        error != null -> {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(
                                        Icons.Default.Error,
                                        contentDescription = null,
                                        tint = MaterialTheme.colorScheme.error,
                                        modifier = Modifier.size(48.dp)
                                    )
                                    Spacer(modifier = Modifier.height(8.dp))
                                    Text(
                                        text = error,
                                        fontSize = 14.sp,
                                        color = MaterialTheme.colorScheme.error,
                                        textAlign = TextAlign.Center
                                    )
                                    Spacer(modifier = Modifier.height(16.dp))
                                    Button(
                                        onClick = { copilotoViewModel.clearError() },
                                        colors = ButtonDefaults.buttonColors(
                                            containerColor = MaterialTheme.colorScheme.primary
                                        )
                                    ) {
                                        Text("Reintentar")
                                    }
                                }
                            }
                        }
                        chunks.isNotEmpty() -> {
                            LazyColumn(
                                verticalArrangement = Arrangement.spacedBy(16.dp)
                            ) {
                                // Agrupar chunks por documento
                                val chunksByDocument = chunks.groupBy { it.nombreDocumento ?: "Información general" }

                                chunksByDocument.forEach { (documentName, documentChunks) ->
                                    item {
                                        Card(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(12.dp),
                                            colors = CardDefaults.cardColors(
                                                containerColor = if (isDark) Color(0xFF252525) else Color(0xFFF0F0F0)
                                            )
                                        ) {
                                            Column(
                                                modifier = Modifier.padding(12.dp)
                                            ) {
                                                Text(
                                                    text = "📄 $documentName",
                                                    fontSize = 14.sp,
                                                    fontWeight = FontWeight.Bold,
                                                    color = if (isDark) Color.White else MaterialTheme.colorScheme.primary
                                                )
                                                Spacer(modifier = Modifier.height(8.dp))

                                                documentChunks.sortedBy { it.chunkIndex }.forEach { chunk ->
                                                    Column(
                                                        modifier = Modifier
                                                            .fillMaxWidth()
                                                            .padding(vertical = 8.dp)
                                                    ) {
                                                        Text(
                                                            text = chunk.contenido,
                                                            fontSize = 14.sp,
                                                            lineHeight = 20.sp,
                                                            color = if (isDark) Color.White.copy(alpha = 0.9f) else Color.Black
                                                        )
                                                        if (chunk != documentChunks.last()) {
                                                            Spacer(modifier = Modifier.height(8.dp))
                                                            Divider(
                                                                color = if (isDark) Color.White.copy(alpha = 0.1f)
                                                                else Color.Gray.copy(alpha = 0.2f)
                                                            )
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        else -> {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(
                                        Icons.Default.Psychology,
                                        contentDescription = null,
                                        tint = if (isDark) Color.White.copy(alpha = 0.3f) else Color.Gray.copy(alpha = 0.5f),
                                        modifier = Modifier.size(64.dp)
                                    )
                                    Spacer(modifier = Modifier.height(16.dp))
                                    Text(
                                        text = "Hazme una pregunta sobre salud mental, terapias o bienestar emocional",
                                        fontSize = 14.sp,
                                        color = if (isDark) Color.White.copy(alpha = 0.5f) else Color.Gray,
                                        textAlign = TextAlign.Center
                                    )
                                }
                            }
                        }
                    }
                }

                Divider(color = if (isDark) Color.White.copy(alpha = 0.1f) else Color.Gray.copy(alpha = 0.2f))

                // Campo de pregunta
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 8.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.Bottom
                ) {
                    OutlinedTextField(
                        value = question,
                        onValueChange = { question = it },
                        modifier = Modifier.weight(1f),
                        placeholder = {
                            Text(
                                text = "Escribe tu pregunta...",
                                fontSize = 14.sp
                            )
                        },
                        textStyle = androidx.compose.ui.text.TextStyle(
                            fontSize = 14.sp,
                            color = if (isDark) Color.White else Color.Black
                        ),
                        shape = RoundedCornerShape(24.dp),
                        colors = TextFieldDefaults.colors(
                            focusedContainerColor = if (isDark) Color(0xFF2D2D2D) else Color(0xFFF5F5F5),
                            unfocusedContainerColor = if (isDark) Color(0xFF2D2D2D) else Color(0xFFF5F5F5),
                            focusedTextColor = if (isDark) Color.White else Color.Black,
                            unfocusedTextColor = if (isDark) Color.White else Color.Black,
                            focusedIndicatorColor = MaterialTheme.colorScheme.primary,
                            unfocusedIndicatorColor = Color.Transparent
                        ),
                        singleLine = true
                    )

                    Button(
                        onClick = {
                            if (question.isNotBlank()) {
                                copilotoViewModel.ask(question)
                                question = ""
                            }
                        },
                        enabled = question.isNotBlank() && !isLoading,
                        shape = CircleShape,
                        modifier = Modifier.size(48.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.primary,
                            disabledContainerColor = if (isDark) Color(0xFF3D3D3D) else Color(0xFFE0E0E0)
                        )
                    ) {
                        Icon(
                            Icons.Default.Send,
                            contentDescription = "Enviar",
                            tint = Color.White,
                            modifier = Modifier.size(20.dp)
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun ChunkMessage(
    chunk: ChunkResponseDto,
    isDark: Boolean
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (isDark) Color(0xFF2D2D2D) else Color(0xFFF5F5F5)
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                Surface(
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.2f),
                    modifier = Modifier.size(28.dp)
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Text(
                            text = "${chunk.chunkIndex + 1}",
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Bold,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                Spacer(modifier = Modifier.width(10.dp))
                Text(
                    text = chunk.nombreDocumento ?: "Fragmento ${chunk.chunkIndex + 1}",
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Medium,
                    color = if (isDark) Color.White.copy(alpha = 0.7f) else Color.Gray
                )
            }
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = chunk.contenido,
                fontSize = 14.sp,
                lineHeight = 20.sp,
                color = if (isDark) Color.White else Color.Black
            )
        }
    }
}
@Composable
fun GreetingCard(
    nombrePaciente: String,
    saludo: String,
    isDark: Boolean,
    onLogoutClick: () -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp),
        color = if (isDark) Color.Black else MaterialTheme.colorScheme.primary
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.End
        ) {
            Text(
                "Cerrar sesión",
                fontSize = 14.sp,
                color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onPrimary.copy(alpha = 0.7f),
                fontWeight = FontWeight.Bold,
                modifier = Modifier
                    .clickable{
                        onLogoutClick()
                    }
            )
        }
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(24.dp)
        ) {
            Text(
                text = saludo,
                fontSize = 14.sp,
                color = if (isDark) Color.White.copy(alpha = 0.9f) else Color.White.copy(alpha = 0.9f),
                fontWeight = FontWeight.Medium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "$nombrePaciente 👋",
                fontSize = 28.sp,
                fontWeight = FontWeight.Bold,
                color = if (isDark) Color.White else Color.White
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = stringResource(R.string.auto_tu_bienestar_es_nuestra),
                fontSize = 14.sp,
                color = if (isDark) Color.White.copy(alpha = 0.8f) else Color.White.copy(alpha = 0.8f)
            )
        }
    }
}

@Composable
fun ErrorState(
    error: String?,
    onRetry: () -> Unit,
    isDark: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            Icons.Default.Error,
            contentDescription = stringResource(R.string.auto_error),
            modifier = Modifier.size(80.dp),
            tint = MaterialTheme.colorScheme.error
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = stringResource(R.string.auto_error_al_cargar_los),
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            color = if (isDark) Color.White else MaterialTheme.colorScheme.error
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = error ?: "Error desconocido",
            fontSize = 14.sp,
            color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onRetry,
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary
            ),
            shape = RoundedCornerShape(12.dp)
        ) {
            Text(stringResource(R.string.auto_reintentar), color = Color.White)
        }
    }
}

@Composable
fun NoPsicologoAssignedState(
    navController: NavController,
    isDark: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Surface(
            modifier = Modifier.size(120.dp),
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f)
        ) {
            Box(contentAlignment = Alignment.Center) {
                Icon(
                    Icons.Default.Psychology,
                    contentDescription = stringResource(R.string.auto_sin_psicologo),
                    modifier = Modifier.size(64.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Text(
            text = stringResource(R.string.auto_aun_no_tienes_un),
            fontSize = 22.sp,
            fontWeight = FontWeight.Bold,
            color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface,
            textAlign = TextAlign.Center
        )

        Spacer(modifier = Modifier.height(12.dp))

        Text(
            text = stringResource(R.string.auto_un_administrador_te_asignara),
            fontSize = 14.sp,
            color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = 16.dp)
        )

        Spacer(modifier = Modifier.height(32.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(16.dp),
            colors = CardDefaults.cardColors(
                containerColor = if (isDark) Color(0xFF2D2D2D) else MaterialTheme.colorScheme.surfaceVariant.copy(
                    alpha = 0.5f
                )
            )
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(
                    text = stringResource(R.string.auto__que_puedes_hacer),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = stringResource(R.string.auto__explora_nuestros_recursos),
                    fontSize = 12.sp,
                    color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
                    lineHeight = 18.sp
                )
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Button(
            onClick = { navController.navigateUp() },
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White
            ),
            shape = RoundedCornerShape(12.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(
                stringResource(R.string.auto_volver_al_inicio),
                modifier = Modifier.padding(vertical = 4.dp)
            )
        }
    }
}

private const val BASE_URL = "http://192.168.1.175:8080"

fun buildFullImageUrl(relativeUrl: String?): String {
    if (relativeUrl.isNullOrEmpty()) return ""

    return if (relativeUrl.startsWith("http")) {
        relativeUrl
    } else {
        "$BASE_URL$relativeUrl"
    }
}

@Composable
fun PsicologoContent(
    psicologo: PsicologoProfileResponseDTO,
    navController: NavController,
    isDark: Boolean,
    cardColors: CardColors,
    latestTicket: TicketModel?
) {
    val cardBackgroundColor = cardColors.cardBackground
    val cardContentColor = cardColors.cardContent
    val cardContentSecondaryColor = cardColors.cardContent.copy(alpha = 0.7f)

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp)
            .padding(bottom = 24.dp)
    ) {
        Spacer(modifier = Modifier.height(16.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(
                containerColor = cardBackgroundColor
            ),
            elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(24.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Box(
                    modifier = Modifier
                        .size(130.dp)
                        .clip(CircleShape)
                        .background(
                            brush = Brush.linearGradient(
                                colors = listOf(
                                    MaterialTheme.colorScheme.primary,
                                    MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
                                )
                            ),
                            shape = CircleShape
                        )
                        .padding(3.dp)
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .clip(CircleShape)
                            .background(if (isDark) Color(0xFF2D2D2D) else Color.White)
                    ) {
                        val fotoUrl = buildFullImageUrl(psicologo.usuario?.fotoPerfilUrl)

                        val context = LocalContext.current
                        val tokenHolder = koinInject<TokenHolder>()
                        val token = tokenHolder.getToken()

                        val request = remember(fotoUrl, token) {
                            ImageRequest.Builder(context)
                                .data(fotoUrl)
                                .addHeader("Authorization", "Bearer $token")
                                .crossfade(true)
                                .placeholder(R.drawable.ic_default_avatar)
                                .error(R.drawable.ic_default_avatar)
                                .build()
                        }
                        if (!fotoUrl.isNullOrBlank()) {
                            Image(
                                painter = rememberAsyncImagePainter(model = request),
                                contentDescription = stringResource(R.string.auto_foto_de_perfil),
                                modifier = Modifier.fillMaxSize(),
                                contentScale = ContentScale.Crop
                            )
                        } else {
                            Image(
                                painter = painterResource(R.drawable.ic_default_avatar),
                                contentDescription = stringResource(R.string.auto_foto_por_defecto),
                                modifier = Modifier.fillMaxSize(),
                                contentScale = ContentScale.Crop
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = "${psicologo.usuario?.nombre ?: ""} ${psicologo.usuario?.apellido ?: ""}".trim(),
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor
                )

                if (!psicologo.especialidad.isNullOrBlank()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Surface(
                        shape = RoundedCornerShape(20.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = if (isDark) 0.25f else 0.15f)
                    ) {
                        Text(
                            text = psicologo.especialidad ?: "",
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium,
                            color = if (isDark) Color.White else MaterialTheme.colorScheme.primary,
                            modifier = Modifier.padding(horizontal = 16.dp, vertical = 6.dp)
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                if (!psicologo.usuario?.email.isNullOrBlank()) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.padding(vertical = 4.dp)
                    ) {
                        Icon(
                            Icons.Default.Email,
                            contentDescription = stringResource(R.string.auto_email),
                            modifier = Modifier.size(18.dp),
                            tint = cardContentSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = psicologo.usuario?.email ?: "",
                            fontSize = 14.sp,
                            color = cardContentSecondaryColor
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(
                containerColor = cardBackgroundColor
            ),
            elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp)
            ) {
                Text(
                    text = stringResource(R.string.auto__informacion_profesional),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor
                )

                Spacer(modifier = Modifier.height(16.dp))

                if (psicologo.experiencia != null && psicologo.experiencia > 0) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.School,
                        label = stringResource(R.string.auto_anos_de_experiencia),
                        value = "${psicologo.experiencia} años",
                        iconColor = MaterialTheme.colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor
                    )
                }

                if (!psicologo.licencia.isNullOrBlank()) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.Badge,
                        label = stringResource(R.string.auto_numero_de_colegiado),
                        value = psicologo.licencia ?: "",
                        iconColor = MaterialTheme.colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor
                    )
                }

                ProfessionalInfoRow(
                    icon = Icons.Outlined.AccessTime,
                    label = stringResource(R.string.auto_horario_de_atencion),
                    value = "Lunes a Viernes: 9:00 - 20:00",
                    iconColor = MaterialTheme.colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor
                )

                ProfessionalInfoRow(
                    icon = Icons.Outlined.LocationOn,
                    label = stringResource(R.string.auto_modalidad),
                    value = "Presencial y Online",
                    iconColor = MaterialTheme.colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor
                )
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        if (!psicologo.descripcion.isNullOrBlank()) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(20.dp),
                colors = CardDefaults.cardColors(
                    containerColor = cardBackgroundColor
                ),
                elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(20.dp)
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = stringResource(R.string.auto__sobre_mi),
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = cardContentColor,
                            modifier = Modifier.weight(1f)
                        )
                        Icon(
                            Icons.Default.Psychology,
                            contentDescription = stringResource(R.string.auto_psicologia),
                            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f),
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    Text(
                        text = psicologo.descripcion ?: "",
                        fontSize = 14.sp,
                        lineHeight = 22.sp,
                        color = cardContentSecondaryColor
                    )
                }
            }
        }

        val context = LocalContext.current
        val showReportCard = remember(latestTicket) {
            if (latestTicket == null) {
                false
            } else {
                val status = latestTicket.estado.lowercase()
                if (status !in listOf("resuelto", "cerrado")) {
                    true
                } else {
                    val prefs =
                        context.getSharedPreferences("ticket_cierre_prefs", Context.MODE_PRIVATE)
                    val key = "cierre_${latestTicket.id}"
                    var timestamp = prefs.getLong(key, 0L)
                    if (timestamp == 0L) {
                        timestamp = System.currentTimeMillis()
                        prefs.edit().putLong(key, timestamp).apply()
                    }
                    System.currentTimeMillis() - timestamp < 12 * 60 * 60 * 1000L
                }
            }
        }

        if (showReportCard && latestTicket != null) {
            val status = latestTicket.estado.lowercase()

            Spacer(modifier = Modifier.height(16.dp))

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(20.dp),
                colors = CardDefaults.cardColors(
                    containerColor = cardBackgroundColor
                ),
                elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(20.dp)
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Icon(
                            imageVector = Icons.Default.Info,
                            contentDescription = stringResource(R.string.auto_informacion_de_reportes),
                            tint = MaterialTheme.colorScheme.primary,
                            modifier = Modifier.size(22.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = stringResource(R.string.auto_seguimiento_de_tu_reporte),
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = cardContentColor
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    Text(
                        text = "Queremos garantizar tu tranquilidad y hemos comenzado a trabajar en el ticket \"${latestTicket.titulo}\":",
                        fontSize = 13.sp,
                        lineHeight = 19.sp,
                        color = cardContentSecondaryColor
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    val isStep1Completed = status in listOf("en-proceso", "resuelto", "cerrado")
                    val isStep1Active = status == "abierto"
                    ReportStepRow(
                        stepNumber = "1",
                        title = "Envío y Registro",
                        description = "El problema se ha registrado y nuestro equipo técnico ha sido notificado.",
                        icon = Icons.Filled.Send,
                        iconColor = MaterialTheme.colorScheme.primary,
                        isCompleted = isStep1Completed,
                        isActive = isStep1Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor
                    )

                    val isStep2Completed = status in listOf("resuelto", "cerrado")
                    val isStep2Active = status == "en-proceso"
                    ReportStepRow(
                        stepNumber = "2",
                        title = "Revisión y Proceso",
                        description = "El equipo de soporte técnico está analizando y resolviendo la incidencia.",
                        icon = Icons.Default.HourglassEmpty,
                        iconColor = Color(0xFFF2A104),
                        isCompleted = isStep2Completed,
                        isActive = isStep2Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor
                    )

                    val isStep3Completed = status in listOf("resuelto", "cerrado")
                    val isStep3Active = status in listOf("resuelto", "cerrado")
                    ReportStepRow(
                        stepNumber = "3",
                        title = if (status == "cerrado") "Cerrado" else "Resolución con Éxito",
                        description = if (latestTicket.respuestaAdmin.isNotBlank()) {
                            "Solución: ${latestTicket.respuestaAdmin}"
                        } else {
                            "El ticket ha sido marcado como resuelto. La solución se aplicará a la brevedad."
                        },
                        icon = Icons.Default.CheckCircle,
                        iconColor = Color(0xFF2E7D32),
                        isCompleted = isStep3Completed,
                        isActive = isStep3Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = if (isDark) 0.15f else 0.08f),
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = if (status in listOf("resuelto", "cerrado")) {
                                "Este seguimiento desaparecerá automáticamente en unas horas ya que el reporte ha finalizado."
                            } else {
                                "Puedes ver el historial completo de tus reportes en cualquier momento en Ajustes -> Reportar problema -> Mis reportes."
                            },
                            fontSize = 12.sp,
                            lineHeight = 18.sp,
                            fontWeight = FontWeight.Medium,
                            color = if (isDark) Color.White.copy(alpha = 0.9f) else MaterialTheme.colorScheme.primary,
                            modifier = Modifier.padding(12.dp)
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Button(
            onClick = { navController.navigate(Screens.citas.route) },
            modifier = Modifier
                .fillMaxWidth()
                .height(52.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White
            ),
            shape = RoundedCornerShape(12.dp),
            elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp)
        ) {
            Icon(
                Icons.Default.CalendarMonth,
                contentDescription = stringResource(R.string.auto_citas),
                modifier = Modifier.size(20.dp),
                tint = Color.White
            )
            Spacer(modifier = Modifier.width(12.dp))
            Text(
                stringResource(R.string.auto_ver_mis_citas),
                modifier = Modifier.padding(vertical = 4.dp),
                fontSize = 16.sp,
                fontWeight = FontWeight.Medium,
                color = Color.White
            )
        }

        Spacer(modifier = Modifier.height(32.dp))
    }
}

@Composable
fun ProfessionalInfoRow(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    labelColor: Color,
    valueColor: Color
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.Top
    ) {
        Icon(
            icon,
            contentDescription = label,
            modifier = Modifier.size(20.dp),
            tint = iconColor
        )
        Spacer(modifier = Modifier.width(12.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                fontSize = 12.sp,
                color = labelColor
            )
            Text(
                text = value,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                color = valueColor
            )
        }
    }
}

@Composable
fun ReportStepRow(
    stepNumber: String,
    title: String,
    description: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    iconColor: Color,
    isCompleted: Boolean,
    isActive: Boolean,
    contentColor: Color,
    secondaryColor: Color
) {
    val tintColor =
        if (isCompleted) Color(0xFF2E7D32) else if (isActive) iconColor else Color.Gray.copy(alpha = 0.5f)
    val bgColor =
        if (isCompleted) Color(0xFFE8F5E9) else if (isActive) iconColor.copy(alpha = 0.15f) else Color.Gray.copy(
            alpha = 0.08f
        )
    val displayIcon = if (isCompleted) Icons.Default.CheckCircle else icon

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.Top
    ) {
        Box(
            modifier = Modifier
                .size(28.dp)
                .clip(CircleShape)
                .background(bgColor),
            contentAlignment = Alignment.Center
        ) {
            Icon(
                imageVector = displayIcon,
                contentDescription = null,
                tint = tintColor,
                modifier = Modifier.size(16.dp)
            )
        }
        Spacer(modifier = Modifier.width(16.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = "$stepNumber. $title",
                fontSize = 14.sp,
                fontWeight = if (isActive || isCompleted) FontWeight.Bold else FontWeight.Medium,
                color = if (isActive || isCompleted) contentColor else contentColor.copy(alpha = 0.5f)
            )
            Spacer(modifier = Modifier.height(2.dp))
            Text(
                text = description,
                fontSize = 13.sp,
                lineHeight = 18.sp,
                color = if (isActive || isCompleted) secondaryColor else secondaryColor.copy(alpha = 0.5f)
            )
        }
    }
}