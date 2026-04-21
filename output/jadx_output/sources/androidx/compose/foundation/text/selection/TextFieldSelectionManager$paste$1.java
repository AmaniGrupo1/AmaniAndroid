package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TextFieldSelectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1", f = "TextFieldSelectionManager.kt", i = {}, l = {923, 923}, m = "invokeSuspend", n = {}, s = {}, v = 1)
final class TextFieldSelectionManager$paste$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionManager$paste$1(TextFieldSelectionManager textFieldSelectionManager, Continuation<? super TextFieldSelectionManager$paste$1> continuation) {
        super(2, continuation);
        this.this$0 = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TextFieldSelectionManager$paste$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TextFieldSelectionManager$paste$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        ClipEntry clipEntry;
        AnnotatedString text;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Clipboard clipboard = this.this$0.getClipboard();
                if (clipboard != null) {
                    this.label = 1;
                    Object clipEntry2 = clipboard.getClipEntry(this);
                    if (clipEntry2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result2 = $result;
                    $result = clipEntry2;
                    clipEntry = (ClipEntry) $result;
                    if (clipEntry != null) {
                        this.label = 2;
                        $result = ClipboardUtils_androidKt.readAnnotatedString(clipEntry, this);
                        if ($result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        text = (AnnotatedString) $result;
                        if (text != null) {
                            this.this$0.paste$foundation(text);
                            return Unit.INSTANCE;
                        }
                    }
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                $result2 = $result;
                clipEntry = (ClipEntry) $result;
                if (clipEntry != null) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                $result2 = $result;
                text = (AnnotatedString) $result;
                if (text != null) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
