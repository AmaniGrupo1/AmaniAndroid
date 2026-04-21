package org.ies.tierno.applicationamani.presentation.ui.screen;

import android.net.Uri;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
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
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
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
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel;
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;

/* JADX INFO: compiled from: SettingsClienteScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a;\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007¢\u0006\u0002\u0010\u000f\u001a\r\u0010\u0010\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"SettingsClienteScreen", "", "navController", "Landroidx/navigation/NavController;", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/SettingsClienteViewModel;Landroidx/compose/runtime/Composer;II)V", "TextFieldCustom", "label", "", Values.VECTOR_MAP_VECTORS_KEY, "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "SettingsClienteScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class SettingsClienteScreenKt {
    static final Unit SettingsClienteScreen$lambda$37(NavController navController, SettingsClienteViewModel settingsClienteViewModel, int i, int i2, Composer composer, int i3) {
        SettingsClienteScreen(navController, settingsClienteViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreenPreview$lambda$40(int i, Composer composer, int i2) {
        SettingsClienteScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit TextFieldCustom$lambda$39(String str, String str2, Function1 function1, Modifier modifier, int i, int i2, Composer composer, int i3) {
        TextFieldCustom(str, str2, function1, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void SettingsClienteScreen(final NavController navController, SettingsClienteViewModel viewModel, Composer $composer, final int $changed, final int i) {
        final SettingsClienteViewModel viewModel2;
        Composer $composer2;
        CreationExtras defaultViewModelCreationExtras;
        final SettingsClienteViewModel viewModel3;
        Object objRememberedValue;
        Object objRememberedValue2;
        boolean zChangedInstance;
        int $dirty;
        int i2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(639298332);
        ComposerKt.sourceInformation($composer3, "C(SettingsClienteScreen)N(navController,viewModel)53@2573L11,54@2620L10,55@2670L7,58@2808L102,56@2711L199,65@3042L102,63@2945L199,71@3171L41,71@3150L62,77@3288L4715,75@3218L4785:SettingsClienteScreen.kt#8o7o96");
        int $dirty2 = $changed;
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                viewModel2 = viewModel;
                if ($composer3.changedInstance(viewModel2)) {
                    i2 = 32;
                }
                $dirty2 |= i2;
            } else {
                viewModel2 = viewModel;
            }
            i2 = 16;
            $dirty2 |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if ($composer3.shouldExecute(($dirty2 & 17) != 16, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "52@2527L11");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty2 &= -113;
                }
            } else {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, 1729797275, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, 6);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    if (current instanceof HasDefaultViewModelProviderFactory) {
                        defaultViewModelCreationExtras = ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras();
                    } else {
                        defaultViewModelCreationExtras = CreationExtras.Empty.INSTANCE;
                    }
                    ViewModel viewModel4 = ViewModelKt.viewModel((KClass<ViewModel>) Reflection.getOrCreateKotlinClass(SettingsClienteViewModel.class), current, (String) null, (ViewModelProvider.Factory) null, defaultViewModelCreationExtras, $composer3, ((0 << 3) & 7168) | ((0 << 3) & 112) | ((0 << 3) & 896) | ((0 << 3) & 57344), 0);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty2 &= -113;
                    viewModel3 = (SettingsClienteViewModel) viewModel4;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(639298332, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen (SettingsClienteScreen.kt:52)");
                }
                final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
                final Typography typography = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
                ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors = ThemeKt.getLocalAmaniColors();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume = $composer3.consume(localAmaniColors);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                AmaniExtraColors amaniColors = (AmaniExtraColors) objConsume;
                ActivityResultContracts.GetContent getContent = new ActivityResultContracts.GetContent();
                ComposerKt.sourceInformationMarkerStart($composer3, 185386210, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$2$lambda$1((Uri) obj2);
                        }
                    };
                    $composer3.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final ManagedActivityResultLauncher consentimientoLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent, (Function1) objRememberedValue, $composer3, 48);
                ActivityResultContracts.GetContent getContent2 = new ActivityResultContracts.GetContent();
                ComposerKt.sourceInformationMarkerStart($composer3, 185393698, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                objRememberedValue2 = $composer3.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$5$lambda$4((Uri) obj3);
                        }
                    };
                    $composer3.updateRememberedValue(obj2);
                    objRememberedValue2 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final ManagedActivityResultLauncher proteccionDatosLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent2, (Function1) objRememberedValue2, $composer3, 48);
                Unit unit = Unit.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer3, 185397765, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance = $composer3.changedInstance(viewModel3);
                Object objRememberedValue3 = $composer3.rememberedValue();
                if (zChangedInstance) {
                    $dirty = $dirty2;
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue3, $composer3, 6);
                    SettingsClienteViewModel viewModel5 = viewModel3;
                    ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, amaniColors.m10507getScreenBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(556430829, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36(typography, colors, viewModel3, consentimientoLauncher, proteccionDatosLauncher, (PaddingValues) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                        }
                    }, $composer3, 54), $composer3, 805306368, 447);
                    $composer2 = $composer3;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    viewModel2 = viewModel5;
                } else {
                    $dirty = $dirty2;
                }
                Object obj3 = (Function2) new SettingsClienteScreenKt$SettingsClienteScreen$1$1(viewModel3, null);
                $composer3.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue3, $composer3, 6);
                SettingsClienteViewModel viewModel52 = viewModel3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, amaniColors.m10507getScreenBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(556430829, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj32, Object obj4, Object obj5) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36(typography, colors, viewModel3, consentimientoLauncher, proteccionDatosLauncher, (PaddingValues) obj32, (Composer) obj4, ((Integer) obj5).intValue());
                    }
                }, $composer3, 54), $composer3, 805306368, 447);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                }
                viewModel2 = viewModel52;
            }
            viewModel3 = viewModel2;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            final ColorScheme colors2 = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            final Typography typography2 = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable);
            ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors2 = ThemeKt.getLocalAmaniColors();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(localAmaniColors2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            AmaniExtraColors amaniColors2 = (AmaniExtraColors) objConsume2;
            ActivityResultContracts.GetContent getContent3 = new ActivityResultContracts.GetContent();
            ComposerKt.sourceInformationMarkerStart($composer3, 185386210, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final ManagedActivityResultLauncher consentimientoLauncher2 = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent3, (Function1) objRememberedValue, $composer3, 48);
            ActivityResultContracts.GetContent getContent22 = new ActivityResultContracts.GetContent();
            ComposerKt.sourceInformationMarkerStart($composer3, 185393698, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            objRememberedValue2 = $composer3.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final ManagedActivityResultLauncher proteccionDatosLauncher2 = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent22, (Function1) objRememberedValue2, $composer3, 48);
            Unit unit2 = Unit.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer3, 185397765, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance = $composer3.changedInstance(viewModel3);
            Object objRememberedValue32 = $composer3.rememberedValue();
            if (zChangedInstance) {
            }
            Object obj32 = (Function2) new SettingsClienteScreenKt$SettingsClienteScreen$1$1(viewModel3, null);
            $composer3.updateRememberedValue(obj32);
            objRememberedValue32 = obj32;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(unit2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue32, $composer3, 6);
            SettingsClienteViewModel viewModel522 = viewModel3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, null, null, 0, amaniColors2.m10507getScreenBackground0d7_KjU(), 0L, null, ComposableLambdaKt.rememberComposableLambda(556430829, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj322, Object obj4, Object obj5) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36(typography2, colors2, viewModel3, consentimientoLauncher2, proteccionDatosLauncher2, (PaddingValues) obj322, (Composer) obj4, ((Integer) obj5).intValue());
                }
            }, $composer3, 54), $composer3, 805306368, 447);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
            }
            viewModel2 = viewModel522;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$37(navController, viewModel2, $changed, i, (Composer) obj4, ((Integer) obj5).intValue());
                }
            });
        }
    }

    static final Unit SettingsClienteScreen$lambda$2$lambda$1(Uri uri) {
        if (uri != null) {
        }
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$5$lambda$4(Uri uri) {
        if (uri != null) {
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x06d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit SettingsClienteScreen$lambda$36(Typography $typography, final ColorScheme $colors, final SettingsClienteViewModel $viewModel, final ManagedActivityResultLauncher $consentimientoLauncher, final ManagedActivityResultLauncher $proteccionDatosLauncher, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Composer composer;
        boolean zChangedInstance;
        RowScope rowScope;
        boolean zChangedInstance2;
        Object objRememberedValue;
        boolean zChangedInstance3;
        Object objRememberedValue2;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)83@3488L21,78@3314L4683:SettingsClienteScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(556430829, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen.<anonymous> (SettingsClienteScreen.kt:78)");
            }
            Modifier modifierVerticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.m818padding3ABfNKs(PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), innerPadding), Dp.m7505constructorimpl(16)), ScrollKt.rememberScrollState(0, $composer, 0, 1), false, null, false, 14, null);
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
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
            int i3 = ((48 >> 6) & 112) | 6;
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 1745698908, "C86@3598L315,95@3927L72,99@4109L6,100@4161L43,101@4247L38,102@4300L2078,97@4013L2365,157@6392L1044,185@7484L30,187@7608L136,184@7450L364,196@7866L28,197@7909L77,195@7828L158:SettingsClienteScreen.kt#8o7o96");
            Modifier modifierAlign = columnScope.align(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(100)), Alignment.INSTANCE.getCenterHorizontally());
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierAlign);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i6 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -745297946, "C92@3815L84:SettingsClienteScreen.kt#8o7o96");
            TextKt.m2976Text4IGK_g("Foto cliente", (Modifier) null, $colors.getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyMedium(), $composer, 6, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextKt.m2976Text4IGK_g("General", (Modifier) null, $colors.getOnSurface(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getTitleLarge(), $composer, 6, 0, 65530);
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getLarge(), CardDefaults.INSTANCE.m2112cardColorsro_MJ88($colors.getSurface(), 0L, 0L, 0L, $composer, CardDefaults.$stable << 12, 14), CardDefaults.INSTANCE.m2113cardElevationaqJV_2Y(Dp.m7505constructorimpl(4), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, $composer, (CardDefaults.$stable << 18) | 6, 62), null, ComposableLambdaKt.rememberComposableLambda(982880725, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24($viewModel, (ColumnScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196614, 16);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int i7 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            int i9 = ((48 >> 6) & 112) | 6;
            RowScope rowScope2 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1955383999, "C159@6505L96,163@6699L148,158@6467L471,171@6993L97,175@7188L148,170@6955L467:SettingsClienteScreen.kt#8o7o96");
            ComposerKt.sourceInformationMarkerStart($composer, 1322396775, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer.changedInstance($consentimientoLauncher);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (!zChangedInstance4) {
                composer = $composer;
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                Composer composer2 = composer;
                ButtonKt.Button((Function0) objRememberedValue3, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, composer, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.getLambda$389103287$app(), composer2, 805306368, 492);
                ComposerKt.sourceInformationMarkerStart(composer2, 1322412392, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance = composer2.changedInstance($proteccionDatosLauncher);
                Object objRememberedValue4 = composer2.rememberedValue();
                if (zChangedInstance) {
                    rowScope = rowScope2;
                    if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ButtonKt.Button((Function0) objRememberedValue4, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, composer2, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.m10424getLambda$543026898$app(), composer2, 805306368, 492);
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerStart($composer, -913398463, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance2 = $composer.changedInstance($viewModel);
                    objRememberedValue = $composer.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda11
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$31$lambda$30($viewModel);
                            }
                        };
                        $composer.updateRememberedValue(obj);
                        objRememberedValue = obj;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ButtonKt.Button((Function0) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, $composer, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.m10423getLambda$1461677$app(), $composer, 805306416, 492);
                    ComposerKt.sourceInformationMarkerStart($composer, -913386241, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance3 = $composer.changedInstance($viewModel);
                    objRememberedValue2 = $composer.rememberedValue();
                    if (!zChangedInstance3 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$33$lambda$32($viewModel);
                            }
                        };
                        $composer.updateRememberedValue(obj2);
                        objRememberedValue2 = obj2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ButtonKt.TextButton((Function0) objRememberedValue2, null, false, null, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1377004768, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$34($colors, (RowScope) obj3, (Composer) obj4, ((Integer) obj5).intValue());
                        }
                    }, $composer, 54), $composer, 805306368, 510);
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
                    rowScope = rowScope2;
                }
                objRememberedValue4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$29$lambda$28$lambda$27($proteccionDatosLauncher);
                    }
                };
                composer2.updateRememberedValue(objRememberedValue4);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ButtonKt.Button((Function0) objRememberedValue4, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, composer2, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.m10424getLambda$543026898$app(), composer2, 805306368, 492);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerStart($composer, -913398463, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance2 = $composer.changedInstance($viewModel);
                objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance2) {
                    Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda11
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$31$lambda$30($viewModel);
                        }
                    };
                    $composer.updateRememberedValue(obj3);
                    objRememberedValue = obj3;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ButtonKt.Button((Function0) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, $composer, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.m10423getLambda$1461677$app(), $composer, 805306416, 492);
                    ComposerKt.sourceInformationMarkerStart($composer, -913386241, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance3 = $composer.changedInstance($viewModel);
                    objRememberedValue2 = $composer.rememberedValue();
                    if (!zChangedInstance3) {
                        Object obj22 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$33$lambda$32($viewModel);
                            }
                        };
                        $composer.updateRememberedValue(obj22);
                        objRememberedValue2 = obj22;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ButtonKt.TextButton((Function0) objRememberedValue2, null, false, null, null, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1377004768, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda13
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj32, Object obj4, Object obj5) {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$34($colors, (RowScope) obj32, (Composer) obj4, ((Integer) obj5).intValue());
                            }
                        }, $composer, 54), $composer, 805306368, 510);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                }
            } else {
                composer = $composer;
            }
            objRememberedValue3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$29$lambda$26$lambda$25($consentimientoLauncher);
                }
            };
            $composer.updateRememberedValue(objRememberedValue3);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Composer composer22 = composer;
            ButtonKt.Button((Function0) objRememberedValue3, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, composer, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.getLambda$389103287$app(), composer22, 805306368, 492);
            ComposerKt.sourceInformationMarkerStart(composer22, 1322412392, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance = composer22.changedInstance($proteccionDatosLauncher);
            Object objRememberedValue42 = composer22.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue42 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$29$lambda$28$lambda$27($proteccionDatosLauncher);
                }
            };
            composer22.updateRememberedValue(objRememberedValue42);
            ComposerKt.sourceInformationMarkerEnd(composer22);
            ButtonKt.Button((Function0) objRememberedValue42, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), false, null, ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, composer22, ButtonDefaults.$stable << 12, 12), null, null, null, null, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.m10424getLambda$543026898$app(), composer22, 805306368, 492);
            ComposerKt.sourceInformationMarkerEnd(composer22);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, -913398463, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance2 = $composer.changedInstance($viewModel);
            objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance2) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x05da  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x06e8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0752  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24(final SettingsClienteViewModel $viewModel, ColumnScope Card, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        boolean zChangedInstance;
        Composer composer2;
        Function0<ComposeUiNode> function03;
        boolean zChangedInstance2;
        String str;
        boolean zChangedInstance3;
        Composer composer3;
        Function0<ComposeUiNode> function04;
        boolean zChangedInstance4;
        String str2;
        boolean zChangedInstance5;
        Object objRememberedValue;
        Intrinsics.checkNotNullParameter(Card, "$this$Card");
        ComposerKt.sourceInformation($composer, "C103@4318L2046:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(982880725, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen.<anonymous>.<anonymous>.<anonymous> (SettingsClienteScreen.kt:103)");
            }
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16));
            Arrangement.Vertical verticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(12));
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
            ComposerKt.sourceInformationMarkerStart($composer, 1870213146, "C107@4492L598,123@5112L598,139@5732L614:SettingsClienteScreen.kt#8o7o96");
            Arrangement.Horizontal horizontalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            int i6 = ((48 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1398764825, "C111@4704L25,108@4575L229,118@4965L28,115@4830L238:SettingsClienteScreen.kt#8o7o96");
            String nombre = $viewModel.getNombre();
            ComposerKt.sourceInformationMarkerStart($composer, -2123327768, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            boolean zChangedInstance6 = $composer.changedInstance($viewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (!zChangedInstance6) {
                composer = $composer;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                Composer composer4 = composer;
                TextFieldCustom("Nombre", nombre, (Function1) objRememberedValue2, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer4, 6, 0);
                String apellidos = $viewModel.getApellidos();
                ComposerKt.sourceInformationMarkerStart(composer4, -2123319413, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance = composer4.changedInstance($viewModel);
                Object objRememberedValue3 = composer4.rememberedValue();
                if (zChangedInstance) {
                    composer2 = composer4;
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    Composer composer5 = composer2;
                    TextFieldCustom("Apellidos", apellidos, (Function1) objRememberedValue3, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer5, 6, 0);
                    ComposerKt.sourceInformationMarkerEnd(composer5);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Arrangement.Horizontal horizontalM688spacedBy0680j_42 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                    ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    Modifier modifier2 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_42, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                    CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifier2);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                    int i7 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
                    int i8 = (i7 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    int i9 = ((48 >> 6) & 112) | 6;
                    RowScope rowScope2 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer, 12955408, "C127@5324L25,124@5195L229,134@5585L28,131@5450L238:SettingsClienteScreen.kt#8o7o96");
                    String genero = $viewModel.getGenero();
                    ComposerKt.sourceInformationMarkerStart($composer, -1385051745, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance2 = $composer.changedInstance($viewModel);
                    Object objRememberedValue4 = $composer.rememberedValue();
                    if (!zChangedInstance2) {
                        str = genero;
                        if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        TextFieldCustom("Género", str, (Function1) objRememberedValue4, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                        String direccion = $viewModel.getDireccion();
                        ComposerKt.sourceInformationMarkerStart($composer, -1385043390, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                        zChangedInstance3 = $composer.changedInstance($viewModel);
                        Object objRememberedValue5 = $composer.rememberedValue();
                        if (zChangedInstance3) {
                            composer3 = $composer;
                            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            Composer composer6 = composer3;
                            TextFieldCustom("Dirección", direccion, (Function1) objRememberedValue5, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), composer6, 6, 0);
                            ComposerKt.sourceInformationMarkerEnd(composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            $composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            Arrangement.Horizontal horizontalM688spacedBy0680j_43 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                            Modifier modifier3 = Modifier.INSTANCE;
                            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_43, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                            int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                            CompositionLocalMap currentCompositionLocalMap4 = $composer.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier($composer, modifier3);
                            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                            int i10 = ((((48 << 3) & 112) << 6) & 896) | 6;
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
                            int i11 = (i10 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                            int i12 = ((48 >> 6) & 112) | 6;
                            RowScope rowScope3 = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer, -1252920481, "C143@5948L27,140@5815L235,150@6218L31,147@6076L248:SettingsClienteScreen.kt#8o7o96");
                            String telefono = $viewModel.getTelefono();
                            ComposerKt.sourceInformationMarkerStart($composer, 1899249634, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                            zChangedInstance4 = $composer.changedInstance($viewModel);
                            Object objRememberedValue6 = $composer.rememberedValue();
                            if (!zChangedInstance4) {
                                str2 = telefono;
                                if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue6, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                                String codigoPostal = $viewModel.getCodigoPostal();
                                ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                                zChangedInstance5 = $composer.changedInstance($viewModel);
                                objRememberedValue = $composer.rememberedValue();
                                if (!zChangedInstance5 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                    objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                                        }
                                    };
                                    $composer.updateRememberedValue(objRememberedValue);
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                TextFieldCustom("Código postal", codigoPostal, (Function1) objRememberedValue, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
                                str2 = telefono;
                            }
                            objRememberedValue6 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18($viewModel, (String) obj);
                                }
                            };
                            $composer.updateRememberedValue(objRememberedValue6);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue6, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                            String codigoPostal2 = $viewModel.getCodigoPostal();
                            ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                            zChangedInstance5 = $composer.changedInstance($viewModel);
                            objRememberedValue = $composer.rememberedValue();
                            if (!zChangedInstance5) {
                            }
                            objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                                }
                            };
                            $composer.updateRememberedValue(objRememberedValue);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            TextFieldCustom("Código postal", codigoPostal2, (Function1) objRememberedValue, RowScope.weight$default(rowScope3, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
                            }
                        } else {
                            composer3 = $composer;
                        }
                        objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$16$lambda$15($viewModel, (String) obj);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue5);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Composer composer62 = composer3;
                        TextFieldCustom("Dirección", direccion, (Function1) objRememberedValue5, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), composer62, 6, 0);
                        ComposerKt.sourceInformationMarkerEnd(composer62);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        $composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        Arrangement.Horizontal horizontalM688spacedBy0680j_432 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                        ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                        Modifier modifier32 = Modifier.INSTANCE;
                        MeasurePolicy measurePolicyRowMeasurePolicy32 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_432, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                        int iHashCode42 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                        CompositionLocalMap currentCompositionLocalMap42 = $composer.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier42 = ComposedModifierKt.materializeModifier($composer, modifier32);
                        Function0<ComposeUiNode> constructor42 = ComposeUiNode.INSTANCE.getConstructor();
                        int i102 = ((((48 << 3) & 112) << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                        if (!($composer.getApplier() instanceof Applier)) {
                        }
                        $composer.startReusableNode();
                        if ($composer.getInserting()) {
                        }
                        Composer composerM3967constructorimpl42 = Updater.m3967constructorimpl($composer);
                        Updater.m3975setimpl(composerM3967constructorimpl42, measurePolicyRowMeasurePolicy32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl(composerM3967constructorimpl42, currentCompositionLocalMap42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Updater.m3971initimpl(composerM3967constructorimpl42, Integer.valueOf(iHashCode42), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                        Updater.m3973reconcileimpl(composerM3967constructorimpl42, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                        Updater.m3975setimpl(composerM3967constructorimpl42, modifierMaterializeModifier42, ComposeUiNode.INSTANCE.getSetModifier());
                        int i112 = (i102 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                        int i122 = ((48 >> 6) & 112) | 6;
                        RowScope rowScope32 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer, -1252920481, "C143@5948L27,140@5815L235,150@6218L31,147@6076L248:SettingsClienteScreen.kt#8o7o96");
                        String telefono2 = $viewModel.getTelefono();
                        ComposerKt.sourceInformationMarkerStart($composer, 1899249634, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                        zChangedInstance4 = $composer.changedInstance($viewModel);
                        Object objRememberedValue62 = $composer.rememberedValue();
                        if (!zChangedInstance4) {
                        }
                        objRememberedValue62 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18($viewModel, (String) obj);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue62);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue62, RowScope.weight$default(rowScope32, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                        String codigoPostal22 = $viewModel.getCodigoPostal();
                        ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                        zChangedInstance5 = $composer.changedInstance($viewModel);
                        objRememberedValue = $composer.rememberedValue();
                        if (!zChangedInstance5) {
                        }
                        objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        TextFieldCustom("Código postal", codigoPostal22, (Function1) objRememberedValue, RowScope.weight$default(rowScope32, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
                        }
                    } else {
                        str = genero;
                    }
                    objRememberedValue4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$14$lambda$13($viewModel, (String) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue4);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    TextFieldCustom("Género", str, (Function1) objRememberedValue4, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                    String direccion2 = $viewModel.getDireccion();
                    ComposerKt.sourceInformationMarkerStart($composer, -1385043390, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance3 = $composer.changedInstance($viewModel);
                    Object objRememberedValue52 = $composer.rememberedValue();
                    if (zChangedInstance3) {
                    }
                    objRememberedValue52 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$16$lambda$15($viewModel, (String) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue52);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    Composer composer622 = composer3;
                    TextFieldCustom("Dirección", direccion2, (Function1) objRememberedValue52, RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null), composer622, 6, 0);
                    ComposerKt.sourceInformationMarkerEnd(composer622);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    Arrangement.Horizontal horizontalM688spacedBy0680j_4322 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                    ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                    Modifier modifier322 = Modifier.INSTANCE;
                    MeasurePolicy measurePolicyRowMeasurePolicy322 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4322, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                    int iHashCode422 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                    CompositionLocalMap currentCompositionLocalMap422 = $composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier422 = ComposedModifierKt.materializeModifier($composer, modifier322);
                    Function0<ComposeUiNode> constructor422 = ComposeUiNode.INSTANCE.getConstructor();
                    int i1022 = ((((48 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                    if (!($composer.getApplier() instanceof Applier)) {
                    }
                    $composer.startReusableNode();
                    if ($composer.getInserting()) {
                    }
                    Composer composerM3967constructorimpl422 = Updater.m3967constructorimpl($composer);
                    Updater.m3975setimpl(composerM3967constructorimpl422, measurePolicyRowMeasurePolicy322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl(composerM3967constructorimpl422, currentCompositionLocalMap422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Updater.m3971initimpl(composerM3967constructorimpl422, Integer.valueOf(iHashCode422), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                    Updater.m3973reconcileimpl(composerM3967constructorimpl422, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                    Updater.m3975setimpl(composerM3967constructorimpl422, modifierMaterializeModifier422, ComposeUiNode.INSTANCE.getSetModifier());
                    int i1122 = (i1022 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                    int i1222 = ((48 >> 6) & 112) | 6;
                    RowScope rowScope322 = RowScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer, -1252920481, "C143@5948L27,140@5815L235,150@6218L31,147@6076L248:SettingsClienteScreen.kt#8o7o96");
                    String telefono22 = $viewModel.getTelefono();
                    ComposerKt.sourceInformationMarkerStart($composer, 1899249634, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance4 = $composer.changedInstance($viewModel);
                    Object objRememberedValue622 = $composer.rememberedValue();
                    if (!zChangedInstance4) {
                    }
                    objRememberedValue622 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18($viewModel, (String) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue622);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue622, RowScope.weight$default(rowScope322, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                    String codigoPostal222 = $viewModel.getCodigoPostal();
                    ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                    zChangedInstance5 = $composer.changedInstance($viewModel);
                    objRememberedValue = $composer.rememberedValue();
                    if (!zChangedInstance5) {
                    }
                    objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                        }
                    };
                    $composer.updateRememberedValue(objRememberedValue);
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    TextFieldCustom("Código postal", codigoPostal222, (Function1) objRememberedValue, RowScope.weight$default(rowScope322, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
                    }
                } else {
                    composer2 = composer4;
                }
                objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$12$lambda$11$lambda$10($viewModel, (String) obj);
                    }
                };
                composer4.updateRememberedValue(objRememberedValue3);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                Composer composer52 = composer2;
                TextFieldCustom("Apellidos", apellidos, (Function1) objRememberedValue3, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer52, 6, 0);
                ComposerKt.sourceInformationMarkerEnd(composer52);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Arrangement.Horizontal horizontalM688spacedBy0680j_422 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier22 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy22 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_422, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode32 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap32 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier32 = ComposedModifierKt.materializeModifier($composer, modifier22);
                Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                int i72 = ((((48 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                }
                Composer composerM3967constructorimpl32 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl32, measurePolicyRowMeasurePolicy22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl32, currentCompositionLocalMap32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl32, Integer.valueOf(iHashCode32), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl32, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl32, modifierMaterializeModifier32, ComposeUiNode.INSTANCE.getSetModifier());
                int i82 = (i72 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i92 = ((48 >> 6) & 112) | 6;
                RowScope rowScope22 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer, 12955408, "C127@5324L25,124@5195L229,134@5585L28,131@5450L238:SettingsClienteScreen.kt#8o7o96");
                String genero2 = $viewModel.getGenero();
                ComposerKt.sourceInformationMarkerStart($composer, -1385051745, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance2 = $composer.changedInstance($viewModel);
                Object objRememberedValue42 = $composer.rememberedValue();
                if (!zChangedInstance2) {
                }
                objRememberedValue42 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$14$lambda$13($viewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue42);
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldCustom("Género", str, (Function1) objRememberedValue42, RowScope.weight$default(rowScope22, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                String direccion22 = $viewModel.getDireccion();
                ComposerKt.sourceInformationMarkerStart($composer, -1385043390, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance3 = $composer.changedInstance($viewModel);
                Object objRememberedValue522 = $composer.rememberedValue();
                if (zChangedInstance3) {
                }
                objRememberedValue522 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$16$lambda$15($viewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue522);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                Composer composer6222 = composer3;
                TextFieldCustom("Dirección", direccion22, (Function1) objRememberedValue522, RowScope.weight$default(rowScope22, Modifier.INSTANCE, 1.0f, false, 2, null), composer6222, 6, 0);
                ComposerKt.sourceInformationMarkerEnd(composer6222);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                Arrangement.Horizontal horizontalM688spacedBy0680j_43222 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                Modifier modifier3222 = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy3222 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_43222, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode4222 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap4222 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4222 = ComposedModifierKt.materializeModifier($composer, modifier3222);
                Function0<ComposeUiNode> constructor4222 = ComposeUiNode.INSTANCE.getConstructor();
                int i10222 = ((((48 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                }
                Composer composerM3967constructorimpl4222 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl4222, measurePolicyRowMeasurePolicy3222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl4222, currentCompositionLocalMap4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl4222, Integer.valueOf(iHashCode4222), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl4222, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl4222, modifierMaterializeModifier4222, ComposeUiNode.INSTANCE.getSetModifier());
                int i11222 = (i10222 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
                int i12222 = ((48 >> 6) & 112) | 6;
                RowScope rowScope3222 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer, -1252920481, "C143@5948L27,140@5815L235,150@6218L31,147@6076L248:SettingsClienteScreen.kt#8o7o96");
                String telefono222 = $viewModel.getTelefono();
                ComposerKt.sourceInformationMarkerStart($composer, 1899249634, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance4 = $composer.changedInstance($viewModel);
                Object objRememberedValue6222 = $composer.rememberedValue();
                if (!zChangedInstance4) {
                }
                objRememberedValue6222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18($viewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue6222);
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue6222, RowScope.weight$default(rowScope3222, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
                String codigoPostal2222 = $viewModel.getCodigoPostal();
                ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
                zChangedInstance5 = $composer.changedInstance($viewModel);
                objRememberedValue = $composer.rememberedValue();
                if (!zChangedInstance5) {
                }
                objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue);
                ComposerKt.sourceInformationMarkerEnd($composer);
                TextFieldCustom("Código postal", codigoPostal2222, (Function1) objRememberedValue, RowScope.weight$default(rowScope3222, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
                }
            } else {
                composer = $composer;
            }
            objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$12$lambda$9$lambda$8($viewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Composer composer42 = composer;
            TextFieldCustom("Nombre", nombre, (Function1) objRememberedValue2, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer42, 6, 0);
            String apellidos2 = $viewModel.getApellidos();
            ComposerKt.sourceInformationMarkerStart(composer42, -2123319413, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance = composer42.changedInstance($viewModel);
            Object objRememberedValue32 = composer42.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue32 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$12$lambda$11$lambda$10($viewModel, (String) obj);
                }
            };
            composer42.updateRememberedValue(objRememberedValue32);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            Composer composer522 = composer2;
            TextFieldCustom("Apellidos", apellidos2, (Function1) objRememberedValue32, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer522, 6, 0);
            ComposerKt.sourceInformationMarkerEnd(composer522);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Arrangement.Horizontal horizontalM688spacedBy0680j_4222 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier222 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy222 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_4222, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode322 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap322 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier322 = ComposedModifierKt.materializeModifier($composer, modifier222);
            Function0<ComposeUiNode> constructor322 = ComposeUiNode.INSTANCE.getConstructor();
            int i722 = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
            }
            Composer composerM3967constructorimpl322 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl322, measurePolicyRowMeasurePolicy222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl322, currentCompositionLocalMap322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl322, Integer.valueOf(iHashCode322), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl322, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl322, modifierMaterializeModifier322, ComposeUiNode.INSTANCE.getSetModifier());
            int i822 = (i722 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i922 = ((48 >> 6) & 112) | 6;
            RowScope rowScope222 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 12955408, "C127@5324L25,124@5195L229,134@5585L28,131@5450L238:SettingsClienteScreen.kt#8o7o96");
            String genero22 = $viewModel.getGenero();
            ComposerKt.sourceInformationMarkerStart($composer, -1385051745, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance2 = $composer.changedInstance($viewModel);
            Object objRememberedValue422 = $composer.rememberedValue();
            if (!zChangedInstance2) {
            }
            objRememberedValue422 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$14$lambda$13($viewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue422);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldCustom("Género", str, (Function1) objRememberedValue422, RowScope.weight$default(rowScope222, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
            String direccion222 = $viewModel.getDireccion();
            ComposerKt.sourceInformationMarkerStart($composer, -1385043390, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance3 = $composer.changedInstance($viewModel);
            Object objRememberedValue5222 = $composer.rememberedValue();
            if (zChangedInstance3) {
            }
            objRememberedValue5222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$16$lambda$15($viewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue5222);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            Composer composer62222 = composer3;
            TextFieldCustom("Dirección", direccion222, (Function1) objRememberedValue5222, RowScope.weight$default(rowScope222, Modifier.INSTANCE, 1.0f, false, 2, null), composer62222, 6, 0);
            ComposerKt.sourceInformationMarkerEnd(composer62222);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Arrangement.Horizontal horizontalM688spacedBy0680j_432222 = Arrangement.INSTANCE.m688spacedBy0680j_4(Dp.m7505constructorimpl(16));
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            Modifier modifier32222 = Modifier.INSTANCE;
            MeasurePolicy measurePolicyRowMeasurePolicy32222 = RowKt.rowMeasurePolicy(horizontalM688spacedBy0680j_432222, Alignment.INSTANCE.getTop(), $composer, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode42222 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap42222 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier42222 = ComposedModifierKt.materializeModifier($composer, modifier32222);
            Function0<ComposeUiNode> constructor42222 = ComposeUiNode.INSTANCE.getConstructor();
            int i102222 = ((((48 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
            }
            Composer composerM3967constructorimpl42222 = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl42222, measurePolicyRowMeasurePolicy32222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl42222, currentCompositionLocalMap42222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl42222, Integer.valueOf(iHashCode42222), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl42222, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl42222, modifierMaterializeModifier42222, ComposeUiNode.INSTANCE.getSetModifier());
            int i112222 = (i102222 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i122222 = ((48 >> 6) & 112) | 6;
            RowScope rowScope32222 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1252920481, "C143@5948L27,140@5815L235,150@6218L31,147@6076L248:SettingsClienteScreen.kt#8o7o96");
            String telefono2222 = $viewModel.getTelefono();
            ComposerKt.sourceInformationMarkerStart($composer, 1899249634, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance4 = $composer.changedInstance($viewModel);
            Object objRememberedValue62222 = $composer.rememberedValue();
            if (!zChangedInstance4) {
            }
            objRememberedValue62222 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18($viewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue62222);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldCustom("Teléfono", str2, (Function1) objRememberedValue62222, RowScope.weight$default(rowScope32222, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
            String codigoPostal22222 = $viewModel.getCodigoPostal();
            ComposerKt.sourceInformationMarkerStart($composer, 1899258278, "CC(remember):SettingsClienteScreen.kt#9igjgp");
            zChangedInstance5 = $composer.changedInstance($viewModel);
            objRememberedValue = $composer.rememberedValue();
            if (!zChangedInstance5) {
            }
            objRememberedValue = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SettingsClienteScreenKt.SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20($viewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue);
            ComposerKt.sourceInformationMarkerEnd($composer);
            TextFieldCustom("Código postal", codigoPostal22222, (Function1) objRememberedValue, RowScope.weight$default(rowScope32222, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 6, 0);
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
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$12$lambda$9$lambda$8(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setNombre(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$12$lambda$11$lambda$10(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setApellidos(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$14$lambda$13(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setGenero(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$17$lambda$16$lambda$15(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setDireccion(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$19$lambda$18(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setTelefono(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20(SettingsClienteViewModel $viewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $viewModel.setCodigoPostal(it);
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$29$lambda$26$lambda$25(ManagedActivityResultLauncher $consentimientoLauncher) {
        $consentimientoLauncher.launch("application/pdf");
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$29$lambda$28$lambda$27(ManagedActivityResultLauncher $proteccionDatosLauncher) {
        $proteccionDatosLauncher.launch("application/pdf");
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$31$lambda$30(SettingsClienteViewModel $viewModel) {
        $viewModel.guardarUsuario();
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$33$lambda$32(SettingsClienteViewModel $viewModel) {
        $viewModel.borrarCuenta();
        return Unit.INSTANCE;
    }

    static final Unit SettingsClienteScreen$lambda$36$lambda$35$lambda$34(ColorScheme $colors, RowScope TextButton, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
        ComposerKt.sourceInformation($composer, "C198@7927L45:SettingsClienteScreen.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1377004768, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreen.<anonymous>.<anonymous>.<anonymous> (SettingsClienteScreen.kt:198)");
            }
            TextKt.m2976Text4IGK_g("Eliminar cuenta", (Modifier) null, $colors.getError(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 6, 0, 131066);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void TextFieldCustom(final String label, final String value, final Function1<? super String, Unit> onValueChange, Modifier modifier, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Composer $composer2;
        final Modifier modifier3;
        Modifier modifier4;
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        Composer $composer3 = $composer.startRestartGroup(-564397807);
        ComposerKt.sourceInformation($composer3, "C(TextFieldCustom)N(label,value,onValueChange,modifier)222@8468L761:SettingsClienteScreen.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(label) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(value) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onValueChange) ? 256 : 128;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if (!$composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        } else {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-564397807, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.TextFieldCustom (SettingsClienteScreen.kt:221)");
            }
            int i3 = ($dirty >> 9) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer3, ((i3 >> 3) & 14) | ((i3 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifier4);
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i6 = ((i3 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -209214629, "C223@8533L11,224@8587L10,224@8553L82,226@8645L40,234@8957L256,228@8695L528:SettingsClienteScreen.kt#8o7o96");
            ColorScheme colorScheme = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable);
            int $dirty2 = $dirty;
            $composer2 = $composer3;
            TextKt.m2976Text4IGK_g(label, (Modifier) null, colorScheme.getOnSurface(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodyMedium(), $composer3, $dirty & 14, 0, 65530);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer3, 6);
            OutlinedTextFieldKt.OutlinedTextField(value, onValueChange, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), OutlinedTextFieldDefaults.INSTANCE.m2626colors0hiis_0(0L, 0L, 0L, 0L, colorScheme.getSurfaceVariant(), colorScheme.getSurfaceVariant(), 0L, 0L, 0L, 0L, null, colorScheme.getPrimary(), colorScheme.getOutline(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 0, 0, 0, 0, 3072, 2147477455, 4095), $composer3, (($dirty2 >> 3) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (($dirty2 >> 3) & 112), 12582912, 0, 1966072);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SettingsClienteScreenKt.TextFieldCustom$lambda$39(label, value, onValueChange, modifier3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void SettingsClienteScreenPreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-1852011676);
        ComposerKt.sourceInformation($composer2, "C(SettingsClienteScreenPreview)250@9381L84:SettingsClienteScreen.kt#8o7o96");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1852011676, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenPreview (SettingsClienteScreen.kt:249)");
            }
            ThemeKt.ApplicationAmaniTheme(false, ComposableSingletons$SettingsClienteScreenKt.INSTANCE.getLambda$827175809$app(), $composer2, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.SettingsClienteScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SettingsClienteScreenKt.SettingsClienteScreenPreview$lambda$40($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
