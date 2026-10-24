package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.content.Context
import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.CornerSize
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.HourglassEmpty
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.QuestionAnswer
import androidx.compose.material.icons.filled.School
import androidx.compose.material.icons.filled.Send
import androidx.compose.material.icons.outlined.AccessTime
import androidx.compose.material.icons.outlined.LocationOn
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
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.rememberAsyncImagePainter
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.copiloto.ChunkResponseDto
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import org.ies.tierno.applicationamani.dto.tickets.TicketModel
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.copiloto.CopilotoAiViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel.TicketsViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.CardColors
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.getKoin
import org.koin.compose.koinInject
import java.time.LocalDateTime

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ViewPacientePrincipalScreen(
    navController: NavController,
    profilePsicologoViewModel: ProfilePsicologoViewModel,
    pacienteViewModel: PacienteViewModel = koinViewModel(),
    ticketsViewModel: TicketsViewModel = koinViewModel(),
    copilotoViewModel: CopilotoAiViewModel = koinViewModel(),
    userSessionDataStore: UserSessionDataStore = getKoin().get(),
) {
    val isDark = isDarkTheme()
    val cardColors = getCardColors()
    val tokenHolder = koinInject<TokenHolder>()
    val token = tokenHolder.getToken()

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

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

    val ticketsState by ticketsViewModel.tickets.observeAsState(emptyList())
    val latestTicket = ticketsState.firstOrNull()

    LaunchedEffect(session) {
        val idPaciente = session?.idPaciente ?: return@LaunchedEffect
        pacienteViewModel.cargarPsicologoAsignado(idPaciente)
        ticketsViewModel.cargarEmailUsuario()
    }

    val isLoading = isLoadingPaciente || isLoadingPsicologo
    val error = errorPsicologo

    val nombrePaciente =
        psicologo?.usuario?.nombre?.split(" ")?.firstOrNull()
            ?: session?.nombre?.split(" ")?.firstOrNull()
            ?: stringResource(R.string.rol_paciente_default)

    val hora = LocalDateTime.now().hour
    val saludo =
        when {
            hora < 12 -> stringResource(R.string.saludo_buenos_dias)
            hora < 18 -> stringResource(R.string.saludo_buenas_tardes)
            else -> stringResource(R.string.saludo_buenas_noches)
        }

    if (showLogoutDialog) {
        AlertDialog(
            onDismissRequest = { showLogoutDialog = false },
            title = {
                Text(
                    text = stringResource(R.string.auto_cerrar_sesion_1),
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onSurface,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.auto_estas_seguro_de_que),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
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
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.error,
                            contentColor = MaterialTheme.colorScheme.onError,
                        ),
                ) {
                    Text(stringResource(R.string.auto_cerrar_sesion_1))
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { showLogoutDialog = false },
                ) {
                    Text(stringResource(R.string.auto_cancelar))
                }
            },
            containerColor = MaterialTheme.colorScheme.surface,
            titleContentColor = MaterialTheme.colorScheme.onSurface,
            textContentColor = MaterialTheme.colorScheme.onSurfaceVariant,
        )
    }

    ViewPacientePrincipalContent(
        nombrePaciente = nombrePaciente,
        saludo = saludo,
        isLoading = isLoading,
        psicologo = psicologo,
        error = error,
        latestTicket = latestTicket,
        isDark = isDark,
        cardColors = cardColors,
        token = token,
        onLogoutClick = { showLogoutDialog = true },
        onOpenCopilotClick = { showCopilotDialog = true },
        onRetry = {
            val idPaciente = session?.idPaciente ?: return@ViewPacientePrincipalContent
            pacienteViewModel.cargarPsicologoAsignado(idPaciente)
            profilePsicologoViewModel.fetchProfile(idPaciente)
        },
        onBackClick = { navController.navigateUp() },
        onViewCitasClick = { navController.navigate(Screens.citas.route) },
    )

    // Diálogo del Copiloto
    if (showCopilotDialog) {
        CopilotDialog(
            onDismiss = { showCopilotDialog = false },
            onAsk = { copilotoViewModel.ask(it) },
            onClearError = { copilotoViewModel.clearError() },
            chunks = chunks,
            isLoading = loadingCopilot,
            error = errorCopilot,
            isDark = isDark,
        )
    }
}

