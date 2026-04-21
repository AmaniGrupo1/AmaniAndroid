package org.ies.tierno.applicationamani.presentation.ui.screens.admin;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AddKt;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.RefreshKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
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
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewAdminPrincipal.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ViewAdminPrincipalKt {
    public static final ComposableSingletons$ViewAdminPrincipalKt INSTANCE = new ComposableSingletons$ViewAdminPrincipalKt();

    /* JADX INFO: renamed from: lambda$-292428835, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f220lambda$292428835 = ComposableLambdaKt.composableLambdaInstance(-292428835, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda__292428835$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-559761268, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f221lambda$559761268 = ComposableLambdaKt.composableLambdaInstance(-559761268, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda__559761268$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function3<AnimatedVisibilityScope, Composer, Integer, Unit> lambda$1813249607 = ComposableLambdaKt.composableLambdaInstance(1813249607, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda_1813249607$lambda$2((AnimatedVisibilityScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function3<LazyItemScope, Composer, Integer, Unit> lambda$1344176725 = ComposableLambdaKt.composableLambdaInstance(1344176725, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda_1344176725$lambda$3((LazyItemScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-22029493, reason: not valid java name */
    private static Function3<RowScope, Composer, Integer, Unit> f219lambda$22029493 = ComposableLambdaKt.composableLambdaInstance(-22029493, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda__22029493$lambda$4((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$431135308 = ComposableLambdaKt.composableLambdaInstance(431135308, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ViewAdminPrincipalKt.lambda_431135308$lambda$6((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-22029493$app, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m10466getLambda$22029493$app() {
        return f219lambda$22029493;
    }

    /* JADX INFO: renamed from: getLambda$-292428835$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10467getLambda$292428835$app() {
        return f220lambda$292428835;
    }

    /* JADX INFO: renamed from: getLambda$-559761268$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10468getLambda$559761268$app() {
        return f221lambda$559761268;
    }

    public final Function3<LazyItemScope, Composer, Integer, Unit> getLambda$1344176725$app() {
        return lambda$1344176725;
    }

    public final Function3<AnimatedVisibilityScope, Composer, Integer, Unit> getLambda$1813249607$app() {
        return lambda$1813249607;
    }

    public final Function2<Composer, Integer, Unit> getLambda$431135308$app() {
        return lambda$431135308;
    }

    static final Unit lambda__292428835$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C132@5675L90:ViewAdminPrincipal.kt#ozkt9e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-292428835, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$-292428835.<anonymous> (ViewAdminPrincipal.kt:132)");
            }
            IconKt.m2433Iconww6aTOc(RefreshKt.getRefresh(Icons.INSTANCE.getDefault()), "Actualizar", (Modifier) null, AmaniColors.INSTANCE.m10457getPrimary0d7_KjU(), $composer, 3120, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1813249607$lambda$2(AnimatedVisibilityScope AnimatedVisibility, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
        ComposerKt.sourceInformation($composer, "C163@6723L6,162@6672L500:ViewAdminPrincipal.kt#ozkt9e");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1813249607, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$1813249607.<anonymous> (ViewAdminPrincipal.kt:162)");
        }
        SurfaceKt.m2826SurfaceT9BRK9s(PaddingKt.m818padding3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), MaterialTheme.INSTANCE.getShapes($composer, MaterialTheme.$stable).getSmall(), 0L, 0L, Dp.m7505constructorimpl(2), 0.0f, null, f221lambda$559761268, $composer, 12607494, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__559761268$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C170@7023L11,167@6874L280:ViewAdminPrincipal.kt#ozkt9e");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-559761268, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$-559761268.<anonymous> (ViewAdminPrincipal.kt:167)");
            }
            TextKt.m2976Text4IGK_g("Desliza para ver más", PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(4)), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3126, 0, 131056);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1344176725$lambda$3(LazyItemScope item, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(item, "$this$item");
        ComposerKt.sourceInformation($composer, "C252@9601L41:ViewAdminPrincipal.kt#ozkt9e");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1344176725, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$1344176725.<anonymous> (ViewAdminPrincipal.kt:252)");
            }
            SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__22029493$lambda$4(RowScope Button, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Button, "$this$Button");
        ComposerKt.sourceInformation($composer, "C585@22893L97,586@23003L39,587@23055L87:ViewAdminPrincipal.kt#ozkt9e");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-22029493, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$-22029493.<anonymous> (ViewAdminPrincipal.kt:585)");
            }
            IconKt.m2433Iconww6aTOc(AddKt.getAdd(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(18)), 0L, $composer, 432, 8);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), $composer, 6);
            TextKt.m2976Text4IGK_g("Asignar nuevo paciente", (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131030);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_431135308$lambda$6(Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C649@25466L332:ViewAdminPrincipal.kt#ozkt9e");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(431135308, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screens.admin.ComposableSingletons$ViewAdminPrincipalKt.lambda$431135308.<anonymous> (ViewAdminPrincipal.kt:649)");
            }
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1571737442, "C650@25529L251:ViewAdminPrincipal.kt#ozkt9e");
            IconKt.m2433Iconww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(16)), AmaniColors.INSTANCE.m10461getSuccess0d7_KjU(), $composer, 3504, 0);
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
}
