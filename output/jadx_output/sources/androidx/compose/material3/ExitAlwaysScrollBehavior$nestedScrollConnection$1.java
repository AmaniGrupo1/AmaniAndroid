package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: compiled from: AppBar.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u000e"}, d2 = {"androidx/compose/material3/ExitAlwaysScrollBehavior$nestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", "source", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExitAlwaysScrollBehavior$nestedScrollConnection$1 implements NestedScrollConnection {
    final /* synthetic */ ExitAlwaysScrollBehavior this$0;

    ExitAlwaysScrollBehavior$nestedScrollConnection$1(ExitAlwaysScrollBehavior $receiver) {
        this.this$0 = $receiver;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long mo573onPostScrollDzOQY0M(long consumed, long available, int source) {
        if (!this.this$0.getCanScroll().invoke().booleanValue()) {
            return Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        BottomAppBarState state = this.this$0.getState();
        state.setContentOffset(state.getContentOffset() + Offset.m4453getYimpl(consumed));
        if (this.this$0.getState().getHeightOffset() == 0.0f) {
            if ((Offset.m4453getYimpl(consumed) == 0.0f) && Offset.m4453getYimpl(available) > 0.0f) {
                this.this$0.getState().setContentOffset(0.0f);
            }
        } else {
            if (this.this$0.getState().getHeightOffset() == this.this$0.getState().getHeightOffsetLimit()) {
            }
        }
        this.this$0.getState().setHeightOffset(this.this$0.getState().getHeightOffset() + Offset.m4453getYimpl(consumed));
        return Offset.INSTANCE.m4468getZeroF1C5BW0();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo572onPostFlingRZ2iAVY(long consumed, long j, Continuation<? super Velocity> continuation) {
        ExitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1 exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1;
        long available;
        Object objMo572onPostFlingRZ2iAVY;
        ExitAlwaysScrollBehavior$nestedScrollConnection$1 exitAlwaysScrollBehavior$nestedScrollConnection$1;
        long packedValue;
        Object obj;
        if (continuation instanceof ExitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1) {
            exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1 = (ExitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1) continuation;
            if ((exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1.label & Integer.MIN_VALUE) != 0) {
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1.label -= Integer.MIN_VALUE;
            } else {
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1 = new ExitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1(this, continuation);
            }
        }
        ExitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1 exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12 = exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$1;
        Object $result = exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                available = j;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.L$0 = this;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.J$0 = available;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.label = 1;
                objMo572onPostFlingRZ2iAVY = super.mo572onPostFlingRZ2iAVY(consumed, available, exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12);
                if (objMo572onPostFlingRZ2iAVY == coroutine_suspended) {
                    return coroutine_suspended;
                }
                exitAlwaysScrollBehavior$nestedScrollConnection$1 = this;
                packedValue = ((Velocity) objMo572onPostFlingRZ2iAVY).getPackedValue();
                BottomAppBarState state = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getState();
                float fM7744getYimpl = Velocity.m7744getYimpl(available);
                DecayAnimationSpec<Float> flingAnimationSpec = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getFlingAnimationSpec();
                AnimationSpec<Float> snapAnimationSpec = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getSnapAnimationSpec();
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.L$0 = null;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.J$0 = packedValue;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.label = 2;
                obj = AppBarKt.settleAppBarBottom(state, fM7744getYimpl, flingAnimationSpec, snapAnimationSpec, exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(packedValue, ((Velocity) obj).getPackedValue()));
            case 1:
                long available2 = exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.J$0;
                exitAlwaysScrollBehavior$nestedScrollConnection$1 = (ExitAlwaysScrollBehavior$nestedScrollConnection$1) exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.L$0;
                ResultKt.throwOnFailure($result);
                available = available2;
                objMo572onPostFlingRZ2iAVY = $result;
                packedValue = ((Velocity) objMo572onPostFlingRZ2iAVY).getPackedValue();
                BottomAppBarState state2 = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getState();
                float fM7744getYimpl2 = Velocity.m7744getYimpl(available);
                DecayAnimationSpec<Float> flingAnimationSpec2 = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getFlingAnimationSpec();
                AnimationSpec<Float> snapAnimationSpec2 = exitAlwaysScrollBehavior$nestedScrollConnection$1.this$0.getSnapAnimationSpec();
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.L$0 = null;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.J$0 = packedValue;
                exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.label = 2;
                obj = AppBarKt.settleAppBarBottom(state2, fM7744getYimpl2, flingAnimationSpec2, snapAnimationSpec2, exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12);
                if (obj == coroutine_suspended) {
                }
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(packedValue, ((Velocity) obj).getPackedValue()));
            case 2:
                packedValue = exitAlwaysScrollBehavior$nestedScrollConnection$1$onPostFling$12.J$0;
                ResultKt.throwOnFailure($result);
                obj = $result;
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(packedValue, ((Velocity) obj).getPackedValue()));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
