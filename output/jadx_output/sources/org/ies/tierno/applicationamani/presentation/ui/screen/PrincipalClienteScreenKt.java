package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.DrawerValue;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
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
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel;

/* JADX INFO: compiled from: PrincipalClienteScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"PrincipalClienteScreen", "", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PrincipalClienteViewModel;Landroidx/compose/runtime/Composer;II)V", "PrincipalClienteScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class PrincipalClienteScreenKt {
    static final Unit PrincipalClienteScreen$lambda$19(NavController navController, PrincipalClienteViewModel principalClienteViewModel, int i, int i2, Composer composer, int i3) {
        PrincipalClienteScreen(navController, principalClienteViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreenPreview$lambda$20(int i, Composer composer, int i2) {
        PrincipalClienteScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PrincipalClienteScreen(final NavController navController, PrincipalClienteViewModel viewModel, Composer $composer, final int $changed, final int i) {
        PrincipalClienteViewModel principalClienteViewModel;
        Composer $composer2;
        final PrincipalClienteViewModel viewModel2;
        boolean z;
        int $dirty;
        Object objRememberedValue;
        int i2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(196899995);
        ComposerKt.sourceInformation($composer3, "C(PrincipalClienteScreen)N(navController,viewModel)62@2762L11,63@2809L10,64@2842L54,65@2913L24,70@3075L1142,104@4224L3078,68@2993L4309:PrincipalClienteScreen.kt#8o7o96");
        int $dirty2 = $changed;
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                principalClienteViewModel = viewModel;
                if ($composer3.changedInstance(principalClienteViewModel)) {
                    i2 = 32;
                }
                $dirty2 |= i2;
            } else {
                principalClienteViewModel = viewModel;
            }
            i2 = 16;
            $dirty2 |= i2;
        } else {
            principalClienteViewModel = viewModel;
        }
        if ($composer3.shouldExecute(($dirty2 & 17) != 16, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "61@2716L11");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty = $dirty2 & (-113);
                    viewModel2 = principalClienteViewModel;
                    z = false;
                    $composer3.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                    final Typography typography = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                    final DrawerState drawerState = NavigationDrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer3, 6, 2);
                    ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                    ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                    objRememberedValue = $composer3.rememberedValue();
                    if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    }
                    final CoroutineScope scope = (CoroutineScope) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    final List<String> especialidades = viewModel2.getEspecialidades();
                    NavigationDrawerKt.m2568ModalNavigationDrawerFHprtrg(ComposableLambdaKt.rememberComposableLambda(-2081593950, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$7(typography, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer3, 54), null, drawerState, false, 0L, ComposableLambdaKt.rememberComposableLambda(1030284221, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18(scope, drawerState, colors, typography, especialidades, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer3, 54), $composer3, 196614, 26);
                    $composer2 = $composer3;
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    z = false;
                    $dirty = $dirty2;
                    viewModel2 = principalClienteViewModel;
                    $composer3.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    final ColorScheme colors2 = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                    final Typography typography2 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                    final DrawerState drawerState2 = NavigationDrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer3, 6, 2);
                    ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                    ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                    objRememberedValue = $composer3.rememberedValue();
                    if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    }
                    final CoroutineScope scope2 = (CoroutineScope) objRememberedValue;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    final List especialidades2 = viewModel2.getEspecialidades();
                    NavigationDrawerKt.m2568ModalNavigationDrawerFHprtrg(ComposableLambdaKt.rememberComposableLambda(-2081593950, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$7(typography2, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer3, 54), null, drawerState2, false, 0L, ComposableLambdaKt.rememberComposableLambda(1030284221, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18(scope2, drawerState2, colors2, typography2, especialidades2, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer3, 54), $composer3, 196614, 26);
                    $composer2 = $composer3;
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            } else if ((i & 2) != 0) {
                ComposerKt.sourceInformationMarkerStart($composer3, 1729797275, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67");
                ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, 6);
                if (current == null) {
                    throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                }
                z = false;
                ViewModel viewModel3 = ViewModelKt.viewModel((KClass<ViewModel>) Reflection.getOrCreateKotlinClass(PrincipalClienteViewModel.class), current, (String) null, (ViewModelProvider.Factory) null, current instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE, $composer3, ((0 << 3) & 112) | ((0 << 3) & 896) | ((0 << 3) & 7168) | ((0 << 3) & 57344), 0);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $dirty = $dirty2 & (-113);
                viewModel2 = (PrincipalClienteViewModel) viewModel3;
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(196899995, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen (PrincipalClienteScreen.kt:61)");
                }
                final ColorScheme colors22 = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                final Typography typography22 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                final DrawerState drawerState22 = NavigationDrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer3, 6, 2);
                ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object objCreateCompositionCoroutineScope = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                    $composer3.updateRememberedValue(objCreateCompositionCoroutineScope);
                    objRememberedValue = objCreateCompositionCoroutineScope;
                }
                final CoroutineScope scope22 = (CoroutineScope) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final List especialidades22 = viewModel2.getEspecialidades();
                NavigationDrawerKt.m2568ModalNavigationDrawerFHprtrg(ComposableLambdaKt.rememberComposableLambda(-2081593950, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$7(typography22, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), null, drawerState22, false, 0L, ComposableLambdaKt.rememberComposableLambda(1030284221, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18(scope22, drawerState22, colors22, typography22, especialidades22, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), $composer3, 196614, 26);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                z = false;
                $dirty = $dirty2;
                viewModel2 = principalClienteViewModel;
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                }
                final ColorScheme colors222 = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                final Typography typography222 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                final DrawerState drawerState222 = NavigationDrawerKt.rememberDrawerState(DrawerValue.Closed, null, $composer3, 6, 2);
                ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                }
                final CoroutineScope scope222 = (CoroutineScope) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final List especialidades222 = viewModel2.getEspecialidades();
                NavigationDrawerKt.m2568ModalNavigationDrawerFHprtrg(ComposableLambdaKt.rememberComposableLambda(-2081593950, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$7(typography222, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), null, drawerState222, false, 0L, ComposableLambdaKt.rememberComposableLambda(1030284221, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18(scope222, drawerState222, colors222, typography222, especialidades222, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), $composer3, 196614, 26);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            viewModel2 = principalClienteViewModel;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$19(navController, viewModel2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit PrincipalClienteScreen$lambda$7(final Typography $typography, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C71@3106L1101,71@3089L1118:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2081593950, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous> (PrincipalClienteScreen.kt:71)");
            }
            NavigationDrawerKt.m2567ModalDrawerSheetafqeVBk(null, null, 0L, 0L, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(2054515070, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$7$lambda$6($typography, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 1572864, 63);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$7$lambda$6(Typography $typography, ColumnScope ModalDrawerSheet, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(ModalDrawerSheet, "$this$ModalDrawerSheet");
        ComposerKt.sourceInformation($composer, "C72@3124L165,77@3306L19,83@3550L3,78@3342L269,91@3839L3,86@3628L272,99@4132L3,94@3917L276:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2054515070, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:72)");
            }
            TextKt.m2976Text4IGK_g("Menú", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), $composer, 54, 0, 65532);
            DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, 0L, $composer, 0, 7);
            TextStyle bodyLarge = $typography.getBodyLarge();
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, -1295959679, "CC(remember):PrincipalClienteScreen.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("Perfil", PaddingKt.m818padding3ABfNKs(ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default, false, null, null, null, (Function0) objRememberedValue, 15, null), Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge, $composer, 6, 0, 65532);
            TextStyle bodyLarge2 = $typography.getBodyLarge();
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, -1295950431, "CC(remember):PrincipalClienteScreen.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("Mis citas", PaddingKt.m818padding3ABfNKs(ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default2, false, null, null, null, (Function0) objRememberedValue2, 15, null), Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge2, $composer, 6, 0, 65532);
            TextStyle bodyLarge3 = $typography.getBodyLarge();
            Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, -1295941055, "CC(remember):PrincipalClienteScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("Cerrar sesión", PaddingKt.m818padding3ABfNKs(ClickableKt.m299clickableoSLSa3U$default(modifierFillMaxWidth$default3, false, null, null, null, (Function0) objRememberedValue3, 15, null), Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyLarge3, $composer, 6, 0, 65532);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$18(final CoroutineScope $scope, final DrawerState $drawerState, final ColorScheme $colors, final Typography $typography, final List $especialidades, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C106@4265L655,125@4931L2365,105@4234L3062:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1030284221, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous> (PrincipalClienteScreen.kt:105)");
            }
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(1346212473, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18$lambda$11($scope, $drawerState, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(478418766, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18$lambda$17($colors, $typography, $especialidades, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$18$lambda$11(final CoroutineScope $scope, final DrawerState $drawerState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C109@4379L509,107@4283L623:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1346212473, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:107)");
            }
            AppBarKt.m2057TopAppBarGHTll3U(ComposableSingletons$PrincipalClienteScreenKt.INSTANCE.getLambda$32117053$app(), null, ComposableLambdaKt.rememberComposableLambda(248157375, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18$lambda$11$lambda$10($scope, $drawerState, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), null, 0.0f, null, null, null, $composer, 390, 250);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$18$lambda$11$lambda$10(final CoroutineScope $scope, final DrawerState $drawerState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C111@4455L167,110@4405L461:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(248157375, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:110)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, -2038928602, "CC(remember):PrincipalClienteScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($scope) | $composer.changed($drawerState);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18$lambda$11$lambda$10$lambda$9$lambda$8($scope, $drawerState);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, null, false, null, null, ComposableSingletons$PrincipalClienteScreenKt.INSTANCE.getLambda$470996380$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$18$lambda$11$lambda$10$lambda$9$lambda$8(CoroutineScope $scope, DrawerState $drawerState) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new PrincipalClienteScreenKt$PrincipalClienteScreen$2$1$1$1$1$1($drawerState, null), 3, null);
        return Unit.INSTANCE;
    }

    static final Unit PrincipalClienteScreen$lambda$18$lambda$17(ColorScheme $colors, final Typography $typography, final List $especialidades, PaddingValues paddingValues, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues)126@4962L2324:PrincipalClienteScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(478418766, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:126)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(PaddingKt.m818padding3ABfNKs(PaddingKt.padding(Modifier.INSTANCE, paddingValues), Dp.m7505constructorimpl(16)), 0.0f, 1, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(20));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(verticalM688spacedBy0680j_4, Alignment.INSTANCE.getStart(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierFillMaxSize$default);
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
            ComposerKt.sourceInformationMarkerStart($composer, 1244781435, "C137@5389L89,133@5220L540,151@5906L89,154@6014L1258,148@5777L1495:PrincipalClienteScreen.kt#8o7o96");
            CardKt.Card(SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(200)), null, CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getPrimary(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableSingletons$PrincipalClienteScreenKt.INSTANCE.m10421getLambda$611778250$app(), $composer, 196614, 26);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), null, CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getPrimary(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), null, null, ComposableLambdaKt.rememberComposableLambda(341090477, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreen$lambda$18$lambda$17$lambda$16$lambda$15($typography, $especialidades, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 26);
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

    static final Unit PrincipalClienteScreen$lambda$18$lambda$17$lambda$16$lambda$15(Typography $typography, List $especialidades, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C155@6036L1218:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(341090477, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (PrincipalClienteScreen.kt:155)");
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
            String str = "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp";
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
            ComposerKt.sourceInformationMarkerStart($composer, 1447405863, "C158@6151L201,163@6377L40,165@6443L196,170@6664L40:PrincipalClienteScreen.kt#8o7o96");
            TextKt.m2976Text4IGK_g("N. Psico", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleLarge(), $composer, 54, 0, 65532);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Biografía", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), $composer, 54, 0, 65532);
            Composer composer = $composer;
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer, 6);
            composer.startReplaceGroup(462350922);
            ComposerKt.sourceInformation(composer, "*173@6799L407");
            List list = $especialidades;
            int i4 = 0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Iterable iterable = list;
                int i5 = i4;
                Composer composer2 = composer;
                ComposerKt.sourceInformationMarkerStart(composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier = Modifier.INSTANCE;
                Iterator it2 = it;
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
                int i6 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                Composer composer3 = composer;
                ComposerKt.sourceInformationMarkerStart(composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer3, 0));
                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                Composer composer4 = composer;
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i7 = ((i6 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart(composer3, -553112988, str);
                if (!(composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer3.startReusableNode();
                if (composer3.getInserting()) {
                    function02 = constructor2;
                    composer3.createNode(function02);
                } else {
                    function02 = constructor2;
                    composer3.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer3);
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i8 = (i7 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart(composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i9 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart(composer3, 2023598351, "C176@6947L229:PrincipalClienteScreen.kt#8o7o96");
                TextKt.m2976Text4IGK_g(str2, PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleMedium(), composer3, 48, 0, 65532);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                ComposerKt.sourceInformationMarkerEnd(composer4);
                it = it2;
                list = iterable;
                i4 = i5;
                composer = composer2;
                str = str;
            }
            Composer composer5 = composer;
            composer5.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd(composer5);
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

    public static final void PrincipalClienteScreenPreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1268646590);
        ComposerKt.sourceInformation($composer2, "C(PrincipalClienteScreenPreview)196@7510L23,196@7487L47:PrincipalClienteScreen.kt#8o7o96");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1268646590, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenPreview (PrincipalClienteScreen.kt:195)");
            }
            PrincipalClienteScreen(NavHostControllerKt.rememberNavController(new Navigator[0], $composer2, 0), null, $composer2, 0, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalClienteScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalClienteScreenKt.PrincipalClienteScreenPreview$lambda$20($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
