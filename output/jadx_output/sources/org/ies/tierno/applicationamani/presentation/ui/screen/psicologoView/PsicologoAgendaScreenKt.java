package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.autofill.HintConstants;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AccessTimeKt;
import androidx.compose.material.icons.filled.CalendarTodayKt;
import androidx.compose.material.icons.filled.EventBusyKt;
import androidx.compose.material.icons.filled.EventNoteKt;
import androidx.compose.material.icons.filled.InfoKt;
import androidx.compose.material.icons.filled.ScheduleKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.MenuAnchorType;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.core.location.LocationRequestCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.WavUtil;
import androidx.navigation.NavController;
import androidx.profileinstaller.ProfileVerifier;
import com.google.logging.type.LogSeverity;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.YearMonth;
import j$.time.format.DateTimeFormatter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlow;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago;
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO;
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse;
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u001a+\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a3\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u000f\u0010\u0016\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u001a?\u0010!\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\b\b\u0002\u0010\u001e\u001a\u00020\u001d2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000bH\u0007¢\u0006\u0004\b!\u0010\"\u001a\u000f\u0010#\u001a\u00020\u0006H\u0007¢\u0006\u0004\b#\u0010\u0017\u001aG\u0010,\u001a\u00020\u00062\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u0018\u0010*\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0(\u0012\u0004\u0012\u00020\u00060'2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\b,\u0010-\u001a;\u0010/\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u00122\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\b/\u00100\u001a½\u0002\u0010K\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u00010\t2\u0006\u00102\u001a\u00020\u00102\f\u00104\u001a\b\u0012\u0004\u0012\u0002030(2\b\u00105\u001a\u0004\u0018\u00010\u001a2\f\u00107\u001a\b\u0012\u0004\u0012\u0002060(2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010:\u001a\b\u0012\u0004\u0012\u0002090(2\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060'2µ\u0001\u0010*\u001a°\u0001\u0012\u0013\u0012\u00110=¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(@\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110A¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(B\u0012\u0013\u0012\u00110C¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110=¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110G¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(H\u0012\u0013\u0012\u00110I¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(J\u0012\u0004\u0012\u00020\u00060<2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\bK\u0010L\u001a3\u0010M\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0007¢\u0006\u0004\bM\u0010\u000f¨\u0006j²\u0006\u0012\u0010N\u001a\b\u0012\u0004\u0012\u00020\t0(8\nX\u008a\u0084\u0002²\u0006\u000e\u0010O\u001a\u0004\u0018\u00010\u001a8\nX\u008a\u0084\u0002²\u0006\f\u0010P\u001a\u00020\u00128\nX\u008a\u0084\u0002²\u0006\u000e\u0010Q\u001a\u0004\u0018\u00010\u001a8\nX\u008a\u0084\u0002²\u0006\u000e\u0010&\u001a\u0004\u0018\u00010%8\nX\u008a\u0084\u0002²\u0006\u0012\u00107\u001a\b\u0012\u0004\u0012\u0002060(8\nX\u008a\u0084\u0002²\u0006\u0010\u0010R\u001a\u0004\u0018\u00010\u00108\n@\nX\u008a\u008e\u0002²\u0006\u0016\u0010U\u001a\n T*\u0004\u0018\u00010S0S8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010V\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010W\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010X\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010Y\u001a\u0004\u0018\u00010\t8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010Z\u001a\u0004\u0018\u00010\t8\n@\nX\u008a\u008e\u0002²\u0006\u0012\u0010[\u001a\b\u0012\u0004\u0012\u0002030(8\nX\u008a\u0084\u0002²\u0006\u000e\u00105\u001a\u0004\u0018\u00010\u001a8\nX\u008a\u0084\u0002²\u0006\u000e\u0010]\u001a\u0004\u0018\u00010\\8\nX\u008a\u0084\u0002²\u0006\u000e\u0010_\u001a\u0004\u0018\u00010^8\nX\u008a\u0084\u0002²\u0006\u000e\u0010`\u001a\u0004\u0018\u00010%8\nX\u008a\u0084\u0002²\u0006\u000e\u0010R\u001a\u00020\u00108\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010E\u001a\u00020\u001a8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010a\u001a\u00020C8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010b\u001a\u00020G8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010J\u001a\u00020\u001a8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010c\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010d\u001a\u0004\u0018\u0001038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010e\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010f\u001a\u0004\u0018\u0001068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010g\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010h\u001a\u0004\u0018\u00010A8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010i\u001a\u00020\u00128\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/navigation/NavController;", "navController", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;", "listarTerapiasViewModel", "", "PsicologoAgendaScreen", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;Landroidx/compose/runtime/Composer;II)V", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "cita", "Lkotlin/Function0;", "onEdit", "onCancel", "TarjetaCitaPsicologa", "(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "j$/time/LocalDate", "fecha", "", "esDiaNoDisponible", "CabeceraDiaPsicologa", "(Lj$/time/LocalDate;ZLandroidx/compose/runtime/Composer;I)V", "LeyendaPsicologa", "(Landroidx/compose/runtime/Composer;I)V", "Landroidx/compose/ui/graphics/vector/ImageVector;", "icono", "", "texto", "subtitulo", "Landroidx/compose/ui/Modifier;", "modifier", "", "onClick", "BotonAccionRapida", "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "DiaNoDisponibleCard", "Lkotlinx/coroutines/flow/StateFlow;", "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;", "horarioActual", "Lkotlin/Function1;", "", "Lorg/ies/tierno/applicationamani/dto/agenda/request/FranjaHorarioDTO;", "onConfirmar", "onDismiss", "DialogoModificarHorario", "(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "yaNoDisponible", "DialogoNoDisponible", "(Lj$/time/LocalDate;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "citaAEditar", "fechaInicial", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "pacientes", "pacientesError", "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "terapias", "onRecargarPacientes", "Lorg/ies/tierno/applicationamani/dto/citas/FranjaDisponibilidadResponse;", "slotsLibres", "onFechaChange", "Lkotlin/Function8;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "idPaciente", "j$/time/LocalTime", "hora", "", "duracion", "motivo", "idTerapia", "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;", "metodoPago", "Ljava/math/BigDecimal;", "monto", "DialogoCrearEditarCita", "(Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;Lj$/time/LocalDate;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function8;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "DialogoConfirmarCancelacion", "agendaMensual", "errorMessage", "isLoading", "successMessage", "fechaSeleccionada", "j$/time/YearMonth", "kotlin.jvm.PlatformType", "mesVisible", "mostrarDialogoHorario", "mostrarDialogoNoDisponible", "mostrarDialogoCrearEditar", "citaParaEditar", "citaParaCancelar", "pacientesAsignados", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "disponibilidadDia", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "userSession", "horario", "duracionMinutos", "metodoPagoSeleccionado", "montoError", "pacienteSeleccionado", "pacienteDropdownExpanded", "terapiaSeleccionada", "terapiaDropdownExpanded", "horaSeleccionada", "horaDropdownExpanded", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class PsicologoAgendaScreenKt {
    static final Unit BotonAccionRapida$lambda$116(ImageVector imageVector, String str, String str2, Modifier modifier, Function0 function0, int i, int i2, Composer composer, int i3) {
        BotonAccionRapida(imageVector, str, str2, modifier, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit CabeceraDiaPsicologa$lambda$107(LocalDate localDate, boolean z, int i, Composer composer, int i2) {
        CabeceraDiaPsicologa(localDate, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit DiaNoDisponibleCard$lambda$119(int i, Composer composer, int i2) {
        DiaNoDisponibleCard(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit DialogoConfirmarCancelacion$lambda$296(AgendaItemDTO agendaItemDTO, Function0 function0, Function0 function02, int i, Composer composer, int i2) {
        DialogoConfirmarCancelacion(agendaItemDTO, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$289(AgendaItemDTO agendaItemDTO, LocalDate localDate, List list, String str, List list2, Function0 function0, List list3, Function1 function1, Function8 function8, Function0 function02, int i, Composer composer, int i2) {
        DialogoCrearEditarCita(agendaItemDTO, localDate, list, str, list2, function0, list3, function1, function8, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit DialogoModificarHorario$lambda$136(StateFlow stateFlow, Function1 function1, Function0 function0, int i, Composer composer, int i2) throws Throwable {
        DialogoModificarHorario(stateFlow, function1, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit DialogoNoDisponible$lambda$143(LocalDate localDate, boolean z, Function0 function0, Function0 function02, int i, Composer composer, int i2) {
        DialogoNoDisponible(localDate, z, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit LeyendaPsicologa$lambda$111(int i, Composer composer, int i2) {
        LeyendaPsicologa(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$95(NavController navController, PsicologoAgendaViewModel psicologoAgendaViewModel, ListarTerapiasViewModel listarTerapiasViewModel, int i, int i2, Composer composer, int i3) throws Throwable {
        PsicologoAgendaScreen(navController, psicologoAgendaViewModel, listarTerapiasViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit TarjetaCitaPsicologa$lambda$103(AgendaItemDTO agendaItemDTO, Function0 function0, Function0 function02, int i, Composer composer, int i2) {
        TarjetaCitaPsicologa(agendaItemDTO, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x06b6  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x077c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0918  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0990  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x099e  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PsicologoAgendaScreen(final NavController navController, PsicologoAgendaViewModel viewModel, ListarTerapiasViewModel listarTerapiasViewModel, Composer $composer, final int $changed, final int i) throws Throwable {
        PsicologoAgendaViewModel viewModel2;
        ListarTerapiasViewModel listarTerapiasViewModel2;
        final PsicologoAgendaViewModel viewModel3;
        final ListarTerapiasViewModel listarTerapiasViewModel3;
        int $dirty;
        ListarTerapiasViewModel listarTerapiasViewModel4;
        String str;
        Object obj;
        Object obj2;
        Object arrayList;
        List listEmptyList;
        MutableState mostrarDialogoHorario$delegate;
        boolean zChanged;
        Object objRememberedValue;
        State errorMessage$delegate;
        CoroutineScope scope;
        boolean zChanged2;
        MutableState mesVisible$delegate;
        final SnackbarHostState snackbarHostState;
        final PsicologoAgendaViewModel viewModel4;
        final MutableState mostrarDialogoHorario$delegate2;
        final MutableState mostrarDialogoHorario$delegate3;
        MutableState mostrarDialogoHorario$delegate4;
        final MutableState mostrarDialogoNoDisponible$delegate;
        Set diasNoDisponibles;
        int i2;
        final SnackbarHostState snackbarHostState2;
        final CoroutineScope scope2;
        final PsicologoAgendaViewModel viewModel5;
        int i3;
        final MutableState citaParaCancelar$delegate;
        List<FranjaDisponibilidadResponse> listEmptyList2;
        final CoroutineScope scope3;
        final MutableState mostrarDialogoCrearEditar$delegate;
        final MutableState citaParaEditar$delegate;
        Function1 function1;
        Object obj3;
        boolean zChangedInstance;
        Object objRememberedValue2;
        Object obj4;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(-2010968744);
        ComposerKt.sourceInformation($composer2, "C(PsicologoAgendaScreen)N(navController,viewModel,listarTerapiasViewModel)56@2510L11,57@2557L10,59@2618L29,60@2695L29,61@2766L29,62@2847L29,63@2926L29,65@3010L29,67@3070L45,68@3138L44,69@3211L32,70@3260L24,72@3319L34,73@3392L34,74@3464L34,75@3525L49,76@3603L49,78@3713L29,79@3794L29,80@3881L29,82@3971L74,92@4376L29,95@4497L98,95@4459L136,101@4641L119,101@4601L159,107@4795L176,107@4766L205,116@5008L196,116@4977L227,126@5243L35,128@5355L479,141@5841L9910,125@5210L10541:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty2 = $changed;
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                viewModel2 = viewModel;
                int i4 = $composer2.changedInstance(viewModel2) ? 32 : 16;
                $dirty2 |= i4;
            } else {
                viewModel2 = viewModel;
            }
            $dirty2 |= i4;
        } else {
            viewModel2 = viewModel;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                listarTerapiasViewModel2 = listarTerapiasViewModel;
                int i5 = $composer2.changedInstance(listarTerapiasViewModel2) ? 256 : 128;
                $dirty2 |= i5;
            } else {
                listarTerapiasViewModel2 = listarTerapiasViewModel;
            }
            $dirty2 |= i5;
        } else {
            listarTerapiasViewModel2 = listarTerapiasViewModel;
        }
        if ($composer2.shouldExecute(($dirty2 & 145) != 144, $dirty2 & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "53@2387L15,54@2459L15");
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(PsicologoAgendaViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    viewModel2 = (PsicologoAgendaViewModel) viewModelResolveViewModel;
                    $dirty2 &= -113;
                }
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current2 = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current2 == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel2 = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ListarTerapiasViewModel.class), current2.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $dirty = $dirty2 & (-897);
                    listarTerapiasViewModel4 = (ListarTerapiasViewModel) viewModelResolveViewModel2;
                } else {
                    $dirty = $dirty2;
                    listarTerapiasViewModel4 = listarTerapiasViewModel2;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                $dirty = $dirty2;
                listarTerapiasViewModel4 = listarTerapiasViewModel2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2010968744, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen (PsicologoAgendaScreen.kt:55)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            final Typography typography = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable);
            State agendaMensual$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getAgendaMensual(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State errorMessage$delegate2 = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getErrorMessage(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State isLoading$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.isLoading(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State successMessage$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getSuccessMessage(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            FlowExtKt.collectAsStateWithLifecycle(viewModel2.getHorarioActual(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State terapias$delegate = FlowExtKt.collectAsStateWithLifecycle(listarTerapiasViewModel4.getTerapias(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            ComposerKt.sourceInformationMarkerStart($composer2, 194346949, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue3 = objMutableStateOf$default;
            }
            final MutableState fechaSeleccionada$delegate = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194349124, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(YearMonth.now(), null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue4 = objMutableStateOf$default2;
            }
            MutableState mesVisible$delegate2 = (MutableState) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194351448, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue5 = $composer2.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                Object snackbarHostState3 = new SnackbarHostState();
                $composer2.updateRememberedValue(snackbarHostState3);
                objRememberedValue5 = snackbarHostState3;
            }
            SnackbarHostState snackbarHostState4 = (SnackbarHostState) objRememberedValue5;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue6 = $composer2.rememberedValue();
            ListarTerapiasViewModel listarTerapiasViewModel5 = listarTerapiasViewModel4;
            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue6 = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(objRememberedValue6);
            }
            CoroutineScope scope4 = (CoroutineScope) objRememberedValue6;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194354906, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue7 = $composer2.rememberedValue();
            if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default3);
                objRememberedValue7 = objMutableStateOf$default3;
            }
            MutableState mostrarDialogoHorario$delegate5 = (MutableState) objRememberedValue7;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194357242, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue8 = $composer2.rememberedValue();
            if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default4);
                objRememberedValue8 = objMutableStateOf$default4;
            }
            final MutableState mostrarDialogoNoDisponible$delegate2 = (MutableState) objRememberedValue8;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194359546, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue9 = $composer2.rememberedValue();
            if (objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default5);
                objRememberedValue9 = objMutableStateOf$default5;
            }
            final MutableState mostrarDialogoCrearEditar$delegate2 = (MutableState) objRememberedValue9;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194361513, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue10 = $composer2.rememberedValue();
            if (objRememberedValue10 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default6);
                objRememberedValue10 = objMutableStateOf$default6;
            }
            final MutableState citaParaEditar$delegate2 = (MutableState) objRememberedValue10;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194364009, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue11 = $composer2.rememberedValue();
            if (objRememberedValue11 == Composer.INSTANCE.getEmpty()) {
                str = "CC(remember):PsicologoAgendaScreen.kt#9igjgp";
                obj = null;
                Object objMutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default7);
                objRememberedValue11 = objMutableStateOf$default7;
            } else {
                str = "CC(remember):PsicologoAgendaScreen.kt#9igjgp";
                obj = null;
            }
            final MutableState citaParaCancelar$delegate2 = (MutableState) objRememberedValue11;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            String str2 = str;
            final State pacientesAsignados$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getPacientesAsignados(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State pacientesError$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getPacientesError(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            State disponibilidadDia$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getDisponibilidadDia(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            Object objPsicologoAgendaScreen$lambda$0 = PsicologoAgendaScreen$lambda$0(agendaMensual$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 194375810, str2);
            boolean zChanged3 = $composer2.changed(objPsicologoAgendaScreen$lambda$0);
            int i6 = 0;
            Object objRememberedValue12 = $composer2.rememberedValue();
            if (zChanged3 || objRememberedValue12 == Composer.INSTANCE.getEmpty()) {
                Iterable iterablePsicologoAgendaScreen$lambda$0 = PsicologoAgendaScreen$lambda$0(agendaMensual$delegate);
                Map linkedHashMap = new LinkedHashMap();
                for (Object obj5 : iterablePsicologoAgendaScreen$lambda$0) {
                    LocalDate fecha = ((AgendaItemDTO) obj5).getFecha();
                    boolean z = zChanged3;
                    int i7 = i6;
                    Object obj6 = linkedHashMap.get(fecha);
                    if (obj6 == null) {
                        arrayList = new ArrayList();
                        obj2 = objRememberedValue12;
                        linkedHashMap.put(fecha, arrayList);
                    } else {
                        obj2 = objRememberedValue12;
                        arrayList = obj6;
                    }
                    ((List) arrayList).add(obj5);
                    i6 = i7;
                    zChanged3 = z;
                    objRememberedValue12 = obj2;
                }
                $composer2.updateRememberedValue(linkedHashMap);
                objRememberedValue12 = linkedHashMap;
            }
            Map citasPorDia = (Map) objRememberedValue12;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Set fechasConCitas = citasPorDia.keySet();
            Set diasNoDisponibles2 = SetsKt.emptySet();
            LocalDate localDatePsicologoAgendaScreen$lambda$7 = PsicologoAgendaScreen$lambda$7(fechaSeleccionada$delegate);
            if (localDatePsicologoAgendaScreen$lambda$7 == null || (listEmptyList = (List) citasPorDia.get(localDatePsicologoAgendaScreen$lambda$7)) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            final List citasDelDia = listEmptyList;
            final boolean esDiaNoDisponible = CollectionsKt.contains(diasNoDisponibles2, PsicologoAgendaScreen$lambda$7(fechaSeleccionada$delegate));
            State userSession$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel2.getUserSession(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            Boolean boolValueOf = Boolean.valueOf(PsicologoAgendaScreen$lambda$14(mostrarDialogoHorario$delegate5));
            ComposerKt.sourceInformationMarkerStart($composer2, 194392666, str2);
            boolean zChangedInstance2 = $composer2.changedInstance(viewModel2);
            Object objRememberedValue13 = $composer2.rememberedValue();
            if (zChangedInstance2 || objRememberedValue13 == Composer.INSTANCE.getEmpty()) {
                Object obj7 = (Function2) new PsicologoAgendaScreenKt$PsicologoAgendaScreen$1$1(viewModel2, mostrarDialogoHorario$delegate5, null);
                $composer2.updateRememberedValue(obj7);
                objRememberedValue13 = obj7;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue13, $composer2, 0);
            YearMonth yearMonthPsicologoAgendaScreen$lambda$10 = PsicologoAgendaScreen$lambda$10(mesVisible$delegate2);
            UserSession userSessionPsicologoAgendaScreen$lambda$34 = PsicologoAgendaScreen$lambda$34(userSession$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 194397295, str2);
            boolean zChanged4 = $composer2.changed(userSession$delegate) | $composer2.changedInstance(viewModel2);
            Object objRememberedValue14 = $composer2.rememberedValue();
            if (zChanged4) {
                mostrarDialogoHorario$delegate = mostrarDialogoHorario$delegate5;
            } else {
                mostrarDialogoHorario$delegate = mostrarDialogoHorario$delegate5;
                if (objRememberedValue14 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(yearMonthPsicologoAgendaScreen$lambda$10, userSessionPsicologoAgendaScreen$lambda$34, (Function2) objRememberedValue14, $composer2, 0);
                String strPsicologoAgendaScreen$lambda$1 = PsicologoAgendaScreen$lambda$1(errorMessage$delegate2);
                ComposerKt.sourceInformationMarkerStart($composer2, 194402280, str2);
                zChanged = $composer2.changed(errorMessage$delegate2) | $composer2.changedInstance(scope4) | $composer2.changedInstance(viewModel2);
                objRememberedValue = $composer2.rememberedValue();
                if (!zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object psicologoAgendaScreenKt$PsicologoAgendaScreen$3$1 = new PsicologoAgendaScreenKt$PsicologoAgendaScreen$3$1(errorMessage$delegate2, scope4, snackbarHostState4, viewModel2, null);
                    errorMessage$delegate = errorMessage$delegate2;
                    scope = scope4;
                    Object obj8 = (Function2) psicologoAgendaScreenKt$PsicologoAgendaScreen$3$1;
                    $composer2.updateRememberedValue(obj8);
                    objRememberedValue = obj8;
                } else {
                    scope = scope4;
                    errorMessage$delegate = errorMessage$delegate2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strPsicologoAgendaScreen$lambda$1, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                String strPsicologoAgendaScreen$lambda$3 = PsicologoAgendaScreen$lambda$3(successMessage$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, 194409116, str2);
                zChanged2 = $composer2.changed(successMessage$delegate) | $composer2.changedInstance(scope) | $composer2.changedInstance(viewModel2);
                Object objRememberedValue15 = $composer2.rememberedValue();
                if (zChanged2) {
                    mesVisible$delegate = mesVisible$delegate2;
                    if (objRememberedValue15 != Composer.INSTANCE.getEmpty()) {
                        viewModel4 = viewModel2;
                        snackbarHostState = snackbarHostState4;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.LaunchedEffect(strPsicologoAgendaScreen$lambda$3, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue15, $composer2, 0);
                    long background = colors.getBackground();
                    ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1538412242, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj9, Object obj10) {
                            return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$39(snackbarHostState, (Composer) obj9, ((Integer) obj10).intValue());
                        }
                    }, $composer2, 54);
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1403829553, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda18
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj9, Object obj10) {
                            return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$43(viewModel4, colors, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, fechaSeleccionada$delegate, (Composer) obj9, ((Integer) obj10).intValue());
                        }
                    }, $composer2, 54);
                    final SnackbarHostState snackbarHostState5 = snackbarHostState;
                    final PsicologoAgendaViewModel viewModel6 = viewModel4;
                    mostrarDialogoHorario$delegate2 = mostrarDialogoHorario$delegate;
                    final MutableState mostrarDialogoHorario$delegate6 = mesVisible$delegate;
                    final CoroutineScope scope5 = scope;
                    Function3 function3 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj9, Object obj10, Object obj11) {
                            return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74(typography, colors, scope5, mostrarDialogoHorario$delegate2, fechaSeleccionada$delegate, mostrarDialogoNoDisponible$delegate2, snackbarHostState5, fechasConCitas, mostrarDialogoHorario$delegate6, esDiaNoDisponible, citasDelDia, viewModel6, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, citaParaCancelar$delegate2, isLoading$delegate, (PaddingValues) obj9, (Composer) obj10, ((Integer) obj11).intValue());
                        }
                    };
                    final SnackbarHostState snackbarHostState6 = snackbarHostState5;
                    ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, 0, background, 0L, null, ComposableLambdaKt.rememberComposableLambda(1594159977, true, function3, $composer2, 54), $composer2, 805334016, 423);
                    $composer2 = $composer2;
                    if (PsicologoAgendaScreen$lambda$14(mostrarDialogoHorario$delegate2)) {
                        $composer2.startReplaceGroup(1742443255);
                        ComposerKt.sourceInformation($composer2, "333@15931L182,339@16139L33,331@15827L355");
                        StateFlow<HorarioRequestDTO> horarioActual = viewModel6.getHorarioActual();
                        ComposerKt.sourceInformationMarkerStart($composer2, 194758638, str2);
                        boolean zChangedInstance3 = $composer2.changedInstance(scope5) | $composer2.changedInstance(viewModel6);
                        Object objRememberedValue16 = $composer2.rememberedValue();
                        if (zChangedInstance3 || objRememberedValue16 == Composer.INSTANCE.getEmpty()) {
                            mostrarDialogoHorario$delegate3 = mostrarDialogoHorario$delegate2;
                            obj4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda20
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj9) {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$76$lambda$75(scope5, viewModel6, mostrarDialogoHorario$delegate3, (List) obj9);
                                }
                            };
                            $composer2.updateRememberedValue(obj4);
                        } else {
                            obj4 = objRememberedValue16;
                            mostrarDialogoHorario$delegate3 = mostrarDialogoHorario$delegate2;
                        }
                        Function1 function12 = (Function1) obj4;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194765145, str2);
                        Object objRememberedValue17 = $composer2.rememberedValue();
                        if (objRememberedValue17 == Composer.INSTANCE.getEmpty()) {
                            Object obj9 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda21
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$78$lambda$77(mostrarDialogoHorario$delegate3);
                                }
                            };
                            $composer2.updateRememberedValue(obj9);
                            objRememberedValue17 = obj9;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        DialogoModificarHorario(horarioActual, function12, (Function0) objRememberedValue17, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK);
                    } else {
                        mostrarDialogoHorario$delegate3 = mostrarDialogoHorario$delegate2;
                        $composer2.startReplaceGroup(1726740298);
                    }
                    $composer2.endReplaceGroup();
                    if (!PsicologoAgendaScreen$lambda$17(mostrarDialogoNoDisponible$delegate2) || PsicologoAgendaScreen$lambda$7(fechaSeleccionada$delegate) == null) {
                        mostrarDialogoHorario$delegate4 = mostrarDialogoHorario$delegate3;
                        mostrarDialogoNoDisponible$delegate = mostrarDialogoNoDisponible$delegate2;
                        diasNoDisponibles = diasNoDisponibles2;
                        i2 = 1726740298;
                        $composer2.startReplaceGroup(1726740298);
                        $composer2.endReplaceGroup();
                    } else {
                        $composer2.startReplaceGroup(1742917121);
                        ComposerKt.sourceInformation($composer2, "351@16510L407,360@16943L38,348@16391L600");
                        final LocalDate fecha2 = PsicologoAgendaScreen$lambda$7(fechaSeleccionada$delegate);
                        Intrinsics.checkNotNull(fecha2);
                        diasNoDisponibles = diasNoDisponibles2;
                        final boolean yaNoDisponible = diasNoDisponibles.contains(fecha2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194777391, str2);
                        boolean zChangedInstance4 = $composer2.changedInstance(scope5) | $composer2.changedInstance(viewModel6) | $composer2.changedInstance(fecha2) | $composer2.changed(yaNoDisponible);
                        Object objRememberedValue18 = $composer2.rememberedValue();
                        if (zChangedInstance4 || objRememberedValue18 == Composer.INSTANCE.getEmpty()) {
                            Object obj10 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda22
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$80$lambda$79(scope5, viewModel6, fecha2, yaNoDisponible, snackbarHostState6, mostrarDialogoNoDisponible$delegate2);
                                }
                            };
                            snackbarHostState6 = snackbarHostState6;
                            mostrarDialogoNoDisponible$delegate = mostrarDialogoNoDisponible$delegate2;
                            $composer2.updateRememberedValue(obj10);
                            objRememberedValue18 = obj10;
                        } else {
                            mostrarDialogoNoDisponible$delegate = mostrarDialogoNoDisponible$delegate2;
                        }
                        Function0 function0 = (Function0) objRememberedValue18;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194790878, str2);
                        Object objRememberedValue19 = $composer2.rememberedValue();
                        if (objRememberedValue19 == Composer.INSTANCE.getEmpty()) {
                            Object obj11 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda23
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$82$lambda$81(mostrarDialogoNoDisponible$delegate);
                                }
                            };
                            $composer2.updateRememberedValue(obj11);
                            objRememberedValue19 = obj11;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        mostrarDialogoHorario$delegate4 = mostrarDialogoHorario$delegate3;
                        DialogoNoDisponible(fecha2, yaNoDisponible, function0, (Function0) objRememberedValue19, $composer2, 3072);
                        $composer2.endReplaceGroup();
                        i2 = 1726740298;
                    }
                    if (PsicologoAgendaScreen$lambda$20(mostrarDialogoCrearEditar$delegate2)) {
                        snackbarHostState2 = snackbarHostState6;
                        scope2 = scope5;
                        viewModel5 = viewModel6;
                        i3 = i2;
                        $composer2.startReplaceGroup(i3);
                    } else {
                        $composer2.startReplaceGroup(1743772876);
                        ComposerKt.sourceInformation($composer2, "372@17383L41,374@17527L45,375@17600L1945,416@19571L153,366@17096L2638");
                        AgendaItemDTO agendaItemDTOPsicologoAgendaScreen$lambda$23 = PsicologoAgendaScreen$lambda$23(citaParaEditar$delegate2);
                        LocalDate localDatePsicologoAgendaScreen$lambda$72 = PsicologoAgendaScreen$lambda$7(fechaSeleccionada$delegate);
                        if (localDatePsicologoAgendaScreen$lambda$72 == null) {
                            localDatePsicologoAgendaScreen$lambda$72 = LocalDate.now();
                        }
                        Intrinsics.checkNotNull(localDatePsicologoAgendaScreen$lambda$72);
                        LocalDate localDate = localDatePsicologoAgendaScreen$lambda$72;
                        List<PacientePsicologoResponseDTO> listPsicologoAgendaScreen$lambda$28 = PsicologoAgendaScreen$lambda$28(pacientesAsignados$delegate);
                        String strPsicologoAgendaScreen$lambda$29 = PsicologoAgendaScreen$lambda$29(pacientesError$delegate);
                        List<TerapiaResponseDTO> listPsicologoAgendaScreen$lambda$5 = PsicologoAgendaScreen$lambda$5(terapias$delegate);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194804961, str2);
                        boolean zChangedInstance5 = $composer2.changedInstance(viewModel6);
                        Object objRememberedValue20 = $composer2.rememberedValue();
                        if (zChangedInstance5 || objRememberedValue20 == Composer.INSTANCE.getEmpty()) {
                            Object obj12 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda24
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$84$lambda$83(viewModel6);
                                }
                            };
                            $composer2.updateRememberedValue(obj12);
                            objRememberedValue20 = obj12;
                        }
                        Function0 function02 = (Function0) objRememberedValue20;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        DisponibilidadDiaResponse disponibilidadDiaResponsePsicologoAgendaScreen$lambda$30 = PsicologoAgendaScreen$lambda$30(disponibilidadDia$delegate);
                        if (disponibilidadDiaResponsePsicologoAgendaScreen$lambda$30 == null || (listEmptyList2 = disponibilidadDiaResponsePsicologoAgendaScreen$lambda$30.getSlotsLibres()) == null) {
                            listEmptyList2 = CollectionsKt.emptyList();
                        }
                        ComposerKt.sourceInformationMarkerStart($composer2, 194809573, str2);
                        boolean zChangedInstance6 = $composer2.changedInstance(viewModel6);
                        List<FranjaDisponibilidadResponse> list = listEmptyList2;
                        Object objRememberedValue21 = $composer2.rememberedValue();
                        if (zChangedInstance6 || objRememberedValue21 == Composer.INSTANCE.getEmpty()) {
                            objRememberedValue21 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda25
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj13) {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$86$lambda$85(viewModel6, (LocalDate) obj13);
                                }
                            };
                            $composer2.updateRememberedValue(objRememberedValue21);
                        }
                        Function1 function13 = (Function1) objRememberedValue21;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194813809, str2);
                        boolean zChangedInstance7 = $composer2.changedInstance(viewModel6) | $composer2.changedInstance(scope5) | $composer2.changed(pacientesAsignados$delegate);
                        Object objRememberedValue22 = $composer2.rememberedValue();
                        if (zChangedInstance7) {
                            scope3 = scope5;
                        } else {
                            scope3 = scope5;
                            if (objRememberedValue22 != Composer.INSTANCE.getEmpty()) {
                                function1 = function13;
                                viewModel5 = viewModel6;
                                mostrarDialogoCrearEditar$delegate = mostrarDialogoCrearEditar$delegate2;
                                obj3 = objRememberedValue22;
                                citaParaEditar$delegate = citaParaEditar$delegate2;
                            }
                            Function8 function8 = (Function8) obj3;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            ComposerKt.sourceInformationMarkerStart($composer2, 194875089, str2);
                            zChangedInstance = $composer2.changedInstance(viewModel5);
                            objRememberedValue2 = $composer2.rememberedValue();
                            if (!zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                                objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda14
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$90$lambda$89(viewModel5, mostrarDialogoCrearEditar$delegate, citaParaEditar$delegate);
                                    }
                                };
                                $composer2.updateRememberedValue(objRememberedValue2);
                            }
                            Function0 function03 = (Function0) objRememberedValue2;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            scope2 = scope3;
                            snackbarHostState2 = snackbarHostState6;
                            i3 = 1726740298;
                            DialogoCrearEditarCita(agendaItemDTOPsicologoAgendaScreen$lambda$23, localDate, listPsicologoAgendaScreen$lambda$28, strPsicologoAgendaScreen$lambda$29, listPsicologoAgendaScreen$lambda$5, function02, list, function1, function8, function03, $composer2, 0);
                            $composer2 = $composer2;
                        }
                        final SnackbarHostState snackbarHostState7 = snackbarHostState6;
                        viewModel5 = viewModel6;
                        mostrarDialogoCrearEditar$delegate = mostrarDialogoCrearEditar$delegate2;
                        citaParaEditar$delegate = citaParaEditar$delegate2;
                        snackbarHostState6 = snackbarHostState7;
                        function1 = function13;
                        obj3 = new Function8() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda26
                            @Override // kotlin.jvm.functions.Function8
                            public final Object invoke(Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, Object obj19, Object obj20) {
                                return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$88$lambda$87(viewModel6, scope3, citaParaEditar$delegate2, snackbarHostState7, pacientesAsignados$delegate, mostrarDialogoCrearEditar$delegate2, ((Long) obj13).longValue(), (LocalDate) obj14, (LocalTime) obj15, ((Integer) obj16).intValue(), (String) obj17, ((Long) obj18).longValue(), (MetodoPago) obj19, (BigDecimal) obj20);
                            }
                        };
                        $composer2.updateRememberedValue(obj3);
                        Function8 function82 = (Function8) obj3;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194875089, str2);
                        zChangedInstance = $composer2.changedInstance(viewModel5);
                        objRememberedValue2 = $composer2.rememberedValue();
                        if (!zChangedInstance) {
                        }
                        objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda14
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$90$lambda$89(viewModel5, mostrarDialogoCrearEditar$delegate, citaParaEditar$delegate);
                            }
                        };
                        $composer2.updateRememberedValue(objRememberedValue2);
                        Function0 function032 = (Function0) objRememberedValue2;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        scope2 = scope3;
                        snackbarHostState2 = snackbarHostState6;
                        i3 = 1726740298;
                        DialogoCrearEditarCita(agendaItemDTOPsicologoAgendaScreen$lambda$23, localDate, listPsicologoAgendaScreen$lambda$28, strPsicologoAgendaScreen$lambda$29, listPsicologoAgendaScreen$lambda$5, function02, list, function1, function82, function032, $composer2, 0);
                        $composer2 = $composer2;
                    }
                    $composer2.endReplaceGroup();
                    if (PsicologoAgendaScreen$lambda$26(citaParaCancelar$delegate2) == null) {
                        $composer2.startReplaceGroup(1746409674);
                        ComposerKt.sourceInformation($composer2, "428@19917L275,435@20218L27,426@19823L432");
                        AgendaItemDTO agendaItemDTOPsicologoAgendaScreen$lambda$26 = PsicologoAgendaScreen$lambda$26(citaParaCancelar$delegate2);
                        Intrinsics.checkNotNull(agendaItemDTOPsicologoAgendaScreen$lambda$26);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194886283, str2);
                        boolean zChangedInstance8 = $composer2.changedInstance(viewModel5) | $composer2.changedInstance(scope2);
                        Composer composer = $composer2;
                        Object objRememberedValue23 = composer.rememberedValue();
                        if (zChangedInstance8 || objRememberedValue23 == Composer.INSTANCE.getEmpty()) {
                            citaParaCancelar$delegate = citaParaCancelar$delegate2;
                            Object obj13 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda15
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$92$lambda$91(viewModel5, scope2, citaParaCancelar$delegate, snackbarHostState2);
                                }
                            };
                            composer.updateRememberedValue(obj13);
                            objRememberedValue23 = obj13;
                        } else {
                            citaParaCancelar$delegate = citaParaCancelar$delegate2;
                        }
                        Function0 function04 = (Function0) objRememberedValue23;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerStart($composer2, 194895667, str2);
                        Composer composer2 = $composer2;
                        Object objRememberedValue24 = composer2.rememberedValue();
                        if (objRememberedValue24 == Composer.INSTANCE.getEmpty()) {
                            Object obj14 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda16
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$94$lambda$93(citaParaCancelar$delegate);
                                }
                            };
                            composer2.updateRememberedValue(obj14);
                            objRememberedValue24 = obj14;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        DialogoConfirmarCancelacion(agendaItemDTOPsicologoAgendaScreen$lambda$26, function04, (Function0) objRememberedValue24, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK);
                    } else {
                        $composer2.startReplaceGroup(i3);
                    }
                    $composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    viewModel3 = viewModel5;
                    listarTerapiasViewModel3 = listarTerapiasViewModel5;
                } else {
                    mesVisible$delegate = mesVisible$delegate2;
                }
                PsicologoAgendaViewModel viewModel7 = viewModel2;
                Object psicologoAgendaScreenKt$PsicologoAgendaScreen$4$1 = new PsicologoAgendaScreenKt$PsicologoAgendaScreen$4$1(successMessage$delegate, scope, snackbarHostState4, viewModel7, null);
                snackbarHostState = snackbarHostState4;
                viewModel4 = viewModel7;
                Object obj15 = (Function2) psicologoAgendaScreenKt$PsicologoAgendaScreen$4$1;
                $composer2.updateRememberedValue(obj15);
                objRememberedValue15 = obj15;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strPsicologoAgendaScreen$lambda$3, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue15, $composer2, 0);
                long background2 = colors.getBackground();
                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(1538412242, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj92, Object obj102) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$39(snackbarHostState, (Composer) obj92, ((Integer) obj102).intValue());
                    }
                }, $composer2, 54);
                ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(1403829553, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj92, Object obj102) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$43(viewModel4, colors, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, fechaSeleccionada$delegate, (Composer) obj92, ((Integer) obj102).intValue());
                    }
                }, $composer2, 54);
                final SnackbarHostState snackbarHostState52 = snackbarHostState;
                final PsicologoAgendaViewModel viewModel62 = viewModel4;
                mostrarDialogoHorario$delegate2 = mostrarDialogoHorario$delegate;
                final MutableState mostrarDialogoHorario$delegate62 = mesVisible$delegate;
                final CoroutineScope scope52 = scope;
                Function3 function32 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj92, Object obj102, Object obj112) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74(typography, colors, scope52, mostrarDialogoHorario$delegate2, fechaSeleccionada$delegate, mostrarDialogoNoDisponible$delegate2, snackbarHostState52, fechasConCitas, mostrarDialogoHorario$delegate62, esDiaNoDisponible, citasDelDia, viewModel62, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, citaParaCancelar$delegate2, isLoading$delegate, (PaddingValues) obj92, (Composer) obj102, ((Integer) obj112).intValue());
                    }
                };
                final SnackbarHostState snackbarHostState62 = snackbarHostState52;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, composableLambdaRememberComposableLambda3, composableLambdaRememberComposableLambda22, 0, background2, 0L, null, ComposableLambdaKt.rememberComposableLambda(1594159977, true, function32, $composer2, 54), $composer2, 805334016, 423);
                $composer2 = $composer2;
                if (PsicologoAgendaScreen$lambda$14(mostrarDialogoHorario$delegate2)) {
                }
                $composer2.endReplaceGroup();
                if (PsicologoAgendaScreen$lambda$17(mostrarDialogoNoDisponible$delegate2)) {
                    mostrarDialogoHorario$delegate4 = mostrarDialogoHorario$delegate3;
                    mostrarDialogoNoDisponible$delegate = mostrarDialogoNoDisponible$delegate2;
                    diasNoDisponibles = diasNoDisponibles2;
                    i2 = 1726740298;
                    $composer2.startReplaceGroup(1726740298);
                    $composer2.endReplaceGroup();
                    if (PsicologoAgendaScreen$lambda$20(mostrarDialogoCrearEditar$delegate2)) {
                    }
                    $composer2.endReplaceGroup();
                    if (PsicologoAgendaScreen$lambda$26(citaParaCancelar$delegate2) == null) {
                    }
                    $composer2.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    viewModel3 = viewModel5;
                    listarTerapiasViewModel3 = listarTerapiasViewModel5;
                }
            }
            Object obj16 = (Function2) new PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1(viewModel2, userSession$delegate, mesVisible$delegate2, null);
            $composer2.updateRememberedValue(obj16);
            objRememberedValue14 = obj16;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(yearMonthPsicologoAgendaScreen$lambda$10, userSessionPsicologoAgendaScreen$lambda$34, (Function2) objRememberedValue14, $composer2, 0);
            String strPsicologoAgendaScreen$lambda$12 = PsicologoAgendaScreen$lambda$1(errorMessage$delegate2);
            ComposerKt.sourceInformationMarkerStart($composer2, 194402280, str2);
            zChanged = $composer2.changed(errorMessage$delegate2) | $composer2.changedInstance(scope4) | $composer2.changedInstance(viewModel2);
            objRememberedValue = $composer2.rememberedValue();
            if (zChanged) {
                Object psicologoAgendaScreenKt$PsicologoAgendaScreen$3$12 = new PsicologoAgendaScreenKt$PsicologoAgendaScreen$3$1(errorMessage$delegate2, scope4, snackbarHostState4, viewModel2, null);
                errorMessage$delegate = errorMessage$delegate2;
                scope = scope4;
                Object obj82 = (Function2) psicologoAgendaScreenKt$PsicologoAgendaScreen$3$12;
                $composer2.updateRememberedValue(obj82);
                objRememberedValue = obj82;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strPsicologoAgendaScreen$lambda$12, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                String strPsicologoAgendaScreen$lambda$32 = PsicologoAgendaScreen$lambda$3(successMessage$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, 194409116, str2);
                zChanged2 = $composer2.changed(successMessage$delegate) | $composer2.changedInstance(scope) | $composer2.changedInstance(viewModel2);
                Object objRememberedValue152 = $composer2.rememberedValue();
                if (zChanged2) {
                }
                PsicologoAgendaViewModel viewModel72 = viewModel2;
                Object psicologoAgendaScreenKt$PsicologoAgendaScreen$4$12 = new PsicologoAgendaScreenKt$PsicologoAgendaScreen$4$1(successMessage$delegate, scope, snackbarHostState4, viewModel72, null);
                snackbarHostState = snackbarHostState4;
                viewModel4 = viewModel72;
                Object obj152 = (Function2) psicologoAgendaScreenKt$PsicologoAgendaScreen$4$12;
                $composer2.updateRememberedValue(obj152);
                objRememberedValue152 = obj152;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strPsicologoAgendaScreen$lambda$32, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue152, $composer2, 0);
                long background22 = colors.getBackground();
                ComposableLambda composableLambdaRememberComposableLambda32 = ComposableLambdaKt.rememberComposableLambda(1538412242, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj92, Object obj102) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$39(snackbarHostState, (Composer) obj92, ((Integer) obj102).intValue());
                    }
                }, $composer2, 54);
                ComposableLambda composableLambdaRememberComposableLambda222 = ComposableLambdaKt.rememberComposableLambda(1403829553, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj92, Object obj102) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$43(viewModel4, colors, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, fechaSeleccionada$delegate, (Composer) obj92, ((Integer) obj102).intValue());
                    }
                }, $composer2, 54);
                final SnackbarHostState snackbarHostState522 = snackbarHostState;
                final PsicologoAgendaViewModel viewModel622 = viewModel4;
                mostrarDialogoHorario$delegate2 = mostrarDialogoHorario$delegate;
                final MutableState mostrarDialogoHorario$delegate622 = mesVisible$delegate;
                final CoroutineScope scope522 = scope;
                Function3 function322 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj92, Object obj102, Object obj112) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74(typography, colors, scope522, mostrarDialogoHorario$delegate2, fechaSeleccionada$delegate, mostrarDialogoNoDisponible$delegate2, snackbarHostState522, fechasConCitas, mostrarDialogoHorario$delegate622, esDiaNoDisponible, citasDelDia, viewModel622, citaParaEditar$delegate2, mostrarDialogoCrearEditar$delegate2, citaParaCancelar$delegate2, isLoading$delegate, (PaddingValues) obj92, (Composer) obj102, ((Integer) obj112).intValue());
                    }
                };
                final SnackbarHostState snackbarHostState622 = snackbarHostState522;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, composableLambdaRememberComposableLambda32, composableLambdaRememberComposableLambda222, 0, background22, 0L, null, ComposableLambdaKt.rememberComposableLambda(1594159977, true, function322, $composer2, 54), $composer2, 805334016, 423);
                $composer2 = $composer2;
                if (PsicologoAgendaScreen$lambda$14(mostrarDialogoHorario$delegate2)) {
                }
                $composer2.endReplaceGroup();
                if (PsicologoAgendaScreen$lambda$17(mostrarDialogoNoDisponible$delegate2)) {
                }
            }
        } else {
            $composer2.skipToGroupEnd();
            viewModel3 = viewModel2;
            listarTerapiasViewModel3 = listarTerapiasViewModel2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj17, Object obj18) {
                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$95(navController, viewModel3, listarTerapiasViewModel3, $changed, i, (Composer) obj17, ((Integer) obj18).intValue());
                }
            });
        }
    }

    private static final List<AgendaItemDTO> PsicologoAgendaScreen$lambda$0(State<? extends List<AgendaItemDTO>> state) {
        return (List) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String PsicologoAgendaScreen$lambda$1(State<String> state) {
        return (String) state.getValue();
    }

    private static final boolean PsicologoAgendaScreen$lambda$2(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String PsicologoAgendaScreen$lambda$3(State<String> state) {
        return (String) state.getValue();
    }

    private static final HorarioRequestDTO PsicologoAgendaScreen$lambda$4(State<HorarioRequestDTO> state) {
        return (HorarioRequestDTO) state.getValue();
    }

    private static final List<TerapiaResponseDTO> PsicologoAgendaScreen$lambda$5(State<? extends List<TerapiaResponseDTO>> state) {
        return (List) state.getValue();
    }

    private static final LocalDate PsicologoAgendaScreen$lambda$7(MutableState<LocalDate> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final YearMonth PsicologoAgendaScreen$lambda$10(MutableState<YearMonth> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean PsicologoAgendaScreen$lambda$14(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void PsicologoAgendaScreen$lambda$15(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean PsicologoAgendaScreen$lambda$17(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void PsicologoAgendaScreen$lambda$18(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean PsicologoAgendaScreen$lambda$20(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void PsicologoAgendaScreen$lambda$21(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final AgendaItemDTO PsicologoAgendaScreen$lambda$23(MutableState<AgendaItemDTO> mutableState) {
        return mutableState.getValue();
    }

    private static final AgendaItemDTO PsicologoAgendaScreen$lambda$26(MutableState<AgendaItemDTO> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<PacientePsicologoResponseDTO> PsicologoAgendaScreen$lambda$28(State<? extends List<PacientePsicologoResponseDTO>> state) {
        return (List) state.getValue();
    }

    private static final String PsicologoAgendaScreen$lambda$29(State<String> state) {
        return (String) state.getValue();
    }

    private static final DisponibilidadDiaResponse PsicologoAgendaScreen$lambda$30(State<DisponibilidadDiaResponse> state) {
        return (DisponibilidadDiaResponse) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UserSession PsicologoAgendaScreen$lambda$34(State<UserSession> state) {
        return (UserSession) state.getValue();
    }

    static final Unit PsicologoAgendaScreen$lambda$39(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C126@5245L31:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1538412242, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous> (PsicologoAgendaScreen.kt:126)");
            }
            SnackbarHostKt.SnackbarHost($snackbarHostState, null, null, $composer, 6, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$43(final PsicologoAgendaViewModel $viewModel, ColorScheme $colors, final MutableState $citaParaEditar$delegate, final MutableState $mostrarDialogoCrearEditar$delegate, final MutableState $fechaSeleccionada$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C130@5417L203,129@5369L455:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1403829553, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous> (PsicologoAgendaScreen.kt:129)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 460471676, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($viewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$43$lambda$42$lambda$41($citaParaEditar$delegate, $mostrarDialogoCrearEditar$delegate, $fechaSeleccionada$delegate, $viewModel);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            FloatingActionButtonKt.m2408FloatingActionButtonXz6DiA((Function0) objRememberedValue, null, null, $colors.getPrimary(), $colors.getOnPrimary(), null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1182389743$app(), $composer, 12582912, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$43$lambda$42$lambda$41(MutableState $citaParaEditar$delegate, MutableState $mostrarDialogoCrearEditar$delegate, MutableState $fechaSeleccionada$delegate, PsicologoAgendaViewModel $viewModel) {
        $citaParaEditar$delegate.setValue(null);
        PsicologoAgendaScreen$lambda$21($mostrarDialogoCrearEditar$delegate, true);
        LocalDate localDatePsicologoAgendaScreen$lambda$7 = PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate);
        if (localDatePsicologoAgendaScreen$lambda$7 != null) {
            $viewModel.cargarDisponibilidadDia(localDatePsicologoAgendaScreen$lambda$7, 60);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0605  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x087d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit PsicologoAgendaScreen$lambda$74(final Typography $typography, final ColorScheme $colors, final CoroutineScope $scope, final MutableState $mostrarDialogoHorario$delegate, final MutableState $fechaSeleccionada$delegate, final MutableState $mostrarDialogoNoDisponible$delegate, final SnackbarHostState $snackbarHostState, final Set $fechasConCitas, final MutableState $mesVisible$delegate, final boolean $esDiaNoDisponible, final List $citasDelDia, final PsicologoAgendaViewModel $viewModel, final MutableState $citaParaEditar$delegate, final MutableState $mostrarDialogoCrearEditar$delegate, final MutableState $citaParaCancelar$delegate, State $isLoading$delegate, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Composer composer;
        String str;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)142@5867L9878:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1594159977, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous> (PsicologoAgendaScreen.kt:142)");
            }
            Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), innerPadding);
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierPadding);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 97282059, "C150@6114L21,147@5998L8842:PsicologoAgendaScreen.kt#j2aa7e");
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(ScrollKt.verticalScroll$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null), Dp.m7505constructorimpl(16), Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor2);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            int i6 = ((0 >> 6) & 112) | 6;
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -2143378576, "C153@6236L280,161@6534L260,168@6812L1283,196@8113L41,197@8171L18,198@8206L41,205@8514L43,206@8576L553,200@8265L864,219@9147L41,225@9421L5347,221@9206L5562,306@14785L41:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("Mi agenda", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(4), 7, null), $colors.getOnBackground(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getHeadlineMedium(), $composer, 196662, 0, 65496);
            TextKt.m2976Text4IGK_g("Gestiona tu horario y revisa tus citas", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(16), 7, null), $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 54, 0, 65528);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor3;
                $composer.createNode(function0);
            } else {
                function0 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i9 = ((54 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 618800662, "C177@7243L32,172@6985L312,184@7640L415,179@7318L759:PsicologoAgendaScreen.kt#j2aa7e");
            ImageVector schedule = ScheduleKt.getSchedule(Icons.INSTANCE.getDefault());
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1543989161, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda95
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$48$lambda$45$lambda$44($mostrarDialogoHorario$delegate);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            BotonAccionRapida(schedule, "Horario", "Configurar", modifierWeight$default, (Function0) objRememberedValue, $composer, 25008, 0);
            ImageVector eventBusy = EventBusyKt.getEventBusy(Icons.INSTANCE.getDefault());
            String str2 = PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate) != null ? "Marcar día" : "Selecciona un día";
            Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1544002248, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($scope);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (!zChangedInstance) {
                composer = $composer;
                if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                    str = "C72@3469L9:Box.kt#2w3rfo";
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                Composer composer2 = composer;
                BotonAccionRapida(eventBusy, "Disponibilidad", str2, modifierWeight$default2, (Function0) objRememberedValue2, composer2, 48, 0);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer, 6);
                LeyendaPsicologa($composer, 0);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
                CardKt.Card(ShadowKt.m4295shadows4CzXII$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(4), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), false, 0L, 0L, 28, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-745199913, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda97
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53($fechasConCitas, $mesVisible$delegate, $fechaSeleccionada$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 24);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer, 6);
                AnimatedVisibilityKt.AnimatedVisibility(columnScope, PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate) == null, (Modifier) null, EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideInVertically$default(null, null, 3, null)), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideOutVertically$default(null, null, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(480103741, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda98
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66($fechaSeleccionada$delegate, $colors, $esDiaNoDisponible, $citasDelDia, $typography, $viewModel, $citaParaEditar$delegate, $mostrarDialogoCrearEditar$delegate, $citaParaCancelar$delegate, (AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), $composer, (i6 & 14) | 1600512, 18);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(80)), $composer, 6);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (!PsicologoAgendaScreen$lambda$2($isLoading$delegate)) {
                    $composer.startReplaceGroup(105807089);
                    ComposerKt.sourceInformation($composer, "314@15091L3,310@14887L834");
                    Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                    long jM4723getBlack0d7_KjU = Color.INSTANCE.m4723getBlack0d7_KjU();
                    Modifier modifierM264backgroundbw27NRU$default = BackgroundKt.m264backgroundbw27NRU$default(modifierFillMaxSize$default, Color.m4695copywmQWz5c(jM4723getBlack0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4723getBlack0d7_KjU) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4723getBlack0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4723getBlack0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4723getBlack0d7_KjU) : 0.0f), null, 2, null);
                    ComposerKt.sourceInformationMarkerStart($composer, 1250345362, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                    Object objRememberedValue3 = $composer.rememberedValue();
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda99
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Unit.INSTANCE;
                            }
                        };
                        $composer.updateRememberedValue(obj);
                        objRememberedValue3 = obj;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(modifierM264backgroundbw27NRU$default, false, null, null, null, (Function0) objRememberedValue3, 14, null);
                    Alignment center = Alignment.INSTANCE.getCenter();
                    ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                    ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierM299clickableoSLSa3U$default);
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    int i10 = ((((48 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!($composer.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer.startReusableNode();
                    if ($composer.getInserting()) {
                        function02 = constructor4;
                        $composer.createNode(function02);
                    } else {
                        function02 = constructor4;
                        $composer.useNode();
                    }
                    Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl($composer);
                    Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
                    int i11 = (i10 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, 1833054614, str);
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    int i12 = ((48 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -1092622380, "C317@15254L43,317@15299L404,317@15192L511:PsicologoAgendaScreen.kt#j2aa7e");
                    CardKt.Card(null, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(1851321026, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda100
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj2, Object obj3, Object obj4) {
                            return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$72$lambda$71($colors, $typography, (ColumnScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                        }
                    }, $composer, 54), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 25);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                } else {
                    $composer.startReplaceGroup(91029203);
                }
                $composer.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer = $composer;
            }
            str = "C72@3469L9:Box.kt#2w3rfo";
            objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda96
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$48$lambda$47$lambda$46($scope, $fechaSeleccionada$delegate, $mostrarDialogoNoDisponible$delegate, $snackbarHostState);
                }
            };
            $composer.updateRememberedValue(objRememberedValue2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Composer composer22 = composer;
            BotonAccionRapida(eventBusy, "Disponibilidad", str2, modifierWeight$default2, (Function0) objRememberedValue2, composer22, 48, 0);
            ComposerKt.sourceInformationMarkerEnd(composer22);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer, 6);
            LeyendaPsicologa($composer, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            CardKt.Card(ShadowKt.m4295shadows4CzXII$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(4), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), false, 0L, 0L, 28, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-745199913, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda97
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj22, Object obj3) {
                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53($fechasConCitas, $mesVisible$delegate, $fechaSeleccionada$delegate, (ColumnScope) obj2, (Composer) obj22, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 24);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer, 6);
            AnimatedVisibilityKt.AnimatedVisibility(columnScope, PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate) == null, (Modifier) null, EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideInVertically$default(null, null, 3, null)), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.slideOutVertically$default(null, null, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(480103741, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda98
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj22, Object obj3) {
                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66($fechaSeleccionada$delegate, $colors, $esDiaNoDisponible, $citasDelDia, $typography, $viewModel, $citaParaEditar$delegate, $mostrarDialogoCrearEditar$delegate, $citaParaCancelar$delegate, (AnimatedVisibilityScope) obj2, (Composer) obj22, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, (i6 & 14) | 1600512, 18);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(80)), $composer, 6);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (!PsicologoAgendaScreen$lambda$2($isLoading$delegate)) {
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$48$lambda$45$lambda$44(MutableState $mostrarDialogoHorario$delegate) {
        PsicologoAgendaScreen$lambda$15($mostrarDialogoHorario$delegate, true);
        return Unit.INSTANCE;
    }

    static final Object PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$48$lambda$47$lambda$46(CoroutineScope $scope, MutableState $fechaSeleccionada$delegate, MutableState $mostrarDialogoNoDisponible$delegate, SnackbarHostState $snackbarHostState) {
        if (PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate) == null) {
            return BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$7$1$1$1$2$1$1($snackbarHostState, null), 3, null);
        }
        PsicologoAgendaScreen$lambda$18($mostrarDialogoNoDisponible$delegate, true);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53(Set $fechasConCitas, final MutableState $mesVisible$delegate, final MutableState $fechaSeleccionada$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C212@8890L19,213@8957L132,207@8598L513:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-745199913, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:207)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            YearMonth yearMonthPsicologoAgendaScreen$lambda$10 = PsicologoAgendaScreen$lambda$10($mesVisible$delegate);
            Intrinsics.checkNotNullExpressionValue(yearMonthPsicologoAgendaScreen$lambda$10, "PsicologoAgendaScreen$lambda$10(...)");
            LocalDate localDatePsicologoAgendaScreen$lambda$7 = PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1122432106, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda34
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53$lambda$50$lambda$49($mesVisible$delegate, (YearMonth) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            Function1 function1 = (Function1) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1122434363, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda35
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53$lambda$52$lambda$51($fechaSeleccionada$delegate, (LocalDate) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CalendarioViewKt.CalendarioView(modifierFillMaxWidth$default, yearMonthPsicologoAgendaScreen$lambda$10, localDatePsicologoAgendaScreen$lambda$7, $fechasConCitas, function1, (Function1) objRememberedValue2, $composer, 221190, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53$lambda$50$lambda$49(MutableState $mesVisible$delegate, YearMonth it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $mesVisible$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$53$lambda$52$lambda$51(MutableState $fechaSeleccionada$delegate, LocalDate fecha) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        $fechaSeleccionada$delegate.setValue(Intrinsics.areEqual(PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate), fecha) ? null : fecha);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66(MutableState $fechaSeleccionada$delegate, final ColorScheme $colors, final boolean $esDiaNoDisponible, final List $citasDelDia, final Typography $typography, final PsicologoAgendaViewModel $viewModel, final MutableState $citaParaEditar$delegate, final MutableState $mostrarDialogoCrearEditar$delegate, final MutableState $citaParaCancelar$delegate, AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C:PsicologoAgendaScreen.kt#j2aa7e");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(480103741, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:226)");
        }
        final LocalDate localDatePsicologoAgendaScreen$lambda$7 = PsicologoAgendaScreen$lambda$7($fechaSeleccionada$delegate);
        if (localDatePsicologoAgendaScreen$lambda$7 == null) {
            $composer.startReplaceGroup(529657052);
            $composer.endReplaceGroup();
        } else {
            $composer.startReplaceGroup(529657053);
            ComposerKt.sourceInformation($composer, "*232@9790L43,233@9860L4868,227@9501L5227");
            CardKt.Card(ShadowKt.m4295shadows4CzXII$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(4), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), false, 0L, 0L, 28, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-1357037949, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda94
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64(localDatePsicologoAgendaScreen$lambda$7, $esDiaNoDisponible, $citasDelDia, $colors, $typography, $viewModel, $citaParaEditar$delegate, $mostrarDialogoCrearEditar$delegate, $citaParaCancelar$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 24);
            $composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0444  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64(LocalDate $fecha, boolean $esDiaNoDisponible, final List $citasDelDia, final ColorScheme $colors, final Typography $typography, PsicologoAgendaViewModel $viewModel, final MutableState $citaParaEditar$delegate, final MutableState $mostrarDialogoCrearEditar$delegate, final MutableState $citaParaCancelar$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Iterator it;
        boolean zChangedInstance;
        Object objRememberedValue;
        final PsicologoAgendaViewModel psicologoAgendaViewModel = $viewModel;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C234@9890L4812:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1357037949, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:234)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1868892567, "C235@9967L46,236@10046L41:PsicologoAgendaScreen.kt#j2aa7e");
            CabeceraDiaPsicologa($fecha, $esDiaNoDisponible, $composer, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            if ($esDiaNoDisponible) {
                $composer.startReplaceGroup(-1030115890);
                ComposerKt.sourceInformation($composer, "239@10185L21");
                DiaNoDisponibleCard($composer, 0);
                $composer.endReplaceGroup();
            } else if (!$citasDelDia.isEmpty()) {
                $composer.startReplaceGroup(-1868655139);
                ComposerKt.sourceInformation($composer, "242@10401L1389,263@11831L41,*267@12141L336,272@12538L27,265@12001L610");
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i4 = ((((438 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                    function02 = constructor2;
                    $composer.createNode(function02);
                } else {
                    function02 = constructor2;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i5 = (i4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i6 = ((438 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -168003000, "C247@10759L283,255@11321L427,252@11087L661:PsicologoAgendaScreen.kt#j2aa7e");
                TextKt.m2976Text4IGK_g("Citas programadas", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleLarge(), $composer, 196614, 0, 65502);
                BadgeKt.m2072BadgeeopBjH0(ClipKt.clip(Modifier.INSTANCE, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12))), $colors.getPrimary(), 0L, ComposableLambdaKt.rememberComposableLambda(427677035, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda44
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$55$lambda$54($citasDelDia, $colors, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), $composer, 3072, 4);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
                List list = $citasDelDia;
                int i7 = 0;
                int i8 = 0;
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    int i9 = i8 + 1;
                    if (i8 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    final AgendaItemDTO agendaItemDTO = (AgendaItemDTO) next;
                    Iterable iterable = list;
                    int i10 = i7;
                    ComposerKt.sourceInformationMarkerStart($composer, -1004363151, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                    boolean zChangedInstance2 = $composer.changedInstance(agendaItemDTO) | $composer.changedInstance(psicologoAgendaViewModel);
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (!zChangedInstance2) {
                        it = it2;
                        if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        }
                        Function0 function03 = (Function0) objRememberedValue2;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerStart($composer, -1004350756, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                        zChangedInstance = $composer.changedInstance(agendaItemDTO);
                        objRememberedValue = $composer.rememberedValue();
                        if (!zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                            objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda46
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$60$lambda$59$lambda$58(agendaItemDTO, $citaParaCancelar$delegate);
                                }
                            };
                            $composer.updateRememberedValue(objRememberedValue);
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        TarjetaCitaPsicologa(agendaItemDTO, function03, (Function0) objRememberedValue, $composer, 0);
                        if (i8 >= $citasDelDia.size() - 1) {
                            $composer.startReplaceGroup(-1069948168);
                            ComposerKt.sourceInformation($composer, "275@12740L41");
                            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
                        } else {
                            $composer.startReplaceGroup(-1082541887);
                        }
                        $composer.endReplaceGroup();
                        psicologoAgendaViewModel = $viewModel;
                        i8 = i9;
                        list = iterable;
                        i7 = i10;
                        it2 = it;
                    } else {
                        it = it2;
                    }
                    objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda45
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$60$lambda$57$lambda$56(agendaItemDTO, psicologoAgendaViewModel, $citaParaEditar$delegate, $mostrarDialogoCrearEditar$delegate);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue2);
                    Function0 function032 = (Function0) objRememberedValue2;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerStart($composer, -1004350756, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                    zChangedInstance = $composer.changedInstance(agendaItemDTO);
                    objRememberedValue = $composer.rememberedValue();
                    if (!zChangedInstance) {
                        objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda46
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$60$lambda$59$lambda$58(agendaItemDTO, $citaParaCancelar$delegate);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue);
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    TarjetaCitaPsicologa(agendaItemDTO, function032, (Function0) objRememberedValue, $composer, 0);
                    if (i8 >= $citasDelDia.size() - 1) {
                    }
                    $composer.endReplaceGroup();
                    psicologoAgendaViewModel = $viewModel;
                    i8 = i9;
                    list = iterable;
                    i7 = i10;
                    it2 = it;
                }
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(-1866025037);
                ComposerKt.sourceInformation($composer, "283@13225L69,284@13337L1263,280@12994L1606");
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
                CardDefaults cardDefaults = CardDefaults.INSTANCE;
                long surfaceVariant = $colors.getSurfaceVariant();
                CardKt.Card(modifierFillMaxWidth$default2, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant) : 0.5f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant) : 0.0f), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-2123817684, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda47
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$62($colors, $typography, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), $composer, 196614, 24);
                $composer.endReplaceGroup();
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$55$lambda$54(List $citasDelDia, ColorScheme $colors, RowScope Badge, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Badge, "$this$Badge");
        ComposerKt.sourceInformation($composer, "C256@11371L331:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(427677035, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:256)");
            }
            TextKt.m2976Text4IGK_g(String.valueOf($citasDelDia.size()), PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(2)), $colors.getOnPrimary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 48, 0, 131064);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$60$lambda$57$lambda$56(AgendaItemDTO $cita, PsicologoAgendaViewModel $viewModel, MutableState $citaParaEditar$delegate, MutableState $mostrarDialogoCrearEditar$delegate) {
        $citaParaEditar$delegate.setValue($cita);
        PsicologoAgendaScreen$lambda$21($mostrarDialogoCrearEditar$delegate, true);
        LocalDate fecha = $cita.getFecha();
        Integer duracionMinutos = $cita.getDuracionMinutos();
        $viewModel.cargarDisponibilidadDia(fecha, duracionMinutos != null ? duracionMinutos.intValue() : 60);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$60$lambda$59$lambda$58(AgendaItemDTO $cita, MutableState $citaParaCancelar$delegate) {
        $citaParaCancelar$delegate.setValue($cita);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$67$lambda$66$lambda$65$lambda$64$lambda$63$lambda$62(ColorScheme $colors, Typography $typography, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C285@13383L1175:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2123817684, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:285)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(32));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1231501434, "C289@13685L398,295@14132L41,296@14222L102,297@14373L139:PsicologoAgendaScreen.kt#j2aa7e");
            ImageVector eventNote = EventNoteKt.getEventNote(Icons.INSTANCE.getDefault());
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48));
            long onSurfaceVariant = $colors.getOnSurfaceVariant();
            IconKt.m2433Iconww6aTOc(eventNote, (String) null, modifierM864size3ABfNKs, Color.m4695copywmQWz5c(onSurfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant) : 0.0f), $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            TextKt.m2976Text4IGK_g("No hay citas programadas", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyLarge(), $composer, 6, 0, 65530);
            TextStyle bodySmall = $typography.getBodySmall();
            long onSurfaceVariant2 = $colors.getOnSurfaceVariant();
            TextKt.m2976Text4IGK_g("Este día está disponible para nuevas citas", (Modifier) null, Color.m4695copywmQWz5c(onSurfaceVariant2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant2) : 0.7f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant2) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodySmall, $composer, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$74$lambda$73$lambda$72$lambda$71(ColorScheme $colors, Typography $typography, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C318@15325L356:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1851321026, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:318)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 456711518, "C319@15450L49,320@15528L41,321@15598L57:PsicologoAgendaScreen.kt#j2aa7e");
            ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(null, $colors.getPrimary(), 0.0f, 0L, 0, $composer, 0, 29);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            TextKt.m2976Text4IGK_g("Cargando agenda...", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$76$lambda$75(CoroutineScope $scope, PsicologoAgendaViewModel $viewModel, MutableState $mostrarDialogoHorario$delegate, List franjas) {
        Intrinsics.checkNotNullParameter(franjas, "franjas");
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$8$1$1($viewModel, franjas, $mostrarDialogoHorario$delegate, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$78$lambda$77(MutableState $mostrarDialogoHorario$delegate) {
        PsicologoAgendaScreen$lambda$15($mostrarDialogoHorario$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$80$lambda$79(CoroutineScope $scope, PsicologoAgendaViewModel $viewModel, LocalDate $fecha, boolean $yaNoDisponible, SnackbarHostState $snackbarHostState, MutableState $mostrarDialogoNoDisponible$delegate) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1($viewModel, $fecha, $yaNoDisponible, $snackbarHostState, $mostrarDialogoNoDisponible$delegate, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$82$lambda$81(MutableState $mostrarDialogoNoDisponible$delegate) {
        PsicologoAgendaScreen$lambda$18($mostrarDialogoNoDisponible$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$84$lambda$83(PsicologoAgendaViewModel $viewModel) {
        $viewModel.reintentarCargarPacientes();
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$86$lambda$85(PsicologoAgendaViewModel $viewModel, LocalDate it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.cargarDisponibilidadDia(it, 60);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$88$lambda$87(PsicologoAgendaViewModel $viewModel, CoroutineScope $scope, MutableState $citaParaEditar$delegate, SnackbarHostState $snackbarHostState, State $pacientesAsignados$delegate, MutableState $mostrarDialogoCrearEditar$delegate, long idPaciente, LocalDate fecha, LocalTime hora, int duracion, String motivo, long idTerapia, MetodoPago metodoPago, BigDecimal monto) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(monto, "monto");
        if (PsicologoAgendaScreen$lambda$23($citaParaEditar$delegate) != null) {
            AgendaItemDTO agendaItemDTOPsicologoAgendaScreen$lambda$23 = PsicologoAgendaScreen$lambda$23($citaParaEditar$delegate);
            Intrinsics.checkNotNull(agendaItemDTOPsicologoAgendaScreen$lambda$23);
            $viewModel.editarCita(agendaItemDTOPsicologoAgendaScreen$lambda$23.getId(), idPaciente, fecha, hora, duracion, motivo, idTerapia, metodoPago, monto);
            BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$1($snackbarHostState, fecha, hora, $pacientesAsignados$delegate, idPaciente, null), 3, null);
        } else {
            $viewModel.crearCita(idPaciente, fecha, hora, duracion, motivo, idTerapia, metodoPago, monto);
            BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2($snackbarHostState, fecha, hora, $pacientesAsignados$delegate, idPaciente, null), 3, null);
        }
        PsicologoAgendaScreen$lambda$21($mostrarDialogoCrearEditar$delegate, false);
        $citaParaEditar$delegate.setValue(null);
        $viewModel.limpiarDisponibilidad();
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$90$lambda$89(PsicologoAgendaViewModel $viewModel, MutableState $mostrarDialogoCrearEditar$delegate, MutableState $citaParaEditar$delegate) {
        PsicologoAgendaScreen$lambda$21($mostrarDialogoCrearEditar$delegate, false);
        $citaParaEditar$delegate.setValue(null);
        $viewModel.limpiarDisponibilidad();
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$92$lambda$91(PsicologoAgendaViewModel $viewModel, CoroutineScope $scope, MutableState $citaParaCancelar$delegate, SnackbarHostState $snackbarHostState) {
        AgendaItemDTO agendaItemDTOPsicologoAgendaScreen$lambda$26 = PsicologoAgendaScreen$lambda$26($citaParaCancelar$delegate);
        Intrinsics.checkNotNull(agendaItemDTOPsicologoAgendaScreen$lambda$26);
        long id = agendaItemDTOPsicologoAgendaScreen$lambda$26.getId();
        AgendaItemDTO agendaItemDTOPsicologoAgendaScreen$lambda$262 = PsicologoAgendaScreen$lambda$26($citaParaCancelar$delegate);
        Intrinsics.checkNotNull(agendaItemDTOPsicologoAgendaScreen$lambda$262);
        $viewModel.cancelarCita(id, agendaItemDTOPsicologoAgendaScreen$lambda$262.getFecha());
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PsicologoAgendaScreenKt$PsicologoAgendaScreen$16$1$1($snackbarHostState, null), 3, null);
        $citaParaCancelar$delegate.setValue(null);
        return Unit.INSTANCE;
    }

    static final Unit PsicologoAgendaScreen$lambda$94$lambda$93(MutableState $citaParaCancelar$delegate) {
        $citaParaCancelar$delegate.setValue(null);
        return Unit.INSTANCE;
    }

    public static final void TarjetaCitaPsicologa(final AgendaItemDTO cita, final Function0<Unit> onEdit, final Function0<Unit> onCancel, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(cita, "cita");
        Intrinsics.checkNotNullParameter(onEdit, "onEdit");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        Composer $composer2 = $composer.startRestartGroup(64611134);
        ComposerKt.sourceInformation($composer2, "C(TarjetaCitaPsicologa)N(cita,onEdit,onCancel)445@20503L11,451@20704L69,452@20780L3510,448@20581L3709:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(cita) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(onEdit) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(onCancel) ? 256 : 128;
        }
        if ($composer2.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(64611134, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.TarjetaCitaPsicologa (PsicologoAgendaScreen.kt:444)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            final DateTimeFormatter formatterHora = DateTimeFormatter.ofPattern("HH:mm");
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long surfaceVariant = colors.getSurfaceVariant();
            CardColors cardColorsM2112cardColorsro_MJ88 = cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant) : 0.4f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant) : 0.0f), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14);
            $composer2 = $composer2;
            CardKt.Card(modifierFillMaxWidth$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardColorsM2112cardColorsro_MJ88, null, null, ComposableLambdaKt.rememberComposableLambda(1936902412, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda86
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.TarjetaCitaPsicologa$lambda$102(cita, colors, formatterHora, onEdit, onCancel, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda87
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.TarjetaCitaPsicologa$lambda$103(cita, onEdit, onCancel, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit TarjetaCitaPsicologa$lambda$102(AgendaItemDTO $cita, ColorScheme $colors, DateTimeFormatter $formatterHora, Function0 $onEdit, Function0 $onCancel, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        long jM4695copywmQWz5c;
        final ColorScheme colorScheme;
        Composer composer;
        Function0<ComposeUiNode> function04;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C453@20790L3494:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1936902412, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.TarjetaCitaPsicologa.<anonymous> (PsicologoAgendaScreen.kt:453)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 581928106, "C454@20847L1862,503@23039L40,506@23205L10,504@23092L187,510@23293L41,511@23347L927:PsicologoAgendaScreen.kt#j2aa7e");
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i6 = ((438 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 778686451, "C459@21065L583:PsicologoAgendaScreen.kt#j2aa7e");
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function03 = constructor3;
                $composer.createNode(function03);
            } else {
                function03 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i9 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 2014694799, "C462@21244L10,460@21126L216,467@21530L10,465@21363L267:PsicologoAgendaScreen.kt#j2aa7e");
            String nombrePaciente = $cita.getNombrePaciente();
            if (nombrePaciente == null) {
                nombrePaciente = "Paciente";
            }
            TextKt.m2976Text4IGK_g(nombrePaciente, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleMedium(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            TextKt.m2976Text4IGK_g($cita.getHoraInicio().format($formatterHora) + " - " + $cita.getHoraFin().format($formatterHora), (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyMedium(), $composer, 0, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            final String estado = $cita.getEstado();
            if (estado == null) {
                $composer.startReplaceGroup(779275542);
                $composer.endReplaceGroup();
                colorScheme = $colors;
            } else {
                $composer.startReplaceGroup(779275543);
                ComposerKt.sourceInformation($composer, "*479@22116L561,472@21714L963");
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8));
                String upperCase = estado.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (Intrinsics.areEqual(upperCase, "CONFIRMADA")) {
                    long primary = $colors.getPrimary();
                    jM4695copywmQWz5c = Color.m4695copywmQWz5c(primary, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primary) : 0.15f, (14 & 2) != 0 ? Color.m4703getRedimpl(primary) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primary) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primary) : 0.0f);
                } else if (Intrinsics.areEqual(upperCase, "CANCELADA")) {
                    long error = $colors.getError();
                    jM4695copywmQWz5c = Color.m4695copywmQWz5c(error, (14 & 1) != 0 ? Color.m4699getAlphaimpl(error) : 0.15f, (14 & 2) != 0 ? Color.m4703getRedimpl(error) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(error) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(error) : 0.0f);
                } else {
                    long tertiary = $colors.getTertiary();
                    jM4695copywmQWz5c = Color.m4695copywmQWz5c(tertiary, (14 & 1) != 0 ? Color.m4699getAlphaimpl(tertiary) : 0.15f, (14 & 2) != 0 ? Color.m4703getRedimpl(tertiary) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(tertiary) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(tertiary) : 0.0f);
                }
                colorScheme = $colors;
                SurfaceKt.m2826SurfaceT9BRK9s(null, roundedCornerShapeM1126RoundedCornerShape0680j_4, jM4695copywmQWz5c, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1671304693, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda105
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PsicologoAgendaScreenKt.TarjetaCitaPsicologa$lambda$102$lambda$101$lambda$99$lambda$98$lambda$97(estado, colorScheme, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer, 54), $composer, 12582912, 121);
                Unit unit = Unit.INSTANCE;
                $composer.endReplaceGroup();
                Unit unit2 = Unit.INSTANCE;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            String motivo = $cita.getMotivo();
            if (motivo == null || StringsKt.isBlank(motivo)) {
                composer = $composer;
                composer.startReplaceGroup(561140652);
            } else {
                $composer.startReplaceGroup(583724896);
                ComposerKt.sourceInformation($composer, "495@22775L40,498@22920L10,496@22832L179");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
                TextKt.m2976Text4IGK_g($cita.getMotivo(), (Modifier) null, colorScheme.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65530);
                composer = $composer;
            }
            composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer, 6);
            Composer composer2 = composer;
            TextKt.m2976Text4IGK_g("Terapia: " + $cita.getTerapiaResponseDTO().getNombre(), (Modifier) null, colorScheme.getPrimary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getBodySmall(), composer2, 0, 0, 65530);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer, 6);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal end = Arrangement.INSTANCE.getEnd();
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            Composer composer3 = composer;
            ComposerKt.sourceInformationMarkerStart(composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(end, centerVertically2, composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
            CompositionLocalMap currentCompositionLocalMap4 = composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default2);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            int i10 = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer3.startReusableNode();
            if (composer3.getInserting()) {
                function04 = constructor4;
                composer3.createNode(function04);
            } else {
                function04 = constructor4;
                composer3.useNode();
            }
            Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl(composer3);
            Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            int i11 = (i10 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i12 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer3, 720152648, "C516@23556L248,521@23821L39,524@23973L45,522@23877L383:PsicologoAgendaScreen.kt#j2aa7e");
            ButtonKt.TextButton($onEdit, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10450getLambda$436883202$app(), composer3, 805306368, 510);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer3, 6);
            ButtonKt.TextButton($onCancel, null, false, null, ButtonDefaults.INSTANCE.m2103textButtonColorsro_MJ88(0L, $colors.getError(), 0L, 0L, composer3, ButtonDefaults.$stable << 12, 13), null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$168925223$app(), composer3, 805306368, 494);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit TarjetaCitaPsicologa$lambda$102$lambda$101$lambda$99$lambda$98$lambda$97(String $estado, ColorScheme $colors, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C483@22334L10,480@22142L513:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1671304693, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.TarjetaCitaPsicologa.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:480)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(4));
            TextStyle labelSmall = MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall();
            String upperCase = $estado.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            TextKt.m2976Text4IGK_g($estado, modifierM819paddingVpY3zN4, Intrinsics.areEqual(upperCase, "CONFIRMADA") ? $colors.getPrimary() : Intrinsics.areEqual(upperCase, "CANCELADA") ? $colors.getError() : $colors.getTertiary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, labelSmall, $composer, 48, 0, 65528);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    public static final void CabeceraDiaPsicologa(final LocalDate fecha, final boolean esDiaNoDisponible, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Composer $composer3 = $composer.startRestartGroup(706326513);
        ComposerKt.sourceInformation($composer3, "C(CabeceraDiaPsicologa)N(fecha,esDiaNoDisponible)538@24446L11,541@24569L1038:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(fecha) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(esDiaNoDisponible) ? 32 : 16;
        }
        if (!$composer3.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(706326513, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.CabeceraDiaPsicologa (PsicologoAgendaScreen.kt:537)");
            }
            ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            DateTimeFormatter formatterFecha = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale.forLanguageTag("es-ES"));
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            $composer2 = $composer3;
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1294400518, "C545@24689L281,551@24979L40,552@25028L573:PsicologoAgendaScreen.kt#j2aa7e");
            Icons.Filled filled = Icons.INSTANCE.getDefault();
            IconKt.m2433Iconww6aTOc(esDiaNoDisponible ? EventBusyKt.getEventBusy(filled) : CalendarTodayKt.getCalendarToday(filled), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(28)), esDiaNoDisponible ? colors.getError() : colors.getPrimary(), $composer3, 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer3, 6);
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -406349394, "C555@25182L10,553@25049L298:PsicologoAgendaScreen.kt#j2aa7e");
            String string = fecha.format(formatterFecha);
            Intrinsics.checkNotNullExpressionValue(string, "format(...)");
            if (string.length() > 0) {
                StringBuilder sb = new StringBuilder();
                String strValueOf = String.valueOf(string.charAt(0));
                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                StringBuilder sbAppend = sb.append((Object) upperCase);
                String strSubstring = string.substring(1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                string = sbAppend.append(strSubstring).toString();
            }
            TextKt.m2976Text4IGK_g(string, (Modifier) null, esDiaNoDisponible ? colors.getError() : colors.getOnSurface(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getTitleMedium(), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65498);
            if (esDiaNoDisponible) {
                $composer3.startReplaceGroup(-406028421);
                ComposerKt.sourceInformation($composer3, "562@25497L10,560@25401L176");
                TextKt.m2976Text4IGK_g("Día no disponible", (Modifier) null, colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodySmall(), $composer3, 6, 0, 65530);
            } else {
                $composer3.startReplaceGroup(-431215797);
            }
            $composer3.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda74
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.CabeceraDiaPsicologa$lambda$107(fecha, esDiaNoDisponible, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void LeyendaPsicologa(Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Composer $composer3 = $composer.startRestartGroup(-1527881438);
        ComposerKt.sourceInformation($composer3, "C(LeyendaPsicologa)572@25679L11,574@25696L946:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1527881438, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.LeyendaPsicologa (PsicologoAgendaScreen.kt:571)");
            }
            ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            $composer2 = $composer3;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -326885842, "C578@25821L406,587@26236L400:PsicologoAgendaScreen.kt#j2aa7e");
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -1218936049, "C579@25887L163,584@26063L39,585@26162L10,585@26115L102:PsicologoAgendaScreen.kt#j2aa7e");
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(3)), colors.getPrimary(), 0L, 0.0f, 0.0f, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$910888581$app(), $composer3, 12582918, 120);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(6)), $composer3, 6);
            TextKt.m2976Text4IGK_g("Día seleccionado", (Modifier) null, colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getLabelSmall(), $composer3, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier2 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, $composer3, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i8 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer3, modifier2);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i9 = ((i8 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function03 = constructor3;
                $composer3.createNode(function03);
            } else {
                function03 = constructor3;
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i10 = (i9 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
            int i11 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1331625598, "C588@26302L164,593@26479L39,594@26571L10,594@26531L95:PsicologoAgendaScreen.kt#j2aa7e");
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(3)), colors.getTertiary(), 0L, 0.0f, 0.0f, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10449getLambda$2105626564$app(), $composer3, 12582918, 120);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(6)), $composer3, 6);
            TextKt.m2976Text4IGK_g("Con citas", (Modifier) null, colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getLabelSmall(), $composer3, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda88
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.LeyendaPsicologa$lambda$111($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void BotonAccionRapida(final ImageVector icono, final String texto, final String subtitulo, Modifier modifier, final Function0<? extends Object> onClick, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final Modifier modifier3;
        Modifier modifier4;
        Intrinsics.checkNotNullParameter(icono, "icono");
        Intrinsics.checkNotNullParameter(texto, "texto");
        Intrinsics.checkNotNullParameter(subtitulo, "subtitulo");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer $composer2 = $composer.startRestartGroup(1178888070);
        ComposerKt.sourceInformation($composer2, "C(BotonAccionRapida)N(icono,texto,subtitulo,modifier,onClick)607@26840L11,610@26901L13,612@26989L69,613@27065L843,609@26857L1051:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(icono) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(texto) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(subtitulo) ? 256 : 128;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(onClick) ? 16384 : 8192;
        }
        if ($composer2.shouldExecute(($dirty & 9363) != 9362, $dirty & 1)) {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1178888070, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.BotonAccionRapida (PsicologoAgendaScreen.kt:606)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            ComposerKt.sourceInformationMarkerStart($composer2, -959922701, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean z = (57344 & $dirty) == 16384;
            Object objRememberedValue = $composer2.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.BotonAccionRapida$lambda$113$lambda$112(onClick);
                    }
                };
                $composer2.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(modifier4, false, null, null, null, (Function0) objRememberedValue, 15, null);
            Modifier modifier5 = modifier4;
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long surfaceVariant = colors.getSurfaceVariant();
            CardColors cardColorsM2112cardColorsro_MJ88 = cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant) : 0.5f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant) : 0.0f), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14);
            $composer2 = $composer2;
            CardKt.Card(modifierM299clickableoSLSa3U$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardColorsM2112cardColorsro_MJ88, null, null, ComposableLambdaKt.rememberComposableLambda(607756116, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return PsicologoAgendaScreenKt.BotonAccionRapida$lambda$115(colors, icono, texto, subtitulo, (ColumnScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer2, 54), $composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.BotonAccionRapida$lambda$116(icono, texto, subtitulo, modifier3, onClick, $changed, i, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    static final Unit BotonAccionRapida$lambda$113$lambda$112(Function0 $onClick) {
        $onClick.invoke();
        return Unit.INSTANCE;
    }

    static final Unit BotonAccionRapida$lambda$115(ColorScheme $colors, ImageVector $icono, String $texto, String $subtitulo, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C614@27075L827:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(607756116, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.BotonAccionRapida.<anonymous> (PsicologoAgendaScreen.kt:614)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1224735229, "C618@27218L187,624@27418L40,627@27545L10,625@27471L201,633@27763L10,631@27685L207:PsicologoAgendaScreen.kt#j2aa7e");
            IconKt.m2433Iconww6aTOc($icono, $texto, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(28)), $colors.getPrimary(), $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g($texto, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleSmall(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 64990);
            TextKt.m2976Text4IGK_g($subtitulo, (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65018);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void DiaNoDisponibleCard(Composer $composer, final int $changed) {
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-1820532793);
        ComposerKt.sourceInformation($composer3, "C(DiaNoDisponibleCard)643@27983L11,648@28123L69,649@28199L946,645@28000L1145:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1820532793, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DiaNoDisponibleCard (PsicologoAgendaScreen.kt:642)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long errorContainer = colors.getErrorContainer();
            $composer2 = $composer3;
            CardKt.Card(modifierFillMaxWidth$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(errorContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(errorContainer) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(errorContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(errorContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(errorContainer) : 0.0f), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-1988519659, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda54
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.DiaNoDisponibleCard$lambda$118(colors, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda55
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DiaNoDisponibleCard$lambda$119($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit DiaNoDisponibleCard$lambda$118(ColorScheme $colors, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C650@28209L930:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1988519659, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DiaNoDisponibleCard.<anonymous> (PsicologoAgendaScreen.kt:650)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(32));
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1850645844, "C656@28401L188,662@28602L41,665@28744L10,663@28656L210,671@29000L10,669@28879L250:PsicologoAgendaScreen.kt#j2aa7e");
            IconKt.m2433Iconww6aTOc(EventBusyKt.getEventBusy(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), $colors.getError(), $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            TextKt.m2976Text4IGK_g("Día no disponible", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyLarge(), $composer, 196614, 0, 65498);
            TextKt.m2976Text4IGK_g("Has marcado este día como no disponible para citas", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 6, 0, 65018);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DialogoModificarHorario(final StateFlow<HorarioRequestDTO> horarioActual, final Function1<? super List<FranjaHorarioDTO>, Unit> onConfirmar, final Function0<Unit> onDismiss, Composer $composer, int $changed) throws Throwable {
        final int i;
        Intrinsics.checkNotNullParameter(horarioActual, "horarioActual");
        Intrinsics.checkNotNullParameter(onConfirmar, "onConfirmar");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer $composer2 = $composer.startRestartGroup(-2020782126);
        ComposerKt.sourceInformation($composer2, "C(DialogoModificarHorario)N(horarioActual,onConfirmar,onDismiss)688@29462L29,691@29622L486,770@33267L224,778@33517L104,713@30394L2847,704@30114L3513:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(horarioActual) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(onConfirmar) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(onDismiss) ? 256 : 128;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            i = $changed;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2020782126, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoModificarHorario (PsicologoAgendaScreen.kt:687)");
            }
            State horario$delegate = FlowExtKt.collectAsStateWithLifecycle(horarioActual, (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, $dirty2 & 14, 7);
            final List diasSemana = CollectionsKt.listOf((Object[]) new String[]{"Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"});
            Object objDialogoModificarHorario$lambda$120 = DialogoModificarHorario$lambda$120(horario$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, -646391976, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged = $composer2.changed(objDialogoModificarHorario$lambda$120);
            Object objRememberedValue = $composer2.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                SnapshotStateList snapshotStateListMutableStateListOf = SnapshotStateKt.mutableStateListOf();
                if (DialogoModificarHorario$lambda$120(horario$delegate) != null) {
                    HorarioRequestDTO horarioRequestDTODialogoModificarHorario$lambda$120 = DialogoModificarHorario$lambda$120(horario$delegate);
                    Intrinsics.checkNotNull(horarioRequestDTODialogoModificarHorario$lambda$120);
                    if (!horarioRequestDTODialogoModificarHorario$lambda$120.getFranjas().isEmpty()) {
                        HorarioRequestDTO horarioRequestDTODialogoModificarHorario$lambda$1202 = DialogoModificarHorario$lambda$120(horario$delegate);
                        Intrinsics.checkNotNull(horarioRequestDTODialogoModificarHorario$lambda$1202);
                        snapshotStateListMutableStateListOf.addAll(horarioRequestDTODialogoModificarHorario$lambda$1202.getFranjas());
                    } else {
                        int i2 = 1;
                        while (true) {
                            boolean z = zChanged;
                            if (i2 >= 6) {
                                break;
                            }
                            snapshotStateListMutableStateListOf.add(new FranjaHorarioDTO((short) i2, "09:00", "17:00", true, null, 16, null));
                            i2++;
                            zChanged = z;
                        }
                    }
                    $composer2.updateRememberedValue(snapshotStateListMutableStateListOf);
                    objRememberedValue = snapshotStateListMutableStateListOf;
                }
            }
            final SnapshotStateList franjasEditables = (SnapshotStateList) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            i = $changed;
            AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0(onDismiss, ComposableLambdaKt.rememberComposableLambda(2017996938, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda36
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$125(onConfirmar, franjasEditables, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-753207736, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda37
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$126(onDismiss, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$770554886$app(), ComposableLambdaKt.rememberComposableLambda(1532436197, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda38
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$135(franjasEditables, diasSemana, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer2, (($dirty2 >> 6) & 14) | 1772592, 0, 16276);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda39
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$136(horarioActual, onConfirmar, onDismiss, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final HorarioRequestDTO DialogoModificarHorario$lambda$120(State<HorarioRequestDTO> state) {
        return (HorarioRequestDTO) state.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit DialogoModificarHorario$lambda$135(SnapshotStateList $franjasEditables, List $diasSemana, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        int i;
        int i2;
        Modifier modifier;
        Object obj;
        long jM4695copywmQWz5c;
        final SnapshotStateList snapshotStateList = $franjasEditables;
        ComposerKt.sourceInformation($composer, "C718@30568L21,714@30408L2823:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1532436197, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoModificarHorario.<anonymous> (PsicologoAgendaScreen.kt:714)");
            }
            Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(SizeKt.m852heightInVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(450), 1, null), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            int i3 = 1;
            Composer composer = $composer;
            ComposerKt.sourceInformationMarkerStart(composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifier2 = modifierVerticalScroll$default;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier2);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                function0 = constructor;
                composer.createNode(function0);
            } else {
                function0 = constructor;
                composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl(composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            int i6 = 0;
            ComposerKt.sourceInformationMarkerStart(composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i7 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer, -1509882028, "C723@30814L10,724@30878L11,721@30689L235:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("Activa o desactiva los días y ajusta las horas", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getBodySmall(), composer, 6, 0, 65530);
            composer.startReplaceGroup(-1157076190);
            ComposerKt.sourceInformation(composer, "*731@31300L320,737@31643L1556,728@31129L2070");
            SnapshotStateList snapshotStateList2 = snapshotStateList;
            int i8 = 0;
            int i9 = 0;
            for (Object obj2 : snapshotStateList2) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Iterable iterable = snapshotStateList2;
                final FranjaHorarioDTO franjaHorarioDTO = (FranjaHorarioDTO) obj2;
                final int i11 = i9;
                int i12 = i8;
                int diaSemana = franjaHorarioDTO.getDiaSemana() - 1;
                if (diaSemana >= 0) {
                    i = i6;
                    i2 = diaSemana < $diasSemana.size() ? i3 : 0;
                    if (i2 == 0) {
                        obj = $diasSemana.get(diaSemana);
                        modifier = modifier2;
                    } else {
                        modifier = modifier2;
                        obj = "Día " + franjaHorarioDTO.getDiaSemana();
                    }
                    final String str = (String) obj;
                    CompositionLocalMap compositionLocalMap = currentCompositionLocalMap;
                    Composer composer2 = composer;
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i3, null);
                    RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                    CardDefaults cardDefaults = CardDefaults.INSTANCE;
                    if (!franjaHorarioDTO.getActivo()) {
                        composer.startReplaceGroup(-1799961161);
                        ComposerKt.sourceInformation(composer, "733@31422L11");
                        long primaryContainer = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer();
                        jM4695copywmQWz5c = Color.m4695copywmQWz5c(primaryContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primaryContainer) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(primaryContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primaryContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primaryContainer) : 0.0f);
                        composer.endReplaceGroup();
                    } else {
                        composer.startReplaceGroup(-1799957161);
                        ComposerKt.sourceInformation(composer, "735@31549L11");
                        long surfaceVariant = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getSurfaceVariant();
                        jM4695copywmQWz5c = Color.m4695copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant) : 0.0f);
                        composer.endReplaceGroup();
                    }
                    CardKt.Card(modifierFillMaxWidth$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardDefaults.m2112cardColorsro_MJ88(jM4695copywmQWz5c, 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(826635763, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$135$lambda$134$lambda$133$lambda$132(franjaHorarioDTO, snapshotStateList, i11, str, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                        }
                    }, composer, 54), composer, 196614, 24);
                    snapshotStateList = $franjasEditables;
                    i3 = 1;
                    currentCompositionLocalMap = compositionLocalMap;
                    composer = composer2;
                    i9 = i10;
                    snapshotStateList2 = iterable;
                    i8 = i12;
                    i6 = i;
                    modifier2 = modifier;
                } else {
                    i = i6;
                }
                if (i2 == 0) {
                }
                final String str2 = (String) obj;
                CompositionLocalMap compositionLocalMap2 = currentCompositionLocalMap;
                Composer composer22 = composer;
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i3, null);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                CardDefaults cardDefaults2 = CardDefaults.INSTANCE;
                if (!franjaHorarioDTO.getActivo()) {
                }
                CardKt.Card(modifierFillMaxWidth$default2, roundedCornerShapeM1126RoundedCornerShape0680j_42, cardDefaults2.m2112cardColorsro_MJ88(jM4695copywmQWz5c, 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(826635763, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj3, Object obj4, Object obj5) {
                        return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$135$lambda$134$lambda$133$lambda$132(franjaHorarioDTO, snapshotStateList, i11, str2, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, composer, 54), composer, 196614, 24);
                snapshotStateList = $franjasEditables;
                i3 = 1;
                currentCompositionLocalMap = compositionLocalMap2;
                composer = composer22;
                i9 = i10;
                snapshotStateList2 = iterable;
                i8 = i12;
                i6 = i;
                modifier2 = modifier;
            }
            composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit DialogoModificarHorario$lambda$135$lambda$134$lambda$133$lambda$132(final FranjaHorarioDTO $franja, final SnapshotStateList $franjasEditables, final int $index, String $diaNombre, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        Composer composer2;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C738@31669L1508:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(826635763, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoModificarHorario.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:738)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((438 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -38143279, "C745@32028L727:PsicologoAgendaScreen.kt#j2aa7e");
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i5 = ((i4 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i6 = (i5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -750381355, "C748@32271L146,746@32146L305,754@32602L10,752@32484L241:PsicologoAgendaScreen.kt#j2aa7e");
            boolean activo = $franja.getActivo();
            ComposerKt.sourceInformationMarkerStart($composer, 252892381, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($franjasEditables) | $composer.changed($index) | $composer.changed($franja);
            Object objRememberedValue = $composer.rememberedValue();
            if (!zChanged) {
                composer = $composer;
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                CheckboxKt.Checkbox(activo, (Function1) objRememberedValue, null, false, null, null, composer, 0, 60);
                Composer composer3 = composer;
                TextKt.m2976Text4IGK_g($diaNombre, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getBodyMedium(), composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if ($franja.getActivo()) {
                    composer2 = $composer;
                    composer2.startReplaceGroup(-69950861);
                } else {
                    $composer.startReplaceGroup(-37398505);
                    ComposerKt.sourceInformation($composer, "761@32988L10,762@33068L11,759@32837L284");
                    TextKt.m2976Text4IGK_g($franja.getHoraInicio() + " - " + $franja.getHoraFin(), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65530);
                    composer2 = $composer;
                }
                composer2.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer = $composer;
            }
            objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$135$lambda$134$lambda$133$lambda$132$lambda$131$lambda$130$lambda$129$lambda$128($franjasEditables, $index, $franja, ((Boolean) obj).booleanValue());
                }
            };
            $composer.updateRememberedValue(objRememberedValue);
            ComposerKt.sourceInformationMarkerEnd(composer);
            CheckboxKt.Checkbox(activo, (Function1) objRememberedValue, null, false, null, null, composer, 0, 60);
            Composer composer32 = composer;
            TextKt.m2976Text4IGK_g($diaNombre, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer32, MaterialTheme.$stable).getBodyMedium(), composer32, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            ComposerKt.sourceInformationMarkerEnd(composer32);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if ($franja.getActivo()) {
            }
            composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoModificarHorario$lambda$135$lambda$134$lambda$133$lambda$132$lambda$131$lambda$130$lambda$129$lambda$128(SnapshotStateList $franjasEditables, int $index, FranjaHorarioDTO $franja, boolean checked) {
        $franjasEditables.set($index, FranjaHorarioDTO.copy$default($franja, (short) 0, null, null, checked, null, 23, null));
        return Unit.INSTANCE;
    }

    static final Unit DialogoModificarHorario$lambda$125(final Function1 $onConfirmar, final SnapshotStateList $franjasEditables, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C772@33315L42,771@33281L200:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2017996938, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoModificarHorario.<anonymous> (PsicologoAgendaScreen.kt:771)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -2030158796, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($onConfirmar) | $composer.changed($franjasEditables);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda75
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoModificarHorario$lambda$125$lambda$124$lambda$123($onConfirmar, $franjasEditables);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue, null, false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$180008602$app(), $composer, 805306368, 502);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoModificarHorario$lambda$125$lambda$124$lambda$123(Function1 $onConfirmar, SnapshotStateList $franjasEditables) {
        $onConfirmar.invoke($franjasEditables.toList());
        return Unit.INSTANCE;
    }

    static final Unit DialogoModificarHorario$lambda$126(Function0 $onDismiss, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C779@33531L80:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-753207736, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoModificarHorario.<anonymous> (PsicologoAgendaScreen.kt:779)");
            }
            ButtonKt.TextButton($onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10454getLambda$743552469$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void DialogoNoDisponible(final LocalDate fecha, final boolean yaNoDisponible, final Function0<Unit> onConfirmar, final Function0<Unit> onDismiss, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(onConfirmar, "onConfirmar");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer $composer3 = $composer.startRestartGroup(2137357987);
        ComposerKt.sourceInformation($composer3, "C(DialogoNoDisponible)N(fecha,yaNoDisponible,onConfirmar,onDismiss)824@35110L407,834@35543L104,800@34021L247,807@34285L799,798@33954L1699:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(fecha) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(yaNoDisponible) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onConfirmar) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changedInstance(onDismiss) ? 2048 : 1024;
        }
        if (!$composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2137357987, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible (PsicologoAgendaScreen.kt:795)");
            }
            final DateTimeFormatter formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            $composer2 = $composer3;
            AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0(onDismiss, ComposableLambdaKt.rememberComposableLambda(-506379429, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda67
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$138(yaNoDisponible, onConfirmar, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableLambdaKt.rememberComposableLambda(1714354713, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda68
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$139(onDismiss, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableLambdaKt.rememberComposableLambda(-359878441, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda69
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$140(yaNoDisponible, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), ComposableLambdaKt.rememberComposableLambda(-1396995018, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$142(yaNoDisponible, fecha, formatterFecha, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer2, (($dirty >> 9) & 14) | 1772592, 0, 16276);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda71
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$143(fecha, yaNoDisponible, onConfirmar, onDismiss, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit DialogoNoDisponible$lambda$140(boolean $yaNoDisponible, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C803@34177L10,801@34035L223:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-359878441, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible.<anonymous> (PsicologoAgendaScreen.kt:801)");
            }
            TextKt.m2976Text4IGK_g($yaNoDisponible ? "✅ Habilitar día" : "🚫 Marcar como no disponible", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoNoDisponible$lambda$142(boolean $yaNoDisponible, LocalDate $fecha, DateTimeFormatter $formatterFecha, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Composer composer;
        String str;
        ComposerKt.sourceInformation($composer, "C808@34299L775:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1396995018, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible.<anonymous> (PsicologoAgendaScreen.kt:808)");
            }
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1266531755, "C809@34374L349:PsicologoAgendaScreen.kt#j2aa7e");
            if ($yaNoDisponible) {
                composer = $composer;
                str = "¿Deseas volver a habilitar el día " + $fecha.format($formatterFecha) + " para recibir citas?";
            } else {
                composer = $composer;
                str = "¿Deseas marcar el día " + $fecha.format($formatterFecha) + " como no disponible? No se podrán agendar citas en esta fecha.";
            }
            TextKt.m2976Text4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 0, 0, 131070);
            Composer composer2 = composer;
            if ($yaNoDisponible) {
                composer2.startReplaceGroup(-1300653022);
            } else {
                composer2.startReplaceGroup(-1266159849);
                ComposerKt.sourceInformation(composer2, "818@34924L10,819@34992L11,816@34783L259");
                TextKt.m2976Text4IGK_g("Las citas existentes no se cancelarán automáticamente.", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer2, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer2, MaterialTheme.$stable).getBodySmall(), composer2, 6, 0, 65530);
            }
            composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoNoDisponible$lambda$138(final boolean $yaNoDisponible, Function0 $onConfirmar, Composer $composer, int $changed) {
        ButtonColors buttonColors;
        ComposerKt.sourceInformation($composer, "C830@35410L97,825@35124L383:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-506379429, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible.<anonymous> (PsicologoAgendaScreen.kt:825)");
            }
            if ($yaNoDisponible) {
                $composer.startReplaceGroup(-1299322935);
                ComposerKt.sourceInformation($composer, "827@35231L14");
                ButtonColors buttonColors2 = ButtonDefaults.INSTANCE.buttonColors($composer, ButtonDefaults.$stable);
                $composer.endReplaceGroup();
                buttonColors = buttonColors2;
            } else {
                $composer.startReplaceGroup(-1299321255);
                ComposerKt.sourceInformation($composer, "828@35326L11,828@35282L62");
                ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError(), 0L, 0L, 0L, $composer, ButtonDefaults.$stable << 12, 14);
                $composer.endReplaceGroup();
                buttonColors = buttonColorsM2092buttonColorsro_MJ88;
            }
            ButtonKt.Button($onConfirmar, null, false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), buttonColors, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1282556267, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.DialogoNoDisponible$lambda$138$lambda$137($yaNoDisponible, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 805306368, 486);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoNoDisponible$lambda$138$lambda$137(boolean $yaNoDisponible, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C831@35428L65:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1282556267, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:831)");
            }
            TextKt.m2976Text4IGK_g($yaNoDisponible ? "Habilitar" : "Marcar no disponible", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoNoDisponible$lambda$139(Function0 $onDismiss, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C835@35557L80:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1714354713, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoNoDisponible.<anonymous> (PsicologoAgendaScreen.kt:835)");
            }
            ButtonKt.TextButton($onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10448getLambda$2090883972$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03b7 A[LOOP:0: B:170:0x0356->B:186:0x03b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x03c3 A[EDGE_INSN: B:308:0x03c3->B:188:0x03c3 BREAK  A[LOOP:0: B:170:0x0356->B:186:0x03b7], SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DialogoCrearEditarCita(final AgendaItemDTO agendaItemDTO, final LocalDate fechaInicial, final List<PacientePsicologoResponseDTO> pacientes, final String str, final List<TerapiaResponseDTO> terapias, final Function0<Unit> onRecargarPacientes, final List<FranjaDisponibilidadResponse> slotsLibres, final Function1<? super LocalDate, Unit> onFechaChange, final Function8<? super Long, ? super LocalDate, ? super LocalTime, ? super Integer, ? super String, ? super Long, ? super MetodoPago, ? super BigDecimal, Unit> onConfirmar, final Function0<Unit> onDismiss, Composer composer, final int i) {
        Composer composer2;
        boolean z;
        String upperCase;
        String metodoPago;
        PacientePsicologoResponseDTO pacientePsicologoResponseDTO;
        Object obj;
        TerapiaResponseDTO terapiaResponseDTO;
        Object next;
        Long idTipoTerapia;
        Object next2;
        MutableState mutableState;
        Object obj2;
        Object objSorted;
        MutableState mutableState2;
        MutableIntState mutableIntState;
        Object next3;
        List<PacientePsicologoResponseDTO> list;
        int i2;
        Iterator it;
        boolean z2;
        BigDecimal monto;
        Object string;
        Integer duracionMinutos;
        String motivo;
        LocalDate fecha;
        Intrinsics.checkNotNullParameter(fechaInicial, "fechaInicial");
        Intrinsics.checkNotNullParameter(pacientes, "pacientes");
        Intrinsics.checkNotNullParameter(terapias, "terapias");
        Intrinsics.checkNotNullParameter(onRecargarPacientes, "onRecargarPacientes");
        Intrinsics.checkNotNullParameter(slotsLibres, "slotsLibres");
        Intrinsics.checkNotNullParameter(onFechaChange, "onFechaChange");
        Intrinsics.checkNotNullParameter(onConfirmar, "onConfirmar");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer composerStartRestartGroup = composer.startRestartGroup(1821967014);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(DialogoCrearEditarCita)N(citaAEditar,fechaInicial,pacientes,pacientesError,terapias,onRecargarPacientes,slotsLibres,onFechaChange,onConfirmar,onDismiss)860@36429L11,864@36599L63,865@36681L54,866@36763L66,869@36924L177,875@37136L46,878@37263L74,881@37355L41,882@37419L34,891@37739L44,892@37820L34,895@37947L270,902@38249L43,903@38328L34,905@38391L456,919@38877L171,925@39081L34,927@39157L101,927@39121L137,933@39311L176,933@39264L223,1408@63046L1723,1445@64795L104,947@39769L571,963@40357L22663,945@39702L25203:PsicologoAgendaScreen.kt#j2aa7e");
        int i3 = i;
        if ((i & 6) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(agendaItemDTO) ? 4 : 2;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(fechaInicial) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(pacientes) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(str) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(terapias) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onRecargarPacientes) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(slotsLibres) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onFechaChange) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onConfirmar) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(onDismiss) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (composerStartRestartGroup.shouldExecute((306783379 & i3) != 306783378, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                z = false;
                ComposerKt.traceEventStart(1821967014, i3, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita (PsicologoAgendaScreen.kt:858)");
            } else {
                z = false;
            }
            final boolean z3 = agendaItemDTO != null ? true : z;
            final ColorScheme colorScheme = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, MaterialTheme.$stable);
            final DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            final DateTimeFormatter dateTimeFormatterOfPattern2 = DateTimeFormatter.ofPattern("HH:mm");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436328411, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default((agendaItemDTO == null || (fecha = agendaItemDTO.getFecha()) == null) ? fechaInicial : fecha, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final MutableState mutableState3 = (MutableState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436325796, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            Object obj3 = "";
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default((agendaItemDTO == null || (motivo = agendaItemDTO.getMotivo()) == null) ? "" : motivo, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue2 = objMutableStateOf$default;
            }
            final MutableState mutableState4 = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436323160, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object objMutableIntStateOf = SnapshotIntStateKt.mutableIntStateOf((agendaItemDTO == null || (duracionMinutos = agendaItemDTO.getDuracionMinutos()) == null) ? 60 : duracionMinutos.intValue());
                composerStartRestartGroup.updateRememberedValue(objMutableIntStateOf);
                objRememberedValue3 = objMutableIntStateOf;
            }
            MutableIntState mutableIntState2 = (MutableIntState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436317897, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged = composerStartRestartGroup.changed(agendaItemDTO);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                if (agendaItemDTO == null || (metodoPago = agendaItemDTO.getMetodoPago()) == null) {
                    upperCase = null;
                    Object obj4 = !Intrinsics.areEqual(upperCase, "ONLINE") ? MetodoPago.ONLINE : MetodoPago.PRESENCIAL;
                    composerStartRestartGroup.updateRememberedValue(obj4);
                    objRememberedValue4 = obj4;
                } else {
                    upperCase = metodoPago.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    if (!Intrinsics.areEqual(upperCase, "ONLINE")) {
                    }
                    composerStartRestartGroup.updateRememberedValue(obj4);
                    objRememberedValue4 = obj4;
                }
            }
            MetodoPago metodoPago2 = (MetodoPago) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436311244, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(metodoPago2, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            final MutableState mutableState5 = (MutableState) objRememberedValue5;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436307152, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged2 = composerStartRestartGroup.changed(agendaItemDTO);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                if (agendaItemDTO != null && (monto = agendaItemDTO.getMonto()) != null && (string = monto.toString()) != null) {
                    obj3 = string;
                }
                Object obj5 = obj3;
                composerStartRestartGroup.updateRememberedValue(obj5);
                objRememberedValue6 = obj5;
            }
            String str2 = (String) objRememberedValue6;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436304241, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(str2, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue7 = objMutableStateOf$default2;
            }
            final MutableState mutableState6 = (MutableState) objRememberedValue7;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436302200, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default3);
                objRememberedValue8 = objMutableStateOf$default3;
            }
            final MutableState mutableState7 = (MutableState) objRememberedValue8;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            if (!z3 || agendaItemDTO == null) {
                pacientePsicologoResponseDTO = null;
            } else {
                List<PacientePsicologoResponseDTO> list2 = pacientes;
                int i4 = 0;
                Iterator it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it2.next();
                    PacientePsicologoResponseDTO pacientePsicologoResponseDTO2 = (PacientePsicologoResponseDTO) next3;
                    Long idPaciente = pacientePsicologoResponseDTO2.getIdPaciente();
                    long id = agendaItemDTO.getId();
                    if (idPaciente != null && idPaciente.longValue() == id) {
                        list = list2;
                        i2 = i4;
                        it = it2;
                    } else {
                        list = list2;
                        i2 = i4;
                        it = it2;
                        if (!Intrinsics.areEqual(pacientePsicologoResponseDTO2.getNombre() + " " + pacientePsicologoResponseDTO2.getApellido(), agendaItemDTO.getNombrePaciente())) {
                            z2 = z;
                        }
                        if (!z2) {
                            break;
                        }
                        list2 = list;
                        i4 = i2;
                        it2 = it;
                    }
                    z2 = true;
                    if (!z2) {
                    }
                }
                pacientePsicologoResponseDTO = (PacientePsicologoResponseDTO) next3;
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436291950, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(pacientePsicologoResponseDTO, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default4);
                objRememberedValue9 = objMutableStateOf$default4;
            }
            final MutableState mutableState8 = (MutableState) objRememberedValue9;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436289368, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue10 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue10 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue10 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
            }
            final MutableState mutableState9 = (MutableState) objRememberedValue10;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436285068, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged3 = composerStartRestartGroup.changed(agendaItemDTO) | composerStartRestartGroup.changed(terapias);
            Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
            if (zChanged3 || objRememberedValue11 == Composer.INSTANCE.getEmpty()) {
                if (agendaItemDTO == null || (idTipoTerapia = agendaItemDTO.getIdTipoTerapia()) == null) {
                    if (agendaItemDTO == null || (terapiaResponseDTO = agendaItemDTO.getTerapiaResponseDTO()) == null) {
                        obj = null;
                    } else {
                        Iterator<T> it3 = terapias.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                next = it3.next();
                                if (((TerapiaResponseDTO) next).getIdTipo() == terapiaResponseDTO.getIdTipo() ? true : z) {
                                    break;
                                }
                            } else {
                                next = null;
                                break;
                            }
                        }
                        obj = (TerapiaResponseDTO) next;
                    }
                    Object obj6 = obj;
                    composerStartRestartGroup.updateRememberedValue(obj6);
                    objRememberedValue11 = obj6;
                } else {
                    long jLongValue = idTipoTerapia.longValue();
                    Iterator<T> it4 = terapias.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            next2 = it4.next();
                            if (((TerapiaResponseDTO) next2).getIdTipo() == jLongValue ? true : z) {
                                break;
                            }
                        } else {
                            next2 = null;
                            break;
                        }
                    }
                    Object obj7 = (TerapiaResponseDTO) next2;
                    if (obj7 != null) {
                        obj = obj7;
                    }
                    Object obj62 = obj;
                    composerStartRestartGroup.updateRememberedValue(obj62);
                    objRememberedValue11 = obj62;
                }
            }
            TerapiaResponseDTO terapiaResponseDTO2 = (TerapiaResponseDTO) objRememberedValue11;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436275631, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue12 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(terapiaResponseDTO2, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default5);
                objRememberedValue12 = objMutableStateOf$default5;
            }
            final MutableState mutableState10 = (MutableState) objRememberedValue12;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436273112, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue13 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue13 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default6);
                objRememberedValue13 = objMutableStateOf$default6;
            }
            MutableState mutableState11 = (MutableState) objRememberedValue13;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Object objDialogoCrearEditarCita$lambda$145 = DialogoCrearEditarCita$lambda$145(mutableState3);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436270674, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged4 = composerStartRestartGroup.changed(objDialogoCrearEditarCita$lambda$145) | composerStartRestartGroup.changed(slotsLibres) | composerStartRestartGroup.changed(agendaItemDTO);
            Object objRememberedValue14 = composerStartRestartGroup.rememberedValue();
            if (zChanged4 || objRememberedValue14 == Composer.INSTANCE.getEmpty()) {
                int i5 = 0;
                ArrayList arrayList = new ArrayList();
                for (Object obj8 : slotsLibres) {
                    int i6 = i5;
                    if (((FranjaDisponibilidadResponse) obj8).getOcupado()) {
                        mutableState2 = mutableState11;
                    } else {
                        mutableState2 = mutableState11;
                        arrayList.add(obj8);
                    }
                    i5 = i6;
                    mutableState11 = mutableState2;
                }
                mutableState = mutableState11;
                ArrayList arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it5 = arrayList2.iterator();
                while (it5.hasNext()) {
                    arrayList3.add(((FranjaDisponibilidadResponse) it5.next()).getHora());
                    arrayList2 = arrayList2;
                }
                List listSorted = CollectionsKt.sorted(arrayList3);
                if (!z3 || agendaItemDTO == null) {
                    obj2 = listSorted;
                } else {
                    LocalTime horaInicio = agendaItemDTO.getHoraInicio();
                    if (listSorted.contains(horaInicio)) {
                        obj2 = listSorted;
                    } else {
                        objSorted = CollectionsKt.sorted(CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.listOf(horaInicio), (Iterable) listSorted)));
                        composerStartRestartGroup.updateRememberedValue(objSorted);
                        objRememberedValue14 = objSorted;
                    }
                }
                objSorted = obj2;
                composerStartRestartGroup.updateRememberedValue(objSorted);
                objRememberedValue14 = objSorted;
            } else {
                mutableState = mutableState11;
            }
            final List list3 = (List) objRememberedValue14;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436255407, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue15 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue15 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default((!z3 || agendaItemDTO == null) ? (LocalTime) CollectionsKt.firstOrNull(list3) : agendaItemDTO.getHoraInicio(), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default7);
                objRememberedValue15 = objMutableStateOf$default7;
            }
            final MutableState mutableState12 = (MutableState) objRememberedValue15;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436249016, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue16 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue16 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default8 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default8);
                objRememberedValue16 = objMutableStateOf$default8;
            }
            final MutableState mutableState13 = (MutableState) objRememberedValue16;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$177 = DialogoCrearEditarCita$lambda$177(mutableState10);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436246517, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue17 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue17 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue17 = (Function2) new PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1(mutableState10, mutableIntState2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue17);
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            EffectsKt.LaunchedEffect(terapiaResponseDTODialogoCrearEditarCita$lambda$177, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue17, composerStartRestartGroup, z ? 1 : 0);
            LocalDate localDateDialogoCrearEditarCita$lambda$145 = DialogoCrearEditarCita$lambda$145(mutableState3);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1436241514, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged5 = composerStartRestartGroup.changed(z3) | composerStartRestartGroup.changedInstance(list3);
            Object objRememberedValue18 = composerStartRestartGroup.rememberedValue();
            if (zChanged5 || objRememberedValue18 == Composer.INSTANCE.getEmpty()) {
                mutableIntState = mutableIntState2;
                Object obj9 = (Function2) new PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1(z3, list3, mutableState12, null);
                composerStartRestartGroup.updateRememberedValue(obj9);
                objRememberedValue18 = obj9;
            } else {
                mutableIntState = mutableIntState2;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            EffectsKt.LaunchedEffect(localDateDialogoCrearEditarCita$lambda$145, slotsLibres, (Function2) objRememberedValue18, composerStartRestartGroup, (i3 >> 15) & 112);
            int i7 = i3;
            final MutableIntState mutableIntState3 = mutableIntState;
            Function2 function2 = new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda81
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$198(list3, z3, onConfirmar, onDismiss, mutableState8, mutableState12, mutableState10, mutableState5, mutableState7, mutableState6, mutableState3, mutableIntState3, mutableState4, (Composer) obj10, ((Integer) obj11).intValue());
                }
            };
            final boolean z4 = z3;
            final MutableState mutableState14 = mutableState;
            composer2 = composerStartRestartGroup;
            AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0(onDismiss, ComposableLambdaKt.rememberComposableLambda(439202542, true, function2, composerStartRestartGroup, 54), null, ComposableLambdaKt.rememberComposableLambda(791859056, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda82
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$199(onDismiss, (Composer) obj10, ((Integer) obj11).intValue());
                }
            }, composerStartRestartGroup, 54), null, ComposableLambdaKt.rememberComposableLambda(1144515570, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda83
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$201(z4, colorScheme, (Composer) obj10, ((Integer) obj11).intValue());
                }
            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1320843827, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda84
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288(colorScheme, list3, z4, mutableState9, mutableState8, str, onRecargarPacientes, pacientes, mutableState14, mutableState10, terapias, onFechaChange, mutableState3, dateTimeFormatterOfPattern, mutableState13, dateTimeFormatterOfPattern2, mutableState12, mutableIntState3, mutableState4, mutableState5, mutableState7, mutableState6, (Composer) obj10, ((Integer) obj11).intValue());
                }
            }, composerStartRestartGroup, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, composer2, ((i7 >> 27) & 14) | 1772592, 0, 16276);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda85
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$289(agendaItemDTO, fechaInicial, pacientes, str, terapias, onRecargarPacientes, slotsLibres, onFechaChange, onConfirmar, onDismiss, i, (Composer) obj10, ((Integer) obj11).intValue());
                }
            });
        }
    }

    private static final LocalDate DialogoCrearEditarCita$lambda$145(MutableState<LocalDate> mutableState) {
        return mutableState.getValue();
    }

    private static final String DialogoCrearEditarCita$lambda$148(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    private static final int DialogoCrearEditarCita$lambda$151(MutableIntState $duracionMinutos$delegate) {
        return $duracionMinutos$delegate.getIntValue();
    }

    private static final MetodoPago DialogoCrearEditarCita$lambda$155(MutableState<MetodoPago> mutableState) {
        return mutableState.getValue();
    }

    private static final String DialogoCrearEditarCita$lambda$159(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean DialogoCrearEditarCita$lambda$162(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void DialogoCrearEditarCita$lambda$163(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final PacientePsicologoResponseDTO DialogoCrearEditarCita$lambda$166(MutableState<PacientePsicologoResponseDTO> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean DialogoCrearEditarCita$lambda$169(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void DialogoCrearEditarCita$lambda$170(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TerapiaResponseDTO DialogoCrearEditarCita$lambda$177(MutableState<TerapiaResponseDTO> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean DialogoCrearEditarCita$lambda$180(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void DialogoCrearEditarCita$lambda$181(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalTime DialogoCrearEditarCita$lambda$186(MutableState<LocalTime> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean DialogoCrearEditarCita$lambda$189(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void DialogoCrearEditarCita$lambda$190(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final boolean DialogoCrearEditarCita$validarMonto(String input) {
        Throwable th;
        Object objM8542constructorimpl;
        if (StringsKt.isBlank(input)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                objM8542constructorimpl = Result.m8542constructorimpl(new BigDecimal(StringsKt.replace$default(input, ",", ".", false, 4, (Object) null)));
            } catch (Throwable th2) {
                th = th2;
                Result.Companion companion2 = Result.INSTANCE;
                objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return Result.m8549isSuccessimpl(objM8542constructorimpl);
    }

    static final Unit DialogoCrearEditarCita$lambda$201(boolean $esEdicion, ColorScheme $colors, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C948@39783L547:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1144515570, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous> (PsicologoAgendaScreen.kt:948)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1591417055, "C951@39937L10,949@39808L218:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g($esEdicion ? "✏️ Editar cita" : "📅 Nueva cita", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleLarge(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            if ($esEdicion) {
                $composer.startReplaceGroup(1551910778);
            } else {
                $composer.startReplaceGroup(1591658265);
                ComposerKt.sourceInformation($composer, "957@40199L10,955@40081L217");
                TextKt.m2976Text4IGK_g("Completa los datos para agendar", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 6, 0, 65530);
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288(final ColorScheme $colors, final List $horasDisponibles, final boolean $esEdicion, final MutableState $pacienteDropdownExpanded$delegate, final MutableState $pacienteSeleccionado$delegate, final String $pacientesError, final Function0 $onRecargarPacientes, final List $pacientes, final MutableState $terapiaDropdownExpanded$delegate, final MutableState $terapiaSeleccionada$delegate, final List $terapias, final Function1 $onFechaChange, final MutableState $fechaSeleccionada$delegate, final DateTimeFormatter $formatterFecha, MutableState $horaDropdownExpanded$delegate, final DateTimeFormatter $formatterHora, final MutableState $horaSeleccionada$delegate, final MutableIntState $duracionMinutos$delegate, MutableState $motivo$delegate, final MutableState $metodoPagoSeleccionado$delegate, final MutableState $montoError$delegate, final MutableState $monto$delegate, Composer $composer, int $changed) {
        final MutableState mutableState;
        final MutableState mutableState2;
        RoundedCornerShape roundedCornerShape;
        Composer composer;
        Composer composer2;
        ComposerKt.sourceInformation($composer, "C968@40531L21,964@40371L22639:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1320843827, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous> (PsicologoAgendaScreen.kt:964)");
            }
            Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(SizeKt.m852heightInVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(550), 1, null), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierVerticalScroll$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1842234620, "C974@40786L10,972@40694L186,979@41017L33,980@41069L3784,977@40897L3956,1052@45018L10,1050@44919L193,1057@45248L32,1058@45299L2840,1055@45129L3010,1115@48284L10,1113@48195L183,1121@48554L69,1122@48642L1884,1118@48395L2131,1162@50678L10,1160@50581L191,1167@50905L29,1168@50953L2855,1165@50789L3019,1232@54268L10,1230@54178L184,1239@54539L71,1240@54629L1214,1236@54380L1463,1270@55986L10,1268@55887L193,1275@56188L15,1273@56097L391,1286@56666L10,1284@56569L191,1293@56937L69,1294@57025L3254,1290@56778L3501:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("👤 Paciente *", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelMedium(), $composer, 196614, 0, 65502);
            boolean zDialogoCrearEditarCita$lambda$169 = DialogoCrearEditarCita$lambda$169($pacienteDropdownExpanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -79132342, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda56
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$203$lambda$202($pacienteDropdownExpanded$delegate, ((Boolean) obj).booleanValue());
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zDialogoCrearEditarCita$lambda$169, (Function1) objRememberedValue, null, ComposableLambdaKt.rememberComposableLambda(1323634623, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda58
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222($colors, $pacienteSeleccionado$delegate, $pacienteDropdownExpanded$delegate, $pacientesError, $onRecargarPacientes, $pacientes, (ExposedDropdownMenuBoxScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 3120, 4);
            TextKt.m2976Text4IGK_g("🩺 Tipo de terapia *", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelMedium(), $composer, 196614, 0, 65502);
            boolean zDialogoCrearEditarCita$lambda$180 = DialogoCrearEditarCita$lambda$180($terapiaDropdownExpanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -78996951, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda59
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$224$lambda$223($terapiaDropdownExpanded$delegate, ((Boolean) obj2).booleanValue());
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue2 = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zDialogoCrearEditarCita$lambda$180, (Function1) objRememberedValue2, null, ComposableLambdaKt.rememberComposableLambda(902724470, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda60
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238($colors, $terapiaSeleccionada$delegate, $terapiaDropdownExpanded$delegate, $terapias, (ExposedDropdownMenuBoxScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 3120, 4);
            TextKt.m2976Text4IGK_g("📆 Fecha *", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelMedium(), $composer, 196614, 0, 65502);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long surfaceVariant = $colors.getSurfaceVariant();
            Composer composer3 = $composer;
            CardKt.Card(modifierFillMaxWidth$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(surfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant) : 0.0f), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(1183773211, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda61
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246($onFechaChange, $fechaSeleccionada$delegate, $formatterFecha, $colors, (ColumnScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, composer3, 54), composer3, 196614, 24);
            TextKt.m2976Text4IGK_g("⏰ Hora de inicio *", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getLabelMedium(), composer3, 196614, 0, 65502);
            boolean zDialogoCrearEditarCita$lambda$189 = DialogoCrearEditarCita$lambda$189($horaDropdownExpanded$delegate);
            ComposerKt.sourceInformationMarkerStart(composer3, -78815930, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue3 = composer3.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                mutableState = $horaDropdownExpanded$delegate;
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda62
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$248$lambda$247(mutableState, ((Boolean) obj3).booleanValue());
                    }
                };
                composer3.updateRememberedValue(obj2);
                objRememberedValue3 = obj2;
            } else {
                mutableState = $horaDropdownExpanded$delegate;
            }
            ComposerKt.sourceInformationMarkerEnd(composer3);
            final MutableState mutableState3 = mutableState;
            ExposedDropdownMenu_androidKt.ExposedDropdownMenuBox(zDialogoCrearEditarCita$lambda$189, (Function1) objRememberedValue3, null, ComposableLambdaKt.rememberComposableLambda(953409463, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda63
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263($formatterHora, $horasDisponibles, $esEdicion, $horaSeleccionada$delegate, mutableState3, $colors, (ExposedDropdownMenuBoxScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, composer3, 54), composer3, 3120, 4);
            if (!$horasDisponibles.isEmpty() || $esEdicion) {
                composer3.startReplaceGroup(1801173817);
            } else {
                composer3.startReplaceGroup(1854622932);
                ComposerKt.sourceInformation(composer3, "1224@54026L10,1222@53893L221");
                TextKt.m2976Text4IGK_g("⚠️ No hay horarios disponibles para esta fecha", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getBodySmall(), composer3, 6, 0, 65530);
            }
            composer3.endReplaceGroup();
            TextKt.m2976Text4IGK_g("⏱️ Duración", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getLabelMedium(), composer3, 196614, 0, 65502);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            CardDefaults cardDefaults2 = CardDefaults.INSTANCE;
            long primaryContainer = $colors.getPrimaryContainer();
            CardKt.Card(modifierFillMaxWidth$default2, roundedCornerShapeM1126RoundedCornerShape0680j_42, cardDefaults2.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(primaryContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primaryContainer) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(primaryContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primaryContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primaryContainer) : 0.0f), 0L, 0L, 0L, composer3, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-360106286, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda64
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$266($colors, $terapiaSeleccionada$delegate, $duracionMinutos$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, composer3, 54), composer3, 196614, 24);
            TextKt.m2976Text4IGK_g("📝 Motivo de la cita", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getLabelMedium(), composer3, 196614, 0, 65502);
            String strDialogoCrearEditarCita$lambda$148 = DialogoCrearEditarCita$lambda$148($motivo$delegate);
            Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_43 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart(composer3, -78646888, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue4 = composer3.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                roundedCornerShape = roundedCornerShapeM1126RoundedCornerShape0680j_43;
                mutableState2 = $motivo$delegate;
                Object obj3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda65
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$268$lambda$267(mutableState2, (String) obj4);
                    }
                };
                composer3.updateRememberedValue(obj3);
                objRememberedValue4 = obj3;
            } else {
                mutableState2 = $motivo$delegate;
                roundedCornerShape = roundedCornerShapeM1126RoundedCornerShape0680j_43;
            }
            ComposerKt.sourceInformationMarkerEnd(composer3);
            OutlinedTextFieldKt.OutlinedTextField(strDialogoCrearEditarCita$lambda$148, (Function1<? super String, Unit>) objRememberedValue4, modifierFillMaxWidth$default3, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$2091009890$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 3, 2, (MutableInteractionSource) null, (Shape) roundedCornerShape, (TextFieldColors) null, composer3, 12583344, 905969664, 0, 5504888);
            TextKt.m2976Text4IGK_g("💳 Forma de pago *", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getLabelMedium(), composer3, 196614, 0, 65502);
            Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_44 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            CardDefaults cardDefaults3 = CardDefaults.INSTANCE;
            long surfaceVariant2 = $colors.getSurfaceVariant();
            CardKt.Card(modifierFillMaxWidth$default4, roundedCornerShapeM1126RoundedCornerShape0680j_44, cardDefaults3.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(surfaceVariant2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(surfaceVariant2) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(surfaceVariant2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(surfaceVariant2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(surfaceVariant2) : 0.0f), 0L, 0L, 0L, composer3, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-309421293, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda66
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284($metodoPagoSeleccionado$delegate, $montoError$delegate, $monto$delegate, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, composer3, 54), composer3, 196614, 24);
            if (DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate) != null && DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate) != null && DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate) != null && !$esEdicion) {
                composer3.startReplaceGroup(1861220135);
                ComposerKt.sourceInformation(composer3, "1359@60472L40,1363@60704L125,1366@60852L2126,1360@60533L2445");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer3, 6);
                Modifier modifierFillMaxWidth$default5 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_45 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                CardDefaults cardDefaults4 = CardDefaults.INSTANCE;
                long primaryContainer2 = $colors.getPrimaryContainer();
                composer = $composer;
                composer2 = $composer;
                final MutableState mutableState4 = mutableState2;
                CardKt.Card(modifierFillMaxWidth$default5, roundedCornerShapeM1126RoundedCornerShape0680j_45, cardDefaults4.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(primaryContainer2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primaryContainer2) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(primaryContainer2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primaryContainer2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primaryContainer2) : 0.0f), 0L, 0L, 0L, composer3, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-157609235, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda57
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj4, Object obj5, Object obj6) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$286($colors, $formatterFecha, $formatterHora, $pacienteSeleccionado$delegate, $terapiaSeleccionada$delegate, $fechaSeleccionada$delegate, $horaSeleccionada$delegate, $duracionMinutos$delegate, $metodoPagoSeleccionado$delegate, $monto$delegate, mutableState4, (ColumnScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, composer3, 54), composer3, 196614, 24);
                composer3 = composer3;
            } else {
                composer = $composer;
                composer2 = $composer;
                composer3.startReplaceGroup(1801173817);
            }
            composer3.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$203$lambda$202(MutableState $pacienteDropdownExpanded$delegate, boolean it) {
        DialogoCrearEditarCita$lambda$170($pacienteDropdownExpanded$delegate, it);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222(final ColorScheme $colors, final MutableState $pacienteSeleccionado$delegate, final MutableState $pacienteDropdownExpanded$delegate, final String $pacientesError, final Function0 $onRecargarPacientes, final List $pacientes, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C992@41821L164,983@41249L2,986@41407L81,981@41091L916,999@42153L36,1000@42212L2623,997@42028L2807:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1323634623, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:981)");
            }
            PacientePsicologoResponseDTO pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 = DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate);
            if (pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 != null) {
                String str = pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166.getNombre() + " " + pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166.getApellido();
                if (str == null) {
                    str = "";
                }
                Modifier modifierMo2366menuAnchorfsE2BvY = ExposedDropdownMenuBox.mo2366menuAnchorfsE2BvY(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), true);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $colors.getPrimary(), $colors.getOutline(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 0, 0, 0, 3072, 2147477503, 4095);
                ComposerKt.sourceInformationMarkerStart($composer, 702558849, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda40
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$206$lambda$205((String) obj2);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue, modifierMo2366menuAnchorfsE2BvY, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10453getLambda$677422856$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-1488706762, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda41
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$207($pacienteDropdownExpanded$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, textFieldColorsM2626colors0hiis_0, $composer, 817913904, 12582912, 0, 1965416);
                boolean zDialogoCrearEditarCita$lambda$169 = DialogoCrearEditarCita$lambda$169($pacienteDropdownExpanded$delegate);
                ComposerKt.sourceInformationMarkerStart($composer, 702587811, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue2 = $composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda42
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$209$lambda$208($pacienteDropdownExpanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zDialogoCrearEditarCita$lambda$169, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1005188221, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda43
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj3, Object obj4, Object obj5) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221($pacientesError, $onRecargarPacientes, $pacientes, $colors, $pacienteDropdownExpanded$delegate, $pacienteSeleccionado$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty << 3) & 112), 1020);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$206$lambda$205(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$207(MutableState $pacienteDropdownExpanded$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C986@41437L49:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1488706762, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:986)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(DialogoCrearEditarCita$lambda$169($pacienteDropdownExpanded$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$209$lambda$208(MutableState $pacienteDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$170($pacienteDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221(final String $pacientesError, final Function0 $onRecargarPacientes, List $pacientes, final ColorScheme $colors, final MutableState $pacienteDropdownExpanded$delegate, final MutableState $pacienteSeleccionado$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        String str;
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C:PsicologoAgendaScreen.kt#j2aa7e");
        boolean z = true;
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1005188221, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1001)");
            }
            int i = 54;
            String str2 = "CC(remember):PsicologoAgendaScreen.kt#9igjgp";
            if ($pacientesError != null) {
                composer.startReplaceGroup(1050413779);
                ComposerKt.sourceInformation(composer, "1005@42462L336,1011@42846L25,1004@42401L622");
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1448490437, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda89
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$211($colors, $pacientesError, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -381740906, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                boolean zChanged = composer.changed($onRecargarPacientes);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda90
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$213$lambda$212($onRecargarPacientes);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10445getLambda$1011479160$app(), null, false, null, null, null, composer, 3078, LogSeverity.ERROR_VALUE);
                composer.endReplaceGroup();
            } else if ($pacientes.isEmpty()) {
                composer.startReplaceGroup(1051200311);
                ComposerKt.sourceInformation(composer, "1018@43286L36,1016@43139L270");
                Function2<Composer, Integer, Unit> lambda$1743785710$app = ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1743785710$app();
                ComposerKt.sourceInformationMarkerStart(composer, -381726815, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue2 = $composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda91
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$215$lambda$214($pacienteDropdownExpanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(lambda$1743785710$app, (Function0) objRememberedValue2, null, null, null, false, null, null, null, composer, 196662, 476);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(1051598630);
                ComposerKt.sourceInformation(composer, "*1025@43643L794,1038@44489L196,1024@43578L1145");
                Iterator it = $pacientes.iterator();
                while (it.hasNext()) {
                    final PacientePsicologoResponseDTO pacientePsicologoResponseDTO = (PacientePsicologoResponseDTO) it.next();
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(240630783, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda92
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$220$lambda$217(pacientePsicologoResponseDTO, $colors, (Composer) obj3, ((Integer) obj4).intValue());
                        }
                    }, composer, i);
                    ComposerKt.sourceInformationMarkerStart(composer, 1556869875, str2);
                    boolean zChangedInstance = composer.changedInstance(pacientePsicologoResponseDTO);
                    Object objRememberedValue3 = $composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        str = str2;
                        Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda93
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$220$lambda$219$lambda$218(pacientePsicologoResponseDTO, $pacienteSeleccionado$delegate, $pacienteDropdownExpanded$delegate);
                            }
                        };
                        $composer.updateRememberedValue(obj3);
                        objRememberedValue3 = obj3;
                    } else {
                        str = str2;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda2, (Function0) objRememberedValue3, null, null, null, false, null, null, null, composer, 6, 508);
                    composer = $composer;
                    i = 54;
                    str2 = str;
                    z = z;
                }
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$211(ColorScheme $colors, String $errorMsg, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C1006@42504L256:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1448490437, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1006)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 220246695, "C1007@42557L58,1008@42697L10,1008@42660L58:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("⚠️ Error al cargar pacientes", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
            TextKt.m2976Text4IGK_g($errorMsg, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$213$lambda$212(Function0 $onRecargarPacientes) {
        $onRecargarPacientes.invoke();
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$215$lambda$214(MutableState $pacienteDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$170($pacienteDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$220$lambda$217(PacientePsicologoResponseDTO $paciente, ColorScheme $colors, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C1026@43689L706:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(240630783, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1026)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -558413473, "C1027@43746L245,1033@44194L10,1031@44040L309:PsicologoAgendaScreen.kt#j2aa7e");
            String nombre = $paciente.getNombre();
            if (nombre == null) {
                nombre = "";
            }
            String apellido = $paciente.getApellido();
            TextKt.m2976Text4IGK_g(nombre + " " + (apellido != null ? apellido : ""), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            String email = $paciente.getEmail();
            TextKt.m2976Text4IGK_g(email == null ? "" : email, (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$222$lambda$221$lambda$220$lambda$219$lambda$218(PacientePsicologoResponseDTO $paciente, MutableState $pacienteSeleccionado$delegate, MutableState $pacienteDropdownExpanded$delegate) {
        $pacienteSeleccionado$delegate.setValue($paciente);
        DialogoCrearEditarCita$lambda$170($pacienteDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$224$lambda$223(MutableState $terapiaDropdownExpanded$delegate, boolean it) {
        DialogoCrearEditarCita$lambda$181($terapiaDropdownExpanded$delegate, it);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238(final ColorScheme $colors, final MutableState $terapiaSeleccionada$delegate, final MutableState $terapiaDropdownExpanded$delegate, final List $terapias, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        String nombre;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C1071@46131L164,1061@45447L2,1065@45718L80,1059@45321L996,1078@46462L35,1079@46520L1601,1076@46338L1783:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(902724470, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1059)");
            }
            TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$177 = DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate);
            if (terapiaResponseDTODialogoCrearEditarCita$lambda$177 == null || (nombre = terapiaResponseDTODialogoCrearEditarCita$lambda$177.getNombre()) == null) {
                nombre = "";
            }
            String str = nombre;
            Modifier modifierMo2366menuAnchorfsE2BvY = ExposedDropdownMenuBox.mo2366menuAnchorfsE2BvY(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), true);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            int $dirty2 = $dirty;
            TextFieldColors textFieldColorsM2626colors0hiis_0 = OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, $colors.getPrimary(), $colors.getOutline(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer, 0, 0, 0, 0, 3072, 2147477503, 4095);
            ComposerKt.sourceInformationMarkerStart($composer, -65173384, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda77
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$226$lambda$225((String) obj2);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(str, (Function1<? super String, Unit>) objRememberedValue, modifierMo2366menuAnchorfsE2BvY, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$2031835759$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$904459214$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-222917331, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda78
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$227($terapiaDropdownExpanded$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, textFieldColorsM2626colors0hiis_0, $composer, 918577200, 12582912, 0, 1965160);
            boolean zDialogoCrearEditarCita$lambda$180 = DialogoCrearEditarCita$lambda$180($terapiaDropdownExpanded$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, -65140871, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda79
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$229$lambda$228($terapiaDropdownExpanded$delegate);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zDialogoCrearEditarCita$lambda$180, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-181589836, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda80
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237($terapias, $terapiaDropdownExpanded$delegate, $colors, $terapiaSeleccionada$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty2 << 3) & 112), 1020);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$226$lambda$225(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$227(MutableState $terapiaDropdownExpanded$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1065@45748L48:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-222917331, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1065)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(DialogoCrearEditarCita$lambda$180($terapiaDropdownExpanded$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$229$lambda$228(MutableState $terapiaDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$181($terapiaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237(List $terapias, final MutableState $terapiaDropdownExpanded$delegate, final ColorScheme $colors, final MutableState $terapiaSeleccionada$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C:PsicologoAgendaScreen.kt#j2aa7e");
        boolean z = true;
        if (composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-181589836, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1080)");
            }
            String str = "CC(remember):PsicologoAgendaScreen.kt#9igjgp";
            if ($terapias.isEmpty()) {
                composer.startReplaceGroup(1916048144);
                ComposerKt.sourceInformation(composer, "1083@46748L35,1081@46600L262");
                Function2<Composer, Integer, Unit> function2M10446getLambda$1084290849$app = ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10446getLambda$1084290849$app();
                ComposerKt.sourceInformationMarkerStart(composer, 1585834071, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$231$lambda$230($terapiaDropdownExpanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(function2M10446getLambda$1084290849$app, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 196662, 476);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(1916397049);
                ComposerKt.sourceInformation(composer, "*1089@47047L733,1102@47828L181,1088@46986L1057");
                Iterator it = $terapias.iterator();
                while (it.hasNext()) {
                    final TerapiaResponseDTO terapiaResponseDTO = (TerapiaResponseDTO) it.next();
                    ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1008479517, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$236$lambda$233(terapiaResponseDTO, $colors, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, composer, 54);
                    ComposerKt.sourceInformationMarkerStart(composer, 530157378, str);
                    boolean zChanged = composer.changed(terapiaResponseDTO);
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$236$lambda$235$lambda$234(terapiaResponseDTO, $terapiaSeleccionada$delegate, $terapiaDropdownExpanded$delegate);
                            }
                        };
                        $composer.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue2, null, null, null, false, null, null, null, composer, 6, 508);
                    composer = $composer;
                    str = str;
                    z = true;
                }
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$231$lambda$230(MutableState $terapiaDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$181($terapiaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$236$lambda$233(TerapiaResponseDTO $terapia, ColorScheme $colors, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C1090@47089L653:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1008479517, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1090)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -67575282, "C1091@47142L194,1097@47553L10,1095@47381L319:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g($terapia.getNombre(), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            TextKt.m2976Text4IGK_g("Duración: " + $terapia.getDuracionMinutos() + " minutos", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$238$lambda$237$lambda$236$lambda$235$lambda$234(TerapiaResponseDTO $terapia, MutableState $terapiaSeleccionada$delegate, MutableState $terapiaDropdownExpanded$delegate) {
        $terapiaSeleccionada$delegate.setValue($terapia);
        DialogoCrearEditarCita$lambda$181($terapiaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0429  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246(final Function1 $onFechaChange, final MutableState $fechaSeleccionada$delegate, DateTimeFormatter $formatterFecha, ColorScheme $colors, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Composer composer;
        Composer composer2;
        Function0<ComposeUiNode> function02;
        String string;
        boolean zChanged;
        Object objRememberedValue;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C1123@48664L1844:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1183773211, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1123)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(8));
            Arrangement.Horizontal spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceEvenly, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 837361071, "C1130@49014L167,1130@48993L314,1136@49332L814,1150@50192L166,1150@50171L315:PsicologoAgendaScreen.kt#j2aa7e");
            ComposerKt.sourceInformationMarkerStart($composer, 719747654, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged2 = $composer.changed($onFechaChange);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChanged2) {
                composer = $composer;
            } else {
                composer = $composer;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                IconButtonKt.IconButton((Function0) objRememberedValue2, null, false, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1248535132$app(), composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
                composer2 = composer;
                Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                ComposerKt.sourceInformationMarkerStart(composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                int i4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifier);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i5 = ((i4 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    function02 = constructor2;
                    composer2.useNode();
                } else {
                    function02 = constructor2;
                    composer2.createNode(function02);
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer2);
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i6 = (i5 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i7 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer2, 2051621587, "C1139@49562L10,1137@49421L255,1146@50005L10,1142@49705L415:PsicologoAgendaScreen.kt#j2aa7e");
                String str = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).format($formatterFecha);
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                TextKt.m2976Text4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer2, MaterialTheme.$stable).getTitleMedium(), composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
                string = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).format(DateTimeFormatter.ofPattern("EEEE", Locale.forLanguageTag("es-ES")));
                Intrinsics.checkNotNullExpressionValue(string, "format(...)");
                if (string.length() <= 0) {
                    StringBuilder sb = new StringBuilder();
                    String strValueOf = String.valueOf(string.charAt(0));
                    Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    StringBuilder sbAppend = sb.append((Object) upperCase);
                    String strSubstring = string.substring(1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    string = sbAppend.append(strSubstring).toString();
                }
                TextKt.m2976Text4IGK_g(string, (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer2, MaterialTheme.$stable).getBodySmall(), composer2, 0, 0, 65530);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerStart(composer2, 719785349, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                zChanged = composer2.changed($onFechaChange);
                objRememberedValue = composer2.rememberedValue();
                if (!zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda73
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246$lambda$245$lambda$244$lambda$243($onFechaChange, $fechaSeleccionada$delegate);
                        }
                    };
                    composer2.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer2);
                IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10452getLambda$656858029$app(), composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda72
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246$lambda$245$lambda$240$lambda$239($onFechaChange, $fechaSeleccionada$delegate);
                }
            };
            $composer.updateRememberedValue(objRememberedValue2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            IconButtonKt.IconButton((Function0) objRememberedValue2, null, false, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1248535132$app(), composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            composer2 = composer;
            Alignment.Horizontal centerHorizontally2 = Alignment.INSTANCE.getCenterHorizontally();
            ComposerKt.sourceInformationMarkerStart(composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier2 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), centerHorizontally2, composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i42 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart(composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode22 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
            CompositionLocalMap currentCompositionLocalMap22 = composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer2, modifier2);
            Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
            int i52 = ((i42 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!(composer2.getApplier() instanceof Applier)) {
            }
            composer2.startReusableNode();
            if (composer2.getInserting()) {
            }
            Composer composerM3967constructorimpl22 = Updater.m3967constructorimpl(composer2);
            Updater.m3975setimpl(composerM3967constructorimpl22, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl22, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl22, Integer.valueOf(iHashCode22), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl22, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl22, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
            int i62 = (i52 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i72 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart(composer2, 2051621587, "C1139@49562L10,1137@49421L255,1146@50005L10,1142@49705L415:PsicologoAgendaScreen.kt#j2aa7e");
            String str2 = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).format($formatterFecha);
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            TextKt.m2976Text4IGK_g(str2, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer2, MaterialTheme.$stable).getTitleMedium(), composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            string = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).format(DateTimeFormatter.ofPattern("EEEE", Locale.forLanguageTag("es-ES")));
            Intrinsics.checkNotNullExpressionValue(string, "format(...)");
            if (string.length() <= 0) {
            }
            TextKt.m2976Text4IGK_g(string, (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography(composer2, MaterialTheme.$stable).getBodySmall(), composer2, 0, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerStart(composer2, 719785349, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            zChanged = composer2.changed($onFechaChange);
            objRememberedValue = composer2.rememberedValue();
            if (!zChanged) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda73
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246$lambda$245$lambda$244$lambda$243($onFechaChange, $fechaSeleccionada$delegate);
                    }
                };
                composer2.updateRememberedValue(obj2);
                objRememberedValue = obj2;
                ComposerKt.sourceInformationMarkerEnd(composer2);
                IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10452getLambda$656858029$app(), composer2, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246$lambda$245$lambda$240$lambda$239(Function1 $onFechaChange, MutableState $fechaSeleccionada$delegate) {
        LocalDate localDateMinusDays = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).minusDays(1L);
        Intrinsics.checkNotNullExpressionValue(localDateMinusDays, "minusDays(...)");
        $fechaSeleccionada$delegate.setValue(localDateMinusDays);
        $onFechaChange.invoke(DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate));
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$246$lambda$245$lambda$244$lambda$243(Function1 $onFechaChange, MutableState $fechaSeleccionada$delegate) {
        LocalDate localDatePlusDays = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).plusDays(1L);
        Intrinsics.checkNotNullExpressionValue(localDatePlusDays, "plusDays(...)");
        $fechaSeleccionada$delegate.setValue(localDatePlusDays);
        $onFechaChange.invoke(DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate));
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$248$lambda$247(MutableState $horaDropdownExpanded$delegate, boolean it) {
        DialogoCrearEditarCita$lambda$190($horaDropdownExpanded$delegate, it);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263(DateTimeFormatter $formatterHora, final List $horasDisponibles, final boolean $esEdicion, final MutableState $horaSeleccionada$delegate, final MutableState $horaDropdownExpanded$delegate, final ColorScheme $colors, ExposedDropdownMenuBoxScope ExposedDropdownMenuBox, Composer $composer, int $changed) {
        DateTimeFormatter dateTimeFormatter;
        String str;
        Object objRememberedValue;
        Object objRememberedValue2;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenuBox, "$this$ExposedDropdownMenuBox");
        ComposerKt.sourceInformation($composer, "C1171@51137L2,1174@51320L77,1169@50975L792,1184@51909L32,1185@51964L1826,1182@51788L2002:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer.changed(ExposedDropdownMenuBox) : $composer.changedInstance(ExposedDropdownMenuBox) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(953409463, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1169)");
            }
            LocalTime localTimeDialogoCrearEditarCita$lambda$186 = DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate);
            if (localTimeDialogoCrearEditarCita$lambda$186 != null) {
                dateTimeFormatter = $formatterHora;
                str = localTimeDialogoCrearEditarCita$lambda$186.format(dateTimeFormatter);
                if (str == null) {
                }
                String str2 = str;
                Modifier modifierMo2366menuAnchorfsE2BvY = ExposedDropdownMenuBox.mo2366menuAnchorfsE2BvY(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), true);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                boolean z = ($horasDisponibles.isEmpty() || $esEdicion) ? false : true;
                ComposerKt.sourceInformationMarkerStart($composer, 1398465785, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda8
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$250$lambda$249((String) obj2);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str2, (Function1<? super String, Unit>) objRememberedValue, modifierMo2366menuAnchorfsE2BvY, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$955144207$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-172232338, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$251($horaDropdownExpanded$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, (TextFieldColors) null, $composer, 905994288, 12582912, 0, 6151400);
                boolean zDialogoCrearEditarCita$lambda$189 = DialogoCrearEditarCita$lambda$189($horaDropdownExpanded$delegate);
                ComposerKt.sourceInformationMarkerStart($composer, 1398490519, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                objRememberedValue2 = $composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda10
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$253$lambda$252($horaDropdownExpanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                final DateTimeFormatter dateTimeFormatter2 = dateTimeFormatter;
                ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zDialogoCrearEditarCita$lambda$189, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-130904843, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj3, Object obj4, Object obj5) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262($horasDisponibles, $esEdicion, $colors, $horaDropdownExpanded$delegate, dateTimeFormatter2, $horaSeleccionada$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty << 3) & 112), 1020);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                dateTimeFormatter = $formatterHora;
            }
            str = "Sin horarios disponibles";
            String str22 = str;
            Modifier modifierMo2366menuAnchorfsE2BvY2 = ExposedDropdownMenuBox.mo2366menuAnchorfsE2BvY(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MenuAnchorType.INSTANCE.m2508getPrimaryNotEditableMg6Rgbw(), true);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            if ($horasDisponibles.isEmpty()) {
                ComposerKt.sourceInformationMarkerStart($composer, 1398465785, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(str22, (Function1<? super String, Unit>) objRememberedValue, modifierMo2366menuAnchorfsE2BvY2, false, true, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$955144207$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-172232338, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj22, Object obj3) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$251($horaDropdownExpanded$delegate, (Composer) obj22, ((Integer) obj3).intValue());
                    }
                }, $composer, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, z, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_42, (TextFieldColors) null, $composer, 905994288, 12582912, 0, 6151400);
                boolean zDialogoCrearEditarCita$lambda$1892 = DialogoCrearEditarCita$lambda$189($horaDropdownExpanded$delegate);
                ComposerKt.sourceInformationMarkerStart($composer, 1398490519, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                objRememberedValue2 = $composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                final DateTimeFormatter dateTimeFormatter22 = dateTimeFormatter;
                ExposedDropdownMenuBox.m2364ExposedDropdownMenuvNxi1II(zDialogoCrearEditarCita$lambda$1892, (Function0) objRememberedValue2, null, null, false, null, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-130904843, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj3, Object obj4, Object obj5) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262($horasDisponibles, $esEdicion, $colors, $horaDropdownExpanded$delegate, dateTimeFormatter22, $horaSeleccionada$delegate, (ColumnScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer, 54), $composer, 48, (ExposedDropdownMenuBoxScope.$stable << 3) | 6 | (($dirty << 3) & 112), 1020);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$250$lambda$249(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$251(MutableState $horaDropdownExpanded$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1174@51350L45:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-172232338, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1174)");
            }
            ExposedDropdownMenuDefaults.INSTANCE.TrailingIcon(DialogoCrearEditarCita$lambda$189($horaDropdownExpanded$delegate), null, $composer, ExposedDropdownMenuDefaults.$stable << 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$253$lambda$252(MutableState $horaDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$190($horaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262(List $horasDisponibles, boolean $esEdicion, final ColorScheme $colors, final MutableState $horaDropdownExpanded$delegate, final DateTimeFormatter $formatterHora, final MutableState $horaSeleccionada$delegate, ColumnScope ExposedDropdownMenu, Composer $composer, int $changed) {
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(ExposedDropdownMenu, "$this$ExposedDropdownMenu");
        ComposerKt.sourceInformation(composer, "C:PsicologoAgendaScreen.kt#j2aa7e");
        boolean z = true;
        if (!composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-130904843, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1186)");
            }
            String str = "CC(remember):PsicologoAgendaScreen.kt#9igjgp";
            int i = 54;
            if ($horasDisponibles.isEmpty() && !$esEdicion) {
                composer.startReplaceGroup(44214687);
                ComposerKt.sourceInformation(composer, "1188@52123L258,1194@52425L32,1187@52066L470");
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1033605856, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda27
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$254($colors, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1245487755, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda28
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$256$lambda$255($horaDropdownExpanded$delegate);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (Function0) objRememberedValue, null, null, null, false, null, null, null, composer, 196662, 476);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(44763325);
                ComposerKt.sourceInformation(composer, "*1200@52726L732,1212@53506L172,1199@52665L1047");
                Iterator it = $horasDisponibles.iterator();
                while (it.hasNext()) {
                    final LocalTime localTime = (LocalTime) it.next();
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(2056356074, z, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda29
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$261$lambda$258($colors, localTime, $formatterHora, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    }, composer, i);
                    ComposerKt.sourceInformationMarkerStart(composer, 981781926, str);
                    boolean zChangedInstance = composer.changedInstance(localTime);
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda30
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$261$lambda$260$lambda$259(localTime, $horaSeleccionada$delegate, $horaDropdownExpanded$delegate);
                            }
                        };
                        $composer.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda2, (Function0) objRememberedValue2, null, null, null, false, null, null, null, composer, 6, 508);
                    composer = $composer;
                    i = 54;
                    z = true;
                    str = str;
                }
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$254(ColorScheme $colors, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1189@52161L186:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1033605856, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1189)");
            }
            TextKt.m2976Text4IGK_g("❌ No hay horarios libres para este día", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$256$lambda$255(MutableState $horaDropdownExpanded$delegate) {
        DialogoCrearEditarCita$lambda$190($horaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$261$lambda$258(ColorScheme $colors, LocalTime $hora, DateTimeFormatter $formatterHora, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C1201@52768L652:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2056356074, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1201)");
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((i << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = (i2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i4 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1834209333, "C1202@52866L351,1208@53262L39,1209@53346L32:PsicologoAgendaScreen.kt#j2aa7e");
            IconKt.m2433Iconww6aTOc(AccessTimeKt.getAccessTime(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), $colors.getPrimary(), $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            String str = $hora.format($formatterHora);
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            TextKt.m2976Text4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$263$lambda$262$lambda$261$lambda$260$lambda$259(LocalTime $hora, MutableState $horaSeleccionada$delegate, MutableState $horaDropdownExpanded$delegate) {
        $horaSeleccionada$delegate.setValue($hora);
        DialogoCrearEditarCita$lambda$190($horaDropdownExpanded$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$266(ColorScheme $colors, MutableState $terapiaSeleccionada$delegate, MutableIntState $duracionMinutos$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C1241@54651L1174:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-360106286, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1241)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((438 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((438 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -928011761, "C1246@54909L624,1258@55558L245:PsicologoAgendaScreen.kt#j2aa7e");
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 2060041350, "C1249@55132L10,1247@54946L293,1254@55395L10,1252@55268L239:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g(DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate) != null ? "Duración de la terapia" : "Duración por defecto", (Modifier) null, $colors.getPrimary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 0, 0, 65530);
            TextKt.m2976Text4IGK_g(DialogoCrearEditarCita$lambda$151($duracionMinutos$delegate) + " minutos", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyLarge(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconKt.m2433Iconww6aTOc(InfoKt.getInfo(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $colors.getPrimary(), $composer, 432, 0);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$268$lambda$267(MutableState $motivo$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $motivo$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284(final MutableState $metodoPagoSeleccionado$delegate, final MutableState $montoError$delegate, final MutableState $monto$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C1295@57047L3214:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-309421293, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1295)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1539111993, "C1296@57116L1934:PsicologoAgendaScreen.kt#j2aa7e");
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function02 = constructor2;
                $composer.createNode(function02);
            } else {
                function02 = constructor2;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i6 = ((54 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1286624657, "C1303@57473L185,1300@57321L980,1321@58482L46,1318@58330L694:PsicologoAgendaScreen.kt#j2aa7e");
            Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1343972646, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda48
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$270$lambda$269($metodoPagoSeleccionado$delegate, $montoError$delegate);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(modifierWeight$default, false, null, null, null, (Function0) objRememberedValue, 15, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i7 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierM299clickableoSLSa3U$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i8 = ((i7 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function03 = constructor3;
                $composer.createNode(function03);
            } else {
                function03 = constructor3;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i9 = (i8 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i10 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1157322366, "C1311@57958L185,1309@57803L374,1316@58210L61:PsicologoAgendaScreen.kt#j2aa7e");
            boolean z = DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) == MetodoPago.PRESENCIAL;
            ComposerKt.sourceInformationMarkerStart($composer, 1699905642, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda49
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$273$lambda$272$lambda$271($metodoPagoSeleccionado$delegate, $montoError$delegate);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue2);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            RadioButtonKt.RadioButton(z, (Function0) objRememberedValue2, null, false, null, null, $composer, 48, 60);
            TextKt.m2976Text4IGK_g("Presencial", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 14, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 54, 0, 131068);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1344004795, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda50
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$275$lambda$274($metodoPagoSeleccionado$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue3 = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifierM299clickableoSLSa3U$default2 = ClickableKt.m299clickableoSLSa3U$default(modifierWeight$default2, false, null, null, null, (Function0) objRememberedValue3, 15, null);
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i11 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierM299clickableoSLSa3U$default2);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            int i12 = ((i11 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function04 = constructor4;
                $composer.createNode(function04);
            } else {
                function04 = constructor4;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            int i13 = (i12 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int i14 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1544388698, "C1326@58824L46,1324@58673L231,1328@58937L57:PsicologoAgendaScreen.kt#j2aa7e");
            boolean z2 = DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) == MetodoPago.ONLINE;
            ComposerKt.sourceInformationMarkerStart($composer, -1197102442, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda51
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$278$lambda$277$lambda$276($metodoPagoSeleccionado$delegate);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue4);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            RadioButtonKt.RadioButton(z2, (Function0) objRememberedValue4, null, false, null, null, $composer, 48, 60);
            TextKt.m2976Text4IGK_g("Online", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 14, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 54, 0, 131068);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) == MetodoPago.ONLINE) {
                $composer.startReplaceGroup(-1537181345);
                ComposerKt.sourceInformation($composer, "1333@59155L41,1336@59339L149,1343@59725L211,1334@59225L988");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
                String strDialogoCrearEditarCita$lambda$159 = DialogoCrearEditarCita$lambda$159($monto$delegate);
                boolean zDialogoCrearEditarCita$lambda$162 = DialogoCrearEditarCita$lambda$162($montoError$delegate);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer, -2127790594, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
                Object objRememberedValue5 = $composer.rememberedValue();
                if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda52
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$281$lambda$280($monto$delegate, $montoError$delegate, (String) obj3);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue5 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                OutlinedTextFieldKt.OutlinedTextField(strDialogoCrearEditarCita$lambda$159, (Function1<? super String, Unit>) objRememberedValue5, modifierFillMaxWidth$default2, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10447getLambda$1964762242$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1449656413$app(), (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$569107772$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(1952337867, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda53
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$282($montoError$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), zDialogoCrearEditarCita$lambda$162, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) roundedCornerShapeM1126RoundedCornerShape0680j_4, (TextFieldColors) null, $composer, 114819504, 12583296, 0, 6147640);
            } else {
                $composer.startReplaceGroup(-1595868871);
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$270$lambda$269(MutableState $metodoPagoSeleccionado$delegate, MutableState $montoError$delegate) {
        $metodoPagoSeleccionado$delegate.setValue(MetodoPago.PRESENCIAL);
        DialogoCrearEditarCita$lambda$163($montoError$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$273$lambda$272$lambda$271(MutableState $metodoPagoSeleccionado$delegate, MutableState $montoError$delegate) {
        $metodoPagoSeleccionado$delegate.setValue(MetodoPago.PRESENCIAL);
        DialogoCrearEditarCita$lambda$163($montoError$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$275$lambda$274(MutableState $metodoPagoSeleccionado$delegate) {
        $metodoPagoSeleccionado$delegate.setValue(MetodoPago.ONLINE);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$279$lambda$278$lambda$277$lambda$276(MutableState $metodoPagoSeleccionado$delegate) {
        $metodoPagoSeleccionado$delegate.setValue(MetodoPago.ONLINE);
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$281$lambda$280(MutableState $monto$delegate, MutableState $montoError$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $monto$delegate.setValue(it);
        DialogoCrearEditarCita$lambda$163($montoError$delegate, !DialogoCrearEditarCita$validarMonto(it));
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$284$lambda$283$lambda$282(MutableState $montoError$delegate, Composer $composer, int $changed) {
        Composer composer = $composer;
        ComposerKt.sourceInformation(composer, "C:PsicologoAgendaScreen.kt#j2aa7e");
        if (!composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1952337867, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1344)");
            }
            if (DialogoCrearEditarCita$lambda$162($montoError$delegate)) {
                composer.startReplaceGroup(-349669252);
                ComposerKt.sourceInformation(composer, "1345@59821L43");
                TextKt.m2976Text4IGK_g("Ingresa un monto válido (ej. 50.00)", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
                composer = $composer;
            } else {
                composer.startReplaceGroup(-408974825);
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$288$lambda$287$lambda$286(ColorScheme $colors, DateTimeFormatter $formatterFecha, DateTimeFormatter $formatterHora, MutableState $pacienteSeleccionado$delegate, MutableState $terapiaSeleccionada$delegate, MutableState $fechaSeleccionada$delegate, MutableState $horaSeleccionada$delegate, MutableIntState $duracionMinutos$delegate, MutableState $metodoPagoSeleccionado$delegate, MutableState $monto$delegate, MutableState $motivo$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C1367@60878L2078:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-157609235, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1367)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12));
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(4));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -291781079, "C1373@61207L10,1371@61083L293,1379@61585L10,1377@61405L230,1383@61807L10,1381@61664L193,1387@62089L10,1385@61886L253,1391@62305L10,1389@62168L187,1395@62582L10,1393@62384L248:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("📋 Resumen de la cita", (Modifier) null, $colors.getPrimary(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleSmall(), $composer, 196614, 0, 65498);
            PacientePsicologoResponseDTO pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 = DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate);
            Intrinsics.checkNotNull(pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166);
            String nombre = pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166.getNombre();
            PacientePsicologoResponseDTO pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$1662 = DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate);
            Intrinsics.checkNotNull(pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$1662);
            TextKt.m2976Text4IGK_g("Paciente: " + nombre + " " + pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$1662.getApellido(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$177 = DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate);
            Intrinsics.checkNotNull(terapiaResponseDTODialogoCrearEditarCita$lambda$177);
            TextKt.m2976Text4IGK_g("Terapia: " + terapiaResponseDTODialogoCrearEditarCita$lambda$177.getNombre(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            String str = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate).format($formatterFecha);
            LocalTime localTimeDialogoCrearEditarCita$lambda$186 = DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate);
            Intrinsics.checkNotNull(localTimeDialogoCrearEditarCita$lambda$186);
            TextKt.m2976Text4IGK_g("Fecha: " + str + " a las " + localTimeDialogoCrearEditarCita$lambda$186.format($formatterHora), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            TextKt.m2976Text4IGK_g("Duración: " + DialogoCrearEditarCita$lambda$151($duracionMinutos$delegate) + " minutos", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            TextKt.m2976Text4IGK_g("Pago: " + (DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) == MetodoPago.ONLINE ? "Online - " + DialogoCrearEditarCita$lambda$159($monto$delegate) + " €" : "Presencial"), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (StringsKt.isBlank(DialogoCrearEditarCita$lambda$148($motivo$delegate))) {
                $composer.startReplaceGroup(-352433665);
            } else {
                $composer.startReplaceGroup(-290240597);
                ComposerKt.sourceInformation($composer, "1400@62846L10,1398@62720L180");
                TextKt.m2976Text4IGK_g("Motivo: " + DialogoCrearEditarCita$lambda$148($motivo$delegate), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$198(List $horasDisponibles, final boolean $esEdicion, final Function8 $onConfirmar, final Function0 $onDismiss, final MutableState $pacienteSeleccionado$delegate, final MutableState $horaSeleccionada$delegate, final MutableState $terapiaSeleccionada$delegate, final MutableState $metodoPagoSeleccionado$delegate, MutableState $montoError$delegate, final MutableState $monto$delegate, final MutableState $fechaSeleccionada$delegate, final MutableIntState $duracionMinutos$delegate, final MutableState $motivo$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1417@63502L1008,1441@64666L93,1416@63468L1291:PsicologoAgendaScreen.kt#j2aa7e");
        boolean habilitado = false;
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(439202542, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous> (PsicologoAgendaScreen.kt:1410)");
            }
            PacientePsicologoResponseDTO pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 = DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate);
            if ((pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 != null ? pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166.getIdPaciente() : null) != null && DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate) != null && DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate) != null && ((!$horasDisponibles.isEmpty() || $esEdicion) && (DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) != MetodoPago.ONLINE || (!DialogoCrearEditarCita$lambda$162($montoError$delegate) && !StringsKt.isBlank(DialogoCrearEditarCita$lambda$159($monto$delegate)))))) {
                habilitado = true;
            }
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12));
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1166863454, "CC(remember):PsicologoAgendaScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($onConfirmar) | $composer.changed($onDismiss);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda32
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$198$lambda$196$lambda$195($onConfirmar, $onDismiss, $pacienteSeleccionado$delegate, $horaSeleccionada$delegate, $terapiaSeleccionada$delegate, $metodoPagoSeleccionado$delegate, $monto$delegate, $fechaSeleccionada$delegate, $duracionMinutos$delegate, $motivo$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue, modifierFillMaxWidth$default, habilitado, roundedCornerShapeM1126RoundedCornerShape0680j_4, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1304323362, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$198$lambda$197($esEdicion, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306416, 496);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$198$lambda$196$lambda$195(Function8 $onConfirmar, Function0 $onDismiss, MutableState $pacienteSeleccionado$delegate, MutableState $horaSeleccionada$delegate, MutableState $terapiaSeleccionada$delegate, MutableState $metodoPagoSeleccionado$delegate, MutableState $monto$delegate, MutableState $fechaSeleccionada$delegate, MutableIntState $duracionMinutos$delegate, MutableState $motivo$delegate) {
        BigDecimal montoDecimal;
        String str;
        PacientePsicologoResponseDTO pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 = DialogoCrearEditarCita$lambda$166($pacienteSeleccionado$delegate);
        Long idPaciente = pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166 != null ? pacientePsicologoResponseDTODialogoCrearEditarCita$lambda$166.getIdPaciente() : null;
        if (idPaciente != null && DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate) != null && DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate) != null) {
            if (DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate) == MetodoPago.ONLINE) {
                montoDecimal = new BigDecimal(StringsKt.replace$default(DialogoCrearEditarCita$lambda$159($monto$delegate), ",", ".", false, 4, (Object) null));
            } else {
                montoDecimal = BigDecimal.ZERO;
            }
            LocalDate localDateDialogoCrearEditarCita$lambda$145 = DialogoCrearEditarCita$lambda$145($fechaSeleccionada$delegate);
            LocalTime localTimeDialogoCrearEditarCita$lambda$186 = DialogoCrearEditarCita$lambda$186($horaSeleccionada$delegate);
            Intrinsics.checkNotNull(localTimeDialogoCrearEditarCita$lambda$186);
            Integer numValueOf = Integer.valueOf(DialogoCrearEditarCita$lambda$151($duracionMinutos$delegate));
            String strDialogoCrearEditarCita$lambda$148 = DialogoCrearEditarCita$lambda$148($motivo$delegate);
            if (StringsKt.isBlank(strDialogoCrearEditarCita$lambda$148)) {
                TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$177 = DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate);
                Intrinsics.checkNotNull(terapiaResponseDTODialogoCrearEditarCita$lambda$177);
                str = terapiaResponseDTODialogoCrearEditarCita$lambda$177.getNombre() + " - Cita psicológica";
            } else {
                str = strDialogoCrearEditarCita$lambda$148;
            }
            TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$1772 = DialogoCrearEditarCita$lambda$177($terapiaSeleccionada$delegate);
            Intrinsics.checkNotNull(terapiaResponseDTODialogoCrearEditarCita$lambda$1772);
            Long lValueOf = Long.valueOf(terapiaResponseDTODialogoCrearEditarCita$lambda$1772.getIdTipo());
            MetodoPago metodoPagoDialogoCrearEditarCita$lambda$155 = DialogoCrearEditarCita$lambda$155($metodoPagoSeleccionado$delegate);
            Intrinsics.checkNotNull(montoDecimal);
            $onConfirmar.invoke(idPaciente, localDateDialogoCrearEditarCita$lambda$145, localTimeDialogoCrearEditarCita$lambda$186, numValueOf, str, lValueOf, metodoPagoDialogoCrearEditarCita$lambda$155, montoDecimal);
            $onDismiss.invoke();
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$198$lambda$197(boolean $esEdicion, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C1442@64684L61:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1304323362, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1442)");
            }
            TextKt.m2976Text4IGK_g($esEdicion ? "💾 Guardar cambios" : "✅ Crear cita", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoCrearEditarCita$lambda$199(Function0 $onDismiss, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1446@64809L80:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(791859056, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoCrearEditarCita.<anonymous> (PsicologoAgendaScreen.kt:1446)");
            }
            ButtonKt.TextButton($onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1967757357$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void DialogoConfirmarCancelacion(final AgendaItemDTO cita, final Function0<Unit> onConfirmar, final Function0<Unit> onDismiss, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(cita, "cita");
        Intrinsics.checkNotNullParameter(onConfirmar, "onConfirmar");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Composer $composer3 = $composer.startRestartGroup(-1048255435);
        ComposerKt.sourceInformation($composer3, "C(DialogoConfirmarCancelacion)N(cita,onConfirmar,onDismiss)1487@66757L195,1492@66978L54,1468@65392L1339,1465@65283L1755:PsicologoAgendaScreen.kt#j2aa7e");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(cita) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(onConfirmar) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onDismiss) ? 256 : 128;
        }
        if (!$composer3.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1048255435, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoConfirmarCancelacion (PsicologoAgendaScreen.kt:1461)");
            }
            final DateTimeFormatter formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            final DateTimeFormatter formatterHora = DateTimeFormatter.ofPattern("HH:mm");
            $composer2 = $composer3;
            AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0(onDismiss, ComposableLambdaKt.rememberComposableLambda(-896561939, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda101
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoConfirmarCancelacion$lambda$290(onConfirmar, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableLambdaKt.rememberComposableLambda(-409488213, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda102
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoConfirmarCancelacion$lambda$291(onDismiss, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$77585513$app(), ComposableLambdaKt.rememberComposableLambda(321122376, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda103
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoConfirmarCancelacion$lambda$295(cita, formatterFecha, formatterHora, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer2, (($dirty >> 6) & 14) | 1772592, 0, 16276);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda104
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PsicologoAgendaScreenKt.DialogoConfirmarCancelacion$lambda$296(cita, onConfirmar, onDismiss, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit DialogoConfirmarCancelacion$lambda$295(final AgendaItemDTO $cita, final DateTimeFormatter $formatterFecha, final DateTimeFormatter $formatterHora, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C1469@65406L1315:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(321122376, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoConfirmarCancelacion.<anonymous> (PsicologoAgendaScreen.kt:1469)");
            }
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1696980121, "C1470@65481L55,1474@65753L11,1474@65711L88,1475@65818L746,1471@65553L1011,1484@66645L10,1484@66689L11,1484@66581L126:PsicologoAgendaScreen.kt#j2aa7e");
            TextKt.m2976Text4IGK_g("¿Estás seguro de que deseas cancelar esta cita?", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131070);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long errorContainer = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getErrorContainer();
            CardKt.Card(modifierFillMaxWidth$default, roundedCornerShapeM1126RoundedCornerShape0680j_4, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(errorContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(errorContainer) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(errorContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(errorContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(errorContainer) : 0.0f), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-1017772704, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$$ExternalSyntheticLambda76
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PsicologoAgendaScreenKt.DialogoConfirmarCancelacion$lambda$295$lambda$294$lambda$293($cita, $formatterFecha, $formatterHora, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 24);
            TextKt.m2976Text4IGK_g("Esta acción no se puede deshacer.", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoConfirmarCancelacion$lambda$295$lambda$294$lambda$293(AgendaItemDTO $cita, DateTimeFormatter $formatterFecha, DateTimeFormatter $formatterHora, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C1476@65840L706:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1017772704, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoConfirmarCancelacion.<anonymous>.<anonymous>.<anonymous> (PsicologoAgendaScreen.kt:1476)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1366782930, "C1477@66012L10,1477@65909L124,1478@66215L10,1478@66260L11,1478@66058L231:PsicologoAgendaScreen.kt#j2aa7e");
            String nombrePaciente = $cita.getNombrePaciente();
            if (nombrePaciente == null) {
                nombrePaciente = "Paciente";
            }
            TextKt.m2976Text4IGK_g(nombrePaciente, (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyLarge(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 65502);
            TextKt.m2976Text4IGK_g($cita.getFecha().format($formatterFecha) + " • " + $cita.getHoraInicio().format($formatterHora) + " - " + $cita.getHoraFin().format($formatterHora), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyMedium(), $composer, 0, 0, 65530);
            String motivo = $cita.getMotivo();
            if (!(motivo == null || StringsKt.isBlank(motivo))) {
                $composer.startReplaceGroup(1367204808);
                ComposerKt.sourceInformation($composer, "1480@66425L10,1480@66469L11,1480@66378L120");
                TextKt.m2976Text4IGK_g($cita.getMotivo(), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodySmall(), $composer, 0, 0, 65530);
            } else {
                $composer.startReplaceGroup(1301381144);
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoConfirmarCancelacion$lambda$290(Function0 $onConfirmar, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1488@66869L11,1488@66825L62,1488@66771L171:PsicologoAgendaScreen.kt#j2aa7e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-896561939, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoConfirmarCancelacion.<anonymous> (PsicologoAgendaScreen.kt:1488)");
            }
            ButtonKt.Button($onConfirmar, null, false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError(), 0L, 0L, 0L, $composer, ButtonDefaults.$stable << 12, 14), null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.m10451getLambda$513604867$app(), $composer, 805306368, 494);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit DialogoConfirmarCancelacion$lambda$291(Function0 $onDismiss, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C1492@66980L50:PsicologoAgendaScreen.kt#j2aa7e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-409488213, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.DialogoConfirmarCancelacion.<anonymous> (PsicologoAgendaScreen.kt:1492)");
            }
            ButtonKt.TextButton($onDismiss, null, false, null, null, null, null, null, null, ComposableSingletons$PsicologoAgendaScreenKt.INSTANCE.getLambda$1305900430$app(), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
