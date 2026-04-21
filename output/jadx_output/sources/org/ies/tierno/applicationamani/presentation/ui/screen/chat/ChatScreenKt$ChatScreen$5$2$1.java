package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;

/* JADX INFO: compiled from: ChatScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class ChatScreenKt$ChatScreen$5$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    ChatScreenKt$ChatScreen$5$2$1(Object obj) {
        super(0, obj, ChatViewModel.class, "sendMessage", "sendMessage()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((ChatViewModel) this.receiver).sendMessage();
    }
}