@Composable
fun ViewPacientePrincipalContent(
    nombrePaciente: String,
    saludo: String,
    isLoading: Boolean,
    psicologo: PsicologoProfileResponseDTO?,
    error: String?,
    latestTicket: TicketModel?,
    isDark: Boolean,
    cardColors: CardColors,
    token: String?,
    onLogoutClick: () -> Unit,
    onOpenCopilotClick: () -> Unit,
    onRetry: () -> Unit,
    onBackClick: () -> Unit,
    onViewCitasClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(colorScheme.background),
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(Dimensions.iconExtraLarge),
                                color = colorScheme.primary,
                                strokeWidth = Dimensions.progressStroke,
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_cargando_tu_informacion),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                psicologo != null -> {
                    Column(
                        modifier =
                            Modifier
                                .fillMaxSize()
                                .verticalScroll(rememberScrollState()),
                    ) {
                        GreetingCard(
                            nombrePaciente = nombrePaciente,
                            saludo = saludo,
                            isDark = isDark,
                            onLogoutClick = onLogoutClick,
                        )

                        PsicologoBodyContent(
                            psicologo = psicologo,
                            isDark = isDark,
                            cardColors = cardColors,
                            latestTicket = latestTicket,
                            token = token,
                            onViewCitasClick = onViewCitasClick,
                        )
                    }
                }

                error != null -> {
                    ErrorState(
                        error = error,
                        onRetry = onRetry,
                        isDark = isDark,
                    )
                }

                else -> {
                    NoPsicologoAssignedState(
                        onBackClick = onBackClick,
                        isDark = isDark,
                    )
                }
            }

            // Botón flotante del Copiloto
            FloatingActionButton(
                onClick = onOpenCopilotClick,
                modifier =
                    Modifier
                        .align(Alignment.BottomEnd)
                        .padding(Spacing.m),
                containerColor = colorScheme.primary,
                contentColor = colorScheme.onPrimary,
                elevation = FloatingActionButtonDefaults.elevation(Elevation.level3),
            ) {
                Icon(
                    Icons.Default.QuestionAnswer,
                    contentDescription = stringResource(R.string.copiloto_asistente_ia),
                    modifier = Modifier.size(Dimensions.iconDefault),
                )
            }
        }
    }
}

@Composable
fun CopilotDialog(
    onDismiss: () -> Unit,
    copilotoViewModel: CopilotoAiViewModel,
    chunks: List<ChunkResponseDto>,
    isLoading: Boolean,
    error: String?,
    isDark: Boolean,
) {
    CopilotDialog(
        onDismiss = onDismiss,
        onAsk = { copilotoViewModel.ask(it) },
        onClearError = { copilotoViewModel.clearError() },
        chunks = chunks,
        isLoading = isLoading,
        error = error,
        isDark = isDark,
    )
}

