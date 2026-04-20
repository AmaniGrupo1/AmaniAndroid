package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import android.content.Context;
import android.os.Build;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
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
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AccessTimeKt;
import androidx.compose.material.icons.filled.EventBusyKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
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
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.profileinstaller.ProfileVerifier;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.YearMonth;
import j$.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse;
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria;
import org.ies.tierno.applicationamani.presentation.ui.componente.VistaDiariaHorasKt;
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioViewKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel;
import org.ies.tierno.applicationamani.utils.CalendarUtilsKt;
import org.ies.tierno.applicationamani.utils.NotificationUtilsKt;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: CitasScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u001e²\u0006\u0012\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000b\u001a\u0004\u0018\u00010\n8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\r\u001a\u0004\u0018\u00010\f8\nX\u008a\u0084\u0002²\u0006\f\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00108\n@\nX\u008a\u008e\u0002²\u0006\u0016\u0010\u0014\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\n@\nX\u008a\u008e\u0002²\u0006\u001c\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0018\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00198\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u001b\u001a\u00020\f8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/navigation/NavController;", "navController", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;", "viewModel", "", "CitasScreen", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/Composer;II)V", "", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "agendaMensual", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "disponibilidadDia", "", "errorMessage", "", "isLoading", "j$/time/LocalDate", "fechaSeleccionada", "j$/time/YearMonth", "kotlin.jvm.PlatformType", "mesVisible", "Lkotlin/Pair;", "j$/time/LocalTime", "pendingRecordatorio", "mostrarDialogoMotivo", "Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;", "franjaSeleccionadaTemp", "motivoCita", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "session", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class CitasScreenKt {
    static final Unit CitasScreen$lambda$83(NavController navController, CitasViewModel citasViewModel, int i, int i2, Composer composer, int i3) {
        CitasScreen(navController, citasViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0440 A[LOOP:3: B:106:0x043a->B:108:0x0440, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03d4  */
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
    public static final void CitasScreen(final NavController navController, CitasViewModel viewModel, Composer $composer, final int $changed, final int i) {
        CitasViewModel viewModel2;
        final CitasViewModel viewModel3;
        int $dirty;
        SnackbarHostState snackbarHostState;
        ManagedActivityResultLauncher notifPermissionLauncher;
        Context context;
        boolean zChanged;
        Object objRememberedValue;
        CitasViewModel viewModel4;
        CoroutineScope scope;
        final SnackbarHostState snackbarHostState2;
        boolean zChanged2;
        Object objRememberedValue2;
        Iterator it;
        boolean zChanged3;
        Object objRememberedValue3;
        LocalDate localDateCitasScreen$lambda$5;
        Set fechasConCitas;
        MutableState mesVisible$delegate;
        Collection collectionEmptyList;
        boolean zChanged4;
        Object objRememberedValue4;
        DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$1;
        final List citasDelDia;
        MutableState pendingRecordatorio$delegate;
        Object objEmptyList;
        Iterable slotsLibres;
        boolean z;
        String str;
        MutableState pendingRecordatorio$delegate2;
        Object obj;
        short s;
        String str2;
        boolean z2;
        final CitasViewModel viewModel5;
        final MutableState mostrarDialogoMotivo$delegate;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(-989644611);
        ComposerKt.sourceInformation($composer2, "C(CitasScreen)N(navController,viewModel)83@3799L11,84@3846L10,85@3888L7,87@3946L16,88@4020L16,89@4084L16,90@4142L16,92@4189L45,93@4257L44,94@4330L32,95@4379L24,97@4436L62,98@4531L34,99@4600L49,100@4672L31,102@4746L16,104@4792L154,104@4768L178,112@5086L511,110@4982L615,145@6294L57,145@6267L84,150@6409L176,150@6380L205,160@6654L78,165@6802L172,187@7664L914,209@8617L35,211@8703L13047,208@8584L13166:CitasScreen.kt#yd4c32");
        int $dirty2 = $changed;
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                viewModel2 = viewModel;
                int i2 = $composer2.changedInstance(viewModel2) ? 32 : 16;
                $dirty2 |= i2;
            } else {
                viewModel2 = viewModel;
            }
            $dirty2 |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if ($composer2.shouldExecute(($dirty2 & 17) != 16, $dirty2 & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "81@3748L15");
            if (($changed & 1) != 0 && !$composer2.getDefaultsInvalid()) {
                $composer2.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
            } else if ((i & 2) != 0) {
                ComposerKt.sourceInformationMarkerStart($composer2, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                if (current == null) {
                    throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                }
                ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(CitasViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer2, 0), null);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                viewModel2 = (CitasViewModel) viewModelResolveViewModel;
                $dirty2 &= -113;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-989644611, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen (CitasScreen.kt:82)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            final Typography typography = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable);
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Context context2 = (Context) objConsume;
            State agendaMensual$delegate = SnapshotStateKt.collectAsState(viewModel2.getAgendaMensual(), null, $composer2, 0, 1);
            final State disponibilidadDia$delegate = SnapshotStateKt.collectAsState(viewModel2.getDisponibilidadDia(), null, $composer2, 0, 1);
            State errorMessage$delegate = SnapshotStateKt.collectAsState(viewModel2.getErrorMessage(), null, $composer2, 0, 1);
            final State isLoading$delegate = SnapshotStateKt.collectAsState(viewModel2.isLoading(), null, $composer2, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860680406, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue5 = $composer2.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue5 = objMutableStateOf$default;
            }
            final MutableState fechaSeleccionada$delegate = (MutableState) objRememberedValue5;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860678231, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue6 = $composer2.rememberedValue();
            if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                $dirty = $dirty2;
                Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(YearMonth.now(), null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default2);
                objRememberedValue6 = objMutableStateOf$default2;
            } else {
                $dirty = $dirty2;
            }
            MutableState mesVisible$delegate2 = (MutableState) objRememberedValue6;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860675907, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue7 = $composer2.rememberedValue();
            if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                Object snackbarHostState3 = new SnackbarHostState();
                $composer2.updateRememberedValue(snackbarHostState3);
                objRememberedValue7 = snackbarHostState3;
            }
            SnackbarHostState snackbarHostState4 = (SnackbarHostState) objRememberedValue7;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object objRememberedValue8 = $composer2.rememberedValue();
            if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue8 = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(objRememberedValue8);
            }
            CoroutineScope scope2 = (CoroutineScope) objRememberedValue8;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860672485, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue9 = $composer2.rememberedValue();
            if (objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                MutableState mutableStateMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(mutableStateMutableStateOf$default);
                objRememberedValue9 = mutableStateMutableStateOf$default;
            }
            final MutableState pendingRecordatorio$delegate3 = (MutableState) objRememberedValue9;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860669473, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue10 = $composer2.rememberedValue();
            if (objRememberedValue10 == Composer.INSTANCE.getEmpty()) {
                snackbarHostState = snackbarHostState4;
                objRememberedValue10 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer2.updateRememberedValue(objRememberedValue10);
            } else {
                snackbarHostState = snackbarHostState4;
            }
            final MutableState mostrarDialogoMotivo$delegate2 = (MutableState) objRememberedValue10;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860667250, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue11 = $composer2.rememberedValue();
            if (objRememberedValue11 == Composer.INSTANCE.getEmpty()) {
                MutableState mutableStateMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(mutableStateMutableStateOf$default2);
                objRememberedValue11 = mutableStateMutableStateOf$default2;
            }
            final MutableState franjaSeleccionadaTemp$delegate = (MutableState) objRememberedValue11;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860664964, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue12 = $composer2.rememberedValue();
            if (objRememberedValue12 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default("", null, 2, null);
                $composer2.updateRememberedValue(objMutableStateOf$default3);
                objRememberedValue12 = objMutableStateOf$default3;
            }
            final MutableState motivoCita$delegate = (MutableState) objRememberedValue12;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            State session$delegate = SnapshotStateKt.collectAsState(viewModel2.getUserSession(), null, $composer2, 0, 1);
            UserSession userSessionCitasScreen$lambda$23 = CitasScreen$lambda$23(session$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860661001, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChanged5 = $composer2.changed(session$delegate) | $composer2.changedInstance(viewModel2);
            Object objRememberedValue13 = $composer2.rememberedValue();
            if (zChanged5 || objRememberedValue13 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = (Function2) new CitasScreenKt$CitasScreen$1$1(viewModel2, session$delegate, fechaSeleccionada$delegate, null);
                $composer2.updateRememberedValue(obj2);
                objRememberedValue13 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(userSessionCitasScreen$lambda$23, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue13, $composer2, 0);
            ActivityResultContracts.RequestPermission requestPermission = new ActivityResultContracts.RequestPermission();
            ComposerKt.sourceInformationMarkerStart($composer2, -1860651236, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChangedInstance = $composer2.changedInstance(context2);
            Object objRememberedValue14 = $composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue14 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue14 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return CitasScreenKt.CitasScreen$lambda$27$lambda$26(pendingRecordatorio$delegate3, context2, ((Boolean) obj3).booleanValue());
                    }
                };
                $composer2.updateRememberedValue(objRememberedValue14);
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ManagedActivityResultLauncher notifPermissionLauncher2 = ActivityResultRegistryKt.rememberLauncherForActivityResult(requestPermission, (Function1) objRememberedValue14, $composer2, 0);
            YearMonth yearMonthCitasScreen$lambda$8 = CitasScreen$lambda$8(mesVisible$delegate2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860613034, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer2.changedInstance(viewModel2);
            Object objRememberedValue15 = $composer2.rememberedValue();
            if (zChangedInstance2) {
                notifPermissionLauncher = notifPermissionLauncher2;
            } else {
                notifPermissionLauncher = notifPermissionLauncher2;
                if (objRememberedValue15 != Composer.INSTANCE.getEmpty()) {
                    context = context2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(yearMonthCitasScreen$lambda$8, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue15, $composer2, 0);
                String strCitasScreen$lambda$2 = CitasScreen$lambda$2(errorMessage$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, -1860609235, "CC(remember):CitasScreen.kt#9igjgp");
                zChanged = $composer2.changed(errorMessage$delegate) | $composer2.changedInstance(scope2) | $composer2.changedInstance(viewModel2);
                objRememberedValue = $composer2.rememberedValue();
                if (!zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    viewModel4 = viewModel2;
                    SnackbarHostState snackbarHostState5 = snackbarHostState;
                    scope = scope2;
                    snackbarHostState2 = snackbarHostState5;
                    Object obj3 = (Function2) new CitasScreenKt$CitasScreen$3$1(errorMessage$delegate, scope2, snackbarHostState5, viewModel4, null);
                    $composer2.updateRememberedValue(obj3);
                    objRememberedValue = obj3;
                } else {
                    viewModel4 = viewModel2;
                    scope = scope2;
                    snackbarHostState2 = snackbarHostState;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strCitasScreen$lambda$2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                List<AgendaItemDTO> listCitasScreen$lambda$0 = CitasScreen$lambda$0(agendaMensual$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, -1860601493, "CC(remember):CitasScreen.kt#9igjgp");
                zChanged2 = $composer2.changed(listCitasScreen$lambda$0);
                objRememberedValue2 = $composer2.rememberedValue();
                if (!zChanged2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Iterable iterableCitasScreen$lambda$0 = CitasScreen$lambda$0(agendaMensual$delegate);
                    Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterableCitasScreen$lambda$0, 10));
                    it = iterableCitasScreen$lambda$0.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((AgendaItemDTO) it.next()).getFecha());
                    }
                    Object set = CollectionsKt.toSet((List) arrayList);
                    $composer2.updateRememberedValue(set);
                    objRememberedValue2 = set;
                }
                Set fechasConCitas2 = (Set) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                LocalDate localDateCitasScreen$lambda$52 = CitasScreen$lambda$5(fechaSeleccionada$delegate);
                List<AgendaItemDTO> listCitasScreen$lambda$02 = CitasScreen$lambda$0(agendaMensual$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, -1860596663, "CC(remember):CitasScreen.kt#9igjgp");
                zChanged3 = $composer2.changed(localDateCitasScreen$lambda$52) | $composer2.changed(listCitasScreen$lambda$02);
                objRememberedValue3 = $composer2.rememberedValue();
                if (!zChanged3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    localDateCitasScreen$lambda$5 = CitasScreen$lambda$5(fechaSeleccionada$delegate);
                    if (localDateCitasScreen$lambda$5 == null) {
                        Iterable iterableCitasScreen$lambda$02 = CitasScreen$lambda$0(agendaMensual$delegate);
                        fechasConCitas = fechasConCitas2;
                        Collection arrayList2 = new ArrayList();
                        for (Object obj4 : iterableCitasScreen$lambda$02) {
                            boolean z3 = zChanged3;
                            MutableState mesVisible$delegate3 = mesVisible$delegate2;
                            if (Intrinsics.areEqual(((AgendaItemDTO) obj4).getFecha(), localDateCitasScreen$lambda$5)) {
                                arrayList2.add(obj4);
                            }
                            zChanged3 = z3;
                            mesVisible$delegate2 = mesVisible$delegate3;
                        }
                        mesVisible$delegate = mesVisible$delegate2;
                        collectionEmptyList = (List) arrayList2;
                    } else {
                        fechasConCitas = fechasConCitas2;
                        mesVisible$delegate = mesVisible$delegate2;
                        collectionEmptyList = CollectionsKt.emptyList();
                    }
                    $composer2.updateRememberedValue(collectionEmptyList);
                    objRememberedValue3 = collectionEmptyList;
                } else {
                    fechasConCitas = fechasConCitas2;
                    mesVisible$delegate = mesVisible$delegate2;
                }
                List citasDelDia2 = (List) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$12 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, -1860568337, "CC(remember):CitasScreen.kt#9igjgp");
                zChanged4 = $composer2.changed(disponibilidadDiaResponseCitasScreen$lambda$12) | $composer2.changed(citasDelDia2);
                int i3 = 0;
                objRememberedValue4 = $composer2.rememberedValue();
                if (!zChanged4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    disponibilidadDiaResponseCitasScreen$lambda$1 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                    if (disponibilidadDiaResponseCitasScreen$lambda$1 == null && disponibilidadDiaResponseCitasScreen$lambda$1.getDiaCompleto()) {
                        DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$13 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                        if (disponibilidadDiaResponseCitasScreen$lambda$13 == null || (slotsLibres = disponibilidadDiaResponseCitasScreen$lambda$13.getSlotsLibres()) == null) {
                            citasDelDia = citasDelDia2;
                            pendingRecordatorio$delegate = pendingRecordatorio$delegate3;
                            objEmptyList = CollectionsKt.emptyList();
                        } else {
                            Iterable<FranjaDisponibilidadResponse> iterable = slotsLibres;
                            citasDelDia = citasDelDia2;
                            Collection arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
                            for (FranjaDisponibilidadResponse franjaDisponibilidadResponse : iterable) {
                                boolean z4 = zChanged4;
                                List list = citasDelDia;
                                int i4 = i3;
                                if ((list instanceof Collection) && list.isEmpty()) {
                                    z = false;
                                } else {
                                    Iterator it2 = list.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            z = false;
                                            break;
                                        }
                                        Iterable iterable2 = list;
                                        Iterator it3 = it2;
                                        if (Intrinsics.areEqual(((AgendaItemDTO) it2.next()).getHoraInicio(), franjaDisponibilidadResponse.getHora())) {
                                            z = true;
                                            break;
                                        } else {
                                            list = iterable2;
                                            it2 = it3;
                                        }
                                    }
                                }
                                DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$14 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                                Intrinsics.checkNotNull(disponibilidadDiaResponseCitasScreen$lambda$14);
                                short value = (short) disponibilidadDiaResponseCitasScreen$lambda$14.getFecha().getDayOfWeek().getValue();
                                boolean z5 = z;
                                String str3 = franjaDisponibilidadResponse.getHora().format(DateTimeFormatter.ofPattern("HH:mm"));
                                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                                LocalTime horaFin = franjaDisponibilidadResponse.getHoraFin();
                                if (horaFin == null) {
                                    str = str3;
                                    pendingRecordatorio$delegate2 = pendingRecordatorio$delegate3;
                                    obj = objRememberedValue4;
                                    horaFin = franjaDisponibilidadResponse.getHora().plusMinutes(60L);
                                } else {
                                    str = str3;
                                    pendingRecordatorio$delegate2 = pendingRecordatorio$delegate3;
                                    obj = objRememberedValue4;
                                }
                                String str4 = horaFin.format(DateTimeFormatter.ofPattern("HH:mm"));
                                Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                                if (franjaDisponibilidadResponse.getOcupado() || z5) {
                                    s = value;
                                    str2 = str;
                                    z2 = false;
                                } else {
                                    s = value;
                                    str2 = str;
                                    z2 = true;
                                }
                                arrayList3.add(new FranjaHoraria(s, str2, str4, z2, franjaDisponibilidadResponse.getDescripcion()));
                                zChanged4 = z4;
                                i3 = i4;
                                pendingRecordatorio$delegate3 = pendingRecordatorio$delegate2;
                                objRememberedValue4 = obj;
                            }
                            pendingRecordatorio$delegate = pendingRecordatorio$delegate3;
                            objEmptyList = (List) arrayList3;
                        }
                    } else {
                        objEmptyList = CollectionsKt.emptyList();
                        citasDelDia = citasDelDia2;
                        pendingRecordatorio$delegate = pendingRecordatorio$delegate3;
                    }
                    $composer2.updateRememberedValue(objEmptyList);
                    objRememberedValue4 = objEmptyList;
                } else {
                    citasDelDia = citasDelDia2;
                    pendingRecordatorio$delegate = pendingRecordatorio$delegate3;
                }
                final List franjasParaVista = (List) objRememberedValue4;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(70135939, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return CitasScreenKt.CitasScreen$lambda$39(snackbarHostState2, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer2, 54);
                long background = colors.getBackground();
                viewModel5 = viewModel4;
                final MutableState mesVisible$delegate4 = mesVisible$delegate;
                final Context context3 = context;
                final Set fechasConCitas3 = fechasConCitas;
                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(917802444, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                        return CitasScreenKt.CitasScreen$lambda$68(typography, colors, citasDelDia, fechasConCitas3, viewModel5, mesVisible$delegate4, fechaSeleccionada$delegate, context3, isLoading$delegate, franjasParaVista, disponibilidadDia$delegate, franjaSeleccionadaTemp$delegate, motivoCita$delegate, mostrarDialogoMotivo$delegate2, (PaddingValues) obj5, (Composer) obj6, ((Integer) obj7).intValue());
                    }
                }, $composer2, 54);
                final SnackbarHostState snackbarHostState6 = snackbarHostState2;
                final MutableState pendingRecordatorio$delegate4 = pendingRecordatorio$delegate;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, composableLambdaRememberComposableLambda, null, 0, background, 0L, null, composableLambdaRememberComposableLambda2, $composer2, 805309440, 439);
                $composer2 = $composer2;
                if (CitasScreen$lambda$15(mostrarDialogoMotivo$delegate2) || CitasScreen$lambda$18(franjaSeleccionadaTemp$delegate) == null || CitasScreen$lambda$5(fechaSeleccionada$delegate) == null) {
                    viewModel3 = viewModel5;
                    $composer2.startReplaceGroup(-1850675611);
                } else {
                    $composer2.startReplaceGroup(-1828801949);
                    ComposerKt.sourceInformation($composer2, "466@21979L32,499@23388L2318,546@25736L143,467@22033L578,481@22632L726,465@21935L3954");
                    ComposerKt.sourceInformationMarkerStart($composer2, -1860111139, "CC(remember):CitasScreen.kt#9igjgp");
                    Object objRememberedValue16 = $composer2.rememberedValue();
                    if (objRememberedValue16 == Composer.INSTANCE.getEmpty()) {
                        mostrarDialogoMotivo$delegate = mostrarDialogoMotivo$delegate2;
                        Object obj5 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda14
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return CitasScreenKt.CitasScreen$lambda$70$lambda$69(mostrarDialogoMotivo$delegate);
                            }
                        };
                        $composer2.updateRememberedValue(obj5);
                        objRememberedValue16 = obj5;
                    } else {
                        mostrarDialogoMotivo$delegate = mostrarDialogoMotivo$delegate2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    final MutableState mostrarDialogoMotivo$delegate3 = mostrarDialogoMotivo$delegate;
                    final ManagedActivityResultLauncher notifPermissionLauncher3 = notifPermissionLauncher;
                    final CoroutineScope scope3 = scope;
                    viewModel3 = viewModel5;
                    AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0((Function0) objRememberedValue16, ComposableLambdaKt.rememberComposableLambda(1560099536, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            return CitasScreenKt.CitasScreen$lambda$73(scope3, viewModel5, notifPermissionLauncher3, context3, snackbarHostState6, franjaSeleccionadaTemp$delegate, fechaSeleccionada$delegate, motivoCita$delegate, pendingRecordatorio$delegate4, mostrarDialogoMotivo$delegate3, (Composer) obj6, ((Integer) obj7).intValue());
                        }
                    }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(57001230, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            return CitasScreenKt.CitasScreen$lambda$76(mostrarDialogoMotivo$delegate3, (Composer) obj6, ((Integer) obj7).intValue());
                        }
                    }, $composer2, 54), null, ComposableLambdaKt.rememberComposableLambda(-1446097076, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            return CitasScreenKt.CitasScreen$lambda$78(typography, colors, fechaSeleccionada$delegate, franjaSeleccionadaTemp$delegate, (Composer) obj6, ((Integer) obj7).intValue());
                        }
                    }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(2097321067, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda18
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            return CitasScreenKt.CitasScreen$lambda$82(typography, motivoCita$delegate, (Composer) obj6, ((Integer) obj7).intValue());
                        }
                    }, $composer2, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer2, 1772598, 0, 16276);
                    $composer2 = $composer2;
                }
                $composer2.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            context = context2;
            Object obj6 = (Function2) new CitasScreenKt$CitasScreen$2$1(viewModel2, mesVisible$delegate2, null);
            $composer2.updateRememberedValue(obj6);
            objRememberedValue15 = obj6;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(yearMonthCitasScreen$lambda$8, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue15, $composer2, 0);
            String strCitasScreen$lambda$22 = CitasScreen$lambda$2(errorMessage$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, -1860609235, "CC(remember):CitasScreen.kt#9igjgp");
            zChanged = $composer2.changed(errorMessage$delegate) | $composer2.changedInstance(scope2) | $composer2.changedInstance(viewModel2);
            objRememberedValue = $composer2.rememberedValue();
            if (zChanged) {
                viewModel4 = viewModel2;
                SnackbarHostState snackbarHostState52 = snackbarHostState;
                scope = scope2;
                snackbarHostState2 = snackbarHostState52;
                Object obj32 = (Function2) new CitasScreenKt$CitasScreen$3$1(errorMessage$delegate, scope2, snackbarHostState52, viewModel4, null);
                $composer2.updateRememberedValue(obj32);
                objRememberedValue = obj32;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(strCitasScreen$lambda$22, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                List<AgendaItemDTO> listCitasScreen$lambda$03 = CitasScreen$lambda$0(agendaMensual$delegate);
                ComposerKt.sourceInformationMarkerStart($composer2, -1860601493, "CC(remember):CitasScreen.kt#9igjgp");
                zChanged2 = $composer2.changed(listCitasScreen$lambda$03);
                objRememberedValue2 = $composer2.rememberedValue();
                if (!zChanged2) {
                    Iterable iterableCitasScreen$lambda$03 = CitasScreen$lambda$0(agendaMensual$delegate);
                    Collection arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterableCitasScreen$lambda$03, 10));
                    it = iterableCitasScreen$lambda$03.iterator();
                    while (it.hasNext()) {
                    }
                    Object set2 = CollectionsKt.toSet((List) arrayList4);
                    $composer2.updateRememberedValue(set2);
                    objRememberedValue2 = set2;
                    Set fechasConCitas22 = (Set) objRememberedValue2;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    LocalDate localDateCitasScreen$lambda$522 = CitasScreen$lambda$5(fechaSeleccionada$delegate);
                    List<AgendaItemDTO> listCitasScreen$lambda$022 = CitasScreen$lambda$0(agendaMensual$delegate);
                    ComposerKt.sourceInformationMarkerStart($composer2, -1860596663, "CC(remember):CitasScreen.kt#9igjgp");
                    zChanged3 = $composer2.changed(localDateCitasScreen$lambda$522) | $composer2.changed(listCitasScreen$lambda$022);
                    objRememberedValue3 = $composer2.rememberedValue();
                    if (zChanged3) {
                        localDateCitasScreen$lambda$5 = CitasScreen$lambda$5(fechaSeleccionada$delegate);
                        if (localDateCitasScreen$lambda$5 == null) {
                        }
                        $composer2.updateRememberedValue(collectionEmptyList);
                        objRememberedValue3 = collectionEmptyList;
                        List citasDelDia22 = (List) objRememberedValue3;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$122 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                        ComposerKt.sourceInformationMarkerStart($composer2, -1860568337, "CC(remember):CitasScreen.kt#9igjgp");
                        zChanged4 = $composer2.changed(disponibilidadDiaResponseCitasScreen$lambda$122) | $composer2.changed(citasDelDia22);
                        int i32 = 0;
                        objRememberedValue4 = $composer2.rememberedValue();
                        if (zChanged4) {
                            disponibilidadDiaResponseCitasScreen$lambda$1 = CitasScreen$lambda$1(disponibilidadDia$delegate);
                            if (disponibilidadDiaResponseCitasScreen$lambda$1 == null) {
                                if (disponibilidadDiaResponseCitasScreen$lambda$1 == null && disponibilidadDiaResponseCitasScreen$lambda$1.getDiaCompleto()) {
                                }
                                $composer2.updateRememberedValue(objEmptyList);
                                objRememberedValue4 = objEmptyList;
                                final List franjasParaVista2 = (List) objRememberedValue4;
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(70135939, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda12
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj52, Object obj62) {
                                        return CitasScreenKt.CitasScreen$lambda$39(snackbarHostState2, (Composer) obj52, ((Integer) obj62).intValue());
                                    }
                                }, $composer2, 54);
                                long background2 = colors.getBackground();
                                viewModel5 = viewModel4;
                                final MutableState mesVisible$delegate42 = mesVisible$delegate;
                                final Context context32 = context;
                                final Set fechasConCitas32 = fechasConCitas;
                                ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(917802444, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda13
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj52, Object obj62, Object obj7) {
                                        return CitasScreenKt.CitasScreen$lambda$68(typography, colors, citasDelDia, fechasConCitas32, viewModel5, mesVisible$delegate42, fechaSeleccionada$delegate, context32, isLoading$delegate, franjasParaVista2, disponibilidadDia$delegate, franjaSeleccionadaTemp$delegate, motivoCita$delegate, mostrarDialogoMotivo$delegate2, (PaddingValues) obj52, (Composer) obj62, ((Integer) obj7).intValue());
                                    }
                                }, $composer2, 54);
                                final SnackbarHostState snackbarHostState62 = snackbarHostState2;
                                final MutableState pendingRecordatorio$delegate42 = pendingRecordatorio$delegate;
                                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, composableLambdaRememberComposableLambda3, null, 0, background2, 0L, null, composableLambdaRememberComposableLambda22, $composer2, 805309440, 439);
                                $composer2 = $composer2;
                                if (CitasScreen$lambda$15(mostrarDialogoMotivo$delegate2)) {
                                    viewModel3 = viewModel5;
                                    $composer2.startReplaceGroup(-1850675611);
                                    $composer2.endReplaceGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            $composer2.skipToGroupEnd();
            viewModel3 = viewModel2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj7, Object obj8) {
                    return CitasScreenKt.CitasScreen$lambda$83(navController, viewModel3, $changed, i, (Composer) obj7, ((Integer) obj8).intValue());
                }
            });
        }
    }

    private static final List<AgendaItemDTO> CitasScreen$lambda$0(State<? extends List<AgendaItemDTO>> state) {
        return (List) state.getValue();
    }

    private static final DisponibilidadDiaResponse CitasScreen$lambda$1(State<DisponibilidadDiaResponse> state) {
        return (DisponibilidadDiaResponse) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String CitasScreen$lambda$2(State<String> state) {
        return (String) state.getValue();
    }

    private static final boolean CitasScreen$lambda$3(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalDate CitasScreen$lambda$5(MutableState<LocalDate> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final YearMonth CitasScreen$lambda$8(MutableState<YearMonth> mutableState) {
        return mutableState.getValue();
    }

    private static final Pair<LocalDate, LocalTime> CitasScreen$lambda$12(MutableState<Pair<LocalDate, LocalTime>> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean CitasScreen$lambda$15(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CitasScreen$lambda$16(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FranjaHoraria CitasScreen$lambda$18(MutableState<FranjaHoraria> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String CitasScreen$lambda$21(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UserSession CitasScreen$lambda$23(State<UserSession> state) {
        return (UserSession) state.getValue();
    }

    static final Unit CitasScreen$lambda$27$lambda$26(MutableState $pendingRecordatorio$delegate, Context $context, boolean granted) {
        Pair<LocalDate, LocalTime> pairCitasScreen$lambda$12;
        if (granted && (pairCitasScreen$lambda$12 = CitasScreen$lambda$12($pendingRecordatorio$delegate)) != null) {
            LocalDate localDateComponent1 = pairCitasScreen$lambda$12.component1();
            LocalTime localTimeComponent2 = pairCitasScreen$lambda$12.component2();
            NotificationUtilsKt.programarRecordatorioCita($context, localDateComponent1, localTimeComponent2, 30, "Cita en Amani", "Tu cita es a las " + localTimeComponent2.format(DateTimeFormatter.ofPattern("HH:mm")));
        }
        $pendingRecordatorio$delegate.setValue(null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CitasScreen$programarConPermiso(ManagedActivityResultLauncher<String, Boolean> managedActivityResultLauncher, Context context, MutableState<Pair<LocalDate, LocalTime>> mutableState, LocalDate fecha, LocalTime hora) {
        if (Build.VERSION.SDK_INT < 33) {
            NotificationUtilsKt.programarRecordatorioCita(context, fecha, hora, 30, "Cita en Amani", "Tu cita es a las " + hora.format(DateTimeFormatter.ofPattern("HH:mm")));
        } else {
            mutableState.setValue(TuplesKt.to(fecha, hora));
            managedActivityResultLauncher.launch("android.permission.POST_NOTIFICATIONS");
        }
    }

    private static final void CitasScreen$LeyendaItem(long color, String texto, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformationMarkerStart($composer, -496981212, "C(LeyendaItem)N(color:c#ui.graphics.Color,texto)174@7111L436:CitasScreen.kt#yd4c32");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-496981212, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.LeyendaItem (CitasScreen.kt:173)");
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
        ComposerKt.sourceInformationMarkerStart($composer, -1707031469, "C178@7291L6,175@7177L180,181@7370L39,182@7463L10,182@7508L11,182@7422L115:CitasScreen.kt#yd4c32");
        BoxKt.Box(BackgroundKt.m264backgroundbw27NRU$default(ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getSmall()), color, null, 2, null), $composer, 0);
        SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(6)), $composer, 6);
        TextKt.m2976Text4IGK_g(texto, (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, ($changed >> 3) & 14, 0, 65530);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        $composer.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
    }

    static final Unit CitasScreen$lambda$39(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C209@8619L31:CitasScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(70135939, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:209)");
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

    static final Unit CitasScreen$lambda$68(final Typography $typography, final ColorScheme $colors, final List $citasDelDia, final Set $fechasConCitas, final CitasViewModel $viewModel, final MutableState $mesVisible$delegate, final MutableState $fechaSeleccionada$delegate, final Context $context, State $isLoading$delegate, final List $franjasParaVista, final State $disponibilidadDia$delegate, final MutableState $franjaSeleccionadaTemp$delegate, final MutableState $motivoCita$delegate, final MutableState $mostrarDialogoMotivo$delegate, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Function0<ComposeUiNode> function04;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)212@8729L13008:CitasScreen.kt#yd4c32");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(917802444, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:212)");
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
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
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
            ComposerKt.sourceInformationMarkerStart($composer, 2094583194, "C220@8975L21,217@8860L12867:CitasScreen.kt#yd4c32");
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null), Dp.m7505constructorimpl(16), Dp.m7505constructorimpl(12));
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
            int i6 = ((0 >> 6) & 112) | 6;
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 581221163, "C223@9097L280,231@9395L273,238@9686L41,241@9772L383,250@10173L41,255@10366L6,256@10423L43,257@10485L714,253@10262L937,273@11217L41,280@11581L4160,276@11341L4400,356@16046L5251,352@15820L5477,458@21672L41:CitasScreen.kt#yd4c32");
            TextKt.m2976Text4IGK_g("Mis citas", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(4), 7, null), $colors.getOnBackground(), 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getHeadlineMedium(), $composer, 196662, 0, 65496);
            TextKt.m2976Text4IGK_g("Selecciona una fecha y horario para agendar tu cita", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(16), 7, null), $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 54, 0, 65528);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
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
                function03 = constructor3;
                $composer.createNode(function03);
            } else {
                function03 = constructor3;
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
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i9 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1264301417, "C245@9945L40,246@10006L54,247@10081L56:CitasScreen.kt#yd4c32");
            CitasScreen$LeyendaItem($colors.getPrimary(), "Con citas", $composer, 48);
            CitasScreen$LeyendaItem($colors.getPrimaryContainer(), "Día disponible", $composer, 48);
            CitasScreen$LeyendaItem($colors.getErrorContainer(), "Sin disponibilidad", $composer, 48);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-592976354, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45($fechasConCitas, $viewModel, $mesVisible$delegate, $fechaSeleccionada$delegate, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 24);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            AnimatedVisibilityKt.AnimatedVisibility(columnScope, (CitasScreen$lambda$5($fechaSeleccionada$delegate) == null || $citasDelDia.isEmpty()) ? false : true, (Modifier) null, EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null)), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(-2117279112, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55($typography, $citasDelDia, $colors, $context, (AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, (i6 & 14) | 1600512, 18);
            AnimatedVisibilityKt.AnimatedVisibility(columnScope, (CitasScreen$lambda$5($fechaSeleccionada$delegate) == null || CitasScreen$lambda$3($isLoading$delegate)) ? false : true, (Modifier) null, EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null)), EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(-1476906719, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64($fechaSeleccionada$delegate, $colors, $franjasParaVista, $disponibilidadDia$delegate, $typography, $franjaSeleccionadaTemp$delegate, $motivoCita$delegate, $mostrarDialogoMotivo$delegate, (AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, (i6 & 14) | 1600512, 18);
            if (CitasScreen$lambda$3($isLoading$delegate)) {
                $composer.startReplaceGroup(592975246);
                ComposerKt.sourceInformation($composer, "449@21352L41,450@21414L222");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default2);
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                int i10 = ((((54 << 3) & 112) << 6) & 896) | 6;
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
                Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
                int i11 = (i10 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i12 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 465895449, "C454@21587L27:CitasScreen.kt#yd4c32");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(null, 0L, 0.0f, 0L, 0, $composer, 0, 31);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
            } else {
                $composer.startReplaceGroup(571804850);
            }
            $composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(80)), $composer, 6);
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
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45(Set $fechasConCitas, final CitasViewModel $viewModel, final MutableState $mesVisible$delegate, final MutableState $fechaSeleccionada$delegate, ColumnScope Card, Composer $composer, int $changed) {
        Object obj;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C263@10799L19,264@10866L293,258@10507L674:CitasScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-592976354, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:258)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            YearMonth yearMonthCitasScreen$lambda$8 = CitasScreen$lambda$8($mesVisible$delegate);
            Intrinsics.checkNotNullExpressionValue(yearMonthCitasScreen$lambda$8, "CitasScreen$lambda$8(...)");
            LocalDate localDateCitasScreen$lambda$5 = CitasScreen$lambda$5($fechaSeleccionada$delegate);
            ComposerKt.sourceInformationMarkerStart($composer, 1380384241, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$42$lambda$41($mesVisible$delegate, (YearMonth) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue = obj2;
            }
            Function1 function1 = (Function1) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1380386659, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($viewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda22
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$44$lambda$43($viewModel, $fechaSeleccionada$delegate, (LocalDate) obj3);
                    }
                };
                $composer.updateRememberedValue(obj);
            } else {
                obj = objRememberedValue2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            CalendarioViewKt.CalendarioView(modifierFillMaxWidth$default, yearMonthCitasScreen$lambda$8, localDateCitasScreen$lambda$5, $fechasConCitas, function1, (Function1) obj, $composer, 24582, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$42$lambda$41(MutableState $mesVisible$delegate, YearMonth it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $mesVisible$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$45$lambda$44$lambda$43(CitasViewModel $viewModel, MutableState $fechaSeleccionada$delegate, LocalDate fecha) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        $fechaSeleccionada$delegate.setValue(Intrinsics.areEqual(CitasScreen$lambda$5($fechaSeleccionada$delegate), fecha) ? null : fecha);
        if (CitasScreen$lambda$5($fechaSeleccionada$delegate) != null) {
            $viewModel.cargarDisponibilidad(fecha);
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55(final Typography $typography, List $citasDelDia, final ColorScheme $colors, final Context $context, AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C281@11603L4120:CitasScreen.kt#yd4c32");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2117279112, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:281)");
        }
        int i = 0;
        ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
        Modifier modifier = Modifier.INSTANCE;
        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
        CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        int i2 = ((((0 << 3) & 112) << 6) & 896) | 6;
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
        int i3 = (i2 >> 6) & 14;
        ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        int i4 = ((0 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -440969216, "C282@11636L285,347@15660L41:CitasScreen.kt#yd4c32");
        int i5 = 1;
        Composer composer = null;
        TextKt.m2976Text4IGK_g("📋 Mis citas programadas", PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(8), 1, null), 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), $composer, 196662, 0, 65500);
        $composer.startReplaceGroup(539974462);
        ComposerKt.sourceInformation($composer, "*292@12158L6,293@12227L141,296@12399L3210,290@12005L3604");
        List<AgendaItemDTO> list = $citasDelDia;
        for (final AgendaItemDTO agendaItemDTO : list) {
            Iterable iterable = list;
            Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i5, composer), 0.0f, Dp.m7505constructorimpl(4), 1, null);
            CornerBasedShape medium = MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium();
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            long primaryContainer = $colors.getPrimaryContainer();
            i5 = 1;
            CardKt.Card(modifierM820paddingVpY3zN4$default, medium, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(primaryContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primaryContainer) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(primaryContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primaryContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primaryContainer) : 0.0f), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(-1425250073, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52(agendaItemDTO, $context, $typography, $colors, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 24);
            list = iterable;
            i = i;
            composer = null;
        }
        $composer.endReplaceGroup();
        SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        $composer.endNode();
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52(final AgendaItemDTO $cita, final Context $context, final Typography $typography, ColorScheme $colors, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        String lowerCase;
        long jM4695copywmQWz5c;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C297@12433L3146:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1425250073, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:297)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12));
            Arrangement.Horizontal spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
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
            ComposerKt.sourceInformationMarkerStart($composer, -233026634, "C302@12751L1870,331@14721L628,330@14659L886:CitasScreen.kt#yd4c32");
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
            ComposerKt.sourceInformationMarkerStart($composer, 1970917823, "C303@12800L304,315@13660L6,321@14133L450,314@13585L998:CitasScreen.kt#yd4c32");
            TextKt.m2976Text4IGK_g("🕐 " + $cita.getHoraInicio().format(DateTimeFormatter.ofPattern("HH:mm")) + " - " + $cita.getHoraFin().format(DateTimeFormatter.ofPattern("HH:mm")), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            String motivo = $cita.getMotivo();
            if (!(motivo == null || StringsKt.isBlank(motivo))) {
                $composer.startReplaceGroup(1971249832);
                ComposerKt.sourceInformation($composer, "308@13225L277");
                TextKt.m2976Text4IGK_g($cita.getMotivo(), (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodySmall(), $composer, 0, 0, 65530);
            } else {
                $composer.startReplaceGroup(1958163957);
            }
            $composer.endReplaceGroup();
            CornerBasedShape small = MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getSmall();
            String estado = $cita.getEstado();
            if (estado != null) {
                lowerCase = estado.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (Intrinsics.areEqual(lowerCase, "confirmada")) {
                long primary = $colors.getPrimary();
                jM4695copywmQWz5c = Color.m4695copywmQWz5c(primary, (14 & 1) != 0 ? Color.m4699getAlphaimpl(primary) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(primary) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(primary) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(primary) : 0.0f);
            } else if (Intrinsics.areEqual(lowerCase, "cancelada")) {
                long error = $colors.getError();
                jM4695copywmQWz5c = Color.m4695copywmQWz5c(error, (14 & 1) != 0 ? Color.m4699getAlphaimpl(error) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(error) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(error) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(error) : 0.0f);
            } else {
                long secondary = $colors.getSecondary();
                jM4695copywmQWz5c = Color.m4695copywmQWz5c(secondary, (14 & 1) != 0 ? Color.m4699getAlphaimpl(secondary) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(secondary) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(secondary) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(secondary) : 0.0f);
            }
            SurfaceKt.m2826SurfaceT9BRK9s(null, small, jM4695copywmQWz5c, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-952556974, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$48$lambda$47($cita, $typography, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 12582912, 121);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 1378017207, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($cita) | $composer.changedInstance($context);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$50$lambda$49($cita, $context);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$CitasScreenKt.INSTANCE.m10439getLambda$1743683450$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$48$lambda$47(AgendaItemDTO $cita, Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C322@14179L362:CitasScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-952556974, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:322)");
            }
            String estado = $cita.getEstado();
            if (estado == null) {
                estado = "Pendiente";
                TextKt.m2976Text4IGK_g(estado, PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(6), Dp.m7505constructorimpl(2)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelSmall(), $composer, 48, 0, 65532);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                if (estado.length() > 0) {
                    StringBuilder sb = new StringBuilder();
                    String strValueOf = String.valueOf(estado.charAt(0));
                    Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    StringBuilder sbAppend = sb.append((Object) upperCase);
                    String strSubstring = estado.substring(1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    estado = sbAppend.append(strSubstring).toString();
                }
                if (estado == null) {
                }
                TextKt.m2976Text4IGK_g(estado, PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(6), Dp.m7505constructorimpl(2)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelSmall(), $composer, 48, 0, 65532);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$55$lambda$54$lambda$53$lambda$52$lambda$51$lambda$50$lambda$49(AgendaItemDTO $cita, Context $context) {
        String motivo = $cita.getMotivo();
        if (motivo == null) {
            motivo = "Cita psicológica";
        }
        String str = motivo;
        LocalDate fecha = $cita.getFecha();
        LocalTime horaInicio = $cita.getHoraInicio();
        Integer duracionMinutos = $cita.getDuracionMinutos();
        CalendarUtilsKt.enviarCitaAlCalendario($context, fecha, horaInicio, duracionMinutos != null ? duracionMinutos.intValue() : 60, "Cita en Amani", str);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64(MutableState $fechaSeleccionada$delegate, final ColorScheme $colors, List $franjasParaVista, State $disponibilidadDia$delegate, final Typography $typography, final MutableState $franjaSeleccionadaTemp$delegate, final MutableState $motivoCita$delegate, final MutableState $mostrarDialogoMotivo$delegate, AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Composer composer;
        Function0<ComposeUiNode> function0;
        Composer composer2;
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C:CitasScreen.kt#yd4c32");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1476906719, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:357)");
        }
        LocalDate localDateCitasScreen$lambda$5 = CitasScreen$lambda$5($fechaSeleccionada$delegate);
        if (localDateCitasScreen$lambda$5 == null) {
            $composer.startReplaceGroup(-882883880);
            $composer.endReplaceGroup();
        } else {
            $composer.startReplaceGroup(-882883879);
            ComposerKt.sourceInformation($composer, "");
            DisponibilidadDiaResponse disponibilidadDiaResponseCitasScreen$lambda$1 = CitasScreen$lambda$1($disponibilidadDia$delegate);
            if (disponibilidadDiaResponseCitasScreen$lambda$1 != null && disponibilidadDiaResponseCitasScreen$lambda$1.getDiaCompleto()) {
                $composer.startReplaceGroup(-699517415);
                ComposerKt.sourceInformation($composer, "362@16373L6,363@16446L147,366@16628L1461,360@16237L1852");
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                CornerBasedShape medium = MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium();
                CardDefaults cardDefaults = CardDefaults.INSTANCE;
                long errorContainer = $colors.getErrorContainer();
                composer = $composer;
                CardKt.Card(modifierFillMaxWidth$default, medium, cardDefaults.m2112cardColorsro_MJ88(Color.m4695copywmQWz5c(errorContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(errorContainer) : 0.3f, (14 & 2) != 0 ? Color.m4703getRedimpl(errorContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(errorContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(errorContainer) : 0.0f), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(883711139, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$57($colors, $typography, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), composer, 196614, 24);
                composer.endReplaceGroup();
            } else if ($franjasParaVista.isEmpty()) {
                $composer.startReplaceGroup(-697558711);
                ComposerKt.sourceInformation($composer, "394@18348L6,395@18421L128,398@18584L1464,392@18212L1836");
                composer = $composer;
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurfaceVariant(), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(880319514, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$59($colors, $typography, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), composer, 196614, 24);
                composer.endReplaceGroup();
            } else {
                composer = $composer;
                composer.startReplaceGroup(-695661511);
                ComposerKt.sourceInformation(composer, "424@20149L1052");
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
                ComposerKt.sourceInformationMarkerStart($composer, 1589696736, "C425@20194L356,436@20868L261,432@20588L579:CitasScreen.kt#yd4c32");
                TextKt.m2976Text4IGK_g("✨ Horarios disponibles para agendar", PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(8), 1, null), 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), $composer, 196662, 0, 65500);
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer, -779982597, "CC(remember):CitasScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    composer2 = $composer;
                    objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return CitasScreenKt.CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$62$lambda$61$lambda$60($franjaSeleccionadaTemp$delegate, $motivoCita$delegate, $mostrarDialogoMotivo$delegate, (FranjaHoraria) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue);
                } else {
                    composer2 = $composer;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                Composer composer3 = composer2;
                VistaDiariaHorasKt.VistaDiariaHoras(localDateCitasScreen$lambda$5, $franjasParaVista, modifierFillMaxWidth$default2, (Function1) objRememberedValue, $composer, 3456, 0);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                composer.endReplaceGroup();
            }
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$57(ColorScheme $colors, Typography $typography, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C367@16666L1389:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(883711139, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:367)");
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
            ComposerKt.sourceInformationMarkerStart($composer, 1323923054, "C371@16921L328,377@17290L40,378@17371L316,383@17728L289:CitasScreen.kt#yd4c32");
            IconKt.m2433Iconww6aTOc(EventBusyKt.getEventBusy(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), $colors.getError(), $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("No hay disponibilidad para este día", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, 65022);
            TextKt.m2976Text4IGK_g("El psicólogo no atiende en esta fecha", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodySmall(), $composer, 6, 0, 65530);
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

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$59(ColorScheme $colors, Typography $typography, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C399@18622L1392:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(880319514, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (CitasScreen.kt:399)");
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
            ComposerKt.sourceInformationMarkerStart($composer, 1790716532, "C403@18877L340,409@19258L40,410@19339L308,415@19688L288:CitasScreen.kt#yd4c32");
            IconKt.m2433Iconww6aTOc(AccessTimeKt.getAccessTime(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(48)), $colors.getOnSurfaceVariant(), $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("No hay horarios disponibles", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, 65022);
            TextKt.m2976Text4IGK_g("Todos los horarios ya están ocupados", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodySmall(), $composer, 6, 0, 65530);
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

    static final Unit CitasScreen$lambda$68$lambda$67$lambda$66$lambda$64$lambda$63$lambda$62$lambda$61$lambda$60(MutableState $franjaSeleccionadaTemp$delegate, MutableState $motivoCita$delegate, MutableState $mostrarDialogoMotivo$delegate, FranjaHoraria franja) {
        Intrinsics.checkNotNullParameter(franja, "franja");
        $franjaSeleccionadaTemp$delegate.setValue(franja);
        $motivoCita$delegate.setValue("");
        CitasScreen$lambda$16($mostrarDialogoMotivo$delegate, true);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$70$lambda$69(MutableState $mostrarDialogoMotivo$delegate) {
        CitasScreen$lambda$16($mostrarDialogoMotivo$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$78(Typography $typography, ColorScheme $colors, MutableState $fechaSeleccionada$delegate, MutableState $franjaSeleccionadaTemp$delegate, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C468@22051L546:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1446097076, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:468)");
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
            ComposerKt.sourceInformationMarkerStart($composer, 438249946, "C469@22080L177,474@22278L301:CitasScreen.kt#yd4c32");
            TextKt.m2976Text4IGK_g("Confirmar cita", (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleLarge(), $composer, 196614, 0, 65502);
            LocalDate localDateCitasScreen$lambda$5 = CitasScreen$lambda$5($fechaSeleccionada$delegate);
            Intrinsics.checkNotNull(localDateCitasScreen$lambda$5);
            String str = localDateCitasScreen$lambda$5.format(DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", new Locale("es", "ES")));
            FranjaHoraria franjaHorariaCitasScreen$lambda$18 = CitasScreen$lambda$18($franjaSeleccionadaTemp$delegate);
            Intrinsics.checkNotNull(franjaHorariaCitasScreen$lambda$18);
            TextKt.m2976Text4IGK_g(str + " a las " + franjaHorariaCitasScreen$lambda$18.getHoraInicio(), (Modifier) null, $colors.getPrimary(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 0, 0, 65530);
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

    static final Unit CitasScreen$lambda$82(Typography $typography, final MutableState $motivoCita$delegate, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C482@22650L694:CitasScreen.kt#yd4c32");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2097321067, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:482)");
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
            ComposerKt.sourceInformationMarkerStart($composer, 701951559, "C483@22679L205,495@23291L6,490@23008L19,488@22905L421:CitasScreen.kt#yd4c32");
            TextKt.m2976Text4IGK_g("¿Deseas confirmar esta cita?", PaddingKt.m822paddingqDBjuR0$default(Modifier.INSTANCE, 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(8), 7, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 54, 0, 65532);
            String strCitasScreen$lambda$21 = CitasScreen$lambda$21($motivoCita$delegate);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            CornerBasedShape medium = MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium();
            ComposerKt.sourceInformationMarkerStart($composer, 1546674152, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CitasScreenKt.CitasScreen$lambda$82$lambda$81$lambda$80$lambda$79($motivoCita$delegate, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            OutlinedTextFieldKt.OutlinedTextField(strCitasScreen$lambda$21, (Function1<? super String, Unit>) objRememberedValue, modifierFillMaxWidth$default, false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableSingletons$CitasScreenKt.INSTANCE.m10441getLambda$258929188$app(), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 3, 2, (MutableInteractionSource) null, (Shape) medium, (TextFieldColors) null, $composer, 12583344, 905969664, 0, 5504888);
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

    static final Unit CitasScreen$lambda$82$lambda$81$lambda$80$lambda$79(MutableState $motivoCita$delegate, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $motivoCita$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$73(final CoroutineScope $scope, final CitasViewModel $viewModel, final ManagedActivityResultLauncher $notifPermissionLauncher, final Context $context, final SnackbarHostState $snackbarHostState, final MutableState $franjaSeleccionadaTemp$delegate, final MutableState $fechaSeleccionada$delegate, final MutableState $motivoCita$delegate, final MutableState $pendingRecordatorio$delegate, final MutableState $mostrarDialogoMotivo$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C501@23444L2110,541@25598L6,500@23406L2286:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1560099536, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:500)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 312071694, "CC(remember):CitasScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($scope) | $composer.changedInstance($viewModel) | $composer.changedInstance($notifPermissionLauncher) | $composer.changedInstance($context);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CitasScreenKt.CitasScreen$lambda$73$lambda$72$lambda$71($scope, $viewModel, $snackbarHostState, $context, $franjaSeleccionadaTemp$delegate, $fechaSeleccionada$delegate, $motivoCita$delegate, $notifPermissionLauncher, $pendingRecordatorio$delegate, $mostrarDialogoMotivo$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue, null, false, MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getMedium(), null, null, null, null, null, ComposableSingletons$CitasScreenKt.INSTANCE.m10440getLambda$1991467808$app(), $composer, 805306368, 502);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$73$lambda$72$lambda$71(CoroutineScope $scope, CitasViewModel $viewModel, SnackbarHostState $snackbarHostState, Context $context, MutableState $franjaSeleccionadaTemp$delegate, MutableState $fechaSeleccionada$delegate, MutableState $motivoCita$delegate, ManagedActivityResultLauncher $notifPermissionLauncher, MutableState $pendingRecordatorio$delegate, MutableState $mostrarDialogoMotivo$delegate) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new CitasScreenKt$CitasScreen$7$1$1$1($viewModel, $snackbarHostState, $context, $franjaSeleccionadaTemp$delegate, $fechaSeleccionada$delegate, $motivoCita$delegate, $notifPermissionLauncher, $pendingRecordatorio$delegate, $mostrarDialogoMotivo$delegate, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$76(final MutableState $mostrarDialogoMotivo$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C547@25775L32,547@25754L111:CitasScreen.kt#yd4c32");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(57001230, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreen.<anonymous> (CitasScreen.kt:547)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -1056391538, "CC(remember):CitasScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CitasScreenKt.CitasScreen$lambda$76$lambda$75$lambda$74($mostrarDialogoMotivo$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableSingletons$CitasScreenKt.INSTANCE.getLambda$1911837233$app(), $composer, 805306374, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit CitasScreen$lambda$76$lambda$75$lambda$74(MutableState $mostrarDialogoMotivo$delegate) {
        CitasScreen$lambda$16($mostrarDialogoMotivo$delegate, false);
        return Unit.INSTANCE;
    }
}
