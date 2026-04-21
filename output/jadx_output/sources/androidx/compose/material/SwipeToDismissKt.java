package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
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
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: SwipeToDismiss.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0081\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\r2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\r¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00040\r¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0012H\u0007¢\u0006\u0002\u0010\u0014\u001a\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u001a-\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u00172\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\rH\u0007¢\u0006\u0002\u0010\u001d\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006\u001e"}, d2 = {"DISMISS_THRESHOLD", "Landroidx/compose/ui/unit/Dp;", "F", "SwipeToDismiss", "", "state", "Landroidx/compose/material/DismissState;", "modifier", "Landroidx/compose/ui/Modifier;", "directions", "", "Landroidx/compose/material/DismissDirection;", "dismissThresholds", "Lkotlin/Function1;", "Landroidx/compose/material/ThresholdConfig;", "background", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "dismissContent", "(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "getDismissDirection", "from", "Landroidx/compose/material/DismissValue;", "to", "rememberDismissState", "initialValue", "confirmStateChange", "", "(Landroidx/compose/material/DismissValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DismissState;", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SwipeToDismissKt {
    private static final float DISMISS_THRESHOLD = Dp.m7505constructorimpl(56);

    public static final DismissState rememberDismissState(final DismissValue initialValue, final Function1<? super DismissValue, Boolean> function1, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, -1753522702, "C(rememberDismissState)P(1)153@5472L62,153@5407L127:SwipeToDismiss.kt#jmzs0o");
        if ((i & 1) != 0) {
            initialValue = DismissValue.Default;
        }
        if ((i & 2) != 0) {
            Function1 confirmStateChange = new Function1<DismissValue, Boolean>() { // from class: androidx.compose.material.SwipeToDismissKt.rememberDismissState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(DismissValue it) {
                    return true;
                }
            };
            function1 = confirmStateChange;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1753522702, $changed, -1, "androidx.compose.material.rememberDismissState (SwipeToDismiss.kt:152)");
        }
        Object[] objArr = new Object[0];
        Saver<DismissState, DismissValue> Saver = DismissState.INSTANCE.Saver(function1);
        ComposerKt.sourceInformationMarkerStart($composer, 1006276056, "CC(remember):SwipeToDismiss.kt#9igjgp");
        boolean invalid$iv = (((($changed & 112) ^ 48) > 32 && $composer.changed(function1)) || ($changed & 48) == 32) | (((($changed & 14) ^ 6) > 4 && $composer.changed(initialValue)) || ($changed & 6) == 4);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<DismissState>() { // from class: androidx.compose.material.SwipeToDismissKt$rememberDismissState$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DismissState invoke() {
                    return new DismissState(initialValue, function1);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        DismissState dismissState = (DismissState) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return dismissState;
    }

    public static final void SwipeToDismiss(final DismissState state, Modifier modifier, Set<? extends DismissDirection> set, Function1<? super DismissDirection, ? extends ThresholdConfig> function1, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32, Composer $composer, final int $changed, final int i) {
        DismissState dismissState;
        Modifier modifier2;
        Set<? extends DismissDirection> set2;
        Function1<? super DismissDirection, ? extends ThresholdConfig> function12;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        final Set<? extends DismissDirection> set3;
        final Modifier modifier3;
        final Function1<? super DismissDirection, ? extends ThresholdConfig> function13;
        Composer $composer2 = $composer.startRestartGroup(634380143);
        ComposerKt.sourceInformation($composer2, "C(SwipeToDismiss)P(5,4,1,3)183@6698L1378,183@6669L1407:SwipeToDismiss.kt#jmzs0o");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            dismissState = state;
        } else if (($changed & 6) == 0) {
            dismissState = state;
            $dirty |= $composer2.changed(dismissState) ? 4 : 2;
        } else {
            dismissState = state;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            set2 = set;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            set2 = set;
            $dirty |= $composer2.changedInstance(set2) ? 256 : 128;
        } else {
            set2 = set;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 3072;
            function12 = function1;
        } else if (($changed & 3072) == 0) {
            function12 = function1;
            $dirty |= $composer2.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        if ((i & 16) != 0) {
            $dirty |= 24576;
            function33 = function3;
        } else if (($changed & 24576) == 0) {
            function33 = function3;
            $dirty |= $composer2.changedInstance(function33) ? 16384 : 8192;
        } else {
            function33 = function3;
        }
        if ((i & 32) != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer2.changedInstance(function32) ? 131072 : 65536;
        }
        if ((74899 & $dirty) == 74898 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            set3 = set2;
            function13 = function12;
        } else {
            Modifier.Companion modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            final Set<? extends DismissDirection> of = i3 != 0 ? SetsKt.setOf((Object[]) new DismissDirection[]{DismissDirection.EndToStart, DismissDirection.StartToEnd}) : set2;
            final Function1<? super DismissDirection, ? extends ThresholdConfig> function14 = i4 != 0 ? new Function1<DismissDirection, FixedThreshold>() { // from class: androidx.compose.material.SwipeToDismissKt.SwipeToDismiss.1
                @Override // kotlin.jvm.functions.Function1
                public final FixedThreshold invoke(DismissDirection it) {
                    return new FixedThreshold(SwipeToDismissKt.DISMISS_THRESHOLD, null);
                }
            } : function12;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(634380143, $dirty, -1, "androidx.compose.material.SwipeToDismiss (SwipeToDismiss.kt:183)");
            }
            final DismissState dismissState2 = dismissState;
            final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function34 = function33;
            set3 = of;
            Modifier modifier5 = modifier4;
            BoxWithConstraintsKt.BoxWithConstraints(modifier5, null, false, ComposableLambdaKt.rememberComposableLambda(338007641, true, new Function3<BoxWithConstraintsScope, Composer, Integer, Unit>() { // from class: androidx.compose.material.SwipeToDismissKt.SwipeToDismiss.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
                    invoke(boxWithConstraintsScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:103:0x04f1  */
                /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(BoxWithConstraintsScope $this$BoxWithConstraints, Composer $composer3, int $changed2) {
                    BoxWithConstraintsScope boxWithConstraintsScope;
                    Object value$iv;
                    Function0<ComposeUiNode> function0;
                    Function0<ComposeUiNode> function02;
                    Object value$iv2;
                    Function0<ComposeUiNode> function03;
                    Composer $composer4;
                    ComposerKt.sourceInformation($composer3, "C185@6784L7,191@7025L106,198@7356L718:SwipeToDismiss.kt#jmzs0o");
                    int $dirty2 = $changed2;
                    if (($changed2 & 6) == 0) {
                        boxWithConstraintsScope = $this$BoxWithConstraints;
                        $dirty2 |= $composer3.changed(boxWithConstraintsScope) ? 4 : 2;
                    } else {
                        boxWithConstraintsScope = $this$BoxWithConstraints;
                    }
                    if (($dirty2 & 19) == 18 && $composer3.getSkipping()) {
                        $composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(338007641, $dirty2, -1, "androidx.compose.material.SwipeToDismiss.<anonymous> (SwipeToDismiss.kt:184)");
                    }
                    float width = Constraints.m7458getMaxWidthimpl(boxWithConstraintsScope.mo712getConstraintsmsEJaDk());
                    ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(localLayoutDirection);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    boolean isRtl = objConsume == LayoutDirection.Rtl;
                    Map anchors = MapsKt.mutableMapOf(TuplesKt.to(Float.valueOf(0.0f), DismissValue.Default));
                    if (of.contains(DismissDirection.StartToEnd)) {
                        Pair pair = TuplesKt.to(Float.valueOf(width), DismissValue.DismissedToEnd);
                        anchors.put(pair.getFirst(), pair.getSecond());
                    }
                    if (of.contains(DismissDirection.EndToStart)) {
                        Pair pair2 = TuplesKt.to(Float.valueOf(-width), DismissValue.DismissedToStart);
                        anchors.put(pair2.getFirst(), pair2.getSecond());
                    }
                    ComposerKt.sourceInformationMarkerStart($composer3, -547068892, "CC(remember):SwipeToDismiss.kt#9igjgp");
                    boolean invalid$iv = $composer3.changed(function14);
                    final Function1<DismissDirection, ThresholdConfig> function15 = function14;
                    Object it$iv = $composer3.rememberedValue();
                    if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = (Function2) new Function2<DismissValue, DismissValue, ThresholdConfig>() { // from class: androidx.compose.material.SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final ThresholdConfig invoke(DismissValue from, DismissValue to) {
                                Function1<DismissDirection, ThresholdConfig> function16 = function15;
                                DismissDirection dismissDirection = SwipeToDismissKt.getDismissDirection(from, to);
                                Intrinsics.checkNotNull(dismissDirection);
                                return function16.invoke(dismissDirection);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    Function2 thresholds = (Function2) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    float minFactor = of.contains(DismissDirection.EndToStart) ? 10.0f : 20.0f;
                    float maxFactor = of.contains(DismissDirection.StartToEnd) ? 10.0f : 20.0f;
                    Modifier modifier$iv = SwipeableKt.m1951swipeablepPrIpRY(Modifier.INSTANCE, dismissState2, anchors, Orientation.Horizontal, (288 & 8) != 0 ? true : dismissState2.getCurrentValue() == DismissValue.Default, (288 & 16) != 0 ? false : isRtl, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? new Function2<T, T, FixedThreshold>() { // from class: androidx.compose.material.SwipeableKt$swipeable$1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function2
                        public final FixedThreshold invoke(T t, T t2) {
                            return new FixedThreshold(Dp.m7505constructorimpl(56), null);
                        }
                    } : thresholds, (288 & 128) != 0 ? SwipeableDefaults.resistanceConfig$default(SwipeableDefaults.INSTANCE, anchors.keySet(), 0.0f, 0.0f, 6, null) : new ResistanceConfig(width, minFactor, maxFactor), (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.m1950getVelocityThresholdD9Ej5fM() : 0.0f);
                    Function3<RowScope, Composer, Integer, Unit> function35 = function34;
                    final DismissState dismissState3 = dismissState2;
                    Function3<RowScope, Composer, Integer, Unit> function36 = function32;
                    ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                    int $changed$iv$iv = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
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
                    Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i5 = ($changed$iv$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    int i6 = ((0 >> 6) & 112) | 6;
                    BoxScope $this$invoke_u24lambda_u242 = BoxScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1783238894, "C213@7820L98,219@8009L49,217@7927L141:SwipeToDismiss.kt#jmzs0o");
                    Modifier modifierMatchParentSize = $this$invoke_u24lambda_u242.matchParentSize(Modifier.INSTANCE);
                    ComposerKt.sourceInformationMarkerStart($composer3, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                    int $changed$iv$iv2 = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifierMatchParentSize);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        function02 = constructor2;
                        $composer3.createNode(function02);
                    } else {
                        function02 = constructor2;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                    int i7 = ($changed$iv$iv$iv2 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                    function35.invoke(RowScopeInstance.INSTANCE, $composer3, Integer.valueOf(((0 >> 6) & 112) | 6));
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier.Companion companion = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer3, 358124010, "CC(remember):SwipeToDismiss.kt#9igjgp");
                    boolean invalid$iv2 = $composer3.changed(dismissState3);
                    Object it$iv2 = $composer3.rememberedValue();
                    if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                        value$iv2 = (Function1) new Function1<Density, IntOffset>() { // from class: androidx.compose.material.SwipeToDismissKt$SwipeToDismiss$2$1$1$1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
                                return IntOffset.m7624boximpl(m1949invokeBjo55l4(density));
                            }

                            /* JADX INFO: renamed from: invoke-Bjo55l4, reason: not valid java name */
                            public final long m1949invokeBjo55l4(Density $this$offset) {
                                return IntOffsetKt.IntOffset(MathKt.roundToInt(dismissState3.getOffset().getValue().floatValue()), 0);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv2);
                    } else {
                        value$iv2 = it$iv2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier modifierOffset = OffsetKt.offset(companion, (Function1) value$iv2);
                    ComposerKt.sourceInformationMarkerStart($composer3, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                    Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.getStart();
                    Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                    MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                    int $changed$iv$iv3 = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifierOffset);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        function03 = constructor3;
                        $composer3.createNode(function03);
                    } else {
                        function03 = constructor3;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        $composer4 = $composer3;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i8 = ($changed$iv$iv$iv3 >> 6) & 14;
                        Composer $composer$iv = $composer4;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                        function36.invoke(RowScopeInstance.INSTANCE, $composer$iv, Integer.valueOf(((0 >> 6) & 112) | 6));
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        if (ComposerKt.isTraceInProgress()) {
                            return;
                        }
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    $composer4 = $composer3;
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                    int i82 = ($changed$iv$iv$iv3 >> 6) & 14;
                    Composer $composer$iv2 = $composer4;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                    function36.invoke(RowScopeInstance.INSTANCE, $composer$iv2, Integer.valueOf(((0 >> 6) & 112) | 6));
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    $composer4.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }, $composer2, 54), $composer2, (($dirty >> 3) & 14) | 3072, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            function13 = function14;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.SwipeToDismissKt.SwipeToDismiss.3
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

                public final void invoke(Composer composer, int i5) {
                    SwipeToDismissKt.SwipeToDismiss(state, modifier3, set3, function13, function3, function32, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DismissDirection getDismissDirection(DismissValue from, DismissValue to) {
        if (from == to && from == DismissValue.Default) {
            return null;
        }
        if (from == to && from == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (from == to && from == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        if (from == DismissValue.Default && to == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (from == DismissValue.Default && to == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        if (from == DismissValue.DismissedToEnd && to == DismissValue.Default) {
            return DismissDirection.StartToEnd;
        }
        if (from == DismissValue.DismissedToStart && to == DismissValue.Default) {
            return DismissDirection.EndToStart;
        }
        return null;
    }
}
