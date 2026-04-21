package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministradorKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel;
import org.ies.tierno.applicationamani.ui.theme.TypeKt;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\u0010\n¨\u0006\u000b²\u0006\u0010\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u008a\u0084\u0002²\u0006\f\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u008a\u008e\u0002²\u0006\n\u0010\u0010\u001a\u00020\u0011X\u008a\u008e\u0002²\u0006\n\u0010\u0012\u001a\u00020\u0011X\u008a\u0084\u0002²\u0006\f\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u008a\u0084\u0002"}, d2 = {"ListadoPsicologosScreen", "", "navController", "Landroidx/navigation/NavController;", "loginViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;", "pacienteId", "", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JLorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;Landroidx/compose/runtime/Composer;II)V", "app", "psicologos", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "psicologoSeleccionado", "mostrarDialogoBaja", "", "asignarSuccess", "asignarError", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ListadoPsicologosScreenKt {
    static final Unit ListadoPsicologosScreen$lambda$29(NavController navController, LoginViewModel loginViewModel, long j, ListarPsicologosAdminViewModel listarPsicologosAdminViewModel, int i, int i2, Composer composer, int i3) {
        ListadoPsicologosScreen(navController, loginViewModel, j, listarPsicologosAdminViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x028b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ListadoPsicologosScreen(final NavController navController, final LoginViewModel loginViewModel, final long pacienteId, ListarPsicologosAdminViewModel viewModel, Composer $composer, final int $changed, final int i) {
        long j;
        ListarPsicologosAdminViewModel listarPsicologosAdminViewModel;
        Composer $composer2;
        final ListarPsicologosAdminViewModel viewModel2;
        ListarPsicologosAdminViewModel viewModel3;
        Object objRememberedValue;
        Object objRememberedValue2;
        Object objRememberedValue3;
        State psicologos$delegate;
        Object objRememberedValue4;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(loginViewModel, "loginViewModel");
        Composer $composer3 = $composer.startRestartGroup(257617588);
        ComposerKt.sourceInformation($composer3, "C(ListadoPsicologosScreen)N(navController,loginViewModel,pacienteId,viewModel)58@2687L16,59@2720L24,60@2773L32,61@2839L60,62@2930L34,74@3254L61,75@3340L35,76@3408L402,87@3817L5864,72@3185L6496:ListadoPsicologosScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(loginViewModel) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            j = pacienteId;
            $dirty |= $composer3.changed(j) ? 256 : 128;
        } else {
            j = pacienteId;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                listarPsicologosAdminViewModel = viewModel;
                int i2 = $composer3.changedInstance(listarPsicologosAdminViewModel) ? 2048 : 1024;
                $dirty |= i2;
            } else {
                listarPsicologosAdminViewModel = viewModel;
            }
            $dirty |= i2;
        } else {
            listarPsicologosAdminViewModel = viewModel;
        }
        if ($composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "56@2624L15");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if ((i & 8) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(ListarPsicologosAdminViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty &= -7169;
                    viewModel3 = (ListarPsicologosAdminViewModel) viewModelResolveViewModel;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(257617588, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen (ListadoPsicologosScreen.kt:57)");
                }
                State psicologos$delegate2 = SnapshotStateKt.collectAsState(viewModel3.getPsicologos(), null, $composer3, 0, 1);
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
                ComposerKt.sourceInformationMarkerStart($composer3, -1537589228, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
                objRememberedValue2 = $composer3.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object snackbarHostState = new SnackbarHostState();
                    $composer3.updateRememberedValue(snackbarHostState);
                    objRememberedValue2 = snackbarHostState;
                }
                final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, -1537587088, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
                objRememberedValue3 = $composer3.rememberedValue();
                if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
                    psicologos$delegate = psicologos$delegate2;
                    Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    $composer3.updateRememberedValue(objMutableStateOf$default);
                    objRememberedValue3 = objMutableStateOf$default;
                } else {
                    psicologos$delegate = psicologos$delegate2;
                }
                final MutableState psicologoSeleccionado$delegate = (MutableState) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, -1537584202, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
                objRememberedValue4 = $composer3.rememberedValue();
                if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
                    Object objMutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    $composer3.updateRememberedValue(objMutableStateOf$default2);
                    objRememberedValue4 = objMutableStateOf$default2;
                }
                final MutableState mostrarDialogoBaja$delegate = (MutableState) objRememberedValue4;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final FontFamily roboto = TypeKt.getRoboto();
                final FontFamily balow = TypeKt.getBarlowCondensed();
                long backgroundColor = ColorKt.Color(4294309365L);
                final long cardColor = Color.INSTANCE.m4734getWhite0d7_KjU();
                final long primaryColor = ColorKt.Color(4285293567L);
                final long deleteColor = ColorKt.Color(4292030255L);
                ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1978602608, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$8(navController, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1008712110, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$9(snackbarHostState2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(523766861, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$12(primaryColor, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54);
                final long cardColor2 = j;
                final State psicologos$delegate3 = psicologos$delegate;
                ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(-1252289403, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28(psicologos$delegate3, loginViewModel, scope, cardColor2, cardColor, roboto, primaryColor, deleteColor, psicologoSeleccionado$delegate, mostrarDialogoBaja$delegate, snackbarHostState2, balow, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54);
                $composer2 = $composer3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda, null, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, 0, backgroundColor, 0L, null, composableLambdaRememberComposableLambda4, $composer2, 806906928, StatusLine.HTTP_MISDIRECTED_REQUEST);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                viewModel2 = viewModel3;
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
            }
            viewModel3 = listarPsicologosAdminViewModel;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            State psicologos$delegate22 = SnapshotStateKt.collectAsState(viewModel3.getPsicologos(), null, $composer3, 0, 1);
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            final CoroutineScope scope2 = (CoroutineScope) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1537589228, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            final SnackbarHostState snackbarHostState22 = (SnackbarHostState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1537587088, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            objRememberedValue3 = $composer3.rememberedValue();
            if (objRememberedValue3 != Composer.INSTANCE.getEmpty()) {
            }
            final MutableState psicologoSeleccionado$delegate2 = (MutableState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1537584202, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            objRememberedValue4 = $composer3.rememberedValue();
            if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
            }
            final MutableState mostrarDialogoBaja$delegate2 = (MutableState) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final FontFamily roboto2 = TypeKt.getRoboto();
            final FontFamily balow2 = TypeKt.getBarlowCondensed();
            long backgroundColor2 = ColorKt.Color(4294309365L);
            final long cardColor3 = Color.INSTANCE.m4734getWhite0d7_KjU();
            final long primaryColor2 = ColorKt.Color(4285293567L);
            final long deleteColor2 = ColorKt.Color(4292030255L);
            ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(1978602608, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$8(navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            ComposableLambda composableLambdaRememberComposableLambda22 = ComposableLambdaKt.rememberComposableLambda(1008712110, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$9(snackbarHostState22, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            ComposableLambda composableLambdaRememberComposableLambda32 = ComposableLambdaKt.rememberComposableLambda(523766861, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$12(primaryColor2, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54);
            final long cardColor22 = j;
            final State psicologos$delegate32 = psicologos$delegate;
            ComposableLambda composableLambdaRememberComposableLambda42 = ComposableLambdaKt.rememberComposableLambda(-1252289403, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28(psicologos$delegate32, loginViewModel, scope2, cardColor22, cardColor3, roboto2, primaryColor2, deleteColor2, psicologoSeleccionado$delegate2, mostrarDialogoBaja$delegate2, snackbarHostState22, balow2, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54);
            $composer2 = $composer3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, composableLambdaRememberComposableLambda5, null, composableLambdaRememberComposableLambda22, composableLambdaRememberComposableLambda32, 0, backgroundColor2, 0L, null, composableLambdaRememberComposableLambda42, $composer2, 806906928, StatusLine.HTTP_MISDIRECTED_REQUEST);
            if (ComposerKt.isTraceInProgress()) {
            }
            viewModel2 = viewModel3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            viewModel2 = listarPsicologosAdminViewModel;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$29(navController, loginViewModel, pacienteId, viewModel2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final List<PsicologoSelfResponseDTO> ListadoPsicologosScreen$lambda$0(State<? extends List<PsicologoSelfResponseDTO>> state) {
        return (List) state.getValue();
    }

    private static final PsicologoSelfResponseDTO ListadoPsicologosScreen$lambda$3(MutableState<PsicologoSelfResponseDTO> mutableState) {
        return mutableState.getValue();
    }

    private static final boolean ListadoPsicologosScreen$lambda$6(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ListadoPsicologosScreen$lambda$7(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit ListadoPsicologosScreen$lambda$8(NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C74@3256L57:ListadoPsicologosScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1978602608, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:74)");
            }
            MenuAdministradorKt.MenuAdministrador("Listado de psicólogos", $navController, false, false, null, null, $composer, 6, 60);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$9(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C75@3342L31:ListadoPsicologosScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1008712110, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:75)");
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

    static final Unit ListadoPsicologosScreen$lambda$12(long $primaryColor, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C78@3470L105,77@3422L378:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(523766861, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:77)");
            }
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            ComposerKt.sourceInformationMarkerStart($composer, 828781878, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            FloatingActionButtonKt.m2408FloatingActionButtonXz6DiA((Function0) objRememberedValue, null, roundedCornerShapeM1126RoundedCornerShape0680j_4, $primaryColor, 0L, null, null, ComposableSingletons$ListadoPsicologosScreenKt.INSTANCE.m10419getLambda$1826493045$app(), $composer, 12585990, 114);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28(final State $psicologos$delegate, final LoginViewModel $loginViewModel, final CoroutineScope $scope, final long $pacienteId, final long $cardColor, final FontFamily $roboto, final long $primaryColor, final long $deleteColor, final MutableState $psicologoSeleccionado$delegate, final MutableState $mostrarDialogoBaja$delegate, final SnackbarHostState $snackbarHostState, final FontFamily $balow, PaddingValues padding, Composer $composer, int $changed) {
        String str;
        final CoroutineScope coroutineScope;
        final MutableState mutableState;
        final FontFamily fontFamily;
        Intrinsics.checkNotNullParameter(padding, "padding");
        ComposerKt.sourceInformation($composer, "CN(padding)95@4053L4346,89@3839L4560:ListadoPsicologosScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(padding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1252289403, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous> (ListadoPsicologosScreen.kt:89)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, padding), 0.0f, 1, null), Dp.m7505constructorimpl(16));
            Arrangement.HorizontalOrVertical horizontalOrVerticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
            ComposerKt.sourceInformationMarkerStart($composer, -859261505, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            boolean zChanged = $composer.changed($psicologos$delegate) | $composer.changedInstance($loginViewModel) | $composer.changedInstance($scope) | $composer.changed($pacienteId);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                str = "CC(remember):ListadoPsicologosScreen.kt#9igjgp";
                coroutineScope = $scope;
                mutableState = $mostrarDialogoBaja$delegate;
                fontFamily = $roboto;
                objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14($psicologos$delegate, $cardColor, $roboto, $loginViewModel, $primaryColor, $scope, $pacienteId, $deleteColor, $psicologoSeleccionado$delegate, $mostrarDialogoBaja$delegate, $snackbarHostState, (LazyListScope) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
            } else {
                fontFamily = $roboto;
                mutableState = $mostrarDialogoBaja$delegate;
                str = "CC(remember):ListadoPsicologosScreen.kt#9igjgp";
                coroutineScope = $scope;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            LazyDslKt.LazyColumn(modifierM818padding3ABfNKs, null, null, false, horizontalOrVerticalM688spacedBy0680j_4, null, null, false, null, (Function1) objRememberedValue, $composer, 24576, 494);
            Composer composer = $composer;
            if (!ListadoPsicologosScreen$lambda$6(mutableState) || ListadoPsicologosScreen$lambda$3($psicologoSeleccionado$delegate) == null) {
                composer.startReplaceGroup(-871459171);
            } else {
                composer.startReplaceGroup(-863022428);
                ComposerKt.sourceInformation(composer, "187@8528L30,195@8895L540,208@9469L182,188@8584L46,189@8655L206,186@8480L1185");
                ComposerKt.sourceInformationMarkerStart(composer, -859122621, str);
                Object objRememberedValue2 = $composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$17$lambda$16(mutableState);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue2 = obj;
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                AndroidAlertDialog_androidKt.m2045AlertDialogOix01E0((Function0) objRememberedValue2, ComposableLambdaKt.rememberComposableLambda(628485272, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$21(coroutineScope, $snackbarHostState, mutableState, fontFamily, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), null, ComposableLambdaKt.rememberComposableLambda(-689646890, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$25(mutableState, fontFamily, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), null, ComposableLambdaKt.rememberComposableLambda(-2007779052, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$26($balow, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), ComposableLambdaKt.rememberComposableLambda(1628122163, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$27(fontFamily, $psicologoSeleccionado$delegate, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, composer, 54), null, 0L, 0L, 0L, 0L, 0.0f, null, $composer, 1772598, 0, 16276);
                composer = $composer;
            }
            composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14(State $psicologos$delegate, final long $cardColor, final FontFamily $roboto, final LoginViewModel $loginViewModel, final long $primaryColor, final CoroutineScope $scope, final long $pacienteId, final long $deleteColor, final MutableState $psicologoSeleccionado$delegate, final MutableState $mostrarDialogoBaja$delegate, final SnackbarHostState $snackbarHostState, LazyListScope LazyColumn) {
        Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
        final List<PsicologoSelfResponseDTO> listListadoPsicologosScreen$lambda$0 = ListadoPsicologosScreen$lambda$0($psicologos$delegate);
        final Function1 function1 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                return invoke((PsicologoSelfResponseDTO) p1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(PsicologoSelfResponseDTO psicologoSelfResponseDTO) {
                return null;
            }
        };
        LazyColumn.items(listListadoPsicologosScreen$lambda$0.size(), null, new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function1.invoke(listListadoPsicologosScreen$lambda$0.get(index));
            }
        }, ComposableLambdaKt.composableLambdaInstance(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$lambda$28$lambda$15$lambda$14$$inlined$items$default$4
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
                if (!$composer.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
                    $composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(802480018, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)");
                }
                int i = $dirty & 14;
                PsicologoSelfResponseDTO psicologoSelfResponseDTO = (PsicologoSelfResponseDTO) listListadoPsicologosScreen$lambda$0.get(it);
                $composer.startReplaceGroup(-1827587009);
                ComposerKt.sourceInformation($composer, "CN(psicologo)*100@4275L38,101@4332L4043,97@4116L4259:ListadoPsicologosScreen.kt#6w2cjo");
                CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($cardColor, 0L, 0L, 0L, $composer, (CardDefaults.$stable << 12) | 6, 14), null, null, ComposableLambdaKt.rememberComposableLambda(2007772495, true, new ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1(psicologoSelfResponseDTO, $roboto, $loginViewModel, $primaryColor, $scope, $pacienteId, $deleteColor, $psicologoSeleccionado$delegate, $mostrarDialogoBaja$delegate, $snackbarHostState), $composer, 54), $composer, 196614, 24);
                $composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$17$lambda$16(MutableState $mostrarDialogoBaja$delegate) {
        ListadoPsicologosScreen$lambda$7($mostrarDialogoBaja$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$26(FontFamily $balow, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C188@8586L42:ListadoPsicologosScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2007779052, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:188)");
            }
            TextKt.m2976Text4IGK_g("Confirmar baja", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $balow, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$27(FontFamily $roboto, MutableState $psicologoSeleccionado$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C190@8677L166:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1628122163, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:190)");
            }
            PsicologoSelfResponseDTO psicologoSelfResponseDTOListadoPsicologosScreen$lambda$3 = ListadoPsicologosScreen$lambda$3($psicologoSeleccionado$delegate);
            Intrinsics.checkNotNull(psicologoSelfResponseDTOListadoPsicologosScreen$lambda$3);
            TextKt.m2976Text4IGK_g("¿Seguro que deseas dar de baja a " + psicologoSelfResponseDTOListadoPsicologosScreen$lambda$3.getNombre() + "?", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572864, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$21(final CoroutineScope $scope, final SnackbarHostState $snackbarHostState, final MutableState $mostrarDialogoBaja$delegate, final FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C197@8959L347,204@9329L88,196@8917L500:ListadoPsicologosScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(628485272, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:196)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -1616039949, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($scope);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$21$lambda$19$lambda$18($scope, $snackbarHostState, $mostrarDialogoBaja$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1882877608, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$21$lambda$20($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306368, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$21$lambda$19$lambda$18(CoroutineScope $scope, SnackbarHostState $snackbarHostState, MutableState $mostrarDialogoBaja$delegate) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1($snackbarHostState, $mostrarDialogoBaja$delegate, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$21$lambda$20(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C205@9355L40:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1882877608, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:205)");
            }
            TextKt.m2976Text4IGK_g("Dar de baja", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$25(final MutableState $mostrarDialogoBaja$delegate, final FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C209@9516L30,209@9548L85,209@9491L142:ListadoPsicologosScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-689646890, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:209)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -1325696172, "CC(remember):ListadoPsicologosScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$25$lambda$23$lambda$22($mostrarDialogoBaja$delegate);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.OutlinedButton((Function0) objRememberedValue, null, false, null, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(867685412, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$28$lambda$25$lambda$24($roboto, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306374, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$25$lambda$23$lambda$22(MutableState $mostrarDialogoBaja$delegate) {
        ListadoPsicologosScreen$lambda$7($mostrarDialogoBaja$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit ListadoPsicologosScreen$lambda$28$lambda$25$lambda$24(FontFamily $roboto, RowScope OutlinedButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(OutlinedButton, "$this$OutlinedButton");
        ComposerKt.sourceInformation($composer, "C210@9574L37:ListadoPsicologosScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(867685412, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreen.<anonymous>.<anonymous>.<anonymous> (ListadoPsicologosScreen.kt:210)");
            }
            TextKt.m2976Text4IGK_g("Cancelar", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1572870, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
