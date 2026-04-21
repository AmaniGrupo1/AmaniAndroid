package androidx.navigation.compose;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.navigation.NavBackStackEntry;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: NavHost.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1", f = "NavHost.kt", i = {}, l = {659, 663}, m = "invokeSuspend", n = {}, s = {})
final class NavHostKt$NavHost$29$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ NavBackStackEntry $backStackEntry;
    final /* synthetic */ SeekableTransitionState<NavBackStackEntry> $transitionState;
    final /* synthetic */ float $value;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavHostKt$NavHost$29$1$1$1(float f, SeekableTransitionState<NavBackStackEntry> seekableTransitionState, NavBackStackEntry navBackStackEntry, Continuation<? super NavHostKt$NavHost$29$1$1$1> continuation) {
        super(2, continuation);
        this.$value = f;
        this.$transitionState = seekableTransitionState;
        this.$backStackEntry = navBackStackEntry;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NavHostKt$NavHost$29$1$1$1(this.$value, this.$transitionState, this.$backStackEntry, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NavHostKt$NavHost$29$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0042  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (this.$value > 0.0f) {
                    this.label = 1;
                    if (SeekableTransitionState.seekTo$default(this.$transitionState, this.$value, null, this, 2, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (this.$value == 0.0f) {
                    this.label = 2;
                    if (this.$transitionState.snapTo(this.$backStackEntry, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                if (this.$value == 0.0f) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
