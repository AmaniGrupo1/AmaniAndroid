package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.ViewConfiguration;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: SelectionGestures.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0000\u001a\"\u0010\b\u001a\u00020\u0007*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0080@¢\u0006\u0002\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0080@¢\u0006\u0002\u0010\u0014\u001a*\u0010\u0015\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0001H\u0082@¢\u0006\u0002\u0010\u0017\u001a*\u0010\u0018\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0013H\u0080@¢\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0013*\u00020\u0010H\u0082@¢\u0006\u0002\u0010\u001e\u001a \u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"STATIC_KEY", "", "updateSelectionTouchMode", "Landroidx/compose/ui/Modifier;", "updateTouchMode", "Lkotlin/Function1;", "", "", "awaitSelectionGestures", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "mouseSelectionObserver", "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;", "textDragObserver", "Landroidx/compose/foundation/text/TextDragObserver;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "touchSelectionFirstPress", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "observer", "downEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "touchSelectionSubsequentPress", "clicks", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mouseSelection", "clicksCounter", "Landroidx/compose/foundation/text/selection/ClicksCounter;", "down", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitDown", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "distanceIsTolerable", "viewConfiguration", "Landroidx/compose/ui/platform/ViewConfiguration;", "change1", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "change2", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SelectionGesturesKt {
    private static final int STATIC_KEY = 8675309;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1, reason: invalid class name */
    /* JADX INFO: compiled from: SelectionGestures.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", i = {0}, l = {340}, m = "awaitDown", n = {"$this$awaitDown"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.awaitDown(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$mouseSelection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SelectionGestures.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", i = {0, 0, 1, 1, 1}, l = {267, 294}, m = "mouseSelection", n = {"$this$mouseSelection", "observer", "$this$mouseSelection", "observer", "dragConsumed"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"}, v = 1)
    static final class C03321 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03321(Continuation<? super C03321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.mouseSelection(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionFirstPress$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SelectionGestures.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", i = {0, 0, 0, 1, 1}, l = {141, 145}, m = "touchSelectionFirstPress", n = {"$this$touchSelectionFirstPress", "observer", "firstDown", "$this$touchSelectionFirstPress", "observer"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"}, v = 1)
    static final class C03331 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03331(Continuation<? super C03331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.touchSelectionFirstPress(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$touchSelectionSubsequentPress$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SelectionGestures.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", i = {0, 0, 0, 0, 1, 1}, l = {193, 232}, m = "touchSelectionSubsequentPress", n = {"$this$touchSelectionSubsequentPress", "observer", "overSlop", "pointerId", "$this$touchSelectionSubsequentPress", "observer"}, s = {"L$0", "L$1", "L$2", "J$0", "L$0", "L$1"}, v = 1)
    static final class C03341 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03341(Continuation<? super C03341> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectionGesturesKt.touchSelectionSubsequentPress(null, null, null, 0, this);
        }
    }

    public static final Modifier updateSelectionTouchMode(Modifier $this$updateSelectionTouchMode, final Function1<? super Boolean, Unit> function1) {
        return SuspendingPointerInputFilterKt.pointerInput($this$updateSelectionTouchMode, Integer.valueOf(STATIC_KEY), new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt.updateSelectionTouchMode.1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: SelectionGestures.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1", f = "SelectionGestures.kt", i = {0}, l = {94}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope"}, s = {"L$0"}, v = 1)
            static final class C00401 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Function1<Boolean, Unit> $updateTouchMode;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00401(Function1<? super Boolean, Unit> function1, Continuation<? super C00401> continuation) {
                    super(2, continuation);
                    this.$updateTouchMode = function1;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C00401 c00401 = new C00401(this.$updateTouchMode, continuation);
                    c00401.L$0 = obj;
                    return c00401;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                    return ((C00401) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0037 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0038 -> B:12:0x003e). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object $result) {
                    AwaitPointerEventScope $this$awaitPointerEventScope;
                    C00401 c00401;
                    Object objAwaitPointerEvent;
                    Object $result2;
                    C00401 c004012;
                    AwaitPointerEventScope $this$awaitPointerEventScope2;
                    Object obj;
                    Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            $this$awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                            c00401 = this;
                            c00401.L$0 = $this$awaitPointerEventScope;
                            c00401.label = 1;
                            objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c00401);
                            if (objAwaitPointerEvent == $result3) {
                                return $result3;
                            }
                            Object obj2 = $result3;
                            $result2 = $result;
                            $result = objAwaitPointerEvent;
                            c004012 = c00401;
                            $this$awaitPointerEventScope2 = $this$awaitPointerEventScope;
                            obj = obj2;
                            PointerEvent event = (PointerEvent) $result;
                            c004012.$updateTouchMode.invoke(Boxing.boxBoolean(SelectionGestures_androidKt.isMouseOrTouchPad(event)));
                            $result = $result2;
                            $result3 = obj;
                            $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                            c00401 = c004012;
                            c00401.L$0 = $this$awaitPointerEventScope;
                            c00401.label = 1;
                            objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c00401);
                            if (objAwaitPointerEvent == $result3) {
                            }
                            break;
                        case 1:
                            AwaitPointerEventScope $this$awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                            ResultKt.throwOnFailure($result);
                            c004012 = this;
                            $this$awaitPointerEventScope2 = $this$awaitPointerEventScope3;
                            obj = $result3;
                            $result2 = $result;
                            PointerEvent event2 = (PointerEvent) $result;
                            c004012.$updateTouchMode.invoke(Boxing.boxBoolean(SelectionGestures_androidKt.isMouseOrTouchPad(event2)));
                            $result = $result2;
                            $result3 = obj;
                            $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                            c00401 = c004012;
                            c00401.L$0 = $this$awaitPointerEventScope;
                            c00401.label = 1;
                            objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(PointerEventPass.Initial, c00401);
                            if (objAwaitPointerEvent == $result3) {
                            }
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                Object objAwaitPointerEventScope = $this$pointerInput.awaitPointerEventScope(new C00401(function1, null), continuation);
                return objAwaitPointerEventScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitPointerEventScope : Unit.INSTANCE;
            }
        });
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2, reason: invalid class name */
    /* JADX INFO: compiled from: SelectionGestures.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2", f = "SelectionGestures.kt", i = {0}, l = {111, 119, 122, 124}, m = "invokeSuspend", n = {"$this$awaitEachGesture"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ClicksCounter $clicksCounter;
        final /* synthetic */ MouseSelectionObserver $mouseSelectionObserver;
        final /* synthetic */ TextDragObserver $textDragObserver;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ClicksCounter clicksCounter, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$clicksCounter = clicksCounter;
            this.$mouseSelectionObserver = mouseSelectionObserver;
            this.$textDragObserver = textDragObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$clicksCounter, this.$mouseSelectionObserver, this.$textDragObserver, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0092 A[SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object $result;
            AwaitPointerEventScope $this$awaitEachGesture;
            Object objAwaitDown;
            PointerEvent downEvent;
            boolean isPrecise;
            Object $result2;
            Object $result3;
            int index$iv$iv;
            int size;
            boolean z;
            Object $result4;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    $result = obj;
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = $this$awaitEachGesture;
                    this.label = 1;
                    objAwaitDown = SelectionGesturesKt.awaitDown($this$awaitEachGesture, this);
                    if (objAwaitDown == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    downEvent = (PointerEvent) objAwaitDown;
                    this.$clicksCounter.update(downEvent);
                    isPrecise = SelectionGestures_androidKt.isMouseOrTouchPad(downEvent);
                    if (isPrecise && PointerEvent_androidKt.m5983isPrimaryPressedaHzCxE(downEvent.getButtons())) {
                        List<PointerInputChange> changes = downEvent.getChanges();
                        index$iv$iv = 0;
                        size = changes.size();
                        while (true) {
                            if (index$iv$iv >= size) {
                                Object it$iv = changes.get(index$iv$iv);
                                PointerInputChange it = (PointerInputChange) it$iv;
                                z = false;
                                if (!it.isConsumed()) {
                                    index$iv$iv++;
                                }
                            } else {
                                z = true;
                            }
                        }
                        if (z) {
                            this.L$0 = null;
                            this.label = 2;
                            if (SelectionGesturesKt.mouseSelection($this$awaitEachGesture, this.$mouseSelectionObserver, this.$clicksCounter, downEvent, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result4 = $result;
                            Object $result5 = Unit.INSTANCE;
                            return $result5;
                        }
                    }
                    if (!isPrecise) {
                        int clicks = this.$clicksCounter.getClicks();
                        TextDragObserver textDragObserver = this.$textDragObserver;
                        if (clicks == 1) {
                            this.L$0 = null;
                            this.label = 3;
                            if (SelectionGesturesKt.touchSelectionFirstPress($this$awaitEachGesture, textDragObserver, downEvent, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result3 = $result;
                        } else {
                            this.L$0 = null;
                            this.label = 4;
                            if (SelectionGesturesKt.touchSelectionSubsequentPress($this$awaitEachGesture, textDragObserver, downEvent, this.$clicksCounter.getClicks(), this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result2 = $result;
                        }
                    }
                    Object $result52 = Unit.INSTANCE;
                    return $result52;
                case 1:
                    $result = obj;
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    objAwaitDown = $result;
                    downEvent = (PointerEvent) objAwaitDown;
                    this.$clicksCounter.update(downEvent);
                    isPrecise = SelectionGestures_androidKt.isMouseOrTouchPad(downEvent);
                    if (isPrecise) {
                        List<PointerInputChange> changes2 = downEvent.getChanges();
                        index$iv$iv = 0;
                        size = changes2.size();
                        while (true) {
                            if (index$iv$iv >= size) {
                            }
                            index$iv$iv++;
                        }
                        if (z) {
                        }
                    }
                    if (!isPrecise) {
                    }
                    Object $result522 = Unit.INSTANCE;
                    return $result522;
                case 2:
                    $result4 = obj;
                    ResultKt.throwOnFailure($result4);
                    Object $result5222 = Unit.INSTANCE;
                    return $result5222;
                case 3:
                    $result3 = obj;
                    ResultKt.throwOnFailure($result3);
                    Object $result52222 = Unit.INSTANCE;
                    return $result52222;
                case 4:
                    $result2 = obj;
                    ResultKt.throwOnFailure($result2);
                    Object $result522222 = Unit.INSTANCE;
                    return $result522222;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final Object awaitSelectionGestures(PointerInputScope $this$awaitSelectionGestures, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation<? super Unit> continuation) {
        ClicksCounter clicksCounter = new ClicksCounter($this$awaitSelectionGestures.getViewConfiguration());
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$awaitSelectionGestures, new AnonymousClass2(clicksCounter, mouseSelectionObserver, textDragObserver, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b5 A[Catch: CancellationException -> 0x00e8, TryCatch #1 {CancellationException -> 0x00e8, blocks: (B:32:0x00ac, B:34:0x00b5, B:36:0x00c8, B:38:0x00d6, B:39:0x00d9, B:40:0x00dd, B:41:0x00e2, B:18:0x004c, B:25:0x0077, B:27:0x007b, B:29:0x0085, B:21:0x0055), top: B:50:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e2 A[Catch: CancellationException -> 0x00e8, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x00e8, blocks: (B:32:0x00ac, B:34:0x00b5, B:36:0x00c8, B:38:0x00d6, B:39:0x00d9, B:40:0x00dd, B:41:0x00e2, B:18:0x004c, B:25:0x0077, B:27:0x007b, B:29:0x0085, B:21:0x0055), top: B:50:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object touchSelectionFirstPress(AwaitPointerEventScope $this$touchSelectionFirstPress, final TextDragObserver observer, PointerEvent downEvent, Continuation<? super Unit> continuation) {
        C03331 c03331;
        CancellationException c;
        TextDragObserver observer2;
        AwaitPointerEventScope $this$touchSelectionFirstPress2;
        PointerInputChange firstDown;
        Object obj;
        PointerInputChange longPress;
        Object objM473dragjO51t88;
        boolean dragCompletedWithUp;
        if (continuation instanceof C03331) {
            c03331 = (C03331) continuation;
            if ((c03331.label & Integer.MIN_VALUE) != 0) {
                c03331.label -= Integer.MIN_VALUE;
            } else {
                c03331 = new C03331(continuation);
            }
        }
        Object $result = c03331.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c03331.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PointerInputChange firstDown2 = (PointerInputChange) CollectionsKt.first((List) downEvent.getChanges());
                    long id = firstDown2.getId();
                    c03331.L$0 = $this$touchSelectionFirstPress;
                    c03331.L$1 = observer;
                    c03331.L$2 = firstDown2;
                    c03331.label = 1;
                    Object objM463awaitLongPressOrCancellationrnUCldI = DragGestureDetectorKt.m463awaitLongPressOrCancellationrnUCldI($this$touchSelectionFirstPress, id, c03331);
                    if (objM463awaitLongPressOrCancellationrnUCldI == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $this$touchSelectionFirstPress2 = $this$touchSelectionFirstPress;
                    firstDown = firstDown2;
                    obj = objM463awaitLongPressOrCancellationrnUCldI;
                    longPress = (PointerInputChange) obj;
                    if (longPress != null && distanceIsTolerable($this$touchSelectionFirstPress2.getViewConfiguration(), firstDown, longPress)) {
                        observer.mo1255onStart3MmeM6k(longPress.getPosition(), SelectionAdjustment.INSTANCE.getWord());
                        long id2 = longPress.getId();
                        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return SelectionGesturesKt.touchSelectionFirstPress$lambda$0(observer, (PointerInputChange) obj2);
                            }
                        };
                        c03331.L$0 = $this$touchSelectionFirstPress2;
                        c03331.L$1 = observer;
                        c03331.L$2 = null;
                        c03331.label = 2;
                        objM473dragjO51t88 = DragGestureDetectorKt.m473dragjO51t88($this$touchSelectionFirstPress2, id2, function1, c03331);
                        if (objM473dragjO51t88 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        dragCompletedWithUp = ((Boolean) objM473dragjO51t88).booleanValue();
                        if (dragCompletedWithUp) {
                            List<PointerInputChange> changes = $this$touchSelectionFirstPress2.getCurrentEvent().getChanges();
                            int size = changes.size();
                            for (int index$iv = 0; index$iv < size; index$iv++) {
                                Object item$iv = changes.get(index$iv);
                                PointerInputChange it = (PointerInputChange) item$iv;
                                if (PointerEventKt.changedToUp(it)) {
                                    it.consume();
                                }
                            }
                            observer.onStop();
                        } else {
                            observer.onCancel();
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    firstDown = (PointerInputChange) c03331.L$2;
                    observer = (TextDragObserver) c03331.L$1;
                    $this$touchSelectionFirstPress2 = (AwaitPointerEventScope) c03331.L$0;
                    ResultKt.throwOnFailure($result);
                    obj = $result;
                    longPress = (PointerInputChange) obj;
                    if (longPress != null) {
                        observer.mo1255onStart3MmeM6k(longPress.getPosition(), SelectionAdjustment.INSTANCE.getWord());
                        long id22 = longPress.getId();
                        Function1 function12 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return SelectionGesturesKt.touchSelectionFirstPress$lambda$0(observer, (PointerInputChange) obj2);
                            }
                        };
                        c03331.L$0 = $this$touchSelectionFirstPress2;
                        c03331.L$1 = observer;
                        c03331.L$2 = null;
                        c03331.label = 2;
                        objM473dragjO51t88 = DragGestureDetectorKt.m473dragjO51t88($this$touchSelectionFirstPress2, id22, function12, c03331);
                        if (objM473dragjO51t88 == coroutine_suspended) {
                        }
                        dragCompletedWithUp = ((Boolean) objM473dragjO51t88).booleanValue();
                        if (dragCompletedWithUp) {
                        }
                    }
                    return Unit.INSTANCE;
                case 2:
                    observer2 = (TextDragObserver) c03331.L$1;
                    AwaitPointerEventScope $this$touchSelectionFirstPress3 = (AwaitPointerEventScope) c03331.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        $this$touchSelectionFirstPress2 = $this$touchSelectionFirstPress3;
                        observer = observer2;
                        objM473dragjO51t88 = $result;
                        dragCompletedWithUp = ((Boolean) objM473dragjO51t88).booleanValue();
                        if (dragCompletedWithUp) {
                        }
                        return Unit.INSTANCE;
                    } catch (CancellationException e) {
                        c = e;
                        observer2.onCancel();
                        throw c;
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CancellationException e2) {
            c = e2;
            observer2 = observer;
        }
    }

    static final Unit touchSelectionFirstPress$lambda$0(TextDragObserver $observer, PointerInputChange it) {
        $observer.mo1254onDragk4lQ0M(PointerEventKt.positionChange(it));
        it.consume();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b7 A[Catch: CancellationException -> 0x0053, TryCatch #2 {CancellationException -> 0x0053, blocks: (B:18:0x004e, B:31:0x00b3, B:33:0x00b7, B:34:0x00b9, B:36:0x00bf, B:38:0x00c5, B:40:0x00c9, B:42:0x00cf, B:44:0x00d3, B:45:0x00d8), top: B:68:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf A[Catch: CancellationException -> 0x0053, TryCatch #2 {CancellationException -> 0x0053, blocks: (B:18:0x004e, B:31:0x00b3, B:33:0x00b7, B:34:0x00b9, B:36:0x00bf, B:38:0x00c5, B:40:0x00c9, B:42:0x00cf, B:44:0x00d3, B:45:0x00d8), top: B:68:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5 A[Catch: CancellationException -> 0x0053, TryCatch #2 {CancellationException -> 0x0053, blocks: (B:18:0x004e, B:31:0x00b3, B:33:0x00b7, B:34:0x00b9, B:36:0x00bf, B:38:0x00c5, B:40:0x00c9, B:42:0x00cf, B:44:0x00d3, B:45:0x00d8), top: B:68:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7 A[Catch: CancellationException -> 0x003d, TryCatch #1 {CancellationException -> 0x003d, blocks: (B:13:0x0037, B:49:0x00ee, B:51:0x00f7, B:53:0x010a, B:55:0x0118, B:56:0x011b, B:57:0x0120, B:58:0x0125), top: B:67:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0125 A[Catch: CancellationException -> 0x003d, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x003d, blocks: (B:13:0x0037, B:49:0x00ee, B:51:0x00f7, B:53:0x010a, B:55:0x0118, B:56:0x011b, B:57:0x0120, B:58:0x0125), top: B:67:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object touchSelectionSubsequentPress(AwaitPointerEventScope $this$touchSelectionSubsequentPress, TextDragObserver observer, PointerEvent downEvent, int clicks, Continuation<? super Unit> continuation) {
        C03341 c03341;
        CancellationException c;
        TextDragObserver observer2;
        Ref.LongRef overSlop;
        AwaitPointerEventScope $this$touchSelectionSubsequentPress2;
        final TextDragObserver observer3;
        long pointerId;
        Object obj;
        DownResolution downResolution;
        Object objM473dragjO51t88;
        AwaitPointerEventScope $this$touchSelectionSubsequentPress3;
        boolean dragCompletedWithUp;
        if (continuation instanceof C03341) {
            c03341 = (C03341) continuation;
            if ((c03341.label & Integer.MIN_VALUE) != 0) {
                c03341.label -= Integer.MIN_VALUE;
            } else {
                c03341 = new C03341(continuation);
            }
        }
        Object $result = c03341.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03341.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    PointerInputChange firstDown = (PointerInputChange) CollectionsKt.first((List) downEvent.getChanges());
                    long pointerId2 = firstDown.getId();
                    observer.mo1255onStart3MmeM6k(firstDown.getPosition(), clicks > 2 ? SelectionAdjustment.INSTANCE.getParagraph() : SelectionAdjustment.INSTANCE.getWord());
                    overSlop = new Ref.LongRef();
                    overSlop.element = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
                    long longPressTimeoutMillis = $this$touchSelectionSubsequentPress.getViewConfiguration().getLongPressTimeoutMillis();
                    SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 = new SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(pointerId2, overSlop, null);
                    c03341.L$0 = $this$touchSelectionSubsequentPress;
                    c03341.L$1 = observer;
                    c03341.L$2 = overSlop;
                    c03341.J$0 = pointerId2;
                    c03341.label = 1;
                    Object objWithTimeoutOrNull = $this$touchSelectionSubsequentPress.withTimeoutOrNull(longPressTimeoutMillis, selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1, c03341);
                    if (objWithTimeoutOrNull == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $this$touchSelectionSubsequentPress2 = $this$touchSelectionSubsequentPress;
                    observer3 = observer;
                    pointerId = pointerId2;
                    obj = objWithTimeoutOrNull;
                    downResolution = (DownResolution) obj;
                    if (downResolution == null) {
                        downResolution = DownResolution.Timeout;
                    }
                    if (downResolution != DownResolution.Cancel) {
                        observer3.onCancel();
                        return Unit.INSTANCE;
                    }
                    if (downResolution == DownResolution.Up) {
                        observer3.onStop();
                        return Unit.INSTANCE;
                    }
                    if (downResolution == DownResolution.Drag) {
                        observer3.mo1254onDragk4lQ0M(overSlop.element);
                    }
                    Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return SelectionGesturesKt.touchSelectionSubsequentPress$lambda$0(observer3, (PointerInputChange) obj2);
                        }
                    };
                    c03341.L$0 = $this$touchSelectionSubsequentPress2;
                    c03341.L$1 = observer3;
                    c03341.L$2 = null;
                    c03341.label = 2;
                    objM473dragjO51t88 = DragGestureDetectorKt.m473dragjO51t88($this$touchSelectionSubsequentPress2, pointerId, function1, c03341);
                    if (objM473dragjO51t88 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    observer2 = observer3;
                    $this$touchSelectionSubsequentPress3 = $this$touchSelectionSubsequentPress2;
                    dragCompletedWithUp = ((Boolean) objM473dragjO51t88).booleanValue();
                    if (dragCompletedWithUp) {
                        observer2.onCancel();
                    } else {
                        List<PointerInputChange> changes = $this$touchSelectionSubsequentPress3.getCurrentEvent().getChanges();
                        int size = changes.size();
                        for (int index$iv = 0; index$iv < size; index$iv++) {
                            Object item$iv = changes.get(index$iv);
                            PointerInputChange it = (PointerInputChange) item$iv;
                            if (PointerEventKt.changedToUp(it)) {
                                it.consume();
                            }
                        }
                        observer2.onStop();
                    }
                    return Unit.INSTANCE;
                } catch (CancellationException e) {
                    c = e;
                    observer2 = observer;
                    observer2.onCancel();
                    throw c;
                }
            case 1:
                pointerId = c03341.J$0;
                overSlop = (Ref.LongRef) c03341.L$2;
                observer3 = (TextDragObserver) c03341.L$1;
                $this$touchSelectionSubsequentPress2 = (AwaitPointerEventScope) c03341.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    obj = $result;
                    downResolution = (DownResolution) obj;
                    if (downResolution == null) {
                    }
                    if (downResolution != DownResolution.Cancel) {
                    }
                } catch (CancellationException e2) {
                    c = e2;
                    observer2 = observer3;
                    observer2.onCancel();
                    throw c;
                }
                break;
            case 2:
                observer2 = (TextDragObserver) c03341.L$1;
                $this$touchSelectionSubsequentPress3 = (AwaitPointerEventScope) c03341.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objM473dragjO51t88 = $result;
                    dragCompletedWithUp = ((Boolean) objM473dragjO51t88).booleanValue();
                    if (dragCompletedWithUp) {
                    }
                    return Unit.INSTANCE;
                } catch (CancellationException e3) {
                    c = e3;
                    observer2.onCancel();
                    throw c;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit touchSelectionSubsequentPress$lambda$0(TextDragObserver $observer, PointerInputChange it) {
        $observer.mo1254onDragk4lQ0M(PointerEventKt.positionChange(it));
        it.consume();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009b A[Catch: all -> 0x004f, TryCatch #1 {all -> 0x004f, blocks: (B:18:0x004a, B:30:0x0092, B:32:0x009b, B:34:0x00ae, B:36:0x00bc), top: B:76:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014e A[Catch: all -> 0x003f, TryCatch #2 {all -> 0x003f, blocks: (B:13:0x0039, B:58:0x012e, B:60:0x0137, B:62:0x013b, B:64:0x014e, B:66:0x015c, B:51:0x00fe, B:54:0x0110), top: B:78:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object mouseSelection(AwaitPointerEventScope $this$mouseSelection, final MouseSelectionObserver observer, ClicksCounter clicksCounter, PointerEvent down, Continuation<? super Unit> continuation) throws Throwable {
        C03321 c03321;
        final SelectionAdjustment selectionAdjustment;
        Object objM473dragjO51t88;
        AwaitPointerEventScope $this$mouseSelection2;
        Ref.BooleanRef dragConsumed;
        Throwable th;
        MouseSelectionObserver observer2;
        Object objM473dragjO51t882;
        AwaitPointerEventScope $this$mouseSelection3;
        boolean shouldConsumeUp;
        boolean shouldConsumeUp2;
        int index$iv;
        int size;
        if (continuation instanceof C03321) {
            c03321 = (C03321) continuation;
            if ((c03321.label & Integer.MIN_VALUE) != 0) {
                c03321.label -= Integer.MIN_VALUE;
            } else {
                c03321 = new C03321(continuation);
            }
        }
        Object $result = c03321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c03321.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PointerInputChange downChange = down.getChanges().get(0);
                    if (PointerEvent_androidKt.m5986isShiftPressed5xRPYO0(down.getKeyboardModifiers())) {
                        boolean started = observer.mo1514onExtendk4lQ0M(downChange.getPosition());
                        if (started) {
                            try {
                                downChange.consume();
                                long id = downChange.getId();
                                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$$ExternalSyntheticLambda0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return SelectionGesturesKt.mouseSelection$lambda$0(observer, (PointerInputChange) obj);
                                    }
                                };
                                c03321.L$0 = $this$mouseSelection;
                                c03321.L$1 = observer;
                                c03321.label = 1;
                                objM473dragjO51t882 = DragGestureDetectorKt.m473dragjO51t88($this$mouseSelection, id, function1, c03321);
                                if (objM473dragjO51t882 == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $this$mouseSelection3 = $this$mouseSelection;
                                observer2 = observer;
                                shouldConsumeUp = ((Boolean) objM473dragjO51t882).booleanValue();
                                if (shouldConsumeUp) {
                                    List<PointerInputChange> changes = $this$mouseSelection3.getCurrentEvent().getChanges();
                                    int size2 = changes.size();
                                    for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                                        Object item$iv = changes.get(index$iv2);
                                        PointerInputChange it = (PointerInputChange) item$iv;
                                        if (PointerEventKt.changedToUp(it)) {
                                            it.consume();
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                observer2 = observer;
                                throw th;
                            }
                        }
                    } else {
                        switch (clicksCounter.getClicks()) {
                            case 1:
                                selectionAdjustment = SelectionAdjustment.INSTANCE.getNone();
                                break;
                            case 2:
                                selectionAdjustment = SelectionAdjustment.INSTANCE.getWord();
                                break;
                            default:
                                selectionAdjustment = SelectionAdjustment.INSTANCE.getParagraph();
                                break;
                        }
                        boolean started2 = observer.mo1516onStart9KIMszo(downChange.getPosition(), selectionAdjustment, clicksCounter.getClicks());
                        if (started2) {
                            final Ref.BooleanRef dragConsumed2 = new Ref.BooleanRef();
                            dragConsumed2.element = Intrinsics.areEqual(selectionAdjustment, SelectionAdjustment.INSTANCE.getNone()) ? false : true;
                            long id2 = downChange.getId();
                            Function1 function12 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$$ExternalSyntheticLambda1
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return SelectionGesturesKt.mouseSelection$lambda$2(observer, selectionAdjustment, dragConsumed2, (PointerInputChange) obj);
                                }
                            };
                            c03321.L$0 = $this$mouseSelection;
                            c03321.L$1 = observer;
                            c03321.L$2 = dragConsumed2;
                            c03321.label = 2;
                            objM473dragjO51t88 = DragGestureDetectorKt.m473dragjO51t88($this$mouseSelection, id2, function12, c03321);
                            if (objM473dragjO51t88 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $this$mouseSelection2 = $this$mouseSelection;
                            dragConsumed = dragConsumed2;
                            shouldConsumeUp2 = ((Boolean) objM473dragjO51t88).booleanValue();
                            if (shouldConsumeUp2 && dragConsumed.element) {
                                List<PointerInputChange> changes2 = $this$mouseSelection2.getCurrentEvent().getChanges();
                                size = changes2.size();
                                for (index$iv = 0; index$iv < size; index$iv++) {
                                    Object item$iv2 = changes2.get(index$iv);
                                    PointerInputChange it2 = (PointerInputChange) item$iv2;
                                    if (PointerEventKt.changedToUp(it2)) {
                                        it2.consume();
                                    }
                                }
                            }
                            observer.onDragDone();
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    observer2 = (MouseSelectionObserver) c03321.L$1;
                    $this$mouseSelection3 = (AwaitPointerEventScope) c03321.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        objM473dragjO51t882 = $result;
                        shouldConsumeUp = ((Boolean) objM473dragjO51t882).booleanValue();
                        if (shouldConsumeUp) {
                        }
                        return Unit.INSTANCE;
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                case 2:
                    dragConsumed = (Ref.BooleanRef) c03321.L$2;
                    observer = (MouseSelectionObserver) c03321.L$1;
                    $this$mouseSelection2 = (AwaitPointerEventScope) c03321.L$0;
                    ResultKt.throwOnFailure($result);
                    objM473dragjO51t88 = $result;
                    shouldConsumeUp2 = ((Boolean) objM473dragjO51t88).booleanValue();
                    if (shouldConsumeUp2) {
                        List<PointerInputChange> changes22 = $this$mouseSelection2.getCurrentEvent().getChanges();
                        size = changes22.size();
                        while (index$iv < size) {
                        }
                    }
                    observer.onDragDone();
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } finally {
            observer.onDragDone();
        }
    }

    static final Unit mouseSelection$lambda$0(MouseSelectionObserver $observer, PointerInputChange it) {
        if ($observer.mo1515onExtendDragk4lQ0M(it.getPosition())) {
            it.consume();
        }
        return Unit.INSTANCE;
    }

    static final Unit mouseSelection$lambda$2(MouseSelectionObserver $observer, SelectionAdjustment $selectionAdjustment, Ref.BooleanRef $dragConsumed, PointerInputChange it) {
        if ($observer.mo1513onDrag3MmeM6k(it.getPosition(), $selectionAdjustment)) {
            it.consume();
            $dragConsumed.element = true;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004e -> B:18:0x0055). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitDown(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super PointerEvent> continuation) {
        AnonymousClass1 anonymousClass1;
        Object $result;
        AwaitPointerEventScope $this$awaitDown;
        Object obj;
        int index$iv$iv;
        int size;
        boolean z;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result2 = anonymousClass1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                AwaitPointerEventScope $this$awaitDown2 = awaitPointerEventScope;
                PointerEventPass pointerEventPass = PointerEventPass.Main;
                anonymousClass1.L$0 = $this$awaitDown2;
                anonymousClass1.label = 1;
                Object objAwaitPointerEvent = $this$awaitDown2.awaitPointerEvent(pointerEventPass, anonymousClass1);
                if (objAwaitPointerEvent != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent;
                $this$awaitDown = $this$awaitDown2;
                obj = obj2;
                PointerEvent event = (PointerEvent) $result2;
                List<PointerInputChange> changes = event.getChanges();
                index$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv >= size) {
                        Object item$iv$iv = changes.get(index$iv$iv);
                        PointerInputChange it = (PointerInputChange) item$iv$iv;
                        if (PointerEventKt.changedToDown(it)) {
                            index$iv$iv++;
                        } else {
                            z = false;
                        }
                    } else {
                        z = true;
                    }
                }
                if (!z) {
                    return event;
                }
                $result2 = $result;
                $result3 = obj;
                $this$awaitDown2 = $this$awaitDown;
                PointerEventPass pointerEventPass2 = PointerEventPass.Main;
                anonymousClass1.L$0 = $this$awaitDown2;
                anonymousClass1.label = 1;
                Object objAwaitPointerEvent2 = $this$awaitDown2.awaitPointerEvent(pointerEventPass2, anonymousClass1);
                if (objAwaitPointerEvent2 != $result3) {
                }
                break;
            case 1:
                AwaitPointerEventScope $this$awaitDown3 = (AwaitPointerEventScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result2);
                $this$awaitDown = $this$awaitDown3;
                obj = $result3;
                $result = $result2;
                PointerEvent event2 = (PointerEvent) $result2;
                List<PointerInputChange> changes2 = event2.getChanges();
                index$iv$iv = 0;
                size = changes2.size();
                while (true) {
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv++;
                }
                if (!z) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean distanceIsTolerable(ViewConfiguration viewConfiguration, PointerInputChange change1, PointerInputChange change2) {
        float slop = DragGestureDetectorKt.m476pointerSlopE8SPZFQ(viewConfiguration, change1.getType());
        return Offset.m4450getDistanceimpl(Offset.m4456minusMKHz9U(change1.getPosition(), change2.getPosition())) < slop;
    }
}
