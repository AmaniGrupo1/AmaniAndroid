package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: compiled from: BasicTextField.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\u0003H\u0016¨\u0006\n"}, d2 = {"androidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1", "Landroidx/compose/foundation/text/input/internal/selection/TextToolbarHandler;", "showTextToolbar", "", "selectionState", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;", "rect", "Landroidx/compose/ui/geometry/Rect;", "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hideTextToolbar", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 implements TextToolbarHandler {
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ TextToolbar $currentTextToolbar;

    BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1(TextToolbar $currentTextToolbar, CoroutineScope $coroutineScope) {
        this.$currentTextToolbar = $currentTextToolbar;
        this.$coroutineScope = $coroutineScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object showTextToolbar(TextFieldSelectionState selectionState, Rect rect, Continuation<? super Unit> continuation) {
        BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1;
        Rect rect2;
        TextToolbar textToolbar;
        final TextFieldSelectionState $this$showTextToolbar_u24lambda_u240;
        final CoroutineScope coroutineScope;
        Function0<Unit> function0;
        Function0<Unit> function02;
        Function0<Unit> function03;
        Function0<Unit> function04;
        if (continuation instanceof BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) {
            basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 = (BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) continuation;
            if ((basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label & Integer.MIN_VALUE) != 0) {
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label -= Integer.MIN_VALUE;
            } else {
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1(this, continuation);
            }
        }
        Object $result = basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                rect2 = rect;
                textToolbar = this.$currentTextToolbar;
                CoroutineScope coroutineScope2 = this.$coroutineScope;
                $this$showTextToolbar_u24lambda_u240 = selectionState;
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$0 = rect2;
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$1 = textToolbar;
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$2 = coroutineScope2;
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$3 = $this$showTextToolbar_u24lambda_u240;
                basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.label = 1;
                if (selectionState.updateClipboardEntry(basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                coroutineScope = coroutineScope2;
                break;
                break;
            case 1:
                $this$showTextToolbar_u24lambda_u240 = (TextFieldSelectionState) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$3;
                coroutineScope = (CoroutineScope) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$2;
                textToolbar = (TextToolbar) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$1;
                rect2 = (Rect) basicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$1.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        boolean enabled$iv = $this$showTextToolbar_u24lambda_u240.canShowCopyMenuItem();
        final TextToolbarState desiredState$iv = TextToolbarState.None;
        final TextFieldSelectionState $this$menuItem$iv = $this$showTextToolbar_u24lambda_u240;
        Function0<Unit> function05 = null;
        if (!enabled$iv) {
            function0 = null;
        } else {
            function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$1$1($this$showTextToolbar_u24lambda_u240, null), 1, null);
                    $this$menuItem$iv.updateTextToolbarState(desiredState$iv);
                }
            };
        }
        boolean enabled$iv2 = $this$showTextToolbar_u24lambda_u240.canShowPasteMenuItem();
        final TextToolbarState desiredState$iv2 = TextToolbarState.None;
        final TextFieldSelectionState $this$menuItem$iv2 = $this$showTextToolbar_u24lambda_u240;
        if (!enabled$iv2) {
            function02 = null;
        } else {
            function02 = new Function0<Unit>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$2$1($this$showTextToolbar_u24lambda_u240, null), 1, null);
                    $this$menuItem$iv2.updateTextToolbarState(desiredState$iv2);
                }
            };
        }
        boolean enabled$iv3 = $this$showTextToolbar_u24lambda_u240.canShowCutMenuItem();
        final TextToolbarState desiredState$iv3 = TextToolbarState.None;
        final TextFieldSelectionState $this$menuItem$iv3 = $this$showTextToolbar_u24lambda_u240;
        if (!enabled$iv3) {
            function03 = null;
        } else {
            function03 = new Function0<Unit>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$3
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$2$3$1($this$showTextToolbar_u24lambda_u240, null), 1, null);
                    $this$menuItem$iv3.updateTextToolbarState(desiredState$iv3);
                }
            };
        }
        boolean enabled$iv4 = $this$showTextToolbar_u24lambda_u240.canShowSelectAllMenuItem();
        final TextToolbarState desiredState$iv4 = TextToolbarState.Selection;
        final TextFieldSelectionState $this$menuItem$iv4 = $this$showTextToolbar_u24lambda_u240;
        if (!enabled$iv4) {
            function04 = null;
        } else {
            function04 = new Function0<Unit>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$4
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    $this$showTextToolbar_u24lambda_u240.selectAll();
                    $this$menuItem$iv4.updateTextToolbarState(desiredState$iv4);
                }
            };
        }
        boolean enabled$iv5 = $this$showTextToolbar_u24lambda_u240.canShowAutofillMenuItem();
        final TextToolbarState desiredState$iv5 = TextToolbarState.None;
        final TextFieldSelectionState $this$menuItem$iv5 = $this$showTextToolbar_u24lambda_u240;
        if (enabled$iv5) {
            function05 = new Function0<Unit>() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1$showTextToolbar$lambda$0$$inlined$menuItem$5
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    $this$showTextToolbar_u24lambda_u240.autofill();
                    $this$menuItem$iv5.updateTextToolbarState(desiredState$iv5);
                }
            };
        }
        textToolbar.showMenu(rect2, function0, function02, function03, function04, function05);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextToolbarHandler
    public void hideTextToolbar() {
        if (this.$currentTextToolbar.getStatus() == TextToolbarStatus.Shown) {
            this.$currentTextToolbar.hide();
        }
    }
}
