package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.SendKt;
import androidx.compose.material.icons.filled.AttachFileKt;
import androidx.compose.material.icons.filled.MicKt;
import androidx.compose.material.icons.filled.StopKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
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
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ChatInputBar.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$ChatInputBarKt {
    public static final ComposableSingletons$ChatInputBarKt INSTANCE = new ComposableSingletons$ChatInputBarKt();
    private static Function2<Composer, Integer, Unit> lambda$1334872975 = ComposableLambdaKt.composableLambdaInstance(1334872975, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatInputBarKt.lambda_1334872975$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1671831336, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f197lambda$1671831336 = ComposableLambdaKt.composableLambdaInstance(-1671831336, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatInputBarKt.lambda__1671831336$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-1517561510, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f196lambda$1517561510 = ComposableLambdaKt.composableLambdaInstance(-1517561510, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatInputBarKt.lambda__1517561510$lambda$2((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$686590238 = ComposableLambdaKt.composableLambdaInstance(686590238, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$ChatInputBarKt.lambda_686590238$lambda$4((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-1517561510$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10430getLambda$1517561510$app() {
        return f196lambda$1517561510;
    }

    /* JADX INFO: renamed from: getLambda$-1671831336$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10431getLambda$1671831336$app() {
        return f197lambda$1671831336;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1334872975$app() {
        return lambda$1334872975;
    }

    public final Function2<Composer, Integer, Unit> getLambda$686590238$app() {
        return lambda$686590238;
    }

    static final Unit lambda_1334872975$lambda$0(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C101@4628L11,98@4424L266:ChatInputBar.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1334872975, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt.lambda$1334872975.<anonymous> (ChatInputBar.kt:98)");
            }
            IconKt.m2433Iconww6aTOc(MicKt.getMic(Icons.INSTANCE.getDefault()), "Nota de voz", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1671831336$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C109@5059L11,106@4851L270:ChatInputBar.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1671831336, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt.lambda$-1671831336.<anonymous> (ChatInputBar.kt:106)");
            }
            IconKt.m2433Iconww6aTOc(AttachFileKt.getAttachFile(Icons.INSTANCE.getDefault()), "Adjuntar", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), $composer, 48, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda__1517561510$lambda$2(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C143@6609L171:ChatInputBar.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1517561510, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt.lambda$-1517561510.<anonymous> (ChatInputBar.kt:143)");
            }
            IconKt.m2433Iconww6aTOc(SendKt.getSend(Icons.AutoMirrored.Filled.INSTANCE), "Enviar mensaje", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_686590238$lambda$4(Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C264@10471L352:ChatInputBar.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(686590238, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ComposableSingletons$ChatInputBarKt.lambda$686590238.<anonymous> (ChatInputBar.kt:264)");
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
            ComposerKt.sourceInformationMarkerStart($composer, -4258448, "C268@10709L11,265@10534L271:ChatInputBar.kt#5xjsc0");
            IconKt.m2433Iconww6aTOc(StopKt.getStop(Icons.INSTANCE.getDefault()), "Detener grabación", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError(), $composer, 432, 0);
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