@Composable
fun CopilotDialog(
    onDismiss: () -> Unit,
    onAsk: (String) -> Unit,
    onClearError: () -> Unit,
    chunks: List<ChunkResponseDto>,
    isLoading: Boolean,
    error: String?,
    isDark: Boolean,
) {
    var question by remember { mutableStateOf("") }
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Dialog(
        onDismissRequest = onDismiss,
        properties =
            DialogProperties(
                usePlatformDefaultWidth = false,
                decorFitsSystemWindows = false,
            ),
    ) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth(0.95f)
                    .fillMaxHeight(0.8f),
            shape = MaterialTheme.shapes.extraLarge,
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level4),
            colors =
                CardDefaults.cardColors(
                    containerColor = colorScheme.surface,
                ),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(Spacing.m),
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.QuestionAnswer,
                            contentDescription = null,
                            tint = colorScheme.primary,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            text = stringResource(R.string.copiloto_titulo),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onSurface,
                        )
                    }
                    IconButton(onClick = onDismiss) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.s))
                HorizontalDivider(color = colorScheme.outlineVariant)

                // Área de respuestas
                Box(
                    modifier =
                        Modifier
                            .weight(1f)
                            .padding(vertical = Spacing.sm),
                ) {
                    when {
                        isLoading -> {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center,
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(Dimensions.avatarSmall),
                                        color = colorScheme.primary,
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.s))
                                    Text(
                                        text = stringResource(R.string.copiloto_buscando_info),
                                        style = typography.bodyMedium,
                                        color = colorScheme.onSurfaceVariant,
                                    )
                                }
                            }
                        }
                        error != null -> {
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center,
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(
                                        Icons.Default.Error,
                                        contentDescription = null,
                                        tint = colorScheme.error,
                                        modifier = Modifier.size(Dimensions.iconExtraLarge),
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.s))
                                    Text(
                                        text = error,
                                        style = typography.bodyMedium,
                                        color = colorScheme.error,
                                        textAlign = TextAlign.Center,
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.m))
                                    Button(
                                        onClick = onClearError,
                                        colors =
                                            ButtonDefaults.buttonColors(
                                                containerColor = colorScheme.primary,
                                            ),
                                    ) {
                                        Text(stringResource(R.string.auto_reintentar))
                                    }
                                }
                            }
                        }
                        chunks.isNotEmpty() -> {
                            val defaultDocName = stringResource(R.string.copiloto_info_general)
                            LazyColumn(
                                verticalArrangement = Arrangement.spacedBy(Spacing.m),
                            ) {
                                val chunksByDocument = chunks.groupBy { it.nombreDocumento ?: defaultDocName }

                                chunksByDocument.forEach { (documentName, documentChunks) ->
                                    item(key = documentName) {
                                        Card(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = MaterialTheme.shapes.medium,
                                            colors =
                                                CardDefaults.cardColors(
                                                    containerColor = colorScheme.surfaceContainerLow,
                                                ),
                                        ) {
                                            Column(
                                                modifier = Modifier.padding(Spacing.sm),
                                            ) {
                                                Text(
                                                    text = documentName,
                                                    style = typography.titleSmall,
                                                    fontWeight = FontWeight.Bold,
                                                    color = colorScheme.primary,
                                                )
                                                Spacer(modifier = Modifier.height(Spacing.s))

                                                documentChunks.sortedBy { it.chunkIndex }.forEach { chunk ->
                                                    Column(
                                                        modifier =
                                                            Modifier
                                                                .fillMaxWidth()
                                                                .padding(vertical = Spacing.s),
                                                    ) {
                                                        Text(
                                                            text = chunk.contenido,
                                                            style = typography.bodyMedium,
                                                            color = colorScheme.onSurface,
                                                        )
                                                        if (chunk != documentChunks.last()) {
                                                            Spacer(modifier = Modifier.height(Spacing.s))
                                                            HorizontalDivider(color = colorScheme.outlineVariant)
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
                                contentAlignment = Alignment.Center,
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(
                                        Icons.Default.QuestionAnswer,
                                        contentDescription = null,
                                        tint = colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                                        modifier = Modifier.size(Dimensions.iconHero),
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.m))
                                    Text(
                                        text = stringResource(R.string.copiloto_prompt_inicial),
                                        style = typography.bodyMedium,
                                        color = colorScheme.onSurfaceVariant,
                                        textAlign = TextAlign.Center,
                                    )
                                }
                            }
                        }
                    }
                }

                HorizontalDivider(color = colorScheme.outlineVariant)

                // Campo de pregunta
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(top = Spacing.s),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                    verticalAlignment = Alignment.Bottom,
                ) {
                    OutlinedTextField(
                        value = question,
                        onValueChange = { question = it },
                        modifier = Modifier.weight(1f),
                        placeholder = {
                            Text(
                                text = stringResource(R.string.copiloto_escribe_pregunta),
                                style = typography.bodyMedium,
                            )
                        },
                        textStyle = typography.bodyMedium,
                        shape = MaterialTheme.shapes.extraLarge,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedContainerColor = colorScheme.surfaceContainerLow,
                                unfocusedContainerColor = colorScheme.surfaceContainerLow,
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outlineVariant,
                            ),
                        singleLine = true,
                    )

                    Button(
                        onClick = {
                            if (question.isNotBlank()) {
                                onAsk(question)
                                question = ""
                            }
                        },
                        enabled = question.isNotBlank() && !isLoading,
                        shape = CircleShape,
                        modifier = Modifier.size(Dimensions.touchTarget),
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.primary,
                                contentColor = colorScheme.onPrimary,
                                disabledContainerColor = colorScheme.surfaceVariant,
                                disabledContentColor = colorScheme.onSurfaceVariant,
                            ),
                    ) {
                        Icon(
                            Icons.AutoMirrored.Filled.Send,
                            contentDescription = stringResource(R.string.auto_enviar),
                            modifier = Modifier.size(Dimensions.iconMedium),
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
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors =
            CardDefaults.cardColors(
                containerColor = colorScheme.surfaceContainerLow,
            ),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.sm),
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Surface(
                    shape = CircleShape,
                    color = colorScheme.primaryContainer,
                    modifier = Modifier.size(Dimensions.iconDefault),
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Text(
                            text = "${chunk.chunkIndex + 1}",
                            style = typography.labelSmall,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onPrimaryContainer,
                        )
                    }
                }
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = chunk.nombreDocumento ?: stringResource(R.string.copiloto_fragmento_num, chunk.chunkIndex + 1),
                    style = typography.labelMedium,
                    fontWeight = FontWeight.Medium,
                    color = colorScheme.onSurfaceVariant,
                )
            }
            Spacer(modifier = Modifier.height(Spacing.s))
            Text(
                text = chunk.contenido,
                style = typography.bodyMedium,
                color = colorScheme.onSurface,
            )
        }
    }
}

