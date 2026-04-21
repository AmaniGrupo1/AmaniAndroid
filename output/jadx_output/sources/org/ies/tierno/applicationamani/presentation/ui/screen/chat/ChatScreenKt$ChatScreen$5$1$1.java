package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;

/* JADX INFO: compiled from: ChatScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class ChatScreenKt$ChatScreen$5$1$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    ChatScreenKt$ChatScreen$5$1$1(Object obj) {
        super(1, obj, ChatViewModel.class, "onInputChanged", "onInputChanged(Ljava/lang/String;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((ChatViewModel) this.receiver).onInputChanged(p0);
    }
}
