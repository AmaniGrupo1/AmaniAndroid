package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetector_androidKt;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNodeKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: StylusHandwriting.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J'\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\b\u0010!\u001a\u00020\u0007H\u0016J\u0006\u0010\"\u001a\u00020\u0007R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\tR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusRequesterModifierNode;", "onHandwritingSlopExceeded", "Lkotlin/Function0;", "", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getOnHandwritingSlopExceeded", "()Lkotlin/jvm/functions/Function0;", "setOnHandwritingSlopExceeded", "focused", "", "onFocusEvent", "focusState", "Landroidx/compose/ui/focus/FocusState;", "touchBoundsExpansion", "Landroidx/compose/ui/node/TouchBoundsExpansion;", "getTouchBoundsExpansion-RZrCHBk", "()J", "suspendingPointerInputModifierNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "onCancelPointerInput", "resetPointerInputHandler", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class StylusHandwritingNode extends DelegatingNode implements PointerInputModifierNode, FocusEventModifierNode, FocusRequesterModifierNode {
    public static final int $stable = 8;
    private boolean focused;
    private Function0<Unit> onHandwritingSlopExceeded;
    private final SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1

        /* JADX INFO: renamed from: androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: StylusHandwriting.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1", f = "StylusHandwriting.kt", i = {0, 1, 1, 1, 2, 2}, l = {AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 144, 182}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "firstDown", "pass", "$this$awaitEachGesture", "firstDown"}, s = {"L$0", "L$0", "L$1", "L$2", "L$0", "L$1"}, v = 1)
        static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            int label;
            final /* synthetic */ StylusHandwritingNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(StylusHandwritingNode stylusHandwritingNode, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = stylusHandwritingNode;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Path cross not found for [B:15:0x007b, B:19:0x008e], limit reached: 102 */
            /* JADX WARN: Path cross not found for [B:28:0x00d2, B:34:0x0112], limit reached: 102 */
            /* JADX WARN: Path cross not found for [B:30:0x00ed, B:34:0x0112], limit reached: 102 */
            /* JADX WARN: Path cross not found for [B:37:0x011c, B:40:0x0122], limit reached: 102 */
            /* JADX WARN: Removed duplicated region for block: B:101:0x027d  */
            /* JADX WARN: Removed duplicated region for block: B:103:0x0280  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0274 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:106:0x0269 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:107:0x01a0 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:108:0x019a A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:22:0x0092  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x0141 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x015b  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0190 A[LOOP:1: B:47:0x0159->B:59:0x0190, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01a6  */
            /* JADX WARN: Removed duplicated region for block: B:74:0x01e3  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x01e6  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x021d A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x021e  */
            /* JADX WARN: Removed duplicated region for block: B:86:0x0236  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x026c A[LOOP:0: B:85:0x0234->B:97:0x026c, LOOP_END] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0142 -> B:46:0x0148). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x021e -> B:84:0x0223). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object $result) {
                Object $result2;
                Object $result3;
                AwaitPointerEventScope $this$awaitEachGesture;
                boolean isStylus;
                Object $result4;
                PointerInputChange firstDown;
                PointerInputChange exceedsTouchSlop;
                AwaitPointerEventScope $this$awaitEachGesture2;
                PointerEventPass pass;
                Object objAwaitPointerEvent;
                Object $result5;
                Object $result6;
                AnonymousClass1 anonymousClass1;
                int index$iv$iv;
                int size;
                Object obj;
                Object $result7;
                Object it$iv;
                PointerInputChange change;
                PointerInputChange firstDown2;
                AwaitPointerEventScope $this$awaitEachGesture3;
                boolean z;
                Object $result8;
                Object $result9;
                int index$iv$iv2;
                int size2;
                Object $result10;
                Object obj2;
                Object obj3;
                PointerInputChange pointerChange;
                Object it$iv2;
                boolean z2;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                        this.L$0 = $this$awaitEachGesture4;
                        this.label = 1;
                        Object objAwaitFirstDown = TapGestureDetectorKt.awaitFirstDown($this$awaitEachGesture4, true, PointerEventPass.Initial, this);
                        if (objAwaitFirstDown == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result2 = $result;
                        $result3 = objAwaitFirstDown;
                        $this$awaitEachGesture = $this$awaitEachGesture4;
                        PointerInputChange firstDown3 = (PointerInputChange) $result3;
                        isStylus = !PointerType.m6081equalsimpl0(firstDown3.getType(), PointerType.INSTANCE.m6087getStylusT8wyACA()) || PointerType.m6081equalsimpl0(firstDown3.getType(), PointerType.INSTANCE.m6085getEraserT8wyACA());
                        if (isStylus) {
                            return Unit.INSTANCE;
                        }
                        int bits$iv$iv$iv = (int) (firstDown3.getPosition() >> 32);
                        if (Float.intBitsToFloat(bits$iv$iv$iv) >= 0.0f) {
                            $result4 = $result2;
                            int bits$iv$iv$iv2 = (int) (firstDown3.getPosition() >> 32);
                            float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv2);
                            int $i$f$unpackInt1 = (int) ($this$awaitEachGesture.mo5906getSizeYbymL2g() >> 32);
                            if (fIntBitsToFloat < $i$f$unpackInt1) {
                                int bits$iv$iv$iv3 = (int) (firstDown3.getPosition() & 4294967295L);
                                if (Float.intBitsToFloat(bits$iv$iv$iv3) >= 0.0f) {
                                    int bits$iv$iv$iv4 = (int) (firstDown3.getPosition() & 4294967295L);
                                    boolean isInBounds = Float.intBitsToFloat(bits$iv$iv$iv4) < ((float) ((int) ($this$awaitEachGesture.mo5906getSizeYbymL2g() & 4294967295L)));
                                    PointerEventPass pass2 = (!this.this$0.focused || isInBounds) ? PointerEventPass.Initial : PointerEventPass.Main;
                                    firstDown = firstDown3;
                                    exceedsTouchSlop = null;
                                    $this$awaitEachGesture2 = $this$awaitEachGesture;
                                    pass = pass2;
                                    AnonymousClass1 anonymousClass12 = this;
                                    Object $result11 = $result4;
                                    anonymousClass12.L$0 = $this$awaitEachGesture2;
                                    anonymousClass12.L$1 = firstDown;
                                    anonymousClass12.L$2 = pass;
                                    anonymousClass12.label = 2;
                                    objAwaitPointerEvent = $this$awaitEachGesture2.awaitPointerEvent(pass, anonymousClass12);
                                    if (objAwaitPointerEvent == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    AnonymousClass1 anonymousClass13 = anonymousClass12;
                                    $result5 = $result11;
                                    $result6 = objAwaitPointerEvent;
                                    anonymousClass1 = anonymousClass13;
                                    PointerEvent pointerEvent = (PointerEvent) $result6;
                                    List<PointerInputChange> changes = pointerEvent.getChanges();
                                    index$iv$iv = 0;
                                    size = changes.size();
                                    while (true) {
                                        if (index$iv$iv >= size) {
                                            it$iv = changes.get(index$iv$iv);
                                            PointerInputChange it = (PointerInputChange) it$iv;
                                            if (it.isConsumed()) {
                                                obj = coroutine_suspended;
                                                $result7 = $result5;
                                            } else {
                                                $result7 = $result5;
                                                obj = coroutine_suspended;
                                                if (PointerId.m5992equalsimpl0(it.getId(), firstDown.getId()) && it.getPressed()) {
                                                    z = true;
                                                }
                                                if (z) {
                                                    index$iv$iv++;
                                                    $result5 = $result7;
                                                    coroutine_suspended = obj;
                                                }
                                            }
                                            z = false;
                                            if (z) {
                                            }
                                        } else {
                                            obj = coroutine_suspended;
                                            $result7 = $result5;
                                            it$iv = null;
                                        }
                                    }
                                    change = (PointerInputChange) it$iv;
                                    if (change != null) {
                                        long time = change.getUptimeMillis() - firstDown.getUptimeMillis();
                                        if (time < $this$awaitEachGesture2.getViewConfiguration().getLongPressTimeoutMillis() && !TapGestureDetector_androidKt.isDeepPress(pointerEvent)) {
                                            long offset = Offset.m4456minusMKHz9U(change.getPosition(), firstDown.getPosition());
                                            if (Offset.m4450getDistanceimpl(offset) > $this$awaitEachGesture2.getViewConfiguration().getHandwritingSlop()) {
                                                exceedsTouchSlop = change;
                                            } else {
                                                anonymousClass12 = anonymousClass1;
                                                coroutine_suspended = obj;
                                                $result11 = $result7;
                                                anonymousClass12.L$0 = $this$awaitEachGesture2;
                                                anonymousClass12.L$1 = firstDown;
                                                anonymousClass12.L$2 = pass;
                                                anonymousClass12.label = 2;
                                                objAwaitPointerEvent = $this$awaitEachGesture2.awaitPointerEvent(pass, anonymousClass12);
                                                if (objAwaitPointerEvent == coroutine_suspended) {
                                                }
                                            }
                                        }
                                    }
                                    if (exceedsTouchSlop != null) {
                                        return Unit.INSTANCE;
                                    }
                                    if (!anonymousClass1.this$0.focused) {
                                        FocusRequesterModifierNodeKt.requestFocus(anonymousClass1.this$0);
                                    }
                                    anonymousClass1.this$0.getOnHandwritingSlopExceeded().invoke();
                                    exceedsTouchSlop.consume();
                                    Object $result12 = $result7;
                                    firstDown2 = firstDown;
                                    $this$awaitEachGesture3 = $this$awaitEachGesture2;
                                    coroutine_suspended = obj;
                                    anonymousClass1.L$0 = $this$awaitEachGesture3;
                                    anonymousClass1.L$1 = firstDown2;
                                    anonymousClass1.L$2 = null;
                                    anonymousClass1.label = 3;
                                    Object objAwaitPointerEvent2 = $this$awaitEachGesture3.awaitPointerEvent(PointerEventPass.Initial, anonymousClass1);
                                    if (objAwaitPointerEvent2 != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    Object obj4 = $result12;
                                    $result8 = objAwaitPointerEvent2;
                                    $result9 = obj4;
                                    List<PointerInputChange> changes2 = ((PointerEvent) $result8).getChanges();
                                    index$iv$iv2 = 0;
                                    size2 = changes2.size();
                                    while (true) {
                                        if (index$iv$iv2 >= size2) {
                                            Object it$iv3 = changes2.get(index$iv$iv2);
                                            PointerInputChange it2 = (PointerInputChange) it$iv3;
                                            if (it2.isConsumed()) {
                                                $result10 = $result9;
                                                obj2 = coroutine_suspended;
                                                it$iv2 = it$iv3;
                                            } else {
                                                it$iv2 = it$iv3;
                                                $result10 = $result9;
                                                obj2 = coroutine_suspended;
                                                if (PointerId.m5992equalsimpl0(it2.getId(), firstDown2.getId()) && it2.getPressed()) {
                                                    z2 = true;
                                                }
                                                if (z2) {
                                                    index$iv$iv2++;
                                                    coroutine_suspended = obj2;
                                                    $result9 = $result10;
                                                } else {
                                                    obj3 = it$iv2;
                                                }
                                            }
                                            z2 = false;
                                            if (z2) {
                                            }
                                        } else {
                                            $result10 = $result9;
                                            obj2 = coroutine_suspended;
                                            obj3 = null;
                                        }
                                    }
                                    pointerChange = (PointerInputChange) obj3;
                                    if (pointerChange != null) {
                                        return Unit.INSTANCE;
                                    }
                                    pointerChange.consume();
                                    coroutine_suspended = obj2;
                                    $result12 = $result10;
                                    anonymousClass1.L$0 = $this$awaitEachGesture3;
                                    anonymousClass1.L$1 = firstDown2;
                                    anonymousClass1.L$2 = null;
                                    anonymousClass1.label = 3;
                                    Object objAwaitPointerEvent22 = $this$awaitEachGesture3.awaitPointerEvent(PointerEventPass.Initial, anonymousClass1);
                                    if (objAwaitPointerEvent22 != coroutine_suspended) {
                                    }
                                }
                            }
                        } else {
                            $result4 = $result2;
                        }
                        if (this.this$0.focused) {
                        }
                        firstDown = firstDown3;
                        exceedsTouchSlop = null;
                        $this$awaitEachGesture2 = $this$awaitEachGesture;
                        pass = pass2;
                        AnonymousClass1 anonymousClass122 = this;
                        Object $result112 = $result4;
                        anonymousClass122.L$0 = $this$awaitEachGesture2;
                        anonymousClass122.L$1 = firstDown;
                        anonymousClass122.L$2 = pass;
                        anonymousClass122.label = 2;
                        objAwaitPointerEvent = $this$awaitEachGesture2.awaitPointerEvent(pass, anonymousClass122);
                        if (objAwaitPointerEvent == coroutine_suspended) {
                        }
                        break;
                    case 1:
                        $result3 = $result;
                        AwaitPointerEventScope $this$awaitEachGesture5 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result3);
                        $this$awaitEachGesture = $this$awaitEachGesture5;
                        $result2 = $result3;
                        PointerInputChange firstDown32 = (PointerInputChange) $result3;
                        if (PointerType.m6081equalsimpl0(firstDown32.getType(), PointerType.INSTANCE.m6087getStylusT8wyACA())) {
                        }
                        if (isStylus) {
                        }
                        break;
                    case 2:
                        $result6 = $result;
                        exceedsTouchSlop = null;
                        pass = (PointerEventPass) this.L$2;
                        firstDown = (PointerInputChange) this.L$1;
                        $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result6);
                        anonymousClass1 = this;
                        $result5 = $result6;
                        PointerEvent pointerEvent2 = (PointerEvent) $result6;
                        List<PointerInputChange> changes3 = pointerEvent2.getChanges();
                        index$iv$iv = 0;
                        size = changes3.size();
                        while (true) {
                            if (index$iv$iv >= size) {
                            }
                            index$iv$iv++;
                            $result5 = $result7;
                            coroutine_suspended = obj;
                        }
                        change = (PointerInputChange) it$iv;
                        if (change != null) {
                        }
                        if (exceedsTouchSlop != null) {
                        }
                        break;
                    case 3:
                        $result8 = $result;
                        firstDown2 = (PointerInputChange) this.L$1;
                        $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result8);
                        anonymousClass1 = this;
                        $result9 = $result8;
                        List<PointerInputChange> changes22 = ((PointerEvent) $result8).getChanges();
                        index$iv$iv2 = 0;
                        size2 = changes22.size();
                        while (true) {
                            if (index$iv$iv2 >= size2) {
                            }
                            index$iv$iv2++;
                            coroutine_suspended = obj2;
                            $result9 = $result10;
                        }
                        pointerChange = (PointerInputChange) obj3;
                        if (pointerChange != null) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(PointerInputScope $this$SuspendingPointerInputModifierNode, Continuation<? super Unit> continuation) {
            Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$SuspendingPointerInputModifierNode, new AnonymousClass1(this.this$0, null), continuation);
            return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
        }
    }));

    public StylusHandwritingNode(Function0<Unit> function0) {
        this.onHandwritingSlopExceeded = function0;
    }

    public final Function0<Unit> getOnHandwritingSlopExceeded() {
        return this.onHandwritingSlopExceeded;
    }

    public final void setOnHandwritingSlopExceeded(Function0<Unit> function0) {
        this.onHandwritingSlopExceeded = function0;
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        this.focused = focusState.isFocused();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: getTouchBoundsExpansion-RZrCHBk */
    public long mo1322getTouchBoundsExpansionRZrCHBk() {
        return StylusHandwritingKt.getHandwritingBoundsExpansion().m6350roundToTouchBoundsExpansionTW6G1oQ(DelegatableNodeKt.requireDensity(this));
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo233onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        this.suspendingPointerInputModifierNode.mo233onPointerEventH0pRuoY(pointerEvent, pass, bounds);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.suspendingPointerInputModifierNode.onCancelPointerInput();
    }

    public final void resetPointerInputHandler() {
        this.suspendingPointerInputModifierNode.resetPointerInputHandler();
    }
}