@Composable
fun GreetingCard(
    nombrePaciente: String,
    saludo: String,
    isDark: Boolean,
    onLogoutClick: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val headerBg = if (isDark) colorScheme.surfaceContainerHigh else colorScheme.primary
    val headerContent = if (isDark) colorScheme.onSurface else colorScheme.onPrimary

    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape =
            MaterialTheme.shapes.extraLarge.copy(
                topStart = CornerSize(Spacing.none),
                topEnd = CornerSize(Spacing.none),
            ),
        color = headerBg,
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(horizontal = Spacing.l, vertical = Spacing.m),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.End,
            ) {
                Text(
                    text = stringResource(R.string.auto_cerrar_sesion_1),
                    style = typography.labelLarge,
                    color = headerContent.copy(alpha = 0.85f),
                    fontWeight = FontWeight.Bold,
                    modifier =
                        Modifier
                            .clickable(onClick = onLogoutClick)
                            .padding(vertical = Spacing.xs),
                )
            }
            Text(
                text = saludo,
                style = typography.bodyMedium,
                color = headerContent.copy(alpha = 0.9f),
                fontWeight = FontWeight.Medium,
            )
            Spacer(modifier = Modifier.height(Spacing.s))
            Text(
                text = nombrePaciente,
                style = typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                color = headerContent,
            )
            Spacer(modifier = Modifier.height(Spacing.xs))
            Text(
                text = stringResource(R.string.auto_tu_bienestar_es_nuestra),
                style = typography.bodyMedium,
                color = headerContent.copy(alpha = 0.85f),
            )
        }
    }
}

@Composable
fun ErrorState(
    error: String?,
    onRetry: () -> Unit,
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .padding(Spacing.l),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            Icons.Default.Error,
            contentDescription = stringResource(R.string.auto_error),
            modifier = Modifier.size(Dimensions.avatarLarge),
            tint = colorScheme.error,
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_error_al_cargar_los),
            style = typography.titleLarge,
            fontWeight = FontWeight.Bold,
            color = colorScheme.error,
        )
        Spacer(modifier = Modifier.height(Spacing.s))
        Text(
            text = error ?: stringResource(R.string.error_desconocido),
            style = typography.bodyMedium,
            color = colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
        )
        Spacer(modifier = Modifier.height(Spacing.l))
        Button(
            onClick = onRetry,
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
            shape = MaterialTheme.shapes.medium,
        ) {
            Text(stringResource(R.string.auto_reintentar))
        }
    }
}

@Composable
fun NoPsicologoAssignedState(
    navController: NavController,
    isDark: Boolean,
) {
    NoPsicologoAssignedState(
        onBackClick = { navController.navigateUp() },
        isDark = isDark,
    )
}

