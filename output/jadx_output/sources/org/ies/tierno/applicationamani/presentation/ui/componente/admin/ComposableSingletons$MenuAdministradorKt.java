package org.ies.tierno.applicationamani.presentation.ui.componente.admin;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.MoreVertKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MenuAdministrador.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final class ComposableSingletons$MenuAdministradorKt {
    public static final ComposableSingletons$MenuAdministradorKt INSTANCE = new ComposableSingletons$MenuAdministradorKt();
    private static Function3<RowScope, Composer, Integer, Unit> lambda$1569203224 = ComposableLambdaKt.composableLambdaInstance(1569203224, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$MenuAdministradorKt.lambda_1569203224$lambda$0((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$413009356 = ComposableLambdaKt.composableLambdaInstance(413009356, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuAdministradorKt.lambda_413009356$lambda$1((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function3<RowScope, Composer, Integer, Unit> lambda$862150198 = ComposableLambdaKt.composableLambdaInstance(862150198, false, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return ComposableSingletons$MenuAdministradorKt.lambda_862150198$lambda$2((RowScope) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1312029963 = ComposableLambdaKt.composableLambdaInstance(1312029963, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuAdministradorKt.lambda_1312029963$lambda$4((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: lambda$-2130148803, reason: not valid java name */
    private static Function2<Composer, Integer, Unit> f175lambda$2130148803 = ComposableLambdaKt.composableLambdaInstance(-2130148803, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuAdministradorKt.lambda__2130148803$lambda$5((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$1184157534 = ComposableLambdaKt.composableLambdaInstance(1184157534, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuAdministradorKt.lambda_1184157534$lambda$6((Composer) obj, ((Integer) obj2).intValue());
        }
    });
    private static Function2<Composer, Integer, Unit> lambda$510298810 = ComposableLambdaKt.composableLambdaInstance(510298810, false, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ComposableSingletons$MenuAdministradorKt.lambda_510298810$lambda$7((Composer) obj, ((Integer) obj2).intValue());
        }
    });

    /* JADX INFO: renamed from: getLambda$-2130148803$app, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m10405getLambda$2130148803$app() {
        return f175lambda$2130148803;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1184157534$app() {
        return lambda$1184157534;
    }

    public final Function2<Composer, Integer, Unit> getLambda$1312029963$app() {
        return lambda$1312029963;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$1569203224$app() {
        return lambda$1569203224;
    }

    public final Function2<Composer, Integer, Unit> getLambda$413009356$app() {
        return lambda$413009356;
    }

    public final Function2<Composer, Integer, Unit> getLambda$510298810$app() {
        return lambda$510298810;
    }

    public final Function3<RowScope, Composer, Integer, Unit> getLambda$862150198$app() {
        return lambda$862150198;
    }

    static final Unit lambda_1569203224$lambda$0(RowScope rowScope, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(rowScope, "<this>");
        ComposerKt.sourceInformation($composer, "C:MenuAdministrador.kt#a8gqcz");
        if ($composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1569203224, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$1569203224.<anonymous> (MenuAdministrador.kt:106)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_413009356$lambda$1(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C185@7583L144:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(413009356, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$413009356.<anonymous> (MenuAdministrador.kt:185)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.INSTANCE.getDefault()), "Volver", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_862150198$lambda$2(RowScope Badge, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(Badge, "$this$Badge");
        ComposerKt.sourceInformation($composer, "C243@9757L27:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(862150198, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$862150198.<anonymous> (MenuAdministrador.kt:243)");
            }
            TextKt.m2976Text4IGK_g(ExifInterface.GPS_MEASUREMENT_3D, (Modifier) null, 0L, TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3078, 0, 131062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1312029963$lambda$4(Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C276@10866L702:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1312029963, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$1312029963.<anonymous> (MenuAdministrador.kt:276)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierFillMaxWidth$default);
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
            ComposerKt.sourceInformationMarkerStart($composer, 1139302301, "C282@11168L11,279@10993L288,288@11484L11,285@11310L232:MenuAdministrador.kt#a8gqcz");
            TextKt.m2976Text4IGK_g("Menú de administración", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary(), TextUnitKt.getSp(12), (FontStyle) null, FontWeight.INSTANCE.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 199686, 0, 131026);
            TextKt.m2976Text4IGK_g("Selecciona una opción", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), TextUnitKt.getSp(10), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer, 3078, 0, 131058);
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

    static final Unit lambda__2130148803$lambda$5(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C385@15360L144:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2130148803, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$-2130148803.<anonymous> (MenuAdministrador.kt:385)");
            }
            IconKt.m2433Iconww6aTOc(ArrowBackKt.getArrowBack(Icons.INSTANCE.getDefault()), "Volver", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_1184157534$lambda$6(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C425@16761L149:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1184157534, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$1184157534.<anonymous> (MenuAdministrador.kt:425)");
            }
            IconKt.m2433Iconww6aTOc(MoreVertKt.getMoreVert(Icons.INSTANCE.getDefault()), "Más opciones", (Modifier) null, 0L, $composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit lambda_510298810$lambda$7(Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C528@21000L38:MenuAdministrador.kt#a8gqcz");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(510298810, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.componente.admin.ComposableSingletons$MenuAdministradorKt.lambda$510298810.<anonymous> (MenuAdministrador.kt:528)");
            }
            BoxKt.Box(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
