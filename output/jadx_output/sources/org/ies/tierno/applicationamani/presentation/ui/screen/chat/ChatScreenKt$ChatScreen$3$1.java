package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import androidx.core.location.LocationRequestCompat;
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
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatUiState;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;

/* JADX INFO: compiled from: ChatScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$3$1", f = "ChatScreen.kt", i = {0, 0}, l = {LocationRequestCompat.QUALITY_LOW_POWER}, m = "invokeSuspend", n = {"error\\1", "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0"}, s = {"L$1", "I$0"})
final class ChatScreenKt$ChatScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    final /* synthetic */ State<ChatUiState> $uiState$delegate;
    final /* synthetic */ ChatViewModel $viewModel;
    int I$0;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatScreenKt$ChatScreen$3$1(State<ChatUiState> state, SnackbarHostState snackbarHostState, ChatViewModel chatViewModel, Continuation<? super ChatScreenKt$ChatScreen$3$1> continuation) {
        super(2, continuation);
        this.$uiState$delegate = state;
        this.$snackbarHostState = snackbarHostState;
        this.$viewModel = chatViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ChatScreenKt$ChatScreen$3$1(this.$uiState$delegate, this.$snackbarHostState, this.$viewModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ChatScreenKt$ChatScreen$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        ChatViewModel chatViewModel;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                String error = ChatScreenKt.ChatScreen$lambda$0(this.$uiState$delegate).getError();
                if (error != null) {
                    SnackbarHostState snackbarHostState = this.$snackbarHostState;
                    ChatViewModel chatViewModel2 = this.$viewModel;
                    this.L$0 = chatViewModel2;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(error);
                    this.I$0 = 0;
                    this.label = 1;
                    if (SnackbarHostState.showSnackbar$default(snackbarHostState, error, null, false, null, this, 14, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    chatViewModel = chatViewModel2;
                    chatViewModel.clearError();
                }
                return Unit.INSTANCE;
            case 1:
                int i = this.I$0;
                chatViewModel = (ChatViewModel) this.L$0;
                ResultKt.throwOnFailure($result);
                chatViewModel.clearError();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
