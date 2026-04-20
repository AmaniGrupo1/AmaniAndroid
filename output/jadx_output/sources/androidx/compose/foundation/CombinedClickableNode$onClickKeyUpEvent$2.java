package androidx.compose.foundation;

import androidx.compose.foundation.CombinedClickableNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: Clickable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.CombinedClickableNode$onClickKeyUpEvent$2", f = "Clickable.kt", i = {0, 0}, l = {1194, 1198}, m = "invokeSuspend", n = {"minTime", "timeout"}, s = {"J$0", "J$1"}, v = 1)
final class CombinedClickableNode$onClickKeyUpEvent$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $keyCode;
    long J$0;
    long J$1;
    int label;
    final /* synthetic */ CombinedClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CombinedClickableNode$onClickKeyUpEvent$2(CombinedClickableNode combinedClickableNode, long j, Continuation<? super CombinedClickableNode$onClickKeyUpEvent$2> continuation) {
        super(2, continuation);
        this.this$0 = combinedClickableNode;
        this.$keyCode = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CombinedClickableNode$onClickKeyUpEvent$2(this.this$0, this.$keyCode, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombinedClickableNode$onClickKeyUpEvent$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        long minTime;
        long timeout;
        CombinedClickableNode.DoubleKeyClickState doubleKeyClickState;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ViewConfiguration configuration = (ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, CompositionLocalsKt.getLocalViewConfiguration());
                minTime = configuration.getDoubleTapMinTimeMillis();
                timeout = configuration.getDoubleTapTimeoutMillis();
                this.J$0 = minTime;
                this.J$1 = timeout;
                this.label = 1;
                if (DelayKt.delay(minTime, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                doubleKeyClickState = (CombinedClickableNode.DoubleKeyClickState) this.this$0.doubleKeyClickStates.get(this.$keyCode);
                if (doubleKeyClickState != null) {
                    doubleKeyClickState.setDoubleTapMinTimeMillisElapsed(true);
                }
                this.label = 2;
                if (DelayKt.delay(timeout - minTime, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.this$0.getOnClick().invoke();
                return Unit.INSTANCE;
            case 1:
                timeout = this.J$1;
                minTime = this.J$0;
                ResultKt.throwOnFailure($result);
                doubleKeyClickState = (CombinedClickableNode.DoubleKeyClickState) this.this$0.doubleKeyClickStates.get(this.$keyCode);
                if (doubleKeyClickState != null) {
                }
                this.label = 2;
                if (DelayKt.delay(timeout - minTime, this) == coroutine_suspended) {
                }
                this.this$0.getOnClick().invoke();
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                this.this$0.getOnClick().invoke();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