@Composable
fun NoPsicologoAssignedState(
    onBackClick: () -> Unit,
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .padding(Spacing.l),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Surface(
            modifier = Modifier.size(Dimensions.avatarHero),
            shape = CircleShape,
            color = colorScheme.primaryContainer.copy(alpha = 0.4f),
        ) {
            Box(contentAlignment = Alignment.Center) {
                Icon(
                    Icons.Default.MedicalServices,
                    contentDescription = stringResource(R.string.auto_sin_psicologo),
                    modifier = Modifier.size(Dimensions.iconHero),
                    tint = colorScheme.primary,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.l))

        Text(
            text = stringResource(R.string.auto_aun_no_tienes_un),
            style = typography.headlineSmall,
            fontWeight = FontWeight.Bold,
            color = colorScheme.onSurface,
            textAlign = TextAlign.Center,
        )

        Spacer(modifier = Modifier.height(Spacing.sm))

        Text(
            text = stringResource(R.string.auto_un_administrador_te_asignara),
            style = typography.bodyMedium,
            color = colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = Spacing.m),
        )

        Spacer(modifier = Modifier.height(Spacing.xl))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            colors =
                CardDefaults.cardColors(
                    containerColor = colorScheme.surfaceContainerLow,
                ),
        ) {
            Column(
                modifier = Modifier.padding(Spacing.m),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text(
                    text = stringResource(R.string.auto__que_puedes_hacer),
                    style = typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = stringResource(R.string.auto__explora_nuestros_recursos),
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.l))

        Button(
            onClick = onBackClick,
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
            shape = MaterialTheme.shapes.medium,
            modifier = Modifier.fillMaxWidth(),
        ) {
            Text(
                stringResource(R.string.auto_volver_al_inicio),
                modifier = Modifier.padding(vertical = Spacing.xs),
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
    latestTicket: TicketModel?,
) {
    val tokenHolder = koinInject<TokenHolder>()
    PsicologoBodyContent(
        psicologo = psicologo,
        isDark = isDark,
        cardColors = cardColors,
        latestTicket = latestTicket,
        token = tokenHolder.getToken(),
        onViewCitasClick = { navController.navigate(Screens.citas.route) },
    )
}

@Composable
fun PsicologoBodyContent(
    psicologo: PsicologoProfileResponseDTO,
    isDark: Boolean,
    cardColors: CardColors,
    latestTicket: TicketModel?,
    token: String?,
    onViewCitasClick: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = AmaniTheme.colors
    val cardBackgroundColor = cardColors.cardBackground
    val cardContentColor = cardColors.cardContent
    val cardContentSecondaryColor = cardColors.cardContent.copy(alpha = 0.7f)

    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .padding(horizontal = Spacing.m)
                .padding(bottom = Spacing.l),
    ) {
        Spacer(modifier = Modifier.height(Spacing.m))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            colors =
                CardDefaults.cardColors(
                    containerColor = cardBackgroundColor,
                ),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.l),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Box(
                    modifier =
                        Modifier
                            .size(Dimensions.avatarHero)
                            .clip(CircleShape)
                            .border(
                                BorderStroke(Dimensions.progressStroke, colorScheme.primary),
                                CircleShape,
                            )
                            .background(colorScheme.surfaceContainerLow),
                ) {
                    val fotoUrl = buildFullImageUrl(psicologo.usuario?.fotoPerfilUrl)
                    val context = LocalContext.current

                    val request =
                        remember(fotoUrl, token) {
                            ImageRequest
                                .Builder(context)
                                .data(fotoUrl)
                                .apply {
                                    if (!token.isNullOrBlank()) {
                                        addHeader("Authorization", "Bearer $token")
                                    }
                                }
                                .crossfade(true)
                                .placeholder(R.drawable.ic_default_avatar)
                                .error(R.drawable.ic_default_avatar)
                                .build()
                        }
                    if (fotoUrl.isNotBlank()) {
                        Image(
                            painter = rememberAsyncImagePainter(model = request),
                            contentDescription = stringResource(R.string.auto_foto_de_perfil),
                            modifier = Modifier.fillMaxSize(),
                            contentScale = ContentScale.Crop,
                        )
                    } else {
                        Image(
                            painter = painterResource(R.drawable.ic_default_avatar),
                            contentDescription = stringResource(R.string.auto_foto_por_defecto),
                            modifier = Modifier.fillMaxSize(),
                            contentScale = ContentScale.Crop,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))

                Text(
                    text = "${psicologo.usuario?.nombre ?: ""} ${psicologo.usuario?.apellido ?: ""}".trim(),
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor,
                )

                if (!psicologo.especialidad.isNullOrBlank()) {
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Surface(
                        shape = MaterialTheme.shapes.large,
                        color = colorScheme.primaryContainer,
                    ) {
                        Text(
                            text = psicologo.especialidad,
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.onPrimaryContainer,
                            modifier = Modifier.padding(horizontal = Spacing.m, vertical = Spacing.xs),
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))

                if (!psicologo.usuario?.email.isNullOrBlank()) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.padding(vertical = Spacing.xs),
                    ) {
                        Icon(
                            Icons.Default.Email,
                            contentDescription = stringResource(R.string.auto_email),
                            modifier = Modifier.size(Dimensions.iconButton),
                            tint = cardContentSecondaryColor,
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            text = psicologo.usuario?.email ?: "",
                            style = typography.bodyMedium,
                            color = cardContentSecondaryColor,
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(Spacing.m))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            colors =
                CardDefaults.cardColors(
                    containerColor = cardBackgroundColor,
                ),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.m),
            ) {
                Text(
                    text = stringResource(R.string.auto__informacion_profesional),
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor,
                )

                Spacer(modifier = Modifier.height(Spacing.m))

                if (psicologo.experiencia != null && psicologo.experiencia > 0) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.School,
                        label = stringResource(R.string.auto_anos_de_experiencia),
                        value = stringResource(R.string.psicologo_anos_exp_valor, psicologo.experiencia),
                        iconColor = colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor,
                    )
                }

                if (!psicologo.licencia.isNullOrBlank()) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.Badge,
                        label = stringResource(R.string.auto_numero_de_colegiado),
                        value = psicologo.licencia,
                        iconColor = colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor,
                    )
                }

                ProfessionalInfoRow(
                    icon = Icons.Outlined.AccessTime,
                    label = stringResource(R.string.auto_horario_de_atencion),
                    value = stringResource(R.string.psicologo_horario_default),
                    iconColor = colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor,
                )

                ProfessionalInfoRow(
                    icon = Icons.Outlined.LocationOn,
                    label = stringResource(R.string.auto_modalidad),
                    value = stringResource(R.string.psicologo_modalidad_default),
                    iconColor = colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.m))

        if (!psicologo.descripcion.isNullOrBlank()) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors =
                    CardDefaults.cardColors(
                        containerColor = cardBackgroundColor,
                    ),
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.m),
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text(
                            text = stringResource(R.string.auto__sobre_mi),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = cardContentColor,
                            modifier = Modifier.weight(1f),
                        )
                        Icon(
                            Icons.Default.MedicalServices,
                            contentDescription = stringResource(R.string.auto_psicologia),
                            tint = colorScheme.primary,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    Text(
                        text = psicologo.descripcion,
                        style = typography.bodyMedium,
                        color = cardContentSecondaryColor,
                    )
                }
            }
        }

        val context = LocalContext.current
        val showReportCard =
            remember(latestTicket) {
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

            Spacer(modifier = Modifier.height(Spacing.m))

            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.large,
                colors =
                    CardDefaults.cardColors(
                        containerColor = cardBackgroundColor,
                    ),
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.m),
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Icon(
                            imageVector = Icons.Default.Info,
                            contentDescription = stringResource(R.string.auto_informacion_de_reportes),
                            tint = colorScheme.primary,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            text = stringResource(R.string.auto_seguimiento_de_tu_reporte),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = cardContentColor,
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    Text(
                        text = stringResource(R.string.reporte_intro_ticket, latestTicket.titulo),
                        style = typography.bodySmall,
                        color = cardContentSecondaryColor,
                    )

                    Spacer(modifier = Modifier.height(Spacing.m))

                    val isStep1Completed = status in listOf("en-proceso", "resuelto", "cerrado")
                    val isStep1Active = status == "abierto"
                    ReportStepRow(
                        stepNumber = "1",
                        title = stringResource(R.string.reporte_paso1_titulo),
                        description = stringResource(R.string.reporte_paso1_desc),
                        icon = Icons.AutoMirrored.Filled.Send,
                        iconColor = colorScheme.primary,
                        isCompleted = isStep1Completed,
                        isActive = isStep1Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor,
                    )

                    val isStep2Completed = status in listOf("resuelto", "cerrado")
                    val isStep2Active = status == "en-proceso"
                    ReportStepRow(
                        stepNumber = "2",
                        title = stringResource(R.string.reporte_paso2_titulo),
                        description = stringResource(R.string.reporte_paso2_desc),
                        icon = Icons.Default.HourglassEmpty,
                        iconColor = amaniColors.warning,
                        isCompleted = isStep2Completed,
                        isActive = isStep2Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor,
                    )

                    val isStep3Completed = status in listOf("resuelto", "cerrado")
                    val isStep3Active = status in listOf("resuelto", "cerrado")
                    ReportStepRow(
                        stepNumber = "3",
                        title =
                            if (status == "cerrado") {
                                stringResource(R.string.reporte_paso3_cerrado)
                            } else {
                                stringResource(R.string.reporte_paso3_resuelto)
                            },
                        description =
                            if (latestTicket.respuestaAdmin.isNotBlank()) {
                                stringResource(R.string.reporte_paso3_solucion, latestTicket.respuestaAdmin)
                            } else {
                                stringResource(R.string.reporte_paso3_pendiente_aplicar)
                            },
                        icon = Icons.Default.CheckCircle,
                        iconColor = amaniColors.success,
                        isCompleted = isStep3Completed,
                        isActive = isStep3Active,
                        contentColor = cardContentColor,
                        secondaryColor = cardContentSecondaryColor,
                    )

                    Spacer(modifier = Modifier.height(Spacing.m))

                    Surface(
                        shape = MaterialTheme.shapes.medium,
                        color = colorScheme.primaryContainer.copy(alpha = 0.4f),
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text(
                            text =
                                if (status in listOf("resuelto", "cerrado")) {
                                    stringResource(R.string.reporte_aviso_finalizado)
                                } else {
                                    stringResource(R.string.reporte_aviso_ajustes)
                                },
                            style = typography.labelMedium,
                            color = colorScheme.onSurface,
                            modifier = Modifier.padding(Spacing.sm),
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(Spacing.l))

        Button(
            onClick = onViewCitasClick,
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(Dimensions.buttonHeightLarge),
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
            shape = MaterialTheme.shapes.medium,
            elevation = ButtonDefaults.buttonElevation(defaultElevation = Elevation.level2),
        ) {
            Icon(
                Icons.Default.CalendarMonth,
                contentDescription = stringResource(R.string.auto_citas),
                modifier = Modifier.size(Dimensions.iconMedium),
            )
            Spacer(modifier = Modifier.width(Spacing.sm))
            Text(
                stringResource(R.string.auto_ver_mis_citas),
                modifier = Modifier.padding(vertical = Spacing.xs),
                style = typography.labelLarge,
                fontWeight = FontWeight.Medium,
            )
        }

        Spacer(modifier = Modifier.height(Spacing.xl))
    }
}

