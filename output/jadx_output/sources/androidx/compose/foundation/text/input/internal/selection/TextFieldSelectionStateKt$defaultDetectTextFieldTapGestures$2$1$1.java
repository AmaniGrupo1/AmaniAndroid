package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TextFieldSelectionState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1", f = "TextFieldSelectionState.kt", i = {}, l = {1808, 1816}, m = "invokeSuspend", n = {}, s = {}, v = 1)
final class TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ PressGestureScope $$this$detectTapAndPress;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $offset;
    final /* synthetic */ TextFieldSelectionState $this_defaultDetectTextFieldTapGestures;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1(PressGestureScope pressGestureScope, TextFieldSelectionState textFieldSelectionState, long j, MutableInteractionSource mutableInteractionSource, Continuation<? super TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1> continuation) {
        super(2, continuation);
        this.$$this$detectTapAndPress = pressGestureScope;
        this.$this_defaultDetectTextFieldTapGestures = textFieldSelectionState;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1 = new TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1(this.$$this$detectTapAndPress, this.$this_defaultDetectTextFieldTapGestures, this.$offset, this.$interactionSource, continuation);
        textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1.L$0 = obj;
        return textFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: TextFieldSelectionState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionStateKt$defaultDetectTextFieldTapGestures$2$1$1$1", f = "TextFieldSelectionState.kt", i = {1}, l = {1800, 1805}, m = "invokeSuspend", n = {"press"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ long $offset;
        final /* synthetic */ TextFieldSelectionState $this_defaultDetectTextFieldTapGestures;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextFieldSelectionState textFieldSelectionState, long j, MutableInteractionSource mutableInteractionSource, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_defaultDetectTextFieldTapGestures = textFieldSelectionState;
            this.$offset = j;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_defaultDetectTextFieldTapGestures, this.$offset, this.$interactionSource, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0069 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            TextFieldSelectionState textFieldSelectionState;
            PressInteraction.Press press;
            PressInteraction.Press press2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PressInteraction.Press oldValue = this.$this_defaultDetectTextFieldTapGestures.getPressInteraction();
                    if (oldValue != null) {
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        TextFieldSelectionState textFieldSelectionState2 = this.$this_defaultDetectTextFieldTapGestures;
                        PressInteraction.Cancel interaction = new PressInteraction.Cancel(oldValue);
                        this.L$0 = textFieldSelectionState2;
                        this.label = 1;
                        if (mutableInteractionSource.emit(interaction, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        textFieldSelectionState = textFieldSelectionState2;
                        textFieldSelectionState.setPressInteraction(null);
                    }
                    press = new PressInteraction.Press(this.$offset, null);
                    this.L$0 = press;
                    this.label = 2;
                    if (this.$interactionSource.emit(press, this) != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    press2 = press;
                    this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(press2);
                    return Unit.INSTANCE;
                case 1:
                    textFieldSelectionState = (TextFieldSelectionState) this.L$0;
                    ResultKt.throwOnFailure($result);
                    textFieldSelectionState.setPressInteraction(null);
                    press = new PressInteraction.Press(this.$offset, null);
                    this.L$0 = press;
                    this.label = 2;
                    if (this.$interactionSource.emit(press, this) != coroutine_suspended) {
                    }
                    break;
                case 2:
                    press2 = (PressInteraction.Press) this.L$0;
                    ResultKt.throwOnFailure($result);
                    this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(press2);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        PressInteraction.Press pressInteraction;
        PressInteraction endInteraction;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new AnonymousClass1(this.$this_defaultDetectTextFieldTapGestures, this.$offset, this.$interactionSource, null), 3, null);
                this.label = 1;
                Object objTryAwaitRelease = this.$$this$detectTapAndPress.tryAwaitRelease(this);
                if (objTryAwaitRelease == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result2 = $result;
                $result = objTryAwaitRelease;
                boolean success = ((Boolean) $result).booleanValue();
                pressInteraction = this.$this_defaultDetectTextFieldTapGestures.getPressInteraction();
                if (pressInteraction != null) {
                    MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                    if (success) {
                        endInteraction = new PressInteraction.Release(pressInteraction);
                    } else {
                        endInteraction = new PressInteraction.Cancel(pressInteraction);
                    }
                    this.label = 2;
                    if (mutableInteractionSource.emit(endInteraction, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = $result2;
                }
                this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(null);
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                $result2 = $result;
                boolean success2 = ((Boolean) $result).booleanValue();
                pressInteraction = this.$this_defaultDetectTextFieldTapGestures.getPressInteraction();
                if (pressInteraction != null) {
                }
                this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(null);
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                this.$this_defaultDetectTextFieldTapGestures.setPressInteraction(null);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
