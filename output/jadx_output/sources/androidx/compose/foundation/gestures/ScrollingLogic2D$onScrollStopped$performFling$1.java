package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import androidx.media3.exoplayer.RendererCapabilities;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: Scrollable2D.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/unit/Velocity;", "velocity"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic2D$onScrollStopped$performFling$1", f = "Scrollable2D.kt", i = {0, 1, 1, 2, 2}, l = {378, 381, RendererCapabilities.DECODER_SUPPORT_MASK}, m = "invokeSuspend", n = {"velocity", "velocity", "available", "velocity", "velocityLeft"}, s = {"J$0", "J$0", "J$1", "J$0", "J$1"}, v = 1)
final class ScrollingLogic2D$onScrollStopped$performFling$1 extends SuspendLambda implements Function2<Velocity, Continuation<? super Velocity>, Object> {
    /* synthetic */ long J$0;
    long J$1;
    int label;
    final /* synthetic */ ScrollingLogic2D this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLogic2D$onScrollStopped$performFling$1(ScrollingLogic2D scrollingLogic2D, Continuation<? super ScrollingLogic2D$onScrollStopped$performFling$1> continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic2D;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollingLogic2D$onScrollStopped$performFling$1 scrollingLogic2D$onScrollStopped$performFling$1 = new ScrollingLogic2D$onScrollStopped$performFling$1(this.this$0, continuation);
        scrollingLogic2D$onScrollStopped$performFling$1.J$0 = ((Velocity) obj).getPackedValue();
        return scrollingLogic2D$onScrollStopped$performFling$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Velocity velocity, Continuation<? super Velocity> continuation) {
        return m600invokesFctU(velocity.getPackedValue(), continuation);
    }

    /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
    public final Object m600invokesFctU(long j, Continuation<? super Velocity> continuation) {
        return ((ScrollingLogic2D$onScrollStopped$performFling$1) create(Velocity.m7734boximpl(j), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) throws Throwable {
        Object $result2;
        Object $result3;
        long velocity;
        long available;
        Object objMo561doFlingAnimationQWom1Mo;
        Object $result4;
        long velocityLeft;
        Object objM5871dispatchPostFlingRZ2iAVY;
        Object $result5;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                long velocity2 = this.J$0;
                this.J$0 = velocity2;
                this.label = 1;
                Object objM5873dispatchPreFlingQWom1Mo = this.this$0.nestedScrollDispatcher.m5873dispatchPreFlingQWom1Mo(velocity2, this);
                if (objM5873dispatchPreFlingQWom1Mo == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result2 = $result;
                $result3 = objM5873dispatchPreFlingQWom1Mo;
                velocity = velocity2;
                long preConsumedByParent = ((Velocity) $result3).getPackedValue();
                available = Velocity.m7746minusAH228Gc(velocity, preConsumedByParent);
                this.J$0 = velocity;
                this.J$1 = available;
                this.label = 2;
                objMo561doFlingAnimationQWom1Mo = this.this$0.mo561doFlingAnimationQWom1Mo(available, this);
                if (objMo561doFlingAnimationQWom1Mo != coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result4 = objMo561doFlingAnimationQWom1Mo;
                velocityLeft = ((Velocity) $result4).getPackedValue();
                this.J$0 = velocity;
                this.J$1 = velocityLeft;
                this.label = 3;
                objM5871dispatchPostFlingRZ2iAVY = this.this$0.nestedScrollDispatcher.m5871dispatchPostFlingRZ2iAVY(Velocity.m7746minusAH228Gc(available, velocityLeft), velocityLeft, this);
                if (objM5871dispatchPostFlingRZ2iAVY != coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result5 = objM5871dispatchPostFlingRZ2iAVY;
                long consumedPost = ((Velocity) $result5).getPackedValue();
                long totalLeft = Velocity.m7746minusAH228Gc(velocityLeft, consumedPost);
                return Velocity.m7734boximpl(Velocity.m7746minusAH228Gc(velocity, totalLeft));
            case 1:
                $result3 = $result;
                long velocity3 = this.J$0;
                ResultKt.throwOnFailure($result3);
                velocity = velocity3;
                $result2 = $result3;
                long preConsumedByParent2 = ((Velocity) $result3).getPackedValue();
                available = Velocity.m7746minusAH228Gc(velocity, preConsumedByParent2);
                this.J$0 = velocity;
                this.J$1 = available;
                this.label = 2;
                objMo561doFlingAnimationQWom1Mo = this.this$0.mo561doFlingAnimationQWom1Mo(available, this);
                if (objMo561doFlingAnimationQWom1Mo != coroutine_suspended) {
                }
                break;
            case 2:
                long available2 = this.J$1;
                long velocity4 = this.J$0;
                ResultKt.throwOnFailure($result);
                available = available2;
                velocity = velocity4;
                $result4 = $result;
                velocityLeft = ((Velocity) $result4).getPackedValue();
                this.J$0 = velocity;
                this.J$1 = velocityLeft;
                this.label = 3;
                objM5871dispatchPostFlingRZ2iAVY = this.this$0.nestedScrollDispatcher.m5871dispatchPostFlingRZ2iAVY(Velocity.m7746minusAH228Gc(available, velocityLeft), velocityLeft, this);
                if (objM5871dispatchPostFlingRZ2iAVY != coroutine_suspended) {
                }
                break;
            case 3:
                $result5 = $result;
                long velocityLeft2 = this.J$1;
                velocity = this.J$0;
                ResultKt.throwOnFailure($result5);
                velocityLeft = velocityLeft2;
                long consumedPost2 = ((Velocity) $result5).getPackedValue();
                long totalLeft2 = Velocity.m7746minusAH228Gc(velocityLeft, consumedPost2);
                return Velocity.m7734boximpl(Velocity.m7746minusAH228Gc(velocity, totalLeft2));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
