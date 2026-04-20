package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AgregaPsicologoScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1", f = "AgregaPsicologoScreen.kt", i = {0, 0}, l = {TsExtractor.TS_STREAM_TYPE_AC3}, m = "invokeSuspend", n = {"it\\1", "$i$a$-let-AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1$1\\1\\128\\0"}, s = {"L$0", "I$0"})
final class AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<String> $registerError$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int I$0;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1(State<String> state, SnackbarHostState snackbarHostState, Continuation<? super AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1> continuation) {
        super(2, continuation);
        this.$registerError$delegate = state;
        this.$snackbarHostState = snackbarHostState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1(this.$registerError$delegate, this.$snackbarHostState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AgregaPsicologoScreenKt$AgregaPsicologoScreen$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                String strAgregaPsicologoScreen$lambda$17 = AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$17(this.$registerError$delegate);
                if (strAgregaPsicologoScreen$lambda$17 != null) {
                    SnackbarHostState snackbarHostState = this.$snackbarHostState;
                    this.L$0 = SpillingKt.nullOutSpilledVariable(strAgregaPsicologoScreen$lambda$17);
                    this.I$0 = 0;
                    this.label = 1;
                    if (SnackbarHostState.showSnackbar$default(snackbarHostState, strAgregaPsicologoScreen$lambda$17, null, false, null, this, 14, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                break;
            case 1:
                int i = this.I$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
