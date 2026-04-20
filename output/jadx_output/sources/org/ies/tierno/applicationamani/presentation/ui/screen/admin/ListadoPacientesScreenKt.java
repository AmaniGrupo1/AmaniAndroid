package org.ies.tierno.applicationamani.presentation.ui.screen.admin;

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
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AttachMoneyKt;
import androidx.compose.material.icons.filled.CakeKt;
import androidx.compose.material.icons.filled.CreditCardKt;
import androidx.compose.material.icons.filled.DateRangeKt;
import androidx.compose.material.icons.filled.DeleteKt;
import androidx.compose.material.icons.filled.EditKt;
import androidx.compose.material.icons.filled.EmailKt;
import androidx.compose.material.icons.filled.ErrorKt;
import androidx.compose.material.icons.filled.InfoKt;
import androidx.compose.material.icons.filled.PaymentKt;
import androidx.compose.material.icons.filled.PeopleKt;
import androidx.compose.material.icons.filled.PersonKt;
import androidx.compose.material.icons.filled.PhoneKt;
import androidx.compose.material.icons.filled.PsychologyKt;
import androidx.compose.material.icons.filled.RestoreKt;
import androidx.compose.material.icons.filled.UpdateKt;
import androidx.compose.material.icons.filled.WcKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel;
import org.ies.tierno.applicationamani.ui.theme.TypeKt;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: ListadoPacientesScreen.kt */
/* JADX INFO: loaded from: classes12.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001aq\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a7\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u001e\u0010\u001f\u001aA\u0010 \u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"H\u0007¢\u0006\u0004\b#\u0010$¨\u0006%²\u0006\u0010\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0'X\u008a\u0084\u0002²\u0006\f\u0010(\u001a\u0004\u0018\u00010\tX\u008a\u008e\u0002²\u0006\n\u0010)\u001a\u00020*X\u008a\u008e\u0002"}, d2 = {"ListadoPacientesScreen", "", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/runtime/Composer;II)V", "PacienteCard", "paciente", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;", "onDarBaja", "Lkotlin/Function0;", "onEditar", "onAsignarPsicologo", "primaryColor", "Landroidx/compose/ui/graphics/Color;", "pendingColor", "paidColor", "inactiveColor", "roboto", "Landroidx/compose/ui/text/font/FontFamily;", "PacienteCard-zTql3dQ", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V", "InfoRow", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "label", "", Values.VECTOR_MAP_VECTORS_KEY, "iconColor", "InfoRow-ww6aTOc", "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V", "InfoRowCompact", "modifier", "Landroidx/compose/ui/Modifier;", "InfoRowCompact-fWhpE4E", "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "app", "pacientes", "", "pacienteSeleccionado", "mostrarDialogoBaja", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ListadoPacientesScreenKt {
    static final Unit InfoRowCompact_fWhpE4E$lambda$69(ImageVector imageVector, String str, String str2, long j, FontFamily fontFamily, Modifier modifier, int i, int i2, Composer composer, int i3) {
        m10427InfoRowCompactfWhpE4E(imageVector, str, str2, j, fontFamily, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit InfoRow_ww6aTOc$lambda$67(ImageVector imageVector, String str, String str2, long j, FontFamily fontFamily, int i, Composer composer, int i2) {
        m10426InfoRowww6aTOc(imageVector, str, str2, j, fontFamily, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$37(NavController navController, ListarPacientesViewModel listarPacientesViewModel, int i, int i2, Composer composer, int i3) {
        ListadoPacientesScreen(navController, listarPacientesViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$65(NavController navController, DatosPacienteAdminDTO datosPacienteAdminDTO, Function0 function0, Function0 function02, Function0 function03, long j, long j2, long j3, long j4, FontFamily fontFamily, int i, Composer composer, int i2) {
        m10428PacienteCardzTql3dQ(navController, datosPacienteAdminDTO, function0, function02, function03, j, j2, j3, j4, fontFamily, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ListadoPacientesScreen(final NavController navController, ListarPacientesViewModel viewModel, Composer $composer, final int $changed, final int i) {
        final ListarPacientesViewModel viewModel2;
        Composer $composer2;
        final NavController navController2;
        final ListarPacientesViewModel viewModel3;
        Object objRememberedValue;
        Object objRememberedValue2;
        Object objRememberedValue3;
        Object objRememberedValue4;
        State pacientes$delegate;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(-955894205);
        ComposerKt.sourceInformation($composer3, "C(ListadoPacientesScreen)N(navController,viewModel)83@3931L16,84@3964L24,85@4017L32,86@4082L57,87@4170L34,100@4543L80,103@4648L35,104@4716L369,113@5092L4893,98@4474L5511:ListadoPacientesScreen.kt#t64v6f");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                viewModel2 = viewModel;
                int i2 = $composer3.changedInstance(viewModel2) ? 32 : 16;
                $dirty |= i2;
            } else {
                viewModel2 = viewModel;
            }
            $dirty |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if ($composer3.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "81@3871L15");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ListarPacientesViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty &= -113;
                    viewModel3 = (ListarPacientesViewModel) viewModelResolveViewModel;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-955894205, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen (ListadoPacientesScreen.kt:82)");
                }
                State pacientes$delegate2 = SnapshotStateKt.collectAsState(viewModel3.getPaciente(), null, $composer3, 0, 1);
                ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object objCreateCompositionCoroutineScope = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                    $composer3.updateRememberedValue(objCreateCompositionCoroutineScope);
                    objRememberedValue = objCreateCompositionCoroutineScope;
                }
                final CoroutineScope scope = (CoroutineScope) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 508680035, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                objRememberedValue2 = $composer3.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object snackbarHostState = new SnackbarHostState();
                    $composer3.updateRememberedValue(snackbarHostState);
                    objRememberedValue2 = snackbarHostState;
                }
                final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 508682140, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                objRememberedValue3 = $composer3.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    $composer3.updateRememberedValue(objMutableStateOf$default);
                    objRememberedValue3 = objMutableStateOf$default;
                }
                final MutableState pacienteSeleccionado$delegate = (MutableState) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 508684933, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                objRememberedValue4 = $composer3.rememberedValue();
                if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
                    pacientes$delegate = pacientes$delegate2;
                    Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    $composer3.updateRememberedValue(objMutableStateOf$default2);
                    objRememberedValue4 = objMutableStateOf$default2;
                } else {
                    pacientes$delegate = pacientes$delegate2;
                }
                final MutableState mostrarDialogoBaja$delegate = (MutableState) objRememberedValue4;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final FontFamily roboto = TypeKt.getRoboto();
                final FontFamily balow = TypeKt.getBarlowCondensed();
                long backgroundColor = ColorKt.Color(4294309365L);
                final long primaryColor = ColorKt.Color(4285293567L);
                final long pendingColor = ColorKt.Color(4294940672L);
                final long paidColor = ColorKt.Color(4283215696L);
                final long inactiveColor = ColorKt.Color(4288585374L);
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(2025868287, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$8(navController, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(677734717, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda29
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$9(snackbarHostState2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(3667932, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda30
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$12(navController, primaryColor, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                final State pacientes$delegate3 = pacientes$delegate;
                Function3 function3 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36(pacientes$delegate3, navController, roboto, primaryColor, pendingColor, paidColor, inactiveColor, pacienteSeleccionado$delegate, mostrarDialogoBaja$delegate, scope, viewModel3, snackbarHostState2, balow, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                };
                ListarPacientesViewModel viewModel4 = viewModel3;
                navController2 = navController;
                $composer2 = $composer3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda, null, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, 0, backgroundColor, 0L, null, ComposableLambdaKt.rememberComposableLambda(852123668, true, function3, $composer2, 54), $composer2, 806906928, StatusLine.HTTP_MISDIRECTED_REQUEST);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                viewModel2 = viewModel4;
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty &= -113;
                }
            }
            viewModel3 = viewModel2;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            State pacientes$delegate22 = SnapshotStateKt.collectAsState(viewModel3.getPaciente(), null, $composer3, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            final CoroutineScope scope2 = (CoroutineScope) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 508680035, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            final SnackbarHostState snackbarHostState22 = (SnackbarHostState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 508682140, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            objRememberedValue3 = $composer3.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            }
            final MutableState pacienteSeleccionado$delegate2 = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 508684933, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            objRememberedValue4 = $composer3.rememberedValue();
            if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
            }
            final MutableState mostrarDialogoBaja$delegate2 = (MutableState) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final FontFamily roboto2 = TypeKt.getRoboto();
            final FontFamily balow2 = TypeKt.getBarlowCondensed();
            long backgroundColor2 = ColorKt.Color(4294309365L);
            final long primaryColor2 = ColorKt.Color(4285293567L);
            final long pendingColor2 = ColorKt.Color(4294940672L);
            final long paidColor2 = ColorKt.Color(4283215696L);
            final long inactiveColor2 = ColorKt.Color(4288585374L);
            ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(2025868287, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$8(navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(677734717, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$9(snackbarHostState22, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            ComposableLambda composableLambdaRememberComposableLambda32 = ComposableLambdaKt.rememberComposableLambda(3667932, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$12(navController, primaryColor2, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            final State pacientes$delegate32 = pacientes$delegate;
            Function3 function32 = new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36(pacientes$delegate32, navController, roboto2, primaryColor2, pendingColor2, paidColor2, inactiveColor2, pacienteSeleccionado$delegate2, mostrarDialogoBaja$delegate2, scope2, viewModel3, snackbarHostState22, balow2, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            };
            ListarPacientesViewModel viewModel42 = viewModel3;
            navController2 = navController;
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda4, null, composableLambdaRememberComposableLambda22, composableLambdaRememberComposableLambda32, 0, backgroundColor2, 0L, null, ComposableLambdaKt.rememberComposableLambda(852123668, true, function32, $composer2, 54), $composer2, 806906928, StatusLine.HTTP_MISDIRECTED_REQUEST);
            if (ComposerKt.isTraceInProgress()) {
            }
            viewModel2 = viewModel42;
        } else {
            $composer2 = $composer3;
            navController2 = navController;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$37(navController2, viewModel2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final List<DatosPacienteAdminDTO> ListadoPacientesScreen$lambda$0(State<? extends List<DatosPacienteAdminDTO>> state) {
        return (List) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DatosPacienteAdminDTO ListadoPacientesScreen$lambda$3(MutableState<DatosPacienteAdminDTO> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean ListadoPacientesScreen$lambda$6(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ListadoPacientesScreen$lambda$7(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit ListadoPacientesScreen$lambda$8(NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C101@4557L56:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2025868287, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous> (ListadoPacientesScreen.kt:101)");
            }
            MenuAdministradorKt.MenuAdministrador("Listado de pacientes", $navController, false, false, null, null, $composer, 6, 60);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$9(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C103@4650L31:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(677734717, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous> (ListadoPacientesScreen.kt:103)");
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

    static final Unit ListadoPacientesScreen$lambda$12$lambda$11$lambda$10(NavController $navController) {
        NavController.navigate$default($navController, Screens.agregarPacienteAdmin.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$12(final NavController $navController, long $primaryColor, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C106@4778L62,105@4730L345:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(3667932, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous> (ListadoPacientesScreen.kt:105)");
            }
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            ComposerKt.sourceInformationMarkerStart($composer, -770082598, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($navController);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$12$lambda$11$lambda$10($navController);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            FloatingActionButtonKt.m2408FloatingActionButtonXz6DiA((Function0) objRememberedValue, null, roundedCornerShapeM1126RoundedCornerShape0680j_4, $primaryColor, 0L, null, null, ComposableSingletons$ListadoPacientesScreenKt.INSTANCE.m10425getLambda$1316597478$app(), $composer, 12585984, 114);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36(final State $pacientes$delegate, final NavController $navController, final FontFamily $roboto, final long $primaryColor, final long $pendingColor, final long $paidColor, final long $inactiveColor, final MutableState $pacienteSeleccionado$delegate, MutableState $mostrarDialogoBaja$delegate, final CoroutineScope $scope, final ListarPacientesViewModel $viewModel, final SnackbarHostState $snackbarHostState, final FontFamily $balow, PaddingValues paddingValues, Composer $composer, int $changed) {
        final MutableState mutableState;
        Modifier modifier;
        String str;
        Composer composer;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues):ListadoPacientesScreen.kt#t64v6f");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if (!$composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(852123668, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous> (ListadoPacientesScreen.kt:116)");
            }
            if (ListadoPacientesScreen$lambda$0($pacientes$delegate).isEmpty()) {
                $composer.startReplaceGroup(-1935370227);
                ComposerKt.sourceInformation($composer, "117@5190L1257");
                Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), paddingValues);
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierPadding);
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
                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                int i2 = (i >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i3 = ((48 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -893094048, "C123@5395L1038:ListadoPacientesScreen.kt#t64v6f");
                Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                Modifier modifier2 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, centerHorizontally, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier2);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i4 = ((((432 << 3) & 112) << 6) & 896) | 6;
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
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i6 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -1984238214, "C127@5585L248,133@5854L220,140@6137L62,141@6249L43,142@6315L100,139@6095L320:ListadoPacientesScreen.kt#t64v6f");
                IconKt.m2433Iconww6aTOc(PeopleKt.getPeople(Icons.INSTANCE.getDefault()), "Sin pacientes", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(64)), Color.INSTANCE.m4727getGray0d7_KjU(), $composer, 3504, 0);
                TextKt.m2976Text4IGK_g("No hay pacientes registrados", (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(16), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1576326, 0, 130994);
                ComposerKt.sourceInformationMarkerStart($composer, 1460029865, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                boolean zChangedInstance = $composer.changedInstance($navController);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$17$lambda$16$lambda$14$lambda$13($navController);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                ButtonKt.Button((Function0) objRememberedValue, null, false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($primaryColor, 0L, 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1446828123, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$17$lambda$16$lambda$15($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer, 54), $composer, 805306368, 494);
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
                $composer.endReplaceGroup();
                mutableState = $mostrarDialogoBaja$delegate;
                composer = $composer;
                str = "CC(remember):ListadoPacientesScreen.kt#9igjgp";
            } else {
                $composer.startReplaceGroup(-1934092531);
                ComposerKt.sourceInformation($composer, "155@6776L990,148@6477L1289");
                Modifier modifierM822paddingqDBjuR0$default = PaddingKt.m822paddingqDBjuR0$default(PaddingKt.m820paddingVpY3zN4$default(PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), paddingValues), Dp.m7505constructorimpl(16), 0.0f, 2, null), 0.0f, Dp.m7505constructorimpl(16), 0.0f, 0.0f, 13, null);
                Arrangement.HorizontalOrVertical horizontalOrVerticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
                ComposerKt.sourceInformationMarkerStart($composer, -1447853710, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                boolean zChanged = $composer.changed($pacientes$delegate) | $composer.changedInstance($navController);
                Object objRememberedValue2 = $composer.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    mutableState = $mostrarDialogoBaja$delegate;
                    modifier = modifierM822paddingqDBjuR0$default;
                    str = "CC(remember):ListadoPacientesScreen.kt#9igjgp";
                    objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$23$lambda$22($pacientes$delegate, $navController, $primaryColor, $pendingColor, $paidColor, $inactiveColor, $roboto, $pacienteSeleccionado$delegate, mutableState, (LazyListScope) obj2);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue2);
                } else {
                    mutableState = $mostrarDialogoBaja$delegate;
                    modifier = modifierM822paddingqDBjuR0$default;
                    str = "CC(remember):ListadoPacientesScreen.kt#9igjgp";
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                LazyDslKt.LazyColumn(modifier, null, null, false, horizontalOrVerticalM688spacedBy0680j_4, null, null, false, null, (Function1) objRememberedValue2, $composer, 24576, 494);
                composer = $composer;
                composer.endReplaceGroup();
            }
            if (!ListadoPacientesScreen$lambda$6(mutableState) || ListadoPacientesScreen$lambda$3($pacienteSeleccionado$delegate) == null) {
                composer.startReplaceGroup(-1940545522);
            } else {
                composer.startReplaceGroup(-1932669228);
                ComposerKt.sourceInformation(composer, "183@7935L30,197@8498L1104,218@9636L319,184@7991L194,191@8210L254,182@7887L2082");
                ComposerKt.sourceInformationMarkerStart(composer, -1447817582, str);
                Object objRememberedValue3 = $composer.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$25$lambda$24(mutableState);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue3 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                final MutableState mutableState2 = mutableState;
                AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0((Function0) objRememberedValue3, ComposableLambdaKt.rememberComposableLambda(-257034082, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$29($scope, $viewModel, $pacienteSeleccionado$delegate, $snackbarHostState, mutableState2, $roboto, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, composer, 54), null, ComposableLambdaKt.rememberComposableLambda(-529088676, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$33($primaryColor, mutableState2, $roboto, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, composer, 54), null, ComposableLambdaKt.rememberComposableLambda(-801143270, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$34($balow, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, composer, 54), ComposableLambdaKt.rememberComposableLambda(-937170567, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$35($roboto, $pacienteSeleccionado$delegate, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, composer, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer, 1772598, 0, 16276);
                composer = $composer;
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$17$lambda$16$lambda$14$lambda$13(NavController $navController) {
        NavController.navigate$default($navController, Screens.agregarPacienteAdmin.INSTANCE.getRoute(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$17$lambda$16$lambda$15(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C143@6341L52:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1446828123, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:143)");
            }
            TextKt.m2976Text4IGK_g("Agregar primer paciente", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$23$lambda$22(State $pacientes$delegate, final NavController $navController, final long $primaryColor, final long $pendingColor, final long $paidColor, final long $inactiveColor, final FontFamily $roboto, final MutableState $pacienteSeleccionado$delegate, final MutableState $mostrarDialogoBaja$delegate, LazyListScope LazyColumn) {
        Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
        final List<DatosPacienteAdminDTO> listListadoPacientesScreen$lambda$0 = ListadoPacientesScreen$lambda$0($pacientes$delegate);
        final Function1 function1 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                return invoke((DatosPacienteAdminDTO) p1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(DatosPacienteAdminDTO datosPacienteAdminDTO) {
                return null;
            }
        };
        LazyColumn.items(listListadoPacientesScreen$lambda$0.size(), null, new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function1.invoke(listListadoPacientesScreen$lambda$0.get(index));
            }
        }, ComposableLambdaKt.composableLambdaInstance(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$lambda$36$lambda$23$lambda$22$$inlined$items$default$4
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
                ComposerKt.sourceInformation($composer, "CN(it)178@8834L22:LazyDsl.kt#428nma");
                int $dirty = $changed;
                if (($changed & 6) == 0) {
                    $dirty |= $composer.changed($this$items) ? 4 : 2;
                }
                if (($changed & 48) == 0) {
                    $dirty |= $composer.changed(it) ? 32 : 16;
                }
                if ($composer.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(802480018, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)");
                    }
                    int i = $dirty & 14;
                    final DatosPacienteAdminDTO datosPacienteAdminDTO = (DatosPacienteAdminDTO) listListadoPacientesScreen$lambda$0.get(it);
                    $composer.startReplaceGroup(-1375817753);
                    ComposerKt.sourceInformation($composer, "CN(paciente)*160@6979L141,164@7157L119,167@7323L140,157@6845L889:ListadoPacientesScreen.kt#t64v6f");
                    NavController navController = $navController;
                    ComposerKt.sourceInformationMarkerStart($composer, 2033832304, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                    boolean zChangedInstance = $composer.changedInstance(datosPacienteAdminDTO);
                    Object objRememberedValue = $composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        final MutableState mutableState = $pacienteSeleccionado$delegate;
                        final MutableState mutableState2 = $mostrarDialogoBaja$delegate;
                        Object obj = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$1$1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                mutableState.setValue(datosPacienteAdminDTO);
                                ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(mutableState2, true);
                            }
                        };
                        $composer.updateRememberedValue(obj);
                        objRememberedValue = obj;
                    }
                    Function0 function0 = (Function0) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerStart($composer, 2033837978, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                    boolean zChangedInstance2 = $composer.changedInstance($navController) | $composer.changedInstance(datosPacienteAdminDTO);
                    Object objRememberedValue2 = $composer.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        final NavController navController2 = $navController;
                        Object obj2 = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$2$1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                NavController.navigate$default(navController2, "editarPaciente/" + datosPacienteAdminDTO.getIdPaciente(), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
                            }
                        };
                        $composer.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    Function0 function02 = (Function0) objRememberedValue2;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerStart($composer, 2033843311, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                    Object objRememberedValue3 = $composer.rememberedValue();
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        Object obj3 = (Function0) new Function0<Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$4$2$1$1$3$1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                            }
                        };
                        $composer.updateRememberedValue(obj3);
                        objRememberedValue3 = obj3;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ListadoPacientesScreenKt.m10428PacienteCardzTql3dQ(navController, datosPacienteAdminDTO, function0, function02, (Function0) objRememberedValue3, $primaryColor, $pendingColor, $paidColor, $inactiveColor, $roboto, $composer, (i & 112) | 920346624);
                    $composer.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                $composer.skipToGroupEnd();
            }
        }));
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$25$lambda$24(MutableState $mostrarDialogoBaja$delegate) {
        ListadoPacientesScreen$lambda$7($mostrarDialogoBaja$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$34(FontFamily $balow, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C185@8013L154:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-801143270, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:185)");
            }
            TextKt.m2976Text4IGK_g("Confirmar baja", (Modifier) null, 0L, TextUnitKt.getSp(20), (FontStyle) null, (FontWeight) null, $balow, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1575942, 0, 130998);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$35(FontFamily $roboto, MutableState $pacienteSeleccionado$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C192@8232L214:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-937170567, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:192)");
            }
            DatosPacienteAdminDTO datosPacienteAdminDTOListadoPacientesScreen$lambda$3 = ListadoPacientesScreen$lambda$3($pacienteSeleccionado$delegate);
            Intrinsics.checkNotNull(datosPacienteAdminDTOListadoPacientesScreen$lambda$3);
            String nombreUsuario = datosPacienteAdminDTOListadoPacientesScreen$lambda$3.getNombreUsuario();
            DatosPacienteAdminDTO datosPacienteAdminDTOListadoPacientesScreen$lambda$32 = ListadoPacientesScreen$lambda$3($pacienteSeleccionado$delegate);
            Intrinsics.checkNotNull(datosPacienteAdminDTOListadoPacientesScreen$lambda$32);
            TextKt.m2976Text4IGK_g("¿Seguro que deseas dar de baja a " + nombreUsuario + " " + datosPacienteAdminDTOListadoPacientesScreen$lambda$32.getApellidoUsuario() + "?", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572864, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$29(final CoroutineScope $scope, final ListarPacientesViewModel $viewModel, final MutableState $pacienteSeleccionado$delegate, final SnackbarHostState $snackbarHostState, final MutableState $mostrarDialogoBaja$delegate, final FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C199@8566L815,213@9431L42,214@9496L88,198@8520L1064:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-257034082, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:198)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 2098353357, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($scope) | $composer.changedInstance($viewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$29$lambda$27$lambda$26($scope, $pacienteSeleccionado$delegate, $viewModel, $snackbarHostState, $mostrarDialogoBaja$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, ButtonDefaults.INSTANCE.m2103textButtonColorsro_MJ88(0L, Color.INSTANCE.m4731getRed0d7_KjU(), 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 48, 13), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-996537599, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$29$lambda$28($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306368, 494);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$29$lambda$27$lambda$26(CoroutineScope $scope, MutableState $pacienteSeleccionado$delegate, ListarPacientesViewModel $viewModel, SnackbarHostState $snackbarHostState, MutableState $mostrarDialogoBaja$delegate) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1($pacienteSeleccionado$delegate, $viewModel, $snackbarHostState, $mostrarDialogoBaja$delegate, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$29$lambda$28(FontFamily $roboto, RowScope TextButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
        ComposerKt.sourceInformation($composer, "C215@9522L40:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-996537599, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:215)");
            }
            TextKt.m2976Text4IGK_g("Dar de baja", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$33(long $primaryColor, final MutableState $mostrarDialogoBaja$delegate, final FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C220@9704L30,221@9784L45,222@9852L85,219@9658L279:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-529088676, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:219)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -1648074502, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$33$lambda$31$lambda$30($mostrarDialogoBaja$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.TextButton((Function0) objRememberedValue, null, false, null, ButtonDefaults.INSTANCE.m2103textButtonColorsro_MJ88(0L, $primaryColor, 0L, 0L, $composer, (ButtonDefaults.$stable << 12) | 48, 13), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1268592193, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$36$lambda$33$lambda$32($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306374, 494);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$33$lambda$31$lambda$30(MutableState $mostrarDialogoBaja$delegate) {
        ListadoPacientesScreen$lambda$7($mostrarDialogoBaja$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPacientesScreen$lambda$36$lambda$33$lambda$32(FontFamily $roboto, RowScope TextButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
        ComposerKt.sourceInformation($composer, "C223@9878L37:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1268592193, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:223)");
            }
            TextKt.m2976Text4IGK_g("Cancelar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0121  */
    /* JADX INFO: renamed from: PacienteCard-zTql3dQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m10428PacienteCardzTql3dQ(final NavController navController, final DatosPacienteAdminDTO paciente, final Function0<Unit> onDarBaja, final Function0<Unit> onEditar, final Function0<Unit> onAsignarPsicologo, final long primaryColor, final long pendingColor, final long paidColor, final long inactiveColor, final FontFamily roboto, Composer $composer, final int $changed) {
        long j;
        long j2;
        long j3;
        Composer $composer2;
        Triple triple;
        ImageVector metodoIcon;
        Pair pair;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(paciente, "paciente");
        Intrinsics.checkNotNullParameter(onDarBaja, "onDarBaja");
        Intrinsics.checkNotNullParameter(onEditar, "onEditar");
        Intrinsics.checkNotNullParameter(onAsignarPsicologo, "onAsignarPsicologo");
        Intrinsics.checkNotNullParameter(roboto, "roboto");
        Composer $composer3 = $composer.startRestartGroup(-530256398);
        ComposerKt.sourceInformation($composer3, "C(PacienteCard)N(navController,paciente,onDarBaja,onEditar,onAsignarPsicologo,primaryColor:c#ui.graphics.Color,pendingColor:c#ui.graphics.Color,paidColor:c#ui.graphics.Color,inactiveColor:c#ui.graphics.Color,roboto)265@11587L40,266@11662L38,267@11707L15760,262@11464L16003:ListadoPacientesScreen.kt#t64v6f");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(paciente) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onDarBaja) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changedInstance(onEditar) ? 2048 : 1024;
        }
        if ((196608 & $changed) == 0) {
            j = primaryColor;
            $dirty |= $composer3.changed(j) ? 131072 : 65536;
        } else {
            j = primaryColor;
        }
        if ((1572864 & $changed) == 0) {
            j2 = pendingColor;
            $dirty |= $composer3.changed(j2) ? 1048576 : 524288;
        } else {
            j2 = pendingColor;
        }
        if ((12582912 & $changed) == 0) {
            j3 = paidColor;
            $dirty |= $composer3.changed(j3) ? 8388608 : 4194304;
        } else {
            j3 = paidColor;
        }
        if (($changed & 100663296) == 0) {
            $dirty |= $composer3.changed(inactiveColor) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer3.changed(roboto) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if ($composer3.shouldExecute(($dirty & 306775187) != 306775186, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-530256398, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard (ListadoPacientesScreen.kt:243)");
            }
            String metodoPago = paciente.getMetodoPago();
            String estadoPagoStr = "";
            if (metodoPago != null) {
                String metodoPagoStr = metodoPago.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(metodoPagoStr, "toUpperCase(...)");
                if (metodoPagoStr == null) {
                    metodoPagoStr = "";
                }
                String estadoPago = paciente.getEstadoPago();
                if (estadoPago != null) {
                    String upperCase = estadoPago.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    if (upperCase != null) {
                        estadoPagoStr = upperCase;
                    }
                }
                if (!paciente.getActivo()) {
                    triple = new Triple("INACTIVO", Color.m4687boximpl(inactiveColor), ErrorKt.getError(Icons.INSTANCE.getDefault()));
                } else if (Intrinsics.areEqual(metodoPagoStr, "ONLINE") && Intrinsics.areEqual(estadoPagoStr, "PAGADO")) {
                    triple = new Triple("PAGADO (Online)", Color.m4687boximpl(j3), CreditCardKt.getCreditCard(Icons.INSTANCE.getDefault()));
                } else if (Intrinsics.areEqual(metodoPagoStr, "ONLINE") && Intrinsics.areEqual(estadoPagoStr, "PENDIENTE")) {
                    triple = new Triple("PENDIENTE (Online)", Color.m4687boximpl(j2), CreditCardKt.getCreditCard(Icons.INSTANCE.getDefault()));
                } else if (Intrinsics.areEqual(metodoPagoStr, "PRESENCIAL") && Intrinsics.areEqual(estadoPagoStr, "PENDIENTE")) {
                    triple = new Triple("PENDIENTE (Presencial)", Color.m4687boximpl(j2), AttachMoneyKt.getAttachMoney(Icons.INSTANCE.getDefault()));
                } else {
                    triple = (Intrinsics.areEqual(metodoPagoStr, "PRESENCIAL") && Intrinsics.areEqual(estadoPagoStr, "PAGADO")) ? new Triple("PAGADO (Presencial)", Color.m4687boximpl(j3), AttachMoneyKt.getAttachMoney(Icons.INSTANCE.getDefault())) : new Triple(estadoPagoStr, Color.m4687boximpl(Color.INSTANCE.m4727getGray0d7_KjU()), InfoKt.getInfo(Icons.INSTANCE.getDefault()));
                }
                final String estadoTexto = (String) triple.component1();
                final long estadoColor = ((Color) triple.component2()).m4707unboximpl();
                ImageVector metodoIcon2 = (ImageVector) triple.component3();
                if (Intrinsics.areEqual(metodoPagoStr, "ONLINE")) {
                    metodoIcon = metodoIcon2;
                    pair = new Pair(PaymentKt.getPayment(Icons.INSTANCE.getDefault()), "Pago Online");
                } else {
                    metodoIcon = metodoIcon2;
                    pair = Intrinsics.areEqual(metodoPagoStr, "PRESENCIAL") ? new Pair(AttachMoneyKt.getAttachMoney(Icons.INSTANCE.getDefault()), "Pago Presencial") : new Pair(InfoKt.getInfo(Icons.INSTANCE.getDefault()), metodoPagoStr);
                }
                final ImageVector metodoIcono = (ImageVector) pair.component1();
                final String metodoTexto = (String) pair.component2();
                final String metodoPagoStr2 = metodoPagoStr;
                final long j4 = j;
                final ImageVector metodoIcon3 = metodoIcon;
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88(Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, 0L, 0L, $composer3, (CardDefaults.$stable << 12) | 6, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(2), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer3, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(1509959872, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64(paciente, j4, roboto, metodoPagoStr2, estadoColor, metodoIcon3, estadoTexto, metodoIcono, metodoTexto, onDarBaja, onEditar, navController, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54), $composer3, 196614, 16);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$65(navController, paciente, onDarBaja, onEditar, onAsignarPsicologo, primaryColor, pendingColor, paidColor, inactiveColor, roboto, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64(final DatosPacienteAdminDTO $paciente, long $primaryColor, final FontFamily $roboto, final String $metodoPagoStr, final long $estadoColor, final ImageVector $metodoIcon, final String $estadoTexto, final ImageVector $metodoIcono, final String $metodoTexto, Function0 $onDarBaja, Function0 $onEditar, final NavController $navController, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        final FontFamily fontFamily;
        Composer composer;
        String str;
        int i;
        boolean z;
        boolean z2;
        int i2;
        String str2;
        String str3;
        String str4;
        String str5;
        long jColor;
        String str6;
        String str7;
        String str8;
        int i3;
        Function0<ComposeUiNode> function03;
        Composer composer2;
        Composer composer3;
        RowScope rowScope;
        Function0<ComposeUiNode> function04;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C268@11717L15744:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1509959872, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous> (ListadoPacientesScreen.kt:268)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((6 << 3) & 112) << 6) & 896) | 6;
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
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1584709337, "C274@11867L2094,325@13975L41,328@14069L220,336@14303L219,345@14572L794,509@21538L40,518@21931L1558,510@21591L1898,585@24576L41,588@24654L2797:ListadoPacientesScreen.kt#t64v6f");
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
            int i7 = ((((438 << 3) & 112) << 6) & 896) | 6;
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
            int i8 = (i7 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i9 = ((438 >> 6) & 112) | 6;
            RowScope rowScope2 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1910118697, "C279@12085L808,302@13052L895,299@12911L1036:ListadoPacientesScreen.kt#t64v6f");
            Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
            Modifier modifierWeight$default = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, $composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i10 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierWeight$default);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i11 = ((i10 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor3);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
            int i12 = (i11 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i13 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -630129393, "C283@12249L245,289@12515L39,290@12575L300:ListadoPacientesScreen.kt#t64v6f");
            IconKt.m2433Iconww6aTOc(PersonKt.getPerson(Icons.INSTANCE.getDefault()), "Paciente", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $primaryColor, $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g($paciente.getNombreUsuario() + " " + $paciente.getApellidoUsuario(), (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(18), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 130962);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SurfaceKt.m2826SurfaceT9BRK9s(null, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), Color.m4695copywmQWz5c($estadoColor, (14 & 1) != 0 ? Color.m4699getAlphaimpl($estadoColor) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl($estadoColor) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl($estadoColor) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl($estadoColor) : 0.0f), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(920837227, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$41$lambda$40($metodoIcon, $estadoColor, $estadoTexto, $roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 12582912, 121);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            m10426InfoRowww6aTOc(EmailKt.getEmail(Icons.INSTANCE.getDefault()), "Email", $paciente.getEmailUsuario(), $primaryColor, $roboto, $composer, 48);
            m10426InfoRowww6aTOc(PhoneKt.getPhone(Icons.INSTANCE.getDefault()), "Teléfono", $paciente.getTelefono(), $primaryColor, $roboto, $composer, 48);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default2);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            int i14 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor4);
            } else {
                $composer.useNode();
            }
            Composer composerM3967constructorimpl4 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl4, Integer.valueOf(iHashCode4), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl4, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            int i15 = (i14 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i16 = ((54 >> 6) & 112) | 6;
            RowScope rowScope3 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -2023941179, "C349@14729L310,358@15057L295:ListadoPacientesScreen.kt#t64v6f");
            m10427InfoRowCompactfWhpE4E(CakeKt.getCake(Icons.INSTANCE.getDefault()), "Fecha Nac.", $paciente.getFechaNacimiento(), $primaryColor, $roboto, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 48, 0);
            m10427InfoRowCompactfWhpE4E(WcKt.getWc(Icons.INSTANCE.getDefault()), "Género", $paciente.getGenero(), $primaryColor, $roboto, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 48, 0);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            List<DireccionResponseDTO> direccion = $paciente.getDireccion();
            if (!(direccion == null || direccion.isEmpty())) {
                $composer.startReplaceGroup(-2026989011);
                ComposerKt.sourceInformation($composer, "370@15466L41,371@15524L235,378@15776L40");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
                i = 6;
                str = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
                TextKt.m2976Text4IGK_g("Direcciones:", (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200070, 0, 130962);
                fontFamily = $roboto;
                composer = $composer;
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer, 6);
                Iterable<DireccionResponseDTO> direccion2 = $paciente.getDireccion();
                if (direccion2 == null) {
                    composer.startReplaceGroup(1588238871);
                    composer.endReplaceGroup();
                    z = false;
                    z2 = true;
                } else {
                    composer.startReplaceGroup(1588238872);
                    ComposerKt.sourceInformation(composer, "*386@16178L1545,380@15896L1827");
                    for (final DireccionResponseDTO direccionResponseDTO : direccion2) {
                        SurfaceKt.m2826SurfaceT9BRK9s(PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(4), 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)), ColorKt.Color(4294507002L), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1005454564, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$45$lambda$44(direccionResponseDTO, fontFamily, (Composer) obj, ((Integer) obj2).intValue());
                            }
                        }, composer, 54), composer, 12583302, 120);
                    }
                    z = false;
                    z2 = true;
                    composer.endReplaceGroup();
                    Unit unit = Unit.INSTANCE;
                }
            } else {
                fontFamily = $roboto;
                composer = $composer;
                str = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
                i = 6;
                z = false;
                z2 = true;
                composer.startReplaceGroup(1572453176);
            }
            composer.endReplaceGroup();
            List<TutorResponseDTO> tutores = $paciente.getTutores();
            if ((tutores == null || tutores.isEmpty()) ? z2 : false) {
                composer.startReplaceGroup(1572453176);
            } else {
                composer.startReplaceGroup(1590214316);
                ComposerKt.sourceInformation(composer, "422@17849L41,423@17907L231,430@18155L40,*438@18550L1565,432@18268L1847");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer, i);
                Composer composer4 = composer;
                TextKt.m2976Text4IGK_g("Tutores:", (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 200070, 0, 130962);
                fontFamily = $roboto;
                composer = composer4;
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer, i);
                for (final TutorResponseDTO tutorResponseDTO : $paciente.getTutores()) {
                    SurfaceKt.m2826SurfaceT9BRK9s(PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(4), 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)), ColorKt.Color(4294507002L), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-124982228, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda18
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$48$lambda$47(tutorResponseDTO, fontFamily, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, composer, 54), composer, 12583302, 120);
                }
                z = false;
                z2 = true;
            }
            composer.endReplaceGroup();
            List<SituacionDTO> situaciones = $paciente.getSituaciones();
            if (!((situaciones == null || situaciones.isEmpty()) ? z2 : false)) {
                composer.startReplaceGroup(1592562473);
                ComposerKt.sourceInformation(composer, "478@20249L41,479@20307L235,486@20559L40,487@20616L864");
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer, i);
                Composer composer5 = composer;
                TextKt.m2976Text4IGK_g("Situaciones:", (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer5, 200070, 0, 130962);
                fontFamily = $roboto;
                composer = composer5;
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer, i);
                Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
                Composer composer6 = composer;
                str3 = "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo";
                ComposerKt.sourceInformationMarkerStart(composer6, 844473419, str3);
                MeasurePolicy measurePolicyRowMeasurePolicy4 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, Alignment.INSTANCE.getTop(), composer6, ((54 >> 3) & 14) | ((54 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart(composer6, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer6, 0));
                CompositionLocalMap currentCompositionLocalMap5 = composer6.getCurrentCompositionLocalMap();
                i2 = i;
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer6, modifierFillMaxWidth$default3);
                Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                int i17 = ((((54 << 3) & 112) << 6) & 896) | 6;
                str4 = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
                String str9 = str;
                ComposerKt.sourceInformationMarkerStart(composer6, -553112988, str9);
                if (!(composer6.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer6.startReusableNode();
                if (composer6.getInserting()) {
                    function04 = constructor5;
                    composer6.createNode(function04);
                } else {
                    function04 = constructor5;
                    composer6.useNode();
                }
                Composer composerM3967constructorimpl5 = Updater.m3967constructorimpl(composer6);
                Updater.m3975setimpl(composerM3967constructorimpl5, measurePolicyRowMeasurePolicy4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl5, currentCompositionLocalMap5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl5, Integer.valueOf(iHashCode5), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl5, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl5, modifierMaterializeModifier5, ComposeUiNode.INSTANCE.getSetModifier());
                int i18 = (i17 >> 6) & 14;
                Composer composer7 = composer6;
                int i19 = 0;
                str5 = str9;
                str2 = "C101@5233L9:Row.kt#2w3rfo";
                ComposerKt.sourceInformationMarkerStart(composer7, 1456264949, str2);
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                int i20 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer7, -1177717170, "C:ListadoPacientesScreen.kt#t64v6f");
                composer7.startReplaceGroup(1624577760);
                ComposerKt.sourceInformation(composer7, "*495@21008L432,492@20856L584");
                Iterable<SituacionDTO> situaciones2 = $paciente.getSituaciones();
                for (final SituacionDTO situacionDTO : situaciones2) {
                    Iterable iterable = situaciones2;
                    SurfaceKt.m2826SurfaceT9BRK9s(null, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), ColorKt.Color(4293128957L), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1217248641, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$51$lambda$50$lambda$49(situacionDTO, fontFamily, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, composer7, 54), composer7, 12583296, 121);
                    situaciones2 = iterable;
                    composer7 = composer7;
                    i19 = i19;
                    composer6 = composer6;
                }
                composer7.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer7);
                ComposerKt.sourceInformationMarkerEnd(composer7);
                composer6.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
                ComposerKt.sourceInformationMarkerEnd(composer6);
            } else {
                i2 = i;
                str2 = "C101@5233L9:Row.kt#2w3rfo";
                str3 = "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo";
                str4 = "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh";
                str5 = str;
                composer.startReplaceGroup(1572453176);
            }
            composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer, i2);
            Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8));
            if (Intrinsics.areEqual($metodoPagoStr, "ONLINE")) {
                jColor = ColorKt.Color(4293128957L);
            } else {
                jColor = Intrinsics.areEqual($metodoPagoStr, "PRESENCIAL") ? ColorKt.Color(4294964192L) : ColorKt.Color(4294309365L);
            }
            SurfaceKt.m2826SurfaceT9BRK9s(modifierFillMaxWidth$default4, roundedCornerShapeM1126RoundedCornerShape0680j_4, jColor, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-857928177, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$53($metodoPagoStr, $metodoIcono, fontFamily, $metodoTexto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, composer, 54), composer, 12582918, 120);
            if (StringsKt.isBlank($paciente.getCreatedAt())) {
                str6 = str2;
                str7 = str5;
                str8 = str4;
                i3 = -1159599143;
                composer.startReplaceGroup(1572453176);
            } else {
                composer.startReplaceGroup(1595858672);
                ComposerKt.sourceInformation(composer, "559@23580L139,564@23737L321");
                DividerKt.m2354Divider9IZ8Weo(PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(12), 1, null), 0.0f, ColorKt.Color(4292927712L), composer, 390, 2);
                Composer composer8 = composer;
                str7 = str5;
                str8 = str4;
                i3 = -1159599143;
                str6 = str2;
                m10427InfoRowCompactfWhpE4E(DateRangeKt.getDateRange(Icons.INSTANCE.getDefault()), "Creado", (String) StringsKt.split$default((CharSequence) $paciente.getCreatedAt(), new String[]{ExifInterface.GPS_DIRECTION_TRUE}, false, 0, 6, (Object) null).get(0), Color.INSTANCE.m4727getGray0d7_KjU(), fontFamily, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), composer8, 199728, 0);
                composer = composer8;
                if (StringsKt.isBlank($paciente.getUpdatedAt()) || Intrinsics.areEqual($paciente.getUpdatedAt(), $paciente.getCreatedAt())) {
                    fontFamily = $roboto;
                    composer.startReplaceGroup(1572453176);
                } else {
                    composer.startReplaceGroup(1596430033);
                    ComposerKt.sourceInformation(composer, "574@24179L351");
                    fontFamily = $roboto;
                    m10427InfoRowCompactfWhpE4E(UpdateKt.getUpdate(Icons.INSTANCE.getDefault()), "Actualizado", (String) StringsKt.split$default((CharSequence) $paciente.getUpdatedAt(), new String[]{ExifInterface.GPS_DIRECTION_TRUE}, false, 0, 6, (Object) null).get(0), Color.INSTANCE.m4727getGray0d7_KjU(), fontFamily, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), composer, 199728, 0);
                    composer = composer;
                }
                composer.endReplaceGroup();
            }
            composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), composer, 6);
            Modifier modifierFillMaxWidth$default5 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Arrangement.Horizontal horizontalM688spacedBy0680j_43 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(8));
            Composer composer9 = composer;
            ComposerKt.sourceInformationMarkerStart(composer9, 844473419, str3);
            MeasurePolicy measurePolicyRowMeasurePolicy5 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_43, Alignment.INSTANCE.getTop(), composer9, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart(composer9, i3, str8);
            int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer9, 0));
            CompositionLocalMap currentCompositionLocalMap6 = composer9.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composer9, modifierFillMaxWidth$default5);
            Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
            int i21 = ((((54 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composer9, -553112988, str7);
            if (!(composer9.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer9.startReusableNode();
            if (composer9.getInserting()) {
                function03 = constructor6;
                composer9.createNode(function03);
            } else {
                function03 = constructor6;
                composer9.useNode();
            }
            Composer composerM3967constructorimpl6 = Updater.m3967constructorimpl(composer9);
            Updater.m3975setimpl(composerM3967constructorimpl6, measurePolicyRowMeasurePolicy5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl6, currentCompositionLocalMap6, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl6, Integer.valueOf(iHashCode6), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl6, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl6, modifierMaterializeModifier6, ComposeUiNode.INSTANCE.getSetModifier());
            int i22 = (i21 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composer9, 1456264949, str6);
            int i23 = ((54 >> 6) & 112) | 6;
            RowScope rowScope4 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer9, -801276430, "C618@26201L43,621@26369L285,616@26109L545,631@26961L48,630@26833L82,634@27134L303,629@26795L642:ListadoPacientesScreen.kt#t64v6f");
            if ($paciente.getActivo()) {
                composer9.startReplaceGroup(-801317692);
                ComposerKt.sourceInformation(composer9, "595@24954L40,598@25131L306,593@24853L584");
                composer2 = composer9;
                composer3 = composer9;
                ButtonKt.Button($onDarBaja, RowScope.weight$default(rowScope4, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(Color.INSTANCE.m4731getRed0d7_KjU(), 0L, 0L, 0L, composer9, (ButtonDefaults.$stable << 12) | 6, 14), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1911519235, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda21
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$54(fontFamily, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer9, 54), composer9, 805306368, 484);
                composer9.endReplaceGroup();
                rowScope = rowScope4;
            } else {
                composer2 = composer9;
                composer3 = composer9;
                composer9.startReplaceGroup(-800692546);
                ComposerKt.sourceInformation(composer9, "606@25578L48,605@25525L3,609@25763L310,604@25483L590");
                ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(ColorKt.Color(4283215696L), 0L, 0L, 0L, composer9, (ButtonDefaults.$stable << 12) | 6, 14);
                rowScope = rowScope4;
                Modifier modifierWeight$default2 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8));
                ComposerKt.sourceInformationMarkerStart(composer9, -164374703, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
                Object objRememberedValue = composer9.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda22
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    composer9.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer9);
                ButtonKt.Button((Function0) objRememberedValue, modifierWeight$default2, false, roundedCornerShapeM1126RoundedCornerShape0680j_42, buttonColorsM2092buttonColorsro_MJ88, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-2111685094, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda23
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$57(fontFamily, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, composer9, 54), composer9, 805306374, 484);
                composer9.endReplaceGroup();
            }
            ButtonKt.Button($onEditar, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)), ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($primaryColor, 0L, 0L, 0L, composer9, ButtonDefaults.$stable << 12, 14), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1036379842, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$58(fontFamily, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, composer9, 54), composer9, 805306368, 484);
            ButtonColors buttonColorsM2092buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(ColorKt.Color(4288423856L), 0L, 0L, 0L, composer9, (ButtonDefaults.$stable << 12) | 6, 14);
            Modifier modifierWeight$default3 = RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_43 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart(composer9, -164332768, "CC(remember):ListadoPacientesScreen.kt#9igjgp");
            boolean zChangedInstance = composer9.changedInstance($navController) | composer9.changedInstance($paciente);
            Object objRememberedValue2 = composer9.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda25
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$60$lambda$59($navController, $paciente);
                    }
                };
                composer9.updateRememberedValue(objRememberedValue2);
            }
            ComposerKt.sourceInformationMarkerEnd(composer9);
            ButtonKt.Button((Function0) objRememberedValue2, modifierWeight$default3, false, roundedCornerShapeM1126RoundedCornerShape0680j_43, buttonColorsM2092buttonColorsro_MJ882, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(385304231, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPacientesScreenKt.PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$61(fontFamily, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, composer9, 54), composer9, 805306368, 484);
            ComposerKt.sourceInformationMarkerEnd(composer9);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer9.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer9);
            ComposerKt.sourceInformationMarkerEnd(composer9);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer);
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

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$41$lambda$40(ImageVector $metodoIcon, long $estadoColor, String $estadoTexto, FontFamily $roboto, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C303@13074L855:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(920837227, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:303)");
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(4));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 2114821001, "C307@13288L248,313@13561L39,314@13625L282:ListadoPacientesScreen.kt#t64v6f");
            IconKt.m2433Iconww6aTOc($metodoIcon, (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), $estadoColor, $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            TextKt.m2976Text4IGK_g($estadoTexto, (Modifier) null, $estadoColor, TextUnitKt.getSp(11), (FontStyle) null, FontWeight.INSTANCE.getMedium(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 0, 130962);
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

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$45$lambda$44(DireccionResponseDTO $direccion, FontFamily $roboto, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Composer composer;
        ComposerKt.sourceInformation($composer, "C387@16204L1497:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1005454564, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:387)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
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
            ComposerKt.sourceInformationMarkerStart($composer, 1858405134, "C392@16412L310:ListadoPacientesScreen.kt#t64v6f");
            TextKt.m2976Text4IGK_g($direccion.getCalle(), (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getMedium(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 130962);
            if ($direccion.getCiudad() == null && $direccion.getProvincia() == null) {
                $composer.startReplaceGroup(1842084284);
            } else {
                $composer.startReplaceGroup(1858774715);
                ComposerKt.sourceInformation($composer, "400@16846L321");
                TextKt.m2976Text4IGK_g(CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) new String[]{$direccion.getCiudad(), $direccion.getProvincia()}), ", ", null, null, 0, null, null, 62, null), (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 130994);
            }
            $composer.endReplaceGroup();
            if ($direccion.getCodigoPostal() == null && $direccion.getPais() == null) {
                $composer.startReplaceGroup(1842084284);
                $composer.endReplaceGroup();
                composer = $composer;
            } else {
                $composer.startReplaceGroup(1859246969);
                ComposerKt.sourceInformation($composer, "408@17322L323");
                composer = $composer;
                TextKt.m2976Text4IGK_g(CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) new String[]{$direccion.getCodigoPostal(), $direccion.getPais()}), " - ", null, null, 0, null, null, 62, null), (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 3456, 0, 130994);
                composer.endReplaceGroup();
            }
            ComposerKt.sourceInformationMarkerEnd(composer);
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

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$48$lambda$47(TutorResponseDTO $tutor, FontFamily $roboto, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C439@18576L1517:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-124982228, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:439)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
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
            ComposerKt.sourceInformationMarkerStart($composer, 1650801514, "C444@18784L328,451@19141L254,457@19424L253:ListadoPacientesScreen.kt#t64v6f");
            TextKt.m2976Text4IGK_g($tutor.getNombre() + " (" + $tutor.getTipo() + ")", (Modifier) null, Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getMedium(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 200064, 0, 130962);
            TextKt.m2976Text4IGK_g("Tel: " + $tutor.getTelefono(), (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 130994);
            TextKt.m2976Text4IGK_g("Email: " + $tutor.getEmail(), (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3456, 0, 130994);
            Composer composer = $composer;
            if (StringsKt.isBlank($tutor.getDni())) {
                composer.startReplaceGroup(1632127020);
            } else {
                composer.startReplaceGroup(1651714463);
                ComposerKt.sourceInformation(composer, "464@19768L269");
                TextKt.m2976Text4IGK_g("DNI: " + $tutor.getDni(), (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer, 3456, 0, 130994);
                composer = composer;
            }
            composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer);
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

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$51$lambda$50$lambda$49(SituacionDTO $situacion, FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C496@21038L376:ListadoPacientesScreen.kt#t64v6f");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1217248641, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:496)");
            }
            String descripcion = $situacion.getDescripcion();
            if (descripcion == null) {
                descripcion = $situacion.getNombre();
            }
            TextKt.m2976Text4IGK_g(descripcion, PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(6)), ColorKt.Color(4279858898L), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3504, 0, 130992);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$53(String $metodoPagoStr, ImageVector $metodoIcono, FontFamily $roboto, String $metodoTexto, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        long jColor;
        long jColor2;
        ComposerKt.sourceInformation($composer, "C519@21949L1526:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-857928177, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:519)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1512232875, "C525@22182L445,535@22648L39,536@22708L207,542@22936L39,543@22996L461:ListadoPacientesScreen.kt#t64v6f");
            if (Intrinsics.areEqual($metodoPagoStr, "ONLINE")) {
                jColor = ColorKt.Color(4279858898L);
            } else {
                jColor = Intrinsics.areEqual($metodoPagoStr, "PRESENCIAL") ? ColorKt.Color(4293295650L) : Color.INSTANCE.m4727getGray0d7_KjU();
            }
            IconKt.m2433Iconww6aTOc($metodoIcono, "Método de pago", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), jColor, $composer, 432, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Método de pago:", (Modifier) null, Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3462, 0, 130994);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            if (Intrinsics.areEqual($metodoPagoStr, "ONLINE")) {
                jColor2 = ColorKt.Color(4279858898L);
            } else {
                jColor2 = Intrinsics.areEqual($metodoPagoStr, "PRESENCIAL") ? ColorKt.Color(4293295650L) : Color.INSTANCE.m4723getBlack0d7_KjU();
            }
            TextKt.m2976Text4IGK_g($metodoTexto, (Modifier) null, jColor2, TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getBold(), $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199680, 0, 130962);
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

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$54(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C599@25157L115,600@25297L39,601@25361L54:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1911519235, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:599)");
            }
            IconKt.m2433Iconww6aTOc(DeleteKt.getDelete(Icons.INSTANCE.getDefault()), "Dar de baja", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3504, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            TextKt.m2976Text4IGK_g("Baja", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131002);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$57(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C610@25789L114,611@25928L39,612@25992L59:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2111685094, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:610)");
            }
            IconKt.m2433Iconww6aTOc(RestoreKt.getRestore(Icons.INSTANCE.getDefault()), "Reactivar", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3504, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            TextKt.m2976Text4IGK_g("Reactivar", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131002);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$58(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C622@26391L108,623@26520L39,624@26580L56:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1036379842, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:622)");
            }
            IconKt.m2433Iconww6aTOc(EditKt.getEdit(Icons.INSTANCE.getDefault()), "Editar", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3504, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            TextKt.m2976Text4IGK_g("Editar", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131002);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$60$lambda$59(NavController $navController, DatosPacienteAdminDTO $paciente) {
        NavController.navigate$default($navController, Screens.listarPsicologo.INSTANCE.createRoute($paciente.getIdPaciente()), (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
        return Unit.INSTANCE;
    }

    static final Unit PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$62$lambda$61(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C635@27156L125,636@27302L39,637@27362L57:ListadoPacientesScreen.kt#t64v6f");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(385304231, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.PacienteCard.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ListadoPacientesScreen.kt:635)");
            }
            IconKt.m2433Iconww6aTOc(PsychologyKt.getPsychology(Icons.INSTANCE.getDefault()), "Asignar psicólogo", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), Color.INSTANCE.m4734getWhite0d7_KjU(), $composer, 3504, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            TextKt.m2976Text4IGK_g("Asignar", (Modifier) null, Color.INSTANCE.m4734getWhite0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 390, 0, 131002);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: InfoRow-ww6aTOc, reason: not valid java name */
    public static final void m10426InfoRowww6aTOc(final ImageVector icon, final String label, final String value, final long iconColor, final FontFamily roboto, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(roboto, "roboto");
        Composer $composer3 = $composer.startRestartGroup(658548839);
        ComposerKt.sourceInformation($composer3, "C(InfoRow)N(icon,label,value,iconColor:c#ui.graphics.Color,roboto)652@27646L764:ListadoPacientesScreen.kt#t64v6f");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(icon) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(label) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(value) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(iconColor) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(roboto) ? 16384 : 8192;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute(($dirty2 & 9363) != 9362, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(658548839, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.InfoRow (ListadoPacientesScreen.kt:651)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
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
            int i3 = ((390 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, -253864870, "C656@27766L161,662@27936L40,663@27985L186,670@28180L224:ListadoPacientesScreen.kt#t64v6f");
            IconKt.m2433Iconww6aTOc(icon, label, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), iconColor, $composer3, ($dirty2 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ($dirty2 & 112) | ($dirty2 & 7168), 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer3, 6);
            $composer2 = $composer3;
            TextKt.m2976Text4IGK_g(label + ":", SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(100)), Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 << 6) & 3670016) | 3504, 0, 130992);
            TextKt.m2976Text4IGK_g(value, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, FontWeight.INSTANCE.getMedium(), roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 6) & 14) | 200064 | (3670016 & ($dirty2 << 6)), 0, 130960);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.InfoRow_ww6aTOc$lambda$67(icon, label, value, iconColor, roboto, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: InfoRowCompact-fWhpE4E, reason: not valid java name */
    public static final void m10427InfoRowCompactfWhpE4E(final ImageVector icon, final String label, final String value, final long iconColor, final FontFamily roboto, Modifier modifier, Composer $composer, final int $changed, final int i) {
        final Modifier modifier2;
        Composer $composer2;
        Modifier modifier3;
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(roboto, "roboto");
        Composer $composer3 = $composer.startRestartGroup(-491261467);
        ComposerKt.sourceInformation($composer3, "C(InfoRowCompact)N(icon,label,value,iconColor:c#ui.graphics.Color,roboto,modifier)690@28631L703:ListadoPacientesScreen.kt#t64v6f");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(icon) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(label) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(value) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(iconColor) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(roboto) ? 16384 : 8192;
        }
        int i2 = i & 32;
        if (i2 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else if ((196608 & $changed) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 131072 : 65536;
        } else {
            modifier2 = modifier;
        }
        int $dirty2 = $dirty;
        if (!$composer3.shouldExecute((74899 & $dirty2) != 74898, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (i2 != 0) {
                modifier3 = Modifier.INSTANCE;
            } else {
                modifier3 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-491261467, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.admin.InfoRowCompact (ListadoPacientesScreen.kt:689)");
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            int i3 = (($dirty2 >> 15) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK;
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((i3 >> 3) & 14) | ((i3 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifier3);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((i3 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                $composer3.createNode(constructor);
            } else {
                $composer3.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i6 = ((i3 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, 98038922, "C694@28736L161,700@28906L39,701@28954L185,708@29148L180:ListadoPacientesScreen.kt#t64v6f");
            IconKt.m2433Iconww6aTOc(icon, label, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), iconColor, $composer3, ($dirty2 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ($dirty2 & 112) | ($dirty2 & 7168), 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer3, 6);
            $composer2 = $composer3;
            TextKt.m2976Text4IGK_g(label + ":", SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(80)), Color.INSTANCE.m4727getGray0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 << 6) & 3670016) | 3504, 0, 130992);
            TextKt.m2976Text4IGK_g(value, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer3, (($dirty2 >> 6) & 14) | 3456 | (3670016 & ($dirty2 << 6)), 0, 130992);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPacientesScreenKt.InfoRowCompact_fWhpE4E$lambda$69(icon, label, value, iconColor, roboto, modifier2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
