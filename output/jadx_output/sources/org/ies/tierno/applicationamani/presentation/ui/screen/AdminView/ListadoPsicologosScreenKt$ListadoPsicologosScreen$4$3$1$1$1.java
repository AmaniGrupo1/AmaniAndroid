package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1", f = "ListadoPsicologosScreen.kt", i = {}, l = {202}, m = "invokeSuspend", n = {}, s = {})
final class ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $mostrarDialogoBaja$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1(SnackbarHostState snackbarHostState, MutableState<Boolean> mutableState, Continuation<? super ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$mostrarDialogoBaja$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1(this.$snackbarHostState, this.$mostrarDialogoBaja$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$3$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ListadoPsicologosScreenKt.ListadoPsicologosScreen$lambda$7(this.$mostrarDialogoBaja$delegate, false);
                this.label = 1;
                if (SnackbarHostState.showSnackbar$default(this.$snackbarHostState, "Psicólogo dado de baja", null, false, null, this, 14, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
