package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.media3.extractor.WavUtil;
import androidx.navigation.NavController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuPrincipalKt;
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;

/* JADX INFO: compiled from: Principal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004\u001a\r\u0010\u0005\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0006¨\u0006\u0007²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002"}, d2 = {"Principal", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V", "PrincipalPreview", "(Landroidx/compose/runtime/Composer;I)V", "app", "esta", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class PrincipalKt {
    static final Unit Principal$lambda$15(NavController navController, int i, Composer composer, int i2) {
        Principal(navController, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PrincipalPreview$lambda$16(int i, Composer composer, int i2) {
        PrincipalPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void Principal(final NavController navController, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Composer $composer2 = $composer.startRestartGroup(50323291);
        ComposerKt.sourceInformation($composer2, "C(Principal)N(navController)51@2158L11,52@2209L7,53@2252L10,56@2295L52,59@2354L3195,55@2268L3281:Principal.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(navController) ? 4 : 2;
        }
        if ($composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(50323291, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal (Principal.kt:50)");
            }
            final ColorScheme colors = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable);
            ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors = ThemeKt.getLocalAmaniColors();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localAmaniColors);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final AmaniExtraColors amaniColors = (AmaniExtraColors) objConsume;
            final Typography typography = MaterialTheme.INSTANCE.getTypography($composer2, MaterialTheme.$stable);
            ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-2123809249, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalKt.Principal$lambda$0(navController, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(1452355690, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PrincipalKt.Principal$lambda$14(typography, amaniColors, colors, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer2, 54), $composer2, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalKt.Principal$lambda$15(navController, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit Principal$lambda$0(NavController $navController, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C57@2309L28:Principal.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2123809249, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous> (Principal.kt:57)");
            }
            MenuPrincipalKt.MenuPrincipal($navController, $composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit Principal$lambda$14(final Typography $typography, AmaniExtraColors $amaniColors, ColorScheme $colors, PaddingValues innerPadding, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Object obj;
        Composer composer;
        Function0<ComposeUiNode> function02;
        Intrinsics.checkNotNullParameter(innerPadding, "innerPadding");
        ComposerKt.sourceInformation($composer, "CN(innerPadding)60@2380L3163:Principal.kt#8o7o96");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(innerPadding) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1452355690, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous> (Principal.kt:60)");
            }
            Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(PaddingKt.m818padding3ABfNKs(PaddingKt.padding(Modifier.INSTANCE, innerPadding), Dp.m7505constructorimpl(16)), 0.0f, 1, null);
            Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
            Arrangement.Vertical center = Arrangement.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierFillMaxSize$default);
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
            ComposerKt.sourceInformationMarkerStart($composer, 1408017929, "C67@2647L145,72@2805L287,79@3105L319,96@3764L137,92@3631L20,100@3916L150,87@3438L628,106@4079L41,107@4145L34,126@4834L41,136@5245L137,132@5081L51,140@5397L136,127@4888L645:Principal.kt#8o7o96");
            TextKt.m2976Text4IGK_g("AMANI", PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getDisplayLarge(), $composer, 54, 0, 65532);
            TextKt.m2976Text4IGK_g("Aquí comienza tu camino de autoconocimiento,bienestar y paz interior", SizeKt.fillMaxWidth$default(PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0.0f, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyLarge(), $composer, 54, 0, 65020);
            TextKt.m2976Text4IGK_g("Cada paso que das hacia tu bienestar, por pequeño que parezca, es un acto de valentía y amor propio.", SizeKt.fillMaxWidth$default(PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0.0f, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyLarge(), $composer, 54, 0, 65020);
            Modifier modifierM850height3ABfNKs = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            BorderStroke borderStrokeM290BorderStrokecXLIe8U = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), $amaniColors.m10499getButtonBorder0d7_KjU());
            ButtonColors buttonColorsM2092buttonColorsro_MJ88 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, $composer, ButtonDefaults.$stable << 12, 12);
            ComposerKt.sourceInformationMarkerStart($composer, 1015279880, "CC(remember):Principal.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer.updateRememberedValue(obj);
            } else {
                obj = objRememberedValue;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) obj, modifierM850height3ABfNKs, false, roundedCornerShapeM1126RoundedCornerShape0680j_4, buttonColorsM2092buttonColorsro_MJ88, null, borderStrokeM290BorderStrokecXLIe8U, null, null, ComposableLambdaKt.rememberComposableLambda(1976871748, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return PrincipalKt.Principal$lambda$14$lambda$13$lambda$3($typography, (RowScope) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer, 54), $composer, 805306422, 420);
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            ComposerKt.sourceInformationMarkerStart($composer, 1015296342, "CC(remember):Principal.kt#9igjgp");
            Object objRememberedValue2 = $composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer.updateRememberedValue(objMutableStateOf$default);
                objRememberedValue2 = objMutableStateOf$default;
            }
            final MutableState mutableState = (MutableState) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (Principal$lambda$14$lambda$13$lambda$5(mutableState)) {
                $composer.startReplaceGroup(1409490211);
                ComposerKt.sourceInformation($composer, "113@4380L68,109@4220L587");
                composer = $composer;
                Modifier modifierM818padding3ABfNKs = PaddingKt.m818padding3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(16));
                ComposerKt.sourceInformationMarkerStart($composer, 1015303896, "CC(remember):Principal.kt#9igjgp");
                Object objRememberedValue3 = $composer.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    Object obj2 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PrincipalKt.Principal$lambda$14$lambda$13$lambda$8$lambda$7(mutableState);
                        }
                    };
                    $composer.updateRememberedValue(obj2);
                    objRememberedValue3 = obj2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierM275borderxT4_qwU = BorderKt.m275borderxT4_qwU(ClickableKt.m299clickableoSLSa3U$default(modifierM818padding3ABfNKs, false, null, null, null, (Function0) objRememberedValue3, 15, null), Dp.m7505constructorimpl(2), $colors.getOutline(), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(8)));
                ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierM275borderxT4_qwU);
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
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i5 = (i4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i6 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 330330708, "C118@4569L220:Principal.kt#8o7o96");
                TextKt.m2976Text4IGK_g("Consejo", SizeKt.fillMaxWidth$default(PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), 0.0f, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getBodyLarge(), $composer, 54, 0, 65532);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
            } else {
                composer = $composer;
                $composer.startReplaceGroup(1405301646);
            }
            $composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            Modifier modifierM850height3ABfNKs2 = SizeKt.m850height3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(50));
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_42 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(50));
            BorderStroke borderStrokeM290BorderStrokecXLIe8U2 = BorderStrokeKt.m290BorderStrokecXLIe8U(Dp.m7505constructorimpl(2), $amaniColors.m10499getButtonBorder0d7_KjU());
            ButtonColors buttonColorsM2092buttonColorsro_MJ882 = ButtonDefaults.INSTANCE.m2092buttonColorsro_MJ88($colors.getPrimary(), $colors.getOnPrimary(), 0L, 0L, $composer, ButtonDefaults.$stable << 12, 12);
            ComposerKt.sourceInformationMarkerStart($composer, 1015326311, "CC(remember):Principal.kt#9igjgp");
            Object objRememberedValue4 = $composer.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return PrincipalKt.Principal$lambda$14$lambda$13$lambda$11$lambda$10(mutableState);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue4 = obj3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ButtonKt.Button((Function0) objRememberedValue4, modifierM850height3ABfNKs2, false, roundedCornerShapeM1126RoundedCornerShape0680j_42, buttonColorsM2092buttonColorsro_MJ882, null, borderStrokeM290BorderStrokecXLIe8U2, null, null, ComposableLambdaKt.rememberComposableLambda(87675821, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj4, Object obj5, Object obj6) {
                    return PrincipalKt.Principal$lambda$14$lambda$13$lambda$12($typography, (RowScope) obj4, (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), $composer, 805306422, 420);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit Principal$lambda$14$lambda$13$lambda$3(Typography $typography, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C101@3934L118:Principal.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1976871748, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous>.<anonymous>.<anonymous> (Principal.kt:101)");
            }
            TextKt.m2976Text4IGK_g("Realizar cuestionario", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    private static final boolean Principal$lambda$14$lambda$13$lambda$5(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void Principal$lambda$14$lambda$13$lambda$6(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    static final Unit Principal$lambda$14$lambda$13$lambda$8$lambda$7(MutableState $esta$delegate) {
        Principal$lambda$14$lambda$13$lambda$6($esta$delegate, false);
        return Unit.INSTANCE;
    }

    static final Unit Principal$lambda$14$lambda$13$lambda$11$lambda$10(MutableState $esta$delegate) {
        Principal$lambda$14$lambda$13$lambda$6($esta$delegate, true);
        return Unit.INSTANCE;
    }

    static final Unit Principal$lambda$14$lambda$13$lambda$12(Typography $typography, RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C141@5415L104:Principal.kt#8o7o96");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(87675821, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.Principal.<anonymous>.<anonymous>.<anonymous> (Principal.kt:141)");
            }
            TextKt.m2976Text4IGK_g("Consejo", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, $typography.getLabelLarge(), $composer, 6, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    public static final void PrincipalPreview(Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-877134140);
        ComposerKt.sourceInformation($composer2, "C(PrincipalPreview)156@5718L23,156@5708L34:Principal.kt#8o7o96");
        if (!$composer2.shouldExecute($changed != 0, $changed & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-877134140, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalPreview (Principal.kt:155)");
            }
            Principal(NavHostControllerKt.rememberNavController(new Navigator[0], $composer2, 0), $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.PrincipalKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PrincipalKt.PrincipalPreview$lambda$16($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
