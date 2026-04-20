package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import android.graphics.Color;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigation.NavController;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel;
import org.ies.tierno.applicationamani.ui.theme.TypeKt;
import org.koin.compose.KoinApplicationKt;
import org.koin.viewmodel.CreationExtrasExtKt;
import org.koin.viewmodel.GetViewModelKt;

/* JADX INFO: compiled from: TestScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a9\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0010²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002"}, d2 = {"TestScreen", "", "navController", "Landroidx/navigation/NavController;", "crearPreguntaViewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;", "(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;Landroidx/compose/runtime/Composer;II)V", "CampoPregunta", Values.VECTOR_MAP_VECTORS_KEY, "", "placeholder", "onChange", "Lkotlin/Function1;", "roboto", "Landroidx/compose/ui/text/font/FontFamily;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)V", "app", "guardadoExitoso", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class TestScreenKt {
    static final Unit CampoPregunta$lambda$24(String str, String str2, Function1 function1, FontFamily fontFamily, int i, Composer composer, int i2) {
        CampoPregunta(str, str2, function1, fontFamily, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$22(NavController navController, CrearPreguntaViewModel crearPreguntaViewModel, int i, int i2, Composer composer, int i3) {
        TestScreen(navController, crearPreguntaViewModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void TestScreen(final NavController navController, CrearPreguntaViewModel crearPreguntaViewModel, Composer $composer, final int $changed, final int i) {
        final CrearPreguntaViewModel crearPreguntaViewModel2;
        Composer $composer2;
        int $dirty;
        final CrearPreguntaViewModel crearPreguntaViewModel3;
        Object objRememberedValue;
        State guardadoExitoso$delegate;
        int $dirty2;
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer3 = $composer.startRestartGroup(755459324);
        ComposerKt.sourceInformation($composer3, "C(TestScreen)N(navController,crearPreguntaViewModel)50@2193L16,53@2263L32,54@2362L16,64@2724L35,65@2766L3182,62@2646L3302:TestScreen.kt#6w2cjo");
        int $dirty3 = $changed;
        if (($changed & 6) == 0) {
            $dirty3 |= $composer3.changedInstance(navController) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                crearPreguntaViewModel2 = crearPreguntaViewModel;
                int i2 = $composer3.changedInstance(crearPreguntaViewModel2) ? 32 : 16;
                $dirty3 |= i2;
            } else {
                crearPreguntaViewModel2 = crearPreguntaViewModel;
            }
            $dirty3 |= i2;
        } else {
            crearPreguntaViewModel2 = crearPreguntaViewModel;
        }
        if ($composer3.shouldExecute(($dirty3 & 19) != 18, $dirty3 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "47@2057L15");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 2) != 0) {
                    $dirty3 &= -113;
                }
            } else {
                if ((i & 2) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -1614864554, "CC(koinViewModel)N(qualifier,viewModelStoreOwner,key,extras,scope,parameters)43@1516L7,46@1711L18:ViewModel.kt#m7on9k");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer3, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModelResolveViewModel = GetViewModelKt.resolveViewModel(Reflection.getOrCreateKotlinClass(CrearPreguntaViewModel.class), current.getViewModelStore(), null, CreationExtrasExtKt.defaultExtras(current), null, KoinApplicationKt.currentKoinScope($composer3, 0), null);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty = $dirty3 & (-113);
                    crearPreguntaViewModel3 = (CrearPreguntaViewModel) viewModelResolveViewModel;
                }
                $composer3.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(755459324, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen (TestScreen.kt:48)");
                }
                final int colorButton = Color.parseColor("#CCC0E4");
                final State request = SnapshotStateKt.collectAsState(crearPreguntaViewModel3.getRequest(), null, $composer3, 0, 1);
                final FontFamily roboto = TypeKt.getRoboto();
                ComposerKt.sourceInformationMarkerStart($composer3, 146947644, "CC(remember):TestScreen.kt#9igjgp");
                objRememberedValue = $composer3.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object snackbarHostState = new SnackbarHostState();
                    $composer3.updateRememberedValue(snackbarHostState);
                    objRememberedValue = snackbarHostState;
                }
                final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                guardadoExitoso$delegate = SnapshotStateKt.collectAsState(crearPreguntaViewModel3.getGuardadoExitoso(), null, $composer3, 0, 1);
                if (TestScreen$lambda$1(guardadoExitoso$delegate)) {
                    $dirty2 = $dirty;
                    $composer3.startReplaceGroup(258162790);
                } else {
                    $composer3.startReplaceGroup(260555897);
                    ComposerKt.sourceInformation($composer3, "56@2446L189,56@2414L221");
                    Boolean boolValueOf = Boolean.valueOf(TestScreen$lambda$1(guardadoExitoso$delegate));
                    ComposerKt.sourceInformationMarkerStart($composer3, 146953657, "CC(remember):TestScreen.kt#9igjgp");
                    boolean zChangedInstance = $composer3.changedInstance(navController) | $composer3.changedInstance(crearPreguntaViewModel3);
                    Object objRememberedValue2 = $composer3.rememberedValue();
                    if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        $dirty2 = $dirty;
                        Object obj = (Function2) new TestScreenKt$TestScreen$1$1(snackbarHostState2, navController, crearPreguntaViewModel3, null);
                        $composer3.updateRememberedValue(obj);
                        objRememberedValue2 = obj;
                    } else {
                        $dirty2 = $dirty;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer3, 0);
                }
                $composer3.endReplaceGroup();
                $composer2 = $composer3;
                CrearPreguntaViewModel crearPreguntaViewModel4 = crearPreguntaViewModel3;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, ComposableLambdaKt.rememberComposableLambda(373231478, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return TestScreenKt.TestScreen$lambda$3(snackbarHostState2, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54), null, 0, ColorKt.Color(colorButton), 0L, null, ComposableLambdaKt.rememberComposableLambda(-1201618547, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj2, Object obj3, Object obj4) {
                        return TestScreenKt.TestScreen$lambda$21(roboto, request, crearPreguntaViewModel3, colorButton, (PaddingValues) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                    }
                }, $composer3, 54), $composer2, 805309440, 439);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                crearPreguntaViewModel2 = crearPreguntaViewModel4;
            }
            CrearPreguntaViewModel crearPreguntaViewModel5 = crearPreguntaViewModel2;
            $dirty = $dirty3;
            crearPreguntaViewModel3 = crearPreguntaViewModel5;
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
            }
            final int colorButton2 = Color.parseColor("#CCC0E4");
            final State request2 = SnapshotStateKt.collectAsState(crearPreguntaViewModel3.getRequest(), null, $composer3, 0, 1);
            final FontFamily roboto2 = TypeKt.getRoboto();
            ComposerKt.sourceInformationMarkerStart($composer3, 146947644, "CC(remember):TestScreen.kt#9igjgp");
            objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            }
            final SnackbarHostState snackbarHostState22 = (SnackbarHostState) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            guardadoExitoso$delegate = SnapshotStateKt.collectAsState(crearPreguntaViewModel3.getGuardadoExitoso(), null, $composer3, 0, 1);
            if (TestScreen$lambda$1(guardadoExitoso$delegate)) {
            }
            $composer3.endReplaceGroup();
            $composer2 = $composer3;
            CrearPreguntaViewModel crearPreguntaViewModel42 = crearPreguntaViewModel3;
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, null, null, ComposableLambdaKt.rememberComposableLambda(373231478, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return TestScreenKt.TestScreen$lambda$3(snackbarHostState22, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), null, 0, ColorKt.Color(colorButton2), 0L, null, ComposableLambdaKt.rememberComposableLambda(-1201618547, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return TestScreenKt.TestScreen$lambda$21(roboto2, request2, crearPreguntaViewModel3, colorButton2, (PaddingValues) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer2, 805309440, 439);
            if (ComposerKt.isTraceInProgress()) {
            }
            crearPreguntaViewModel2 = crearPreguntaViewModel42;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return TestScreenKt.TestScreen$lambda$22(navController, crearPreguntaViewModel2, $changed, i, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    private static final boolean TestScreen$lambda$1(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    static final Unit TestScreen$lambda$3(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C64@2726L31:TestScreen.kt#6w2cjo");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(373231478, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous> (TestScreen.kt:64)");
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

    /* JADX WARN: Removed duplicated region for block: B:100:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x058b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0492  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit TestScreen$lambda$21(final FontFamily $roboto, State $request, final CrearPreguntaViewModel $crearPreguntaViewModel, int $colorButton, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer composer;
        boolean zChangedInstance;
        Composer composer2;
        boolean zChangedInstance2;
        Composer composer3;
        boolean zChangedInstance3;
        Composer composer4;
        boolean zChangedInstance4;
        Composer composer5;
        boolean zChangedInstance5;
        Composer composer6;
        boolean zChangedInstance6;
        Object objRememberedValue;
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)67@2793L3149:TestScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1201618547, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous> (TestScreen.kt:67)");
            }
            Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxSize$default(PaddingKt.padding(Modifier.INSTANCE, innerPadding), 0.0f, 1, null), Dp.m7505constructorimpl(24), 0.0f, 2, null);
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.Vertical center = Arrangement.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM820paddingVpY3zN4$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((432 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = ((432 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 2046436039, "C76@3091L167,85@3274L2658:TestScreen.kt#6w2cjo");
            TextKt.m2976Text4IGK_g("Crear pregunta", (Modifier) null, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), TextUnitKt.getSp(26), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1576326, 0, 130994);
            Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(BackgroundKt.m263backgroundbw27NRU(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), androidx.compose.ui.graphics.Color.INSTANCE.m4734getWhite0d7_KjU(), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(20))), Dp.m7505constructorimpl(20));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierM818padding3ABfNKs);
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
            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 230923905, "C98@3718L39,95@3573L239,105@3982L38,102@3830L245,113@4258L41,110@4094L260,120@4536L41,117@4372L260,127@4814L41,124@4650L260,135@5093L41,132@4929L260,148@5555L147,145@5421L88,152@5721L197,140@5208L710:TestScreen.kt#6w2cjo");
            String texto = ((PreguntaRequest) $request.getValue()).getTexto();
            String str5 = texto == null ? "" : texto;
            ComposerKt.sourceInformationMarkerStart($composer, -131095840, "CC(remember):TestScreen.kt#9igjgp");
            boolean zChangedInstance7 = $composer.changedInstance($crearPreguntaViewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (!zChangedInstance7) {
                composer = $composer;
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                CampoPregunta(str5, "Pregunta", (Function1) objRememberedValue2, $roboto, composer, 3120);
                Composer composer7 = composer;
                String tipo = ((PreguntaRequest) $request.getValue()).getTipo();
                String str6 = tipo != null ? "" : tipo;
                ComposerKt.sourceInformationMarkerStart(composer7, -131087393, "CC(remember):TestScreen.kt#9igjgp");
                zChangedInstance = composer7.changedInstance($crearPreguntaViewModel);
                Object objRememberedValue3 = composer7.rememberedValue();
                if (zChangedInstance) {
                    composer2 = composer7;
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composer2);
                    CampoPregunta(str6, "Tipo de pregunta", (Function1) objRememberedValue3, $roboto, composer2, 3120);
                    Composer composer8 = composer2;
                    List<String> opciones = ((PreguntaRequest) $request.getValue()).getOpciones();
                    String str7 = (opciones == null || (str4 = (String) CollectionsKt.getOrNull(opciones, 0)) == null) ? "" : str4;
                    ComposerKt.sourceInformationMarkerStart(composer8, -131078558, "CC(remember):TestScreen.kt#9igjgp");
                    zChangedInstance2 = composer8.changedInstance($crearPreguntaViewModel);
                    Object objRememberedValue4 = composer8.rememberedValue();
                    if (!zChangedInstance2) {
                        composer3 = composer8;
                        if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        CampoPregunta(str7, "Opción 1", (Function1) objRememberedValue4, $roboto, composer3, 3120);
                        Composer composer9 = composer3;
                        List<String> opciones2 = ((PreguntaRequest) $request.getValue()).getOpciones();
                        String str8 = (opciones2 != null || (str3 = (String) CollectionsKt.getOrNull(opciones2, 1)) == null) ? "" : str3;
                        ComposerKt.sourceInformationMarkerStart(composer9, -131069662, "CC(remember):TestScreen.kt#9igjgp");
                        zChangedInstance3 = composer9.changedInstance($crearPreguntaViewModel);
                        Object objRememberedValue5 = composer9.rememberedValue();
                        if (zChangedInstance3) {
                            composer4 = composer9;
                            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer4);
                            CampoPregunta(str8, "Opción 2", (Function1) objRememberedValue5, $roboto, composer4, 3120);
                            Composer composer10 = composer4;
                            List<String> opciones3 = ((PreguntaRequest) $request.getValue()).getOpciones();
                            String str9 = (opciones3 == null || (str2 = (String) CollectionsKt.getOrNull(opciones3, 2)) == null) ? "" : str2;
                            ComposerKt.sourceInformationMarkerStart(composer10, -131060766, "CC(remember):TestScreen.kt#9igjgp");
                            zChangedInstance4 = composer10.changedInstance($crearPreguntaViewModel);
                            Object objRememberedValue6 = composer10.rememberedValue();
                            if (zChangedInstance4) {
                                composer5 = composer10;
                                if (objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd(composer5);
                                CampoPregunta(str9, "Opción 3", (Function1) objRememberedValue6, $roboto, composer5, 3120);
                                Composer composer11 = composer5;
                                List<String> opciones4 = ((PreguntaRequest) $request.getValue()).getOpciones();
                                String str10 = (opciones4 == null || (str = (String) CollectionsKt.getOrNull(opciones4, 3)) == null) ? "" : str;
                                ComposerKt.sourceInformationMarkerStart(composer11, -131051838, "CC(remember):TestScreen.kt#9igjgp");
                                zChangedInstance5 = composer11.changedInstance($crearPreguntaViewModel);
                                Object objRememberedValue7 = composer11.rememberedValue();
                                if (zChangedInstance5) {
                                    composer6 = composer11;
                                    if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composer6);
                                    CampoPregunta(str10, "Opción 4", (Function1) objRememberedValue7, $roboto, composer6, 3120);
                                    Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(52));
                                    RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(40));
                                    Composer composer12 = composer6;
                                    ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(ColorKt.Color($colorButton), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, composer12, (ButtonDefaults.$stable << 12) | 48, 12);
                                    ComposerKt.sourceInformationMarkerStart(composer12, -131041295, "CC(remember):TestScreen.kt#9igjgp");
                                    zChangedInstance6 = composer12.changedInstance($crearPreguntaViewModel);
                                    objRememberedValue = composer12.rememberedValue();
                                    if (zChangedInstance6 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                        objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda11
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$17$lambda$16($crearPreguntaViewModel);
                                            }
                                        };
                                        composer12.updateRememberedValue(objRememberedValue);
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composer12);
                                    ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs, false, roundedCornerShapeM1126RoundedCornerShape0680j_4, buttonColorsM2092buttonColorsro_MJ88, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(2060860521, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda12
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                                            return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$18($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                                        }
                                    }, composer12, 54), composer12, 805306416, 484);
                                    ComposerKt.sourceInformationMarkerEnd(composer12);
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
                                    composer6 = composer11;
                                }
                                objRememberedValue7 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda10
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$15$lambda$14($crearPreguntaViewModel, (String) obj);
                                    }
                                };
                                composer11.updateRememberedValue(objRememberedValue7);
                                ComposerKt.sourceInformationMarkerEnd(composer6);
                                CampoPregunta(str10, "Opción 4", (Function1) objRememberedValue7, $roboto, composer6, 3120);
                                Modifier modifierM850height3ABfNKs2 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(52));
                                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(40));
                                Composer composer122 = composer6;
                                ButtonColors buttonColorsM2092buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(ColorKt.Color($colorButton), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, composer122, (ButtonDefaults.$stable << 12) | 48, 12);
                                ComposerKt.sourceInformationMarkerStart(composer122, -131041295, "CC(remember):TestScreen.kt#9igjgp");
                                zChangedInstance6 = composer122.changedInstance($crearPreguntaViewModel);
                                objRememberedValue = composer122.rememberedValue();
                                if (zChangedInstance6) {
                                }
                                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda11
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$17$lambda$16($crearPreguntaViewModel);
                                    }
                                };
                                composer122.updateRememberedValue(objRememberedValue);
                                ComposerKt.sourceInformationMarkerEnd(composer122);
                                ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs2, false, roundedCornerShapeM1126RoundedCornerShape0680j_42, buttonColorsM2092buttonColorsro_MJ882, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(2060860521, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda12
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$18($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                                    }
                                }, composer122, 54), composer122, 805306416, 484);
                                ComposerKt.sourceInformationMarkerEnd(composer122);
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
                                composer5 = composer10;
                            }
                            objRememberedValue6 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda9
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$13$lambda$12($crearPreguntaViewModel, (String) obj);
                                }
                            };
                            composer10.updateRememberedValue(objRememberedValue6);
                            ComposerKt.sourceInformationMarkerEnd(composer5);
                            CampoPregunta(str9, "Opción 3", (Function1) objRememberedValue6, $roboto, composer5, 3120);
                            Composer composer112 = composer5;
                            List<String> opciones42 = ((PreguntaRequest) $request.getValue()).getOpciones();
                            if (opciones42 == null) {
                                ComposerKt.sourceInformationMarkerStart(composer112, -131051838, "CC(remember):TestScreen.kt#9igjgp");
                                zChangedInstance5 = composer112.changedInstance($crearPreguntaViewModel);
                                Object objRememberedValue72 = composer112.rememberedValue();
                                if (zChangedInstance5) {
                                }
                                objRememberedValue72 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda10
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$15$lambda$14($crearPreguntaViewModel, (String) obj);
                                    }
                                };
                                composer112.updateRememberedValue(objRememberedValue72);
                                ComposerKt.sourceInformationMarkerEnd(composer6);
                                CampoPregunta(str10, "Opción 4", (Function1) objRememberedValue72, $roboto, composer6, 3120);
                                Modifier modifierM850height3ABfNKs22 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(52));
                                RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_422 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(40));
                                Composer composer1222 = composer6;
                                ButtonColors buttonColorsM2092buttonColorsro_MJ8822 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88(ColorKt.Color($colorButton), androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, 0L, composer1222, (ButtonDefaults.$stable << 12) | 48, 12);
                                ComposerKt.sourceInformationMarkerStart(composer1222, -131041295, "CC(remember):TestScreen.kt#9igjgp");
                                zChangedInstance6 = composer1222.changedInstance($crearPreguntaViewModel);
                                objRememberedValue = composer1222.rememberedValue();
                                if (zChangedInstance6) {
                                }
                                objRememberedValue = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda11
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$17$lambda$16($crearPreguntaViewModel);
                                    }
                                };
                                composer1222.updateRememberedValue(objRememberedValue);
                                ComposerKt.sourceInformationMarkerEnd(composer1222);
                                ButtonKt.Button((Function0) objRememberedValue, modifierM850height3ABfNKs22, false, roundedCornerShapeM1126RoundedCornerShape0680j_422, buttonColorsM2092buttonColorsro_MJ8822, null, null, null, null, ComposableLambdaKt.rememberComposableLambda(2060860521, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda12
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$18($roboto, (RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
                                    }
                                }, composer1222, 54), composer1222, 805306416, 484);
                                ComposerKt.sourceInformationMarkerEnd(composer1222);
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
                        } else {
                            composer4 = composer9;
                        }
                        objRememberedValue5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda8
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$11$lambda$10($crearPreguntaViewModel, (String) obj);
                            }
                        };
                        composer9.updateRememberedValue(objRememberedValue5);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        CampoPregunta(str8, "Opción 2", (Function1) objRememberedValue5, $roboto, composer4, 3120);
                        Composer composer102 = composer4;
                        List<String> opciones32 = ((PreguntaRequest) $request.getValue()).getOpciones();
                        if (opciones32 == null) {
                            ComposerKt.sourceInformationMarkerStart(composer102, -131060766, "CC(remember):TestScreen.kt#9igjgp");
                            zChangedInstance4 = composer102.changedInstance($crearPreguntaViewModel);
                            Object objRememberedValue62 = composer102.rememberedValue();
                            if (zChangedInstance4) {
                            }
                            objRememberedValue62 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda9
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$13$lambda$12($crearPreguntaViewModel, (String) obj);
                                }
                            };
                            composer102.updateRememberedValue(objRememberedValue62);
                            ComposerKt.sourceInformationMarkerEnd(composer5);
                            CampoPregunta(str9, "Opción 3", (Function1) objRememberedValue62, $roboto, composer5, 3120);
                            Composer composer1122 = composer5;
                            List<String> opciones422 = ((PreguntaRequest) $request.getValue()).getOpciones();
                            if (opciones422 == null) {
                            }
                        }
                    } else {
                        composer3 = composer8;
                    }
                    objRememberedValue4 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda7
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$9$lambda$8($crearPreguntaViewModel, (String) obj);
                        }
                    };
                    composer8.updateRememberedValue(objRememberedValue4);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    CampoPregunta(str7, "Opción 1", (Function1) objRememberedValue4, $roboto, composer3, 3120);
                    Composer composer92 = composer3;
                    List<String> opciones22 = ((PreguntaRequest) $request.getValue()).getOpciones();
                    if (opciones22 != null) {
                        ComposerKt.sourceInformationMarkerStart(composer92, -131069662, "CC(remember):TestScreen.kt#9igjgp");
                        zChangedInstance3 = composer92.changedInstance($crearPreguntaViewModel);
                        Object objRememberedValue52 = composer92.rememberedValue();
                        if (zChangedInstance3) {
                        }
                        objRememberedValue52 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda8
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$11$lambda$10($crearPreguntaViewModel, (String) obj);
                            }
                        };
                        composer92.updateRememberedValue(objRememberedValue52);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        CampoPregunta(str8, "Opción 2", (Function1) objRememberedValue52, $roboto, composer4, 3120);
                        Composer composer1022 = composer4;
                        List<String> opciones322 = ((PreguntaRequest) $request.getValue()).getOpciones();
                        if (opciones322 == null) {
                        }
                    }
                } else {
                    composer2 = composer7;
                }
                objRememberedValue3 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$7$lambda$6($crearPreguntaViewModel, (String) obj);
                    }
                };
                composer7.updateRememberedValue(objRememberedValue3);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                CampoPregunta(str6, "Tipo de pregunta", (Function1) objRememberedValue3, $roboto, composer2, 3120);
                Composer composer82 = composer2;
                List<String> opciones5 = ((PreguntaRequest) $request.getValue()).getOpciones();
                if (opciones5 == null) {
                }
                ComposerKt.sourceInformationMarkerStart(composer82, -131078558, "CC(remember):TestScreen.kt#9igjgp");
                zChangedInstance2 = composer82.changedInstance($crearPreguntaViewModel);
                Object objRememberedValue42 = composer82.rememberedValue();
                if (!zChangedInstance2) {
                }
                objRememberedValue42 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$9$lambda$8($crearPreguntaViewModel, (String) obj);
                    }
                };
                composer82.updateRememberedValue(objRememberedValue42);
                ComposerKt.sourceInformationMarkerEnd(composer3);
                CampoPregunta(str7, "Opción 1", (Function1) objRememberedValue42, $roboto, composer3, 3120);
                Composer composer922 = composer3;
                List<String> opciones222 = ((PreguntaRequest) $request.getValue()).getOpciones();
                if (opciones222 != null) {
                }
            } else {
                composer = $composer;
            }
            objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$5$lambda$4($crearPreguntaViewModel, (String) obj);
                }
            };
            $composer.updateRememberedValue(objRememberedValue2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            CampoPregunta(str5, "Pregunta", (Function1) objRememberedValue2, $roboto, composer, 3120);
            Composer composer72 = composer;
            String tipo2 = ((PreguntaRequest) $request.getValue()).getTipo();
            if (tipo2 != null) {
            }
            ComposerKt.sourceInformationMarkerStart(composer72, -131087393, "CC(remember):TestScreen.kt#9igjgp");
            zChangedInstance = composer72.changedInstance($crearPreguntaViewModel);
            Object objRememberedValue32 = composer72.rememberedValue();
            if (zChangedInstance) {
            }
            objRememberedValue32 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$7$lambda$6($crearPreguntaViewModel, (String) obj);
                }
            };
            composer72.updateRememberedValue(objRememberedValue32);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            CampoPregunta(str6, "Tipo de pregunta", (Function1) objRememberedValue32, $roboto, composer2, 3120);
            Composer composer822 = composer2;
            List<String> opciones52 = ((PreguntaRequest) $request.getValue()).getOpciones();
            if (opciones52 == null) {
            }
            ComposerKt.sourceInformationMarkerStart(composer822, -131078558, "CC(remember):TestScreen.kt#9igjgp");
            zChangedInstance2 = composer822.changedInstance($crearPreguntaViewModel);
            Object objRememberedValue422 = composer822.rememberedValue();
            if (!zChangedInstance2) {
            }
            objRememberedValue422 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TestScreenKt.TestScreen$lambda$21$lambda$20$lambda$19$lambda$9$lambda$8($crearPreguntaViewModel, (String) obj);
                }
            };
            composer822.updateRememberedValue(objRememberedValue422);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            CampoPregunta(str7, "Opción 1", (Function1) objRememberedValue422, $roboto, composer3, 3120);
            Composer composer9222 = composer3;
            List<String> opciones2222 = ((PreguntaRequest) $request.getValue()).getOpciones();
            if (opciones2222 != null) {
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$5$lambda$4(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setTexto(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$7$lambda$6(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setTipo(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$9$lambda$8(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setOpcion1(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$11$lambda$10(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setOpcion2(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$13$lambda$12(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setOpcion3(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$15$lambda$14(CrearPreguntaViewModel $crearPreguntaViewModel, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        $crearPreguntaViewModel.setOpcion4(it);
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$17$lambda$16(CrearPreguntaViewModel $crearPreguntaViewModel) {
        $crearPreguntaViewModel.guardarPregunta();
        return Unit.INSTANCE;
    }

    static final Unit TestScreen$lambda$21$lambda$20$lambda$19$lambda$18(FontFamily $roboto, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C153@5743L157:TestScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2060860521, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TestScreen.kt:153)");
            }
            TextKt.m2976Text4IGK_g("Guardar pregunta", (Modifier) null, 0L, TextUnitKt.getSp(16), (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 1575942, 0, 130998);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void CampoPregunta(final String value, final String placeholder, final Function1<? super String, Unit> onChange, final FontFamily roboto, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(placeholder, "placeholder");
        Intrinsics.checkNotNullParameter(onChange, "onChange");
        Intrinsics.checkNotNullParameter(roboto, "roboto");
        Composer $composer3 = $composer.startRestartGroup(56857300);
        ComposerKt.sourceInformation($composer3, "C(CampoPregunta)N(value,placeholder,onChange,roboto)193@6785L279,185@6563L115,180@6416L654:TestScreen.kt#6w2cjo");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(placeholder) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(onChange) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(roboto) ? 2048 : 1024;
        }
        if ($composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(56857300, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CampoPregunta (TestScreen.kt:178)");
            }
            $composer2 = $composer3;
            int $dirty2 = $dirty;
            TextFieldKt.TextField(value, onChange, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), false, false, (TextStyle) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(438447823, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TestScreenKt.CampoPregunta$lambda$23(placeholder, roboto, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, (Function2<? super Composer, ? super Integer, Unit>) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), TextFieldDefaults.INSTANCE.m2957colors0hiis_0(0L, 0L, 0L, 0L, ColorKt.Color(4294440951L), ColorKt.Color(4294440951L), 0L, 0L, androidx.compose.ui.graphics.Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, null, androidx.compose.ui.graphics.Color.INSTANCE.m4732getTransparent0d7_KjU(), androidx.compose.ui.graphics.Color.INSTANCE.m4732getTransparent0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer2, 100884480, 432, 0, 0, 3072, 2147477199, 4095), $composer2, ($dirty2 & 14) | 12583296 | (($dirty2 >> 3) & 112), 12582912, 0, 1965944);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.TestScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TestScreenKt.CampoPregunta$lambda$24(value, placeholder, onChange, roboto, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit CampoPregunta$lambda$23(String $placeholder, FontFamily $roboto, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C186@6577L91:TestScreen.kt#6w2cjo");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(438447823, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CampoPregunta.<anonymous> (TestScreen.kt:186)");
            }
            TextKt.m2976Text4IGK_g($placeholder, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, $roboto, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 0, 0, 131006);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
