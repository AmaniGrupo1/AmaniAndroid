package androidx.compose.material3;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SwipeToDismissBox.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u001ay\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\n¢\u0006\u0002\b\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\n¢\u0006\u0002\b\u000bH\u0007¢\u0006\u0002\u0010\u0013\u001aR\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000f0\b2#\b\u0002\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00190\bH\u0007¢\u0006\u0002\u0010\u001d\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006\u001e"}, d2 = {"DismissVelocityThreshold", "Landroidx/compose/ui/unit/Dp;", "F", "SwipeToDismissBox", "", "state", "Landroidx/compose/material3/SwipeToDismissBoxState;", "backgroundContent", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "modifier", "Landroidx/compose/ui/Modifier;", "enableDismissFromStartToEnd", "", "enableDismissFromEndToStart", "gesturesEnabled", "content", "(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;ZZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "rememberSwipeToDismissBoxState", "initialValue", "Landroidx/compose/material3/SwipeToDismissBoxValue;", "confirmValueChange", "positionalThreshold", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "totalDistance", "(Landroidx/compose/material3/SwipeToDismissBoxValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SwipeToDismissBoxState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SwipeToDismissBoxKt {
    private static final float DismissVelocityThreshold = Dp.m7505constructorimpl(ComposerImplKt.nodeKey);

    public static final SwipeToDismissBoxState rememberSwipeToDismissBoxState(final SwipeToDismissBoxValue initialValue, final Function1<? super SwipeToDismissBoxValue, Boolean> function1, final Function1<? super Float, Float> function12, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -246335487, "C(rememberSwipeToDismissBoxState)P(1)185@7607L19,187@7687L7,195@7929L102,188@7706L325:SwipeToDismissBox.kt#uh7d8r");
        if ((i & 1) != 0) {
            initialValue = SwipeToDismissBoxValue.Settled;
        }
        if ((i & 2) != 0) {
            Function1 confirmValueChange = new Function1<SwipeToDismissBoxValue, Boolean>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt.rememberSwipeToDismissBoxState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SwipeToDismissBoxValue it) {
                    return true;
                }
            };
            function1 = confirmValueChange;
        }
        if ((i & 4) != 0) {
            function12 = SwipeToDismissBoxDefaults.INSTANCE.getPositionalThreshold($composer, 6);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-246335487, $changed, -1, "androidx.compose.material3.rememberSwipeToDismissBoxState (SwipeToDismissBox.kt:186)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        final Density density = (Density) objConsume;
        Object[] objArr = new Object[0];
        Saver<SwipeToDismissBoxState, SwipeToDismissBoxValue> Saver = SwipeToDismissBoxState.INSTANCE.Saver(function1, function12, density);
        ComposerKt.sourceInformationMarkerStart($composer, -1333458863, "CC(remember):SwipeToDismissBox.kt#9igjgp");
        boolean invalid$iv = (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(function12)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | (((6 ^ ($changed & 14)) > 4 && $composer.changed(initialValue)) || ($changed & 6) == 4) | $composer.changed(density) | (((($changed & 112) ^ 48) > 32 && $composer.changed(function1)) || ($changed & 48) == 32);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<SwipeToDismissBoxState>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt$rememberSwipeToDismissBoxState$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final SwipeToDismissBoxState invoke() {
                    return new SwipeToDismissBoxState(initialValue, density, function1, function12);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        SwipeToDismissBoxState swipeToDismissBoxState = (SwipeToDismissBoxState) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return swipeToDismissBoxState;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void SwipeToDismissBox(final SwipeToDismissBoxState state, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Modifier modifier, boolean enableDismissFromStartToEnd, boolean enableDismissFromEndToStart, boolean gesturesEnabled, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final boolean enableDismissFromStartToEnd2;
        final boolean enableDismissFromEndToStart2;
        boolean z;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function0;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        int compositeKeyHash$iv$iv2;
        Function0<ComposeUiNode> function02;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        boolean invalid$iv;
        int $dirty;
        Function0<ComposeUiNode> function03;
        Composer $this$Layout_u24lambda_u240$iv$iv3;
        int $changed$iv;
        final boolean gesturesEnabled2;
        final Modifier modifier3;
        final boolean enableDismissFromStartToEnd3;
        final boolean enableDismissFromEndToStart3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i2;
        Composer $composer2 = $composer.startRestartGroup(-402577235);
        ComposerKt.sourceInformation($composer2, "C(SwipeToDismissBox)P(6!1,5,3,2,4)225@9211L7,227@9247L1205:SwipeToDismissBox.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(state) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(function3) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            enableDismissFromStartToEnd2 = enableDismissFromStartToEnd;
        } else if (($changed & 3072) == 0) {
            enableDismissFromStartToEnd2 = enableDismissFromStartToEnd;
            $dirty2 |= $composer2.changed(enableDismissFromStartToEnd2) ? 2048 : 1024;
        } else {
            enableDismissFromStartToEnd2 = enableDismissFromStartToEnd;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty2 |= 24576;
            enableDismissFromEndToStart2 = enableDismissFromEndToStart;
        } else if (($changed & 24576) == 0) {
            enableDismissFromEndToStart2 = enableDismissFromEndToStart;
            $dirty2 |= $composer2.changed(enableDismissFromEndToStart2) ? 16384 : 8192;
        } else {
            enableDismissFromEndToStart2 = enableDismissFromEndToStart;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = gesturesEnabled;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            z = gesturesEnabled;
            $dirty2 |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = gesturesEnabled;
        }
        if ((i & 64) == 0) {
            i2 = ($changed & 1572864) == 0 ? $composer2.changedInstance(function32) ? 1048576 : 524288 : 1572864;
            if (($dirty2 & 599187) == 599186 || !$composer2.getSkipping()) {
                Modifier modifier4 = i3 == 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    enableDismissFromStartToEnd2 = true;
                }
                if (i5 != 0) {
                    enableDismissFromEndToStart2 = true;
                }
                boolean gesturesEnabled3 = i6 == 0 ? true : z;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-402577235, $dirty2, -1, "androidx.compose.material3.SwipeToDismissBox (SwipeToDismissBox.kt:224)");
                }
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume = $composer2.consume(localLayoutDirection);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                final boolean isRtl = objConsume != LayoutDirection.Rtl;
                Modifier modifier$iv = AnchoredDraggableKt.anchoredDraggable(modifier4, state.getAnchoredDraggableState$material3_release(), Orientation.Horizontal, (16 & 4) != 0 ? true : !gesturesEnabled3 && state.getCurrentValue() == SwipeToDismissBoxValue.Settled, (16 & 8) != 0 ? false : false, (16 & 16) != 0 ? null : null);
                ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                boolean gesturesEnabled4 = gesturesEnabled3;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    function0 = constructor;
                    $composer2.useNode();
                } else {
                    function0 = constructor;
                    $composer2.createNode(function0);
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i7 = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope = BoxScopeInstance.INSTANCE;
                int i8 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                BoxScope $this$SwipeToDismissBox_u24lambda_u242 = boxScope;
                ComposerKt.sourceInformationMarkerStart($composer2, -586717200, "C235@9549L71,239@9784L652,236@9629L817:SwipeToDismissBox.kt#uh7d8r");
                Modifier modifierMatchParentSize = $this$SwipeToDismissBox_u24lambda_u242.matchParentSize(Modifier.INSTANCE);
                int $changed$iv2 = ($dirty2 << 6) & 7168;
                ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer2, (($changed$iv2 >> 3) & 14) | (($changed$iv2 >> 3) & 112));
                int $changed$iv$iv2 = ($changed$iv2 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer2, modifierMatchParentSize);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    function02 = constructor2;
                    $composer2.useNode();
                } else {
                    function02 = constructor2;
                    $composer2.createNode(function02);
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i9 = ($changed$iv$iv$iv2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                function3.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv2 >> 6) & 112) | 6));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier.Companion companion = Modifier.INSTANCE;
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material3_release = state.getAnchoredDraggableState$material3_release();
                Orientation orientation = Orientation.Horizontal;
                ComposerKt.sourceInformationMarkerStart($composer2, 396722910, "CC(remember):SwipeToDismissBox.kt#9igjgp");
                invalid$iv = ((57344 & $dirty2) != 16384) | (($dirty2 & 7168) != 2048) | $composer2.changed(isRtl) | (($dirty2 & 14) != 4);
                Object value$iv = $composer2.rememberedValue();
                if (invalid$iv) {
                    $dirty = $dirty2;
                    if (value$iv == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Modifier modifierDraggableAnchors = AnchoredDraggableKt.draggableAnchors(companion, anchoredDraggableState$material3_release, orientation, (Function2) value$iv);
                    int $changed$iv3 = ($dirty >> 9) & 7168;
                    ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                    Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.getStart();
                    Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer2, (($changed$iv3 >> 3) & 14) | (($changed$iv3 >> 3) & 112));
                    int $changed$iv$iv3 = ($changed$iv3 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                    CompositionLocalMap localMap$iv$iv3 = $composer2.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer2, modifierDraggableAnchors);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        function03 = constructor3;
                        $composer2.createNode(function03);
                    } else {
                        function03 = constructor3;
                        $composer2.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        $changed$iv = $changed$iv3;
                    } else {
                        $changed$iv = $changed$iv3;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i10 = ($changed$iv$iv$iv3 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                        function32.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        $composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        gesturesEnabled2 = gesturesEnabled4;
                        modifier3 = modifier4;
                        enableDismissFromStartToEnd3 = enableDismissFromStartToEnd2;
                        enableDismissFromEndToStart3 = enableDismissFromEndToStart2;
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                    int i102 = ($changed$iv$iv$iv3 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                    function32.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    gesturesEnabled2 = gesturesEnabled4;
                    modifier3 = modifier4;
                    enableDismissFromStartToEnd3 = enableDismissFromStartToEnd2;
                    enableDismissFromEndToStart3 = enableDismissFromEndToStart2;
                } else {
                    $dirty = $dirty2;
                }
                value$iv = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SwipeToDismissBoxValue>, ? extends SwipeToDismissBoxValue>>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SwipeToDismissBoxValue>, ? extends SwipeToDismissBoxValue> invoke(IntSize intSize, Constraints constraints) {
                        return m2835invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                    public final Pair<DraggableAnchors<SwipeToDismissBoxValue>, SwipeToDismissBoxValue> m2835invokeGpV2Q24(long size, long j) {
                        final float width = IntSize.m7676getWidthimpl(size);
                        final boolean z2 = enableDismissFromStartToEnd2;
                        final boolean z3 = isRtl;
                        final boolean z4 = enableDismissFromEndToStart2;
                        return TuplesKt.to(AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SwipeToDismissBoxValue>, Unit>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$1$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(DraggableAnchorsConfig<SwipeToDismissBoxValue> draggableAnchorsConfig) {
                                invoke2(draggableAnchorsConfig);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(DraggableAnchorsConfig<SwipeToDismissBoxValue> draggableAnchorsConfig) {
                                draggableAnchorsConfig.at(SwipeToDismissBoxValue.Settled, 0.0f);
                                if (z2) {
                                    SwipeToDismissBoxValue swipeToDismissBoxValue = SwipeToDismissBoxValue.StartToEnd;
                                    boolean z5 = z3;
                                    float f = width;
                                    if (z5) {
                                        f = -f;
                                    }
                                    draggableAnchorsConfig.at(swipeToDismissBoxValue, f);
                                }
                                if (z4) {
                                    SwipeToDismissBoxValue swipeToDismissBoxValue2 = SwipeToDismissBoxValue.EndToStart;
                                    boolean z6 = z3;
                                    float f2 = width;
                                    if (!z6) {
                                        f2 = -f2;
                                    }
                                    draggableAnchorsConfig.at(swipeToDismissBoxValue2, f2);
                                }
                            }
                        }), state.getTargetValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierDraggableAnchors2 = AnchoredDraggableKt.draggableAnchors(companion, anchoredDraggableState$material3_release, orientation, (Function2) value$iv);
                int $changed$iv32 = ($dirty >> 9) & 7168;
                ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                Arrangement.Horizontal horizontalArrangement$iv22 = Arrangement.INSTANCE.getStart();
                Alignment.Vertical verticalAlignment$iv22 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv32 = RowKt.rowMeasurePolicy(horizontalArrangement$iv22, verticalAlignment$iv22, $composer2, (($changed$iv32 >> 3) & 14) | (($changed$iv32 >> 3) & 112));
                int $changed$iv$iv32 = ($changed$iv32 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv32 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer2, modifierDraggableAnchors2);
                Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv32), setCompositeKeyHash32);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                int i1022 = ($changed$iv$iv$iv32 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                function32.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
                gesturesEnabled2 = gesturesEnabled4;
                modifier3 = modifier4;
                enableDismissFromStartToEnd3 = enableDismissFromStartToEnd2;
                enableDismissFromEndToStart3 = enableDismissFromEndToStart2;
            } else {
                $composer2.skipToGroupEnd();
                $dirty = $dirty2;
                modifier3 = modifier2;
                gesturesEnabled2 = z;
                enableDismissFromStartToEnd3 = enableDismissFromStartToEnd2;
                enableDismissFromEndToStart3 = enableDismissFromEndToStart2;
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt.SwipeToDismissBox.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer, int i11) {
                        SwipeToDismissBoxKt.SwipeToDismissBox(state, function3, modifier3, enableDismissFromStartToEnd3, enableDismissFromEndToStart3, gesturesEnabled2, function32, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                    }
                });
                return;
            }
            return;
        }
        $dirty2 |= i2;
        if (($dirty2 & 599187) == 599186) {
            if (i3 == 0) {
            }
            if (i4 != 0) {
            }
            if (i5 != 0) {
            }
            if (i6 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer2.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (objConsume2 != LayoutDirection.Rtl) {
            }
            if (gesturesEnabled3) {
                Modifier modifier$iv2 = AnchoredDraggableKt.anchoredDraggable(modifier4, state.getAnchoredDraggableState$material3_release(), Orientation.Horizontal, (16 & 4) != 0 ? true : !gesturesEnabled3 && state.getCurrentValue() == SwipeToDismissBoxValue.Settled, (16 & 8) != 0 ? false : false, (16 & 16) != 0 ? null : null);
                ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, true);
                int $changed$iv$iv4 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                boolean gesturesEnabled42 = gesturesEnabled3;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv4 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer2, modifier$iv2);
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash4);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                int i72 = ($changed$iv$iv$iv4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScope boxScope2 = BoxScopeInstance.INSTANCE;
                int i82 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                BoxScope $this$SwipeToDismissBox_u24lambda_u2422 = boxScope2;
                ComposerKt.sourceInformationMarkerStart($composer2, -586717200, "C235@9549L71,239@9784L652,236@9629L817:SwipeToDismissBox.kt#uh7d8r");
                Modifier modifierMatchParentSize2 = $this$SwipeToDismissBox_u24lambda_u2422.matchParentSize(Modifier.INSTANCE);
                int $changed$iv22 = ($dirty2 << 6) & 7168;
                ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                Arrangement.Horizontal horizontalArrangement$iv3 = Arrangement.INSTANCE.getStart();
                Alignment.Vertical verticalAlignment$iv3 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv22 = RowKt.rowMeasurePolicy(horizontalArrangement$iv3, verticalAlignment$iv3, $composer2, (($changed$iv22 >> 3) & 14) | (($changed$iv22 >> 3) & 112));
                int $changed$iv$iv22 = ($changed$iv22 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv22 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer2, modifierMatchParentSize2);
                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash22);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                int i92 = ($changed$iv$iv$iv22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                function3.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv22 >> 6) & 112) | 6));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier.Companion companion2 = Modifier.INSTANCE;
                AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState$material3_release2 = state.getAnchoredDraggableState$material3_release();
                Orientation orientation2 = Orientation.Horizontal;
                ComposerKt.sourceInformationMarkerStart($composer2, 396722910, "CC(remember):SwipeToDismissBox.kt#9igjgp");
                invalid$iv = ((57344 & $dirty2) != 16384) | (($dirty2 & 7168) != 2048) | $composer2.changed(isRtl) | (($dirty2 & 14) != 4);
                Object value$iv2 = $composer2.rememberedValue();
                if (invalid$iv) {
                }
                value$iv2 = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SwipeToDismissBoxValue>, ? extends SwipeToDismissBoxValue>>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SwipeToDismissBoxValue>, ? extends SwipeToDismissBoxValue> invoke(IntSize intSize, Constraints constraints) {
                        return m2835invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                    public final Pair<DraggableAnchors<SwipeToDismissBoxValue>, SwipeToDismissBoxValue> m2835invokeGpV2Q24(long size, long j) {
                        final float width = IntSize.m7676getWidthimpl(size);
                        final boolean z2 = enableDismissFromStartToEnd2;
                        final boolean z3 = isRtl;
                        final boolean z4 = enableDismissFromEndToStart2;
                        return TuplesKt.to(AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SwipeToDismissBoxValue>, Unit>() { // from class: androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$1$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(DraggableAnchorsConfig<SwipeToDismissBoxValue> draggableAnchorsConfig) {
                                invoke2(draggableAnchorsConfig);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(DraggableAnchorsConfig<SwipeToDismissBoxValue> draggableAnchorsConfig) {
                                draggableAnchorsConfig.at(SwipeToDismissBoxValue.Settled, 0.0f);
                                if (z2) {
                                    SwipeToDismissBoxValue swipeToDismissBoxValue = SwipeToDismissBoxValue.StartToEnd;
                                    boolean z5 = z3;
                                    float f = width;
                                    if (z5) {
                                        f = -f;
                                    }
                                    draggableAnchorsConfig.at(swipeToDismissBoxValue, f);
                                }
                                if (z4) {
                                    SwipeToDismissBoxValue swipeToDismissBoxValue2 = SwipeToDismissBoxValue.EndToStart;
                                    boolean z6 = z3;
                                    float f2 = width;
                                    if (!z6) {
                                        f2 = -f2;
                                    }
                                    draggableAnchorsConfig.at(swipeToDismissBoxValue2, f2);
                                }
                            }
                        }), state.getTargetValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierDraggableAnchors22 = AnchoredDraggableKt.draggableAnchors(companion2, anchoredDraggableState$material3_release2, orientation2, (Function2) value$iv2);
                int $changed$iv322 = ($dirty >> 9) & 7168;
                ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                Arrangement.Horizontal horizontalArrangement$iv222 = Arrangement.INSTANCE.getStart();
                Alignment.Vertical verticalAlignment$iv222 = Alignment.INSTANCE.getTop();
                MeasurePolicy measurePolicy$iv322 = RowKt.rowMeasurePolicy(horizontalArrangement$iv222, verticalAlignment$iv222, $composer2, (($changed$iv322 >> 3) & 14) | (($changed$iv322 >> 3) & 112));
                int $changed$iv$iv322 = ($changed$iv322 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv322 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv322 = ComposedModifierKt.materializeModifier($composer2, modifierDraggableAnchors22);
                Function0<ComposeUiNode> constructor322 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv322 = (($changed$iv$iv322 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv322), setCompositeKeyHash322);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv322, ComposeUiNode.INSTANCE.getSetModifier());
                int i10222 = ($changed$iv$iv$iv322 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                function32.invoke(RowScopeInstance.INSTANCE, $composer2, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
                gesturesEnabled2 = gesturesEnabled42;
                modifier3 = modifier4;
                enableDismissFromStartToEnd3 = enableDismissFromStartToEnd2;
                enableDismissFromEndToStart3 = enableDismissFromEndToStart2;
            }
        }
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }
}