@Composable
fun ProfessionalInfoRow(
    icon: ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    labelColor: Color,
    valueColor: Color,
) {
    val typography = MaterialTheme.typography

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(vertical = Spacing.s),
        verticalAlignment = Alignment.Top,
    ) {
        Icon(
            icon,
            contentDescription = label,
            modifier = Modifier.size(Dimensions.iconMedium),
            tint = iconColor,
        )
        Spacer(modifier = Modifier.width(Spacing.sm))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                style = typography.labelMedium,
                color = labelColor,
            )
            Text(
                text = value,
                style = typography.bodyMedium,
                fontWeight = FontWeight.Medium,
                color = valueColor,
            )
        }
    }
}

@Composable
fun ReportStepRow(
    stepNumber: String,
    title: String,
    description: String,
    icon: ImageVector,
    iconColor: Color,
    isCompleted: Boolean,
    isActive: Boolean,
    contentColor: Color,
    secondaryColor: Color,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = AmaniTheme.colors

    val tintColor =
        when {
            isCompleted -> amaniColors.success
            isActive -> iconColor
            else -> colorScheme.onSurfaceVariant.copy(alpha = 0.5f)
        }
    val bgColor =
        when {
            isCompleted -> amaniColors.successContainer
            isActive -> iconColor.copy(alpha = 0.15f)
            else -> colorScheme.surfaceVariant.copy(alpha = 0.4f)
        }
    val displayIcon = if (isCompleted) Icons.Default.CheckCircle else icon

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(vertical = Spacing.s),
        verticalAlignment = Alignment.Top,
    ) {
        Box(
            modifier =
                Modifier
                    .size(Dimensions.iconDefault)
                    .clip(CircleShape)
                    .background(bgColor),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = displayIcon,
                contentDescription = null,
                tint = tintColor,
                modifier = Modifier.size(Dimensions.iconSmall),
            )
        }
        Spacer(modifier = Modifier.width(Spacing.m))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = "$stepNumber. $title",
                style = typography.bodyMedium,
                fontWeight = if (isActive || isCompleted) FontWeight.Bold else FontWeight.Medium,
                color = if (isActive || isCompleted) contentColor else contentColor.copy(alpha = 0.5f),
            )
            Spacer(modifier = Modifier.height(Spacing.xxs))
            Text(
                text = description,
                style = typography.bodySmall,
                color = if (isActive || isCompleted) secondaryColor else secondaryColor.copy(alpha = 0.5f),
            )
        }
    }
}

