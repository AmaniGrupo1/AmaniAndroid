package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: Crossfade.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "(Landroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {2, 0, 0}, xi = 48)
final class CrossfadeKt$Crossfade$5$1 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ Function3<T, Composer, Integer, Unit> $content;
    final /* synthetic */ T $stateForContent;
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CrossfadeKt$Crossfade$5$1(Transition<T> transition, FiniteAnimationSpec<Float> finiteAnimationSpec, T t, Function3<? super T, ? super Composer, ? super Integer, Unit> function3) {
        super(2);
        this.$this_Crossfade = transition;
        this.$animationSpec = finiteAnimationSpec;
        this.$stateForContent = t;
        this.$content = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$lambda$1(State<Float> state) {
        Object thisObj$iv = state.getValue();
        return ((Number) thisObj$iv).floatValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a2 A[PHI: r5
      0x00a2: PHI (r5v15 '$this$animateValue$iv$iv' androidx.compose.animation.core.Transition) = 
      (r5v13 '$this$animateValue$iv$iv' androidx.compose.animation.core.Transition)
      (r5v16 '$this$animateValue$iv$iv' androidx.compose.animation.core.Transition)
     binds: [B:20:0x00a0, B:16:0x0099] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0295  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void invoke(Composer $composer, int $changed) {
        final Transition $this$animateValue$iv$iv;
        Object it$iv$iv$iv;
        Object initialValue$iv$iv;
        boolean invalid$iv$iv$iv;
        Object it$iv$iv$iv2;
        final State alpha$delegate;
        boolean invalid$iv;
        Object it$iv;
        Function0<ComposeUiNode> function0;
        boolean invalid$iv$iv$iv2;
        Snapshot.Companion this_$iv$iv$iv;
        Snapshot previousSnapshot$iv$iv$iv;
        Function1<Object, Unit> readObserver;
        Snapshot newSnapshot$iv$iv$iv;
        ComposerKt.sourceInformation($composer, "C126@5771L134,129@5949L22,129@5922L79:Crossfade.kt#xbi5r1");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-934471669, $changed, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous> (Crossfade.kt:125)");
        }
        Transition $this$animateFloat$iv = this.$this_Crossfade;
        final FiniteAnimationSpec<Float> finiteAnimationSpec = this.$animationSpec;
        Function3 transitionSpec$iv = new Function3<Transition.Segment<T>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$alpha$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public final FiniteAnimationSpec<Float> invoke(Transition.Segment<T> segment, Composer $composer2, int $changed2) {
                $composer2.startReplaceGroup(955869654);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(955869654, $changed2, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:126)");
                }
                FiniteAnimationSpec<Float> finiteAnimationSpec2 = finiteAnimationSpec;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                $composer2.endReplaceGroup();
                return finiteAnimationSpec2;
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Object p1, Composer composer, Integer num) {
                return invoke((Transition.Segment) p1, composer, num.intValue());
            }
        };
        T t = this.$stateForContent;
        ComposerKt.sourceInformationMarkerStart($composer, 844118987, "CC(animateFloat)N(transitionSpec,label,targetValueByState)1951@83597L78:Transition.kt#pdpnli");
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        int $changed$iv$iv = (0 & 14) | ((0 << 3) & 896) | ((0 << 3) & 7168) | ((0 << 3) & 57344);
        ComposerKt.sourceInformationMarkerStart($composer, 1143035377, "CC(animateValue)N(typeConverter,transitionSpec,label,targetValueByState)1848@78638L32,1855@79111L49,1855@79092L75,1856@79207L45,1856@79192L67,1858@79272L89:Transition.kt#pdpnli");
        if ($this$animateFloat$iv.isSeeking()) {
            $this$animateValue$iv$iv = $this$animateFloat$iv;
            $composer.startReplaceGroup(1666827533);
            $composer.endReplaceGroup();
            it$iv$iv$iv = $this$animateValue$iv$iv.getCurrentState();
        } else {
            $composer.startReplaceGroup(1666573488);
            ComposerKt.sourceInformation($composer, "1844@78495L67");
            ComposerKt.sourceInformationMarkerStart($composer, -1054612652, "CC(remember):Transition.kt#9igjgp");
            if ((($changed$iv$iv & 14) ^ 6) > 4) {
                $this$animateValue$iv$iv = $this$animateFloat$iv;
                if ($composer.changed($this$animateValue$iv$iv)) {
                    invalid$iv$iv$iv2 = true;
                    it$iv$iv$iv = $composer.rememberedValue();
                    if (!invalid$iv$iv$iv2 || it$iv$iv$iv == Composer.INSTANCE.getEmpty()) {
                        this_$iv$iv$iv = Snapshot.INSTANCE;
                        previousSnapshot$iv$iv$iv = this_$iv$iv$iv.getCurrentThreadSnapshot();
                        readObserver = previousSnapshot$iv$iv$iv == null ? previousSnapshot$iv$iv$iv.getReadObserver() : null;
                        newSnapshot$iv$iv$iv = this_$iv$iv$iv.makeCurrentNonObservable(previousSnapshot$iv$iv$iv);
                        try {
                            Object value$iv$iv$iv = $this$animateValue$iv$iv.getCurrentState();
                            this_$iv$iv$iv.restoreNonObservable(previousSnapshot$iv$iv$iv, newSnapshot$iv$iv$iv, readObserver);
                            $composer.updateRememberedValue(value$iv$iv$iv);
                            it$iv$iv$iv = value$iv$iv$iv;
                        } catch (Throwable th) {
                            this_$iv$iv$iv.restoreNonObservable(previousSnapshot$iv$iv$iv, newSnapshot$iv$iv$iv, readObserver);
                            throw th;
                        }
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    $composer.endReplaceGroup();
                }
            } else {
                $this$animateValue$iv$iv = $this$animateFloat$iv;
            }
            if (($changed$iv$iv & 6) != 4) {
                invalid$iv$iv$iv2 = false;
            }
            it$iv$iv$iv = $composer.rememberedValue();
            if (!invalid$iv$iv$iv2) {
                this_$iv$iv$iv = Snapshot.INSTANCE;
                previousSnapshot$iv$iv$iv = this_$iv$iv$iv.getCurrentThreadSnapshot();
                readObserver = previousSnapshot$iv$iv$iv == null ? previousSnapshot$iv$iv$iv.getReadObserver() : null;
                newSnapshot$iv$iv$iv = this_$iv$iv$iv.makeCurrentNonObservable(previousSnapshot$iv$iv$iv);
                Object value$iv$iv$iv2 = $this$animateValue$iv$iv.getCurrentState();
                this_$iv$iv$iv.restoreNonObservable(previousSnapshot$iv$iv$iv, newSnapshot$iv$iv$iv, readObserver);
                $composer.updateRememberedValue(value$iv$iv$iv2);
                it$iv$iv$iv = value$iv$iv$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            }
        }
        int $changed2 = ($changed$iv$iv >> 9) & 112;
        Object it = it$iv$iv$iv;
        $composer.startReplaceGroup(1378811975);
        ComposerKt.sourceInformation($composer, "C:Crossfade.kt#xbi5r1");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1378811975, $changed2, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:127)");
        }
        float f = Intrinsics.areEqual(it, t) ? 1.0f : 0.0f;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        $composer.endReplaceGroup();
        Object initialValue$iv$iv2 = Float.valueOf(f);
        ComposerKt.sourceInformationMarkerStart($composer, -1054592958, "CC(remember):Transition.kt#9igjgp");
        boolean invalid$iv$iv$iv3 = ((($changed$iv$iv & 14) ^ 6) > 4 && $composer.changed($this$animateValue$iv$iv)) || ($changed$iv$iv & 6) == 4;
        Object it$iv$iv$iv3 = $composer.rememberedValue();
        if (!invalid$iv$iv$iv3) {
            initialValue$iv$iv = initialValue$iv$iv2;
            if (it$iv$iv$iv3 == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Object it2 = ((State) it$iv$iv$iv3).getValue();
            int $changed3 = ($changed$iv$iv >> 9) & 112;
            $composer.startReplaceGroup(1378811975);
            ComposerKt.sourceInformation($composer, "C:Crossfade.kt#xbi5r1");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1378811975, $changed3, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:127)");
            }
            float f2 = !Intrinsics.areEqual(it2, t) ? 1.0f : 0.0f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $composer.endReplaceGroup();
            Object targetValue$iv$iv = Float.valueOf(f2);
            ComposerKt.sourceInformationMarkerStart($composer, -1054589890, "CC(remember):Transition.kt#9igjgp");
            invalid$iv$iv$iv = ((($changed$iv$iv & 14) ^ 6) <= 4 && $composer.changed($this$animateValue$iv$iv)) || ($changed$iv$iv & 6) == 4;
            it$iv$iv$iv2 = $composer.rememberedValue();
            if (!invalid$iv$iv$iv || it$iv$iv$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv$iv$iv3 = SnapshotStateKt.derivedStateOf(new Function0<Transition.Segment<T>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2
                    @Override // kotlin.jvm.functions.Function0
                    public final Transition.Segment<T> invoke() {
                        return $this$animateValue$iv$iv.getSegment();
                    }
                });
                $composer.updateRememberedValue(value$iv$iv$iv3);
                it$iv$iv$iv2 = value$iv$iv$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            FiniteAnimationSpec animationSpec$iv$iv = (FiniteAnimationSpec) transitionSpec$iv.invoke(((State) it$iv$iv$iv2).getValue(), $composer, Integer.valueOf(($changed$iv$iv >> 3) & 112));
            alpha$delegate = androidx.compose.animation.core.TransitionKt.createTransitionAnimation($this$animateValue$iv$iv, initialValue$iv$iv, targetValue$iv$iv, animationSpec$iv$iv, vectorConverter, "FloatAnimation", $composer, ($changed$iv$iv & 14) | (($changed$iv$iv << 9) & 57344) | (($changed$iv$iv << 6) & 458752));
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier.Companion companion = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -379101695, "CC(remember):Crossfade.kt#9igjgp");
            invalid$iv = $composer.changed(alpha$delegate);
            it$iv = $composer.rememberedValue();
            if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                        invoke2(graphicsLayerScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                        $this$graphicsLayer.setAlpha(CrossfadeKt$Crossfade$5$1.invoke$lambda$1(alpha$delegate));
                    }
                };
                $composer.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifier$iv = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) it$iv);
            Function3<T, Composer, Integer, Unit> function3 = this.$content;
            T t2 = this.$stateForContent;
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap localMap$iv$iv = $composer.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.useNode();
            } else {
                function0 = constructor;
                $composer.createNode(function0);
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i2 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -191227322, "C129@5975L24:Crossfade.kt#xbi5r1");
            function3.invoke(t2, $composer, 0);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                return;
            }
            ComposerKt.traceEventEnd();
            return;
        }
        initialValue$iv$iv = initialValue$iv$iv2;
        Object value$iv$iv$iv4 = SnapshotStateKt.derivedStateOf(new Function0<T>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                return (T) $this$animateValue$iv$iv.getTargetState();
            }
        });
        $composer.updateRememberedValue(value$iv$iv$iv4);
        it$iv$iv$iv3 = value$iv$iv$iv4;
        ComposerKt.sourceInformationMarkerEnd($composer);
        Object it22 = ((State) it$iv$iv$iv3).getValue();
        int $changed32 = ($changed$iv$iv >> 9) & 112;
        $composer.startReplaceGroup(1378811975);
        ComposerKt.sourceInformation($composer, "C:Crossfade.kt#xbi5r1");
        if (ComposerKt.isTraceInProgress()) {
        }
        if (!Intrinsics.areEqual(it22, t)) {
        }
        if (ComposerKt.isTraceInProgress()) {
        }
        $composer.endReplaceGroup();
        Object targetValue$iv$iv2 = Float.valueOf(f2);
        ComposerKt.sourceInformationMarkerStart($composer, -1054589890, "CC(remember):Transition.kt#9igjgp");
        if ((($changed$iv$iv & 14) ^ 6) <= 4) {
        }
        it$iv$iv$iv2 = $composer.rememberedValue();
        if (!invalid$iv$iv$iv) {
            Object value$iv$iv$iv32 = SnapshotStateKt.derivedStateOf(new Function0<Transition.Segment<T>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2
                @Override // kotlin.jvm.functions.Function0
                public final Transition.Segment<T> invoke() {
                    return $this$animateValue$iv$iv.getSegment();
                }
            });
            $composer.updateRememberedValue(value$iv$iv$iv32);
            it$iv$iv$iv2 = value$iv$iv$iv32;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        FiniteAnimationSpec animationSpec$iv$iv2 = (FiniteAnimationSpec) transitionSpec$iv.invoke(((State) it$iv$iv$iv2).getValue(), $composer, Integer.valueOf(($changed$iv$iv >> 3) & 112));
        alpha$delegate = androidx.compose.animation.core.TransitionKt.createTransitionAnimation($this$animateValue$iv$iv, initialValue$iv$iv, targetValue$iv$iv2, animationSpec$iv$iv2, vectorConverter, "FloatAnimation", $composer, ($changed$iv$iv & 14) | (($changed$iv$iv << 9) & 57344) | (($changed$iv$iv << 6) & 458752));
        ComposerKt.sourceInformationMarkerEnd($composer);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Modifier.Companion companion2 = Modifier.INSTANCE;
        ComposerKt.sourceInformationMarkerStart($composer, -379101695, "CC(remember):Crossfade.kt#9igjgp");
        invalid$iv = $composer.changed(alpha$delegate);
        it$iv = $composer.rememberedValue();
        if (!invalid$iv) {
            Object value$iv2 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                    invoke2(graphicsLayerScope);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                    $this$graphicsLayer.setAlpha(CrossfadeKt$Crossfade$5$1.invoke$lambda$1(alpha$delegate));
                }
            };
            $composer.updateRememberedValue(value$iv2);
            it$iv = value$iv2;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        Modifier modifier$iv2 = GraphicsLayerModifierKt.graphicsLayer(companion2, (Function1) it$iv);
        Function3<T, Composer, Integer, Unit> function32 = this.$content;
        T t22 = this.$stateForContent;
        ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
        Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
        MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
        ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
        int compositeKeyHash$iv$iv2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
        CompositionLocalMap localMap$iv$iv2 = $composer.getCurrentCompositionLocalMap();
        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer, modifier$iv2);
        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
        int $changed$iv$iv$iv2 = ((((0 << 3) & 112) << 6) & 896) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
        if (!($composer.getApplier() instanceof Applier)) {
        }
        $composer.startReusableNode();
        if ($composer.getInserting()) {
        }
        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer);
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv2, Integer.valueOf(compositeKeyHash$iv$iv2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
        Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
        int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
        ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
        int i22 = ((0 >> 6) & 112) | 6;
        ComposerKt.sourceInformationMarkerStart($composer, -191227322, "C129@5975L24:Crossfade.kt#xbi5r1");
        function32.invoke(t22, $composer, 0);
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
