package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.media3.exoplayer.RendererCapabilities;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: LazyLayoutPager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;", "Landroidx/compose/foundation/gestures/FlingBehavior;", "originalFlingBehavior", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "pagerState", "Landroidx/compose/foundation/pager/PagerState;", "<init>", "(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V", "getOriginalFlingBehavior", "()Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "getPagerState", "()Landroidx/compose/foundation/pager/PagerState;", "performFling", "", "Landroidx/compose/foundation/gestures/ScrollScope;", "initialVelocity", "(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class PagerWrapperFlingBehavior implements FlingBehavior {
    private final TargetedFlingBehavior originalFlingBehavior;
    private final PagerState pagerState;

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1, reason: invalid class name */
    /* JADX INFO: compiled from: LazyLayoutPager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.pager.PagerWrapperFlingBehavior", f = "LazyLayoutPager.kt", i = {}, l = {RendererCapabilities.DECODER_SUPPORT_MASK}, m = "performFling", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PagerWrapperFlingBehavior.this.performFling(null, 0.0f, this);
        }
    }

    public PagerWrapperFlingBehavior(TargetedFlingBehavior originalFlingBehavior, PagerState pagerState) {
        this.originalFlingBehavior = originalFlingBehavior;
        this.pagerState = pagerState;
    }

    public final TargetedFlingBehavior getOriginalFlingBehavior() {
        return this.originalFlingBehavior;
    }

    public final PagerState getPagerState() {
        return this.pagerState;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object performFling(final ScrollScope $this$performFling, float initialVelocity, Continuation<? super Float> continuation) {
        AnonymousClass1 anonymousClass1;
        final PagerWrapperFlingBehavior pagerWrapperFlingBehavior;
        Object objPerformFling;
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
                pagerWrapperFlingBehavior = this;
                TargetedFlingBehavior $this$performFling_u24lambda_u240 = pagerWrapperFlingBehavior.originalFlingBehavior;
                Function1<? super Float, Unit> function1 = new Function1() { // from class: androidx.compose.foundation.pager.PagerWrapperFlingBehavior$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PagerWrapperFlingBehavior.performFling$lambda$0$0(this.f$0, $this$performFling, ((Float) obj).floatValue());
                    }
                };
                anonymousClass1.label = 1;
                objPerformFling = $this$performFling_u24lambda_u240.performFling($this$performFling, initialVelocity, function1, anonymousClass1);
                if (objPerformFling == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                pagerWrapperFlingBehavior = this;
                objPerformFling = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        float resultVelocity = ((Number) objPerformFling).floatValue();
        if (!(pagerWrapperFlingBehavior.pagerState.getCurrentPageOffsetFraction() == 0.0f) && Math.abs(pagerWrapperFlingBehavior.pagerState.getCurrentPageOffsetFraction()) < 0.001d) {
            PagerState.requestScrollToPage$default(pagerWrapperFlingBehavior.pagerState, pagerWrapperFlingBehavior.pagerState.getCurrentPage(), 0.0f, 2, null);
        } else {
            Boxing.boxFloat(pagerWrapperFlingBehavior.pagerState.getCurrentPageOffsetFraction());
        }
        return Boxing.boxFloat(resultVelocity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit performFling$lambda$0$0(PagerWrapperFlingBehavior this$0, ScrollScope $scope, float remainingScrollOffset) {
        float flingPageDisplacement;
        if (this$0.pagerState.getPageSizeWithSpacing$foundation() != 0) {
            flingPageDisplacement = remainingScrollOffset / this$0.pagerState.getPageSizeWithSpacing$foundation();
        } else {
            flingPageDisplacement = 0.0f;
        }
        int targetPage = MathKt.roundToInt(flingPageDisplacement) + this$0.pagerState.getCurrentPage();
        PagerState $this$performFling_u24lambda_u240_u240_u240 = this$0.pagerState;
        $this$performFling_u24lambda_u240_u240_u240.updateTargetPage($scope, targetPage);
        return Unit.INSTANCE;
    }
}