private val previewPsicologoAsignado =
    PsicologoProfileResponseDTO(
        idPsicologo = 7L,
        especialidad = "Psicología Clínica y Cognitivo-Conductual",
        experiencia = 8,
        descripcion = "Especialista en trastornos de ansiedad, regulación emocional y terapia cognitivo-conductual basada en evidencia.",
        licencia = "M-34812",
        usuario =
            UsuarioProfileResponseDTO(
                idUsuario = 7L,
                nombre = "Elena",
                apellido = "Martínez",
                email = "elena.martinez@amani.org",
                fotoPerfilUrl = null,
            ),
    )

@Preview(showBackground = true, name = "ViewPacientePrincipal - Light")
@Composable
private fun ViewPacientePrincipalLightPreview() {
    AppTheme(darkTheme = false) {
        ViewPacientePrincipalContent(
            nombrePaciente = "Laura",
            saludo = "Buenos días",
            isLoading = false,
            psicologo = previewPsicologoAsignado,
            error = null,
            latestTicket = null,
            isDark = false,
            cardColors = getCardColors(),
            token = null,
            onLogoutClick = {},
            onOpenCopilotClick = {},
            onRetry = {},
            onBackClick = {},
            onViewCitasClick = {},
        )
    }
}

@Preview(
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    name = "ViewPacientePrincipal - Dark",
)
@Composable
private fun ViewPacientePrincipalDarkPreview() {
    AppTheme(darkTheme = true) {
        ViewPacientePrincipalContent(
            nombrePaciente = "Laura",
            saludo = "Buenas noches",
            isLoading = false,
            psicologo = previewPsicologoAsignado,
            error = null,
            latestTicket = null,
            isDark = true,
            cardColors = getCardColors(),
            token = null,
            onLogoutClick = {},
            onOpenCopilotClick = {},
            onRetry = {},
            onBackClick = {},
            onViewCitasClick = {},
        )
    }
}

@Preview(
    showBackground = true,
    fontScale = 1.5f,
    name = "ViewPacientePrincipal - FontScale 1.5x (Sin Psicólogo)",
)
@Composable
private fun ViewPacientePrincipalFontScalePreview() {
    AppTheme(darkTheme = false) {
        ViewPacientePrincipalContent(
            nombrePaciente = "Laura",
            saludo = "Buenas tardes",
            isLoading = false,
            psicologo = null,
            error = null,
            latestTicket = null,
            isDark = false,
            cardColors = getCardColors(),
            token = null,
            onLogoutClick = {},
            onOpenCopilotClick = {},
            onRetry = {},
            onBackClick = {},
            onViewCitasClick = {},
        )
    }
}