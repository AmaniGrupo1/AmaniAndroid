package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyLayoutItemAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1", f = "LazyLayoutItemAnimation.kt", i = {0}, l = {141, 148}, m = "invokeSuspend", n = {"finalSpec"}, s = {"L$0"}, v = 1)
final class LazyLayoutItemAnimation$animatePlacementDelta$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FiniteAnimationSpec<IntOffset> $spec;
    final /* synthetic */ long $totalDelta;
    Object L$0;
    int label;
    final /* synthetic */ LazyLayoutItemAnimation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyLayoutItemAnimation$animatePlacementDelta$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec<IntOffset> finiteAnimationSpec, long j, Continuation<? super LazyLayoutItemAnimation$animatePlacementDelta$1> continuation) {
        super(2, continuation);
        this.this$0 = lazyLayoutItemAnimation;
        this.$spec = finiteAnimationSpec;
        this.$totalDelta = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LazyLayoutItemAnimation$animatePlacementDelta$1(this.this$0, this.$spec, this.$totalDelta, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LazyLayoutItemAnimation$animatePlacementDelta$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b4 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        FiniteAnimationSpec<IntOffset> finiteAnimationSpec;
        final long animationTarget;
        Animatable animatable;
        Function1 function1;
        LazyLayoutItemAnimation$animatePlacementDelta$1 lazyLayoutItemAnimation$animatePlacementDelta$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                boolean zIsRunning = this.this$0.placementDeltaAnimation.isRunning();
                SpringSpec springSpec = this.$spec;
                if (zIsRunning) {
                    springSpec = springSpec instanceof SpringSpec ? (SpringSpec) this.$spec : LazyLayoutItemAnimationKt.InterruptionSpec;
                }
                finiteAnimationSpec = springSpec;
                if (!this.this$0.placementDeltaAnimation.isRunning()) {
                    this.L$0 = finiteAnimationSpec;
                    this.label = 1;
                    if (this.this$0.placementDeltaAnimation.snapTo(IntOffset.m7624boximpl(this.$totalDelta), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.this$0.onLayerPropertyChanged.invoke();
                }
                animationTarget = IntOffset.m7636minusqkQi6aY(((IntOffset) this.this$0.placementDeltaAnimation.getValue()).m7642unboximpl(), this.$totalDelta);
                animatable = this.this$0.placementDeltaAnimation;
                final LazyLayoutItemAnimation lazyLayoutItemAnimation = this.this$0;
                function1 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyLayoutItemAnimation$animatePlacementDelta$1.invokeSuspend$lambda$0(lazyLayoutItemAnimation, animationTarget, (Animatable) obj);
                    }
                };
                lazyLayoutItemAnimation$animatePlacementDelta$1 = this;
                this.L$0 = null;
                this.label = 2;
                if (animatable.animateTo(IntOffset.m7624boximpl(animationTarget), (4 & 2) != 0 ? animatable.defaultSpringSpec : finiteAnimationSpec, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : function1, lazyLayoutItemAnimation$animatePlacementDelta$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.this$0.setPlacementAnimationInProgress(false);
                this.this$0.isRunningMovingAwayAnimation = false;
                return Unit.INSTANCE;
            case 1:
                finiteAnimationSpec = (FiniteAnimationSpec) this.L$0;
                ResultKt.throwOnFailure($result);
                this.this$0.onLayerPropertyChanged.invoke();
                animationTarget = IntOffset.m7636minusqkQi6aY(((IntOffset) this.this$0.placementDeltaAnimation.getValue()).m7642unboximpl(), this.$totalDelta);
                animatable = this.this$0.placementDeltaAnimation;
                final LazyLayoutItemAnimation lazyLayoutItemAnimation2 = this.this$0;
                function1 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyLayoutItemAnimation$animatePlacementDelta$1.invokeSuspend$lambda$0(lazyLayoutItemAnimation2, animationTarget, (Animatable) obj);
                    }
                };
                lazyLayoutItemAnimation$animatePlacementDelta$1 = this;
                this.L$0 = null;
                this.label = 2;
                if (animatable.animateTo(IntOffset.m7624boximpl(animationTarget), (4 & 2) != 0 ? animatable.defaultSpringSpec : finiteAnimationSpec, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : function1, lazyLayoutItemAnimation$animatePlacementDelta$1) == coroutine_suspended) {
                }
                this.this$0.setPlacementAnimationInProgress(false);
                this.this$0.isRunningMovingAwayAnimation = false;
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                this.this$0.setPlacementAnimationInProgress(false);
                this.this$0.isRunningMovingAwayAnimation = false;
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit invokeSuspend$lambda$0(LazyLayoutItemAnimation this$0, long $animationTarget, Animatable $this$animateTo) {
        this$0.m977setPlacementDeltagyyYBs(IntOffset.m7636minusqkQi6aY(((IntOffset) $this$animateTo.getValue()).m7642unboximpl(), $animationTarget));
        this$0.onLayerPropertyChanged.invoke();
        return Unit.INSTANCE;
    }
}
