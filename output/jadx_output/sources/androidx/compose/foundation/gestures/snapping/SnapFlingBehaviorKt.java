package androidx.compose.foundation.gestures.snapping;

import androidx.autofill.HintConstants;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.exifinterface.media.ExifInterface;
import com.google.logging.type.LogSeverity;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: SnapFlingBehavior.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b\u001a\u0015\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\n\u001ae\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\f*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\u00122!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\u0014H\u0082@¢\u0006\u0002\u0010\u0019\u001a(\u0010\u001a\u001a\u0002H\u001b\"\u000e\b\u0000\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u001c*\b\u0012\u0004\u0012\u0002H\u001b0\u001dH\u0082\u0002¢\u0006\u0002\u0010\u001e\u001a(\u0010\u001f\u001a\u0002H\u001b\"\u000e\b\u0000\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u001c*\b\u0012\u0004\u0012\u0002H\u001b0\u001dH\u0082\u0002¢\u0006\u0002\u0010\u001e\u001ak\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\f*\u00020\u000e2\u0006\u0010!\u001a\u00020\u00062\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0#2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\u0014H\u0082@¢\u0006\u0002\u0010$\u001as\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\f*\u00020\u000e2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u00062\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0#2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060\b2!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\u0014H\u0082@¢\u0006\u0002\u0010(\u001a\u0014\u0010)\u001a\u00020\u0006*\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0002\u001a'\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0006H\u0000¢\u0006\u0004\b7\u00108\u001a\u0017\u0010;\u001a\u00020\u00182\f\u0010<\u001a\b\u0012\u0004\u0012\u00020>0=H\u0082\b\"\u0016\u0010+\u001a\u00020,X\u0080\u0004¢\u0006\n\n\u0002\u0010/\u001a\u0004\b-\u0010.\"\u000e\u00100\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u00101\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u00109\u001a\u00020:X\u0082T¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"snapFlingBehavior", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "snapLayoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "decayAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "rememberSnapFlingBehavior", "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "approach", "Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "Landroidx/compose/animation/core/AnimationVector1D;", "Landroidx/compose/foundation/gestures/ScrollScope;", "initialTargetOffset", "initialVelocity", "animation", "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;", "onAnimationStep", "Lkotlin/Function1;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "delta", "", "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/ApproachAnimation;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component1", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "component2", "animateDecay", "targetOffset", "animationState", "Landroidx/compose/animation/core/AnimationState;", "(Landroidx/compose/foundation/gestures/ScrollScope;FLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "animateWithTarget", "cancelOffset", "animationSpec", "(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "coerceToTarget", "target", "MinFlingVelocityDp", "Landroidx/compose/ui/unit/Dp;", "getMinFlingVelocityDp", "()F", "F", "NoDistance", "NoVelocity", "calculateFinalOffset", "snappingOffset", "Landroidx/compose/foundation/gestures/snapping/FinalSnappingItem;", "lowerBound", "upperBound", "calculateFinalOffset-Fhqu1e0", "(IFF)F", "DEBUG", "", "debugLog", "generateMsg", "Lkotlin/Function0;", "", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SnapFlingBehaviorKt {
    private static final boolean DEBUG = false;
    private static final float MinFlingVelocityDp = Dp.m7505constructorimpl(LogSeverity.WARNING_VALUE);
    public static final float NoDistance = 0.0f;
    public static final float NoVelocity = 0.0f;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1, reason: invalid class name */
    /* JADX INFO: compiled from: SnapFlingBehavior.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", i = {0, 0, 0}, l = {308}, m = "animateDecay", n = {"animationState", "previousValue", "targetOffset"}, s = {"L$0", "L$1", "F$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        float F$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehaviorKt.animateDecay(null, 0.0f, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SnapFlingBehavior.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", i = {0, 0, 0, 0}, l = {349}, m = "animateWithTarget", n = {"animationState", "consumedUpToNow", "targetOffset", "initialVelocity"}, s = {"L$0", "L$1", "F$0", "F$1"}, v = 1)
    static final class C02801 extends ContinuationImpl {
        float F$0;
        float F$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02801(Continuation<? super C02801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehaviorKt.animateWithTarget(null, 0.0f, 0.0f, null, null, null, this);
        }
    }

    public static final TargetedFlingBehavior snapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec) {
        return new SnapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpec, animationSpec);
    }

    public static final TargetedFlingBehavior rememberSnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, -1921733134, "C(rememberSnapFlingBehavior)N(snapLayoutInfoProvider)231@10249L7,232@10319L26,233@10357L311:SnapFlingBehavior.kt#ppz6w6");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1921733134, $changed, -1, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (SnapFlingBehavior.kt:230)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
        Object objConsume = $composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd($composer);
        Density density = (Density) objConsume;
        DecayAnimationSpec highVelocityApproachSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay($composer, 0);
        ComposerKt.sourceInformationMarkerStart($composer, 50403753, "CC(remember):SnapFlingBehavior.kt#9igjgp");
        boolean invalid$iv = (((($changed & 14) ^ 6) > 4 && $composer.changed(snapLayoutInfoProvider)) || ($changed & 6) == 4) | $composer.changed(highVelocityApproachSpec) | $composer.changed(density);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = snapFlingBehavior(snapLayoutInfoProvider, highVelocityApproachSpec, AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null));
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        TargetedFlingBehavior targetedFlingBehavior = (TargetedFlingBehavior) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return targetedFlingBehavior;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object approach(ScrollScope $this$approach, float initialTargetOffset, float initialVelocity, ApproachAnimation<Float, AnimationVector1D> approachAnimation, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        return approachAnimation.approachAnimation($this$approach, Boxing.boxFloat(initialTargetOffset), Boxing.boxFloat(initialVelocity), function1, continuation);
    }

    private static final <T extends Comparable<? super T>> T component1(ClosedFloatingPointRange<T> closedFloatingPointRange) {
        return closedFloatingPointRange.getStart();
    }

    private static final <T extends Comparable<? super T>> T component2(ClosedFloatingPointRange<T> closedFloatingPointRange) {
        return closedFloatingPointRange.getEndInclusive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object animateDecay(final ScrollScope $this$animateDecay, final float targetOffset, AnimationState<Float, AnimationVector1D> animationState, DecayAnimationSpec<Float> decayAnimationSpec, final Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        AnonymousClass1 anonymousClass1;
        float targetOffset2;
        Ref.FloatRef previousValue;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final Ref.FloatRef previousValue2 = new Ref.FloatRef();
                boolean z = animationState.getVelocity().floatValue() == 0.0f;
                Function1 function12 = new Function1() { // from class: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SnapFlingBehaviorKt.animateDecay$lambda$0(targetOffset, previousValue2, $this$animateDecay, function1, (AnimationScope) obj);
                    }
                };
                anonymousClass1.L$0 = animationState;
                anonymousClass1.L$1 = previousValue2;
                anonymousClass1.F$0 = targetOffset;
                anonymousClass1.label = 1;
                if (SuspendAnimationKt.animateDecay(animationState, decayAnimationSpec, !z, function12, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                targetOffset2 = targetOffset;
                previousValue = previousValue2;
                break;
                break;
            case 1:
                targetOffset2 = anonymousClass1.F$0;
                previousValue = (Ref.FloatRef) anonymousClass1.L$1;
                animationState = (AnimationState) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return new AnimationResult(Boxing.boxFloat(targetOffset2 - previousValue.element), animationState);
    }

    private static final void animateDecay$consumeDelta(AnimationScope<Float, AnimationVector1D> animationScope, ScrollScope $this_animateDecay, Function1<? super Float, Unit> function1, float delta) {
        float consumed = 0.0f;
        try {
            consumed = $this_animateDecay.scrollBy(delta);
        } catch (CancellationException e) {
            animationScope.cancelAnimation();
        }
        function1.invoke(Float.valueOf(consumed));
        if (Math.abs(delta - consumed) > 0.5f) {
            animationScope.cancelAnimation();
        }
    }

    static final Unit animateDecay$lambda$0(float $targetOffset, Ref.FloatRef $previousValue, ScrollScope $this_animateDecay, Function1 $onAnimationStep, AnimationScope $this$animateDecay) {
        if (Math.abs(((Number) $this$animateDecay.getValue()).floatValue()) >= Math.abs($targetOffset)) {
            float finalValue = coerceToTarget(((Number) $this$animateDecay.getValue()).floatValue(), $targetOffset);
            float finalDelta = finalValue - $previousValue.element;
            animateDecay$consumeDelta($this$animateDecay, $this_animateDecay, $onAnimationStep, finalDelta);
            $this$animateDecay.cancelAnimation();
            $previousValue.element = finalValue;
        } else {
            float delta = ((Number) $this$animateDecay.getValue()).floatValue() - $previousValue.element;
            animateDecay$consumeDelta($this$animateDecay, $this_animateDecay, $onAnimationStep, delta);
            $previousValue.element = ((Number) $this$animateDecay.getValue()).floatValue();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object animateWithTarget(final ScrollScope $this$animateWithTarget, float f, final float cancelOffset, AnimationState<Float, AnimationVector1D> animationState, AnimationSpec<Float> animationSpec, final Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        C02801 c02801;
        float targetOffset;
        Ref.FloatRef consumedUpToNow;
        float initialVelocity;
        AnimationState<Float, AnimationVector1D> animationState2;
        if (continuation instanceof C02801) {
            c02801 = (C02801) continuation;
            if ((c02801.label & Integer.MIN_VALUE) != 0) {
                c02801.label -= Integer.MIN_VALUE;
            } else {
                c02801 = new C02801(continuation);
            }
        }
        Object $result = c02801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02801.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                targetOffset = f;
                final Ref.FloatRef consumedUpToNow2 = new Ref.FloatRef();
                float initialVelocity2 = animationState.getVelocity().floatValue();
                Float fBoxFloat = Boxing.boxFloat(targetOffset);
                boolean z = animationState.getVelocity().floatValue() == 0.0f;
                Function1 function12 = new Function1() { // from class: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SnapFlingBehaviorKt.animateWithTarget$lambda$0(cancelOffset, consumedUpToNow2, $this$animateWithTarget, function1, (AnimationScope) obj);
                    }
                };
                c02801.L$0 = animationState;
                c02801.L$1 = consumedUpToNow2;
                c02801.F$0 = targetOffset;
                c02801.F$1 = initialVelocity2;
                c02801.label = 1;
                Continuation $continuation = c02801;
                if (SuspendAnimationKt.animateTo(animationState, fBoxFloat, animationSpec, !z, function12, $continuation) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                consumedUpToNow = consumedUpToNow2;
                initialVelocity = initialVelocity2;
                animationState2 = animationState;
                break;
                break;
            case 1:
                initialVelocity = c02801.F$1;
                float targetOffset2 = c02801.F$0;
                consumedUpToNow = (Ref.FloatRef) c02801.L$1;
                AnimationState<Float, AnimationVector1D> animationState3 = (AnimationState) c02801.L$0;
                ResultKt.throwOnFailure($result);
                targetOffset = targetOffset2;
                animationState2 = animationState3;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        float finalVelocity = coerceToTarget(animationState2.getVelocity().floatValue(), initialVelocity);
        return new AnimationResult(Boxing.boxFloat(targetOffset - consumedUpToNow.element), AnimationStateKt.copy$default((AnimationState) animationState2, 0.0f, finalVelocity, 0L, 0L, false, 29, (Object) null));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static final Unit animateWithTarget$lambda$0(float $cancelOffset, Ref.FloatRef $consumedUpToNow, ScrollScope $this_animateWithTarget, Function1 $onAnimationStep, AnimationScope $this$animateTo) {
        float realValue = coerceToTarget(((Number) $this$animateTo.getValue()).floatValue(), $cancelOffset);
        float delta = realValue - $consumedUpToNow.element;
        float consumed = 0.0f;
        try {
            consumed = $this_animateWithTarget.scrollBy(delta);
        } catch (CancellationException e) {
            $this$animateTo.cancelAnimation();
        }
        $onAnimationStep.invoke(Float.valueOf(consumed));
        if (Math.abs(delta - consumed) > 0.5f) {
            $this$animateTo.cancelAnimation();
        } else {
            if (!(realValue == ((Number) $this$animateTo.getValue()).floatValue())) {
            }
        }
        $consumedUpToNow.element += consumed;
        return Unit.INSTANCE;
    }

    private static final float coerceToTarget(float $this$coerceToTarget, float target) {
        if (target == 0.0f) {
            return 0.0f;
        }
        return target > 0.0f ? RangesKt.coerceAtMost($this$coerceToTarget, target) : RangesKt.coerceAtLeast($this$coerceToTarget, target);
    }

    public static final float getMinFlingVelocityDp() {
        return MinFlingVelocityDp;
    }

    private static final boolean calculateFinalOffset_Fhqu1e0$isValidDistance(float $this$calculateFinalOffset_Fhqu1e0_u24isValidDistance) {
        if (!($this$calculateFinalOffset_Fhqu1e0_u24isValidDistance == Float.POSITIVE_INFINITY)) {
            if (!($this$calculateFinalOffset_Fhqu1e0_u24isValidDistance == Float.NEGATIVE_INFINITY)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX INFO: renamed from: calculateFinalOffset-Fhqu1e0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final float m628calculateFinalOffsetFhqu1e0(int i, float lowerBound, float upperBound) {
        float finalDistance;
        if (FinalSnappingItem.m621equalsimpl0(i, FinalSnappingItem.INSTANCE.m625getClosestItembbeMdSM())) {
            finalDistance = Math.abs(upperBound) <= Math.abs(lowerBound) ? upperBound : lowerBound;
        } else if (!FinalSnappingItem.m621equalsimpl0(i, FinalSnappingItem.INSTANCE.m626getNextItembbeMdSM())) {
            if (!FinalSnappingItem.m621equalsimpl0(i, FinalSnappingItem.INSTANCE.m627getPreviousItembbeMdSM())) {
                finalDistance = 0.0f;
            }
        }
        if (calculateFinalOffset_Fhqu1e0$isValidDistance(finalDistance)) {
            return finalDistance;
        }
        return 0.0f;
    }

    private static final void debugLog(Function0<String> function0) {
    }
}
