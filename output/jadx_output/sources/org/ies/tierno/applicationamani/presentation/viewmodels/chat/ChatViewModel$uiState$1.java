package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import androidx.media3.extractor.ts.PsExtractor;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;
import org.ies.tierno.applicationamani.domain.models.Message;

/* JADX INFO: compiled from: ChatViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\n"}, d2 = {"<anonymous>", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;", "messages", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "psychologist", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;", "loading", "", "error", "", "input"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$uiState$1", f = "ChatViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ChatViewModel$uiState$1 extends SuspendLambda implements Function6<List<? extends Message>, PsychologistInfo, Boolean, String, String, Continuation<? super ChatUiState>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ ChatViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatViewModel$uiState$1(ChatViewModel chatViewModel, Continuation<? super ChatViewModel$uiState$1> continuation) {
        super(6, continuation);
        this.this$0 = chatViewModel;
    }

    @Override // kotlin.jvm.functions.Function6
    public /* bridge */ /* synthetic */ Object invoke(List<? extends Message> list, PsychologistInfo psychologistInfo, Boolean bool, String str, String str2, Continuation<? super ChatUiState> continuation) {
        return invoke((List<Message>) list, psychologistInfo, bool.booleanValue(), str, str2, continuation);
    }

    public final Object invoke(List<Message> list, PsychologistInfo psychologistInfo, boolean z, String str, String str2, Continuation<? super ChatUiState> continuation) {
        ChatViewModel$uiState$1 chatViewModel$uiState$1 = new ChatViewModel$uiState$1(this.this$0, continuation);
        chatViewModel$uiState$1.L$0 = list;
        chatViewModel$uiState$1.L$1 = psychologistInfo;
        chatViewModel$uiState$1.Z$0 = z;
        chatViewModel$uiState$1.L$2 = str;
        chatViewModel$uiState$1.L$3 = str2;
        return chatViewModel$uiState$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        List messages = (List) this.L$0;
        PsychologistInfo psychologist = (PsychologistInfo) this.L$1;
        boolean loading = this.Z$0;
        String error = (String) this.L$2;
        String input = (String) this.L$3;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                return new ChatUiState(messages, psychologist, String.valueOf(this.this$0.currentUserId), input, loading, error, false, false, PsExtractor.AUDIO_STREAM, null);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
