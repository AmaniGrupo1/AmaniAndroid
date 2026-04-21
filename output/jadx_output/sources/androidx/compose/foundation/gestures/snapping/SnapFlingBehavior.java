package androidx.compose.foundation.gestures.snapping;

import androidx.autofill.HintConstants;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: compiled from: SnapFlingBehavior.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0004\b\t\u0010\nJ.\u0010\u0011\u001a\u00020\u0006*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\u0015H\u0096@¢\u0006\u0002\u0010\u0017J:\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\u0015H\u0082@¢\u0006\u0002\u0010\u0017JB\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u001d*\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160\u0015H\u0082@¢\u0006\u0002\u0010!JQ\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u00122\u0006\u0010#\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\u00160\u0015H\u0082@¢\u0006\u0002\u0010!J\u0018\u0010(\u001a\u00020)2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u0013\u0010*\u001a\u00020)2\b\u0010+\u001a\u0004\u0018\u00010,H\u0096\u0002J\b\u0010-\u001a\u00020.H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006/"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "snapLayoutInfoProvider", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "decayAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "<init>", "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V", "motionScaleDuration", "Landroidx/compose/ui/MotionDurationScale;", "getMotionScaleDuration$foundation", "()Landroidx/compose/ui/MotionDurationScale;", "setMotionScaleDuration$foundation", "(Landroidx/compose/ui/MotionDurationScale;)V", "performFling", "Landroidx/compose/foundation/gestures/ScrollScope;", "initialVelocity", "onRemainingDistanceUpdated", "Lkotlin/Function1;", "", "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fling", "Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "Landroidx/compose/animation/core/AnimationVector1D;", "onRemainingScrollOffsetUpdate", "tryApproach", "Landroidx/compose/animation/core/AnimationState;", "offset", "velocity", "updateRemainingScrollOffset", "(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runApproach", "initialTargetOffset", "onAnimationStep", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "delta", "isDecayApproachPossible", "", "equals", "other", "", "hashCode", "", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SnapFlingBehavior implements TargetedFlingBehavior {
    public static final int $stable = 0;
    private final DecayAnimationSpec<Float> decayAnimationSpec;
    private MotionDurationScale motionScaleDuration = ScrollableKt.getDefaultScrollMotionDurationScale();
    private final AnimationSpec<Float> snapAnimationSpec;
    private final SnapLayoutInfoProvider snapLayoutInfoProvider;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1, reason: invalid class name */
    /* JADX INFO: compiled from: SnapFlingBehavior.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", i = {0}, l = {114}, m = "fling", n = {"onRemainingScrollOffsetUpdate"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.fling(null, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SnapFlingBehavior.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", i = {}, l = {100}, m = "performFling", n = {}, s = {}, v = 1)
    static final class C02781 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02781(Continuation<? super C02781> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.performFling(null, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$tryApproach$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SnapFlingBehavior.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", i = {}, l = {174}, m = "tryApproach", n = {}, s = {}, v = 1)
    static final class C02791 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02791(Continuation<? super C02791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.tryApproach(null, 0.0f, 0.0f, null, this);
        }
    }

    public SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec) {
        this.snapLayoutInfoProvider = snapLayoutInfoProvider;
        this.decayAnimationSpec = decayAnimationSpec;
        this.snapAnimationSpec = animationSpec;
    }

    /* JADX INFO: renamed from: getMotionScaleDuration$foundation, reason: from getter */
    public final MotionDurationScale getMotionScaleDuration() {
        return this.motionScaleDuration;
    }

    public final void setMotionScaleDuration$foundation(MotionDurationScale motionDurationScale) {
        this.motionScaleDuration = motionDurationScale;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.gestures.TargetedFlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object performFling(ScrollScope $this$performFling, float initialVelocity, Function1<? super Float, Unit> function1, Continuation<? super Float> continuation) {
        C02781 c02781;
        Object objFling;
        if (continuation instanceof C02781) {
            c02781 = (C02781) continuation;
            if ((c02781.label & Integer.MIN_VALUE) != 0) {
                c02781.label -= Integer.MIN_VALUE;
            } else {
                c02781 = new C02781(continuation);
            }
        }
        Object $result = c02781.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02781.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                c02781.label = 1;
                objFling = fling($this$performFling, initialVelocity, function1, c02781);
                if (objFling == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objFling = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        AnimationResult animationResult = (AnimationResult) objFling;
        float remainingOffset = ((Number) animationResult.component1()).floatValue();
        AnimationState remainingState = animationResult.component2();
        return Boxing.boxFloat(remainingOffset == 0.0f ? 0.0f : ((Number) remainingState.getVelocity()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object fling(ScrollScope $this$fling, float initialVelocity, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        AnonymousClass1 anonymousClass1;
        Function1<? super Float, Unit> function12;
        Object objWithContext;
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
                function12 = function1;
                MotionDurationScale motionDurationScale = this.motionScaleDuration;
                SnapFlingBehavior$fling$result$1 snapFlingBehavior$fling$result$1 = new SnapFlingBehavior$fling$result$1(this, initialVelocity, function12, $this$fling, null);
                anonymousClass1.L$0 = function12;
                anonymousClass1.label = 1;
                objWithContext = BuildersKt.withContext(motionDurationScale, snapFlingBehavior$fling$result$1, anonymousClass1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                Function1<? super Float, Unit> function13 = (Function1) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                function12 = function13;
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        AnimationResult result = (AnimationResult) objWithContext;
        function12.invoke(Boxing.boxFloat(0.0f));
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object tryApproach(ScrollScope $this$tryApproach, float offset, float velocity, Function1<? super Float, Unit> function1, Continuation<? super AnimationState<Float, AnimationVector1D>> continuation) {
        C02791 c02791;
        Object objRunApproach;
        if (continuation instanceof C02791) {
            c02791 = (C02791) continuation;
            if ((c02791.label & Integer.MIN_VALUE) != 0) {
                c02791.label -= Integer.MIN_VALUE;
            } else {
                c02791 = new C02791(continuation);
            }
        }
        C02791 c027912 = c02791;
        Object $result = c027912.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c027912.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (!(Math.abs(offset) == 0.0f)) {
                    if (!(Math.abs(velocity) == 0.0f)) {
                        c027912.label = 1;
                        objRunApproach = runApproach($this$tryApproach, offset, velocity, function1, c027912);
                        if (objRunApproach == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return AnimationStateKt.AnimationState$default(offset, velocity, 0L, 0L, false, 28, null);
            case 1:
                ResultKt.throwOnFailure($result);
                objRunApproach = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((AnimationResult) objRunApproach).getCurrentAnimationState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runApproach(ScrollScope $this$runApproach, float initialTargetOffset, float initialVelocity, Function1<? super Float, Unit> function1, Continuation<? super AnimationResult<Float, AnimationVector1D>> continuation) {
        TargetApproachAnimation targetApproachAnimation;
        if (isDecayApproachPossible(initialTargetOffset, initialVelocity)) {
            targetApproachAnimation = new DecayApproachAnimation(this.decayAnimationSpec);
        } else {
            targetApproachAnimation = new TargetApproachAnimation(this.snapAnimationSpec);
        }
        ApproachAnimation animation = targetApproachAnimation;
        return SnapFlingBehaviorKt.approach($this$runApproach, initialTargetOffset, initialVelocity, animation, function1, continuation);
    }

    private final boolean isDecayApproachPossible(float offset, float velocity) {
        float decayOffset = DecayAnimationSpecKt.calculateTargetValue(this.decayAnimationSpec, 0.0f, velocity);
        return Math.abs(decayOffset) >= Math.abs(offset);
    }

    public boolean equals(Object other) {
        return (other instanceof SnapFlingBehavior) && Intrinsics.areEqual(((SnapFlingBehavior) other).snapAnimationSpec, this.snapAnimationSpec) && Intrinsics.areEqual(((SnapFlingBehavior) other).decayAnimationSpec, this.decayAnimationSpec) && Intrinsics.areEqual(((SnapFlingBehavior) other).snapLayoutInfoProvider, this.snapLayoutInfoProvider);
    }

    public int hashCode() {
        int it = (0 * 31) + this.snapAnimationSpec.hashCode();
        return (((it * 31) + this.decayAnimationSpec.hashCode()) * 31) + this.snapLayoutInfoProvider.hashCode();
    }
}
