package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.gestures.LongPressResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.core.location.LocationRequestCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import com.google.logging.type.LogSeverity;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: TapGestureDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000|\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u008b\u0001\u0010\t\u001a\u00020\u0005*\u00020\n2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f2\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f2/\b\u0002\u0010\u000e\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u00072\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fH\u0086@¢\u0006\u0002\u0010\u0010\u001a\u0012\u0010\u0011\u001a\u00020\u0005*\u00020\u0012H\u0082@¢\u0006\u0002\u0010\u0013\u001a\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@¢\u0006\u0002\u0010\u0017\u001a[\u0010\u0018\u001a\u00020\u0005*\u00020\n2/\b\u0002\u0010\u000e\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u00072\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fH\u0080@¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u001a\u001a\u00020\u0015*\u00020\u00122\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0087@¢\u0006\u0002\u0010\u001d\u001a&\u0010\u001a\u001a\u00020\u0015*\u00020\u00122\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0086@¢\u0006\u0002\u0010 \u001a&\u0010!\u001a\u00020\u0015*\u00020\u00122\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0080@¢\u0006\u0002\u0010 \u001a\u001e\u0010\"\u001a\u00020\u001c*\u00020#2\u0006\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010$\u001a\u00020\u001cH\u0000\u001a\u0014\u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u0012H\u0087@¢\u0006\u0002\u0010\u0013\u001a\u001e\u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0086@¢\u0006\u0002\u0010&\u001a\u001c\u0010'\u001a\u00020(*\u00020\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0080@¢\u0006\u0002\u0010&\u001aL\u00106\u001a\u000207*\u0002082\u0006\u00109\u001a\u0002072\b\b\u0002\u0010:\u001a\u0002022'\u0010;\u001a#\b\u0001\u0012\u0004\u0012\u000208\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060<¢\u0006\u0002\b\u0007H\u0002¢\u0006\u0002\u0010=\"7\u0010\u0000\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0001¢\u0006\u0002\b\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b\"*\u0010*\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u001c8F@FX\u0087\u000e¢\u0006\u0012\u0012\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100\"\u001a\u00101\u001a\u0002028BX\u0082\u0004¢\u0006\f\u0012\u0004\b3\u0010,\u001a\u0004\b4\u00105¨\u0006>"}, d2 = {"NoPressGesture", "Lkotlin/Function3;", "Landroidx/compose/foundation/gestures/PressGestureScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "Lkotlin/jvm/functions/Function3;", "detectTapGestures", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onDoubleTap", "Lkotlin/Function1;", "onLongPress", "onPress", "onTap", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consumeUntilUp", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitSecondDown", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "firstUp", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectTapAndPress", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitFirstDown", "requireUnconsumed", "", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitPrimaryFirstDown", "isChangedToDown", "Landroidx/compose/ui/input/pointer/PointerEvent;", "onlyPrimaryMouseButton", "waitForUpOrCancellation", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitForLongPress", "Landroidx/compose/foundation/gestures/LongPressResult;", Values.VECTOR_MAP_VECTORS_KEY, "DetectTapGesturesEnableNewDispatchingBehavior", "getDetectTapGesturesEnableNewDispatchingBehavior$annotations", "()V", "getDetectTapGesturesEnableNewDispatchingBehavior", "()Z", "setDetectTapGesturesEnableNewDispatchingBehavior", "(Z)V", "coroutineStartForCurrentDispatchBehavior", "Lkotlinx/coroutines/CoroutineStart;", "getCoroutineStartForCurrentDispatchBehavior$annotations", "getCoroutineStartForCurrentDispatchBehavior", "()Lkotlinx/coroutines/CoroutineStart;", "launchAwaitingReset", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;", "resetJob", TtmlNode.START, "block", "Lkotlin/Function2;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TapGestureDetectorKt {
    private static final Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> NoPressGesture = new TapGestureDetectorKt$NoPressGesture$1(null);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2, reason: invalid class name */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0, 0, 0}, l = {291}, m = "awaitFirstDown", n = {"$this$awaitFirstDown", "pass", "requireUnconsumed"}, s = {"L$0", "L$1", "Z$0"}, v = 1)
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.awaitFirstDown(null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitPrimaryFirstDown$1, reason: invalid class name */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0, 0, 0}, l = {304}, m = "awaitPrimaryFirstDown", n = {"$this$awaitPrimaryFirstDown", "pass", "requireUnconsumed"}, s = {"L$0", "L$1", "Z$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.awaitPrimaryFirstDown(null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0}, l = {209}, m = "consumeUntilUp", n = {"$this$consumeUntilUp"}, s = {"L$0"}, v = 1)
    static final class C02661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02661(Continuation<? super C02661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.consumeUntilUp(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0}, l = {RendererCapabilities.DECODER_SUPPORT_MASK}, m = "waitForLongPress", n = {"result"}, s = {"L$0"}, v = 1)
    static final class C02701 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02701(Continuation<? super C02701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.waitForLongPress(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForUpOrCancellation$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt", f = "TapGestureDetector.kt", i = {0, 0, 1, 1}, l = {352, 366}, m = "waitForUpOrCancellation", n = {"$this$waitForUpOrCancellation", "pass", "$this$waitForUpOrCancellation", "pass"}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 1)
    static final class C02722 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02722(Continuation<? super C02722> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TapGestureDetectorKt.waitForUpOrCancellation(null, null, this);
        }
    }

    private static /* synthetic */ void getCoroutineStartForCurrentDispatchBehavior$annotations() {
    }

    @Deprecated(message = "This flag has been moved to ComposeFoundationFlags and renamed to isDetectTapGesturesImmediateCoroutineDispatchEnabled. For compatibility,  DetectTapGesturesEnableNewDispatchingBehavior controls the new flag (isDetectTapGesturesImmediateCoroutineDispatchEnabled). Please use  isDetectTapGesturesImmediateCoroutineDispatchEnabled instead.", replaceWith = @ReplaceWith(expression = "isDetectTapGesturesImmediateCoroutineDispatchEnabled", imports = {"androidx.compose.foundation.ComposeFoundationFlags.isDetectTapGesturesImmediateCoroutineDispatchEnabled"}))
    public static /* synthetic */ void getDetectTapGesturesEnableNewDispatchingBehavior$annotations() {
    }

    public static /* synthetic */ Object detectTapGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function1 function12, Function3 function3, Function1 function13, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        if ((i & 2) != 0) {
            function12 = null;
        }
        if ((i & 4) != 0) {
            function3 = NoPressGesture;
        }
        if ((i & 8) != 0) {
            function13 = null;
        }
        return detectTapGestures(pointerInputScope, function1, function12, function3, function13, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", i = {}, l = {LocationRequestCompat.QUALITY_LOW_POWER}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C02682 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
        final /* synthetic */ Function1<Offset, Unit> $onLongPress;
        final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
        final /* synthetic */ Function1<Offset, Unit> $onTap;
        final /* synthetic */ PointerInputScope $this_detectTapGestures;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02682(PointerInputScope pointerInputScope, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function1<? super Offset, Unit> function13, Continuation<? super C02682> continuation) {
            super(2, continuation);
            this.$this_detectTapGestures = pointerInputScope;
            this.$onPress = function3;
            this.$onLongPress = function1;
            this.$onDoubleTap = function12;
            this.$onTap = function13;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02682 c02682 = new C02682(this.$this_detectTapGestures, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, continuation);
            c02682.L$0 = obj;
            return c02682;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02682) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    PressGestureScopeImpl pressScope = new PressGestureScopeImpl(this.$this_detectTapGestures);
                    this.label = 1;
                    if (ForEachGestureKt.awaitEachGesture(this.$this_detectTapGestures, new AnonymousClass1($this$coroutineScope, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, pressScope, null), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: TapGestureDetector.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", i = {0, 1, 1, 2, 2, 2, 3, 4, 4, 4, 5, 5, 6, 6, 6, 6, 7}, l = {105, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 119, 122, 149, 167, 169, 180}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "resetJob", "$this$awaitEachGesture", "down", "resetJob", "resetJob", "$this$awaitEachGesture", "upOrCancel", "cancelOrReleaseJob", "resetJob", "upOrCancel", "$this$awaitEachGesture", "resetJob", "upOrCancel", "secondDown", "resetJob"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$2", "L$3", "L$0"}, v = 1)
        static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ CoroutineScope $$this$coroutineScope;
            final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
            final /* synthetic */ Function1<Offset, Unit> $onLongPress;
            final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
            final /* synthetic */ Function1<Offset, Unit> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(CoroutineScope coroutineScope, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function1<? super Offset, Unit> function13, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$$this$coroutineScope = coroutineScope;
                this.$onPress = function3;
                this.$onLongPress = function1;
                this.$onDoubleTap = function12;
                this.$onTap = function13;
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$coroutineScope, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, this.$pressScope, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x00d4  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x00ee  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0104  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0121  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0158  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x016e  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x0183  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x019b  */
            /* JADX WARN: Removed duplicated region for block: B:62:0x01cd  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x01e0  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x0255  */
            /* JADX WARN: Removed duplicated region for block: B:88:0x028f  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x02a9  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x02cc  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object $result) {
                Object $result2;
                AwaitPointerEventScope $this$awaitEachGesture;
                PointerInputChange down;
                Job resetJob;
                AwaitPointerEventScope $this$awaitEachGesture2;
                PointerInputChange upOrCancel;
                Job resetJob2;
                Job cancelOrReleaseJob;
                PointerInputChange upOrCancel2;
                AwaitPointerEventScope $this$awaitEachGesture3;
                LongPressResult longPressResult;
                PointerInputChange finalUpChange;
                Job resetJob3;
                PointerInputChange secondDown;
                Job resetJob4;
                PointerInputChange upOrCancel3;
                PointerInputChange upOrCancel4;
                Job resetJob5;
                PointerInputChange upOrCancel5;
                PointerInputChange secondUp;
                Job resetJob6;
                LongPressResult longPressResult2;
                Job resetJob7;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                        this.L$0 = $this$awaitEachGesture4;
                        this.label = 1;
                        Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture4, false, null, this, 3, null);
                        if (objAwaitFirstDown$default == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result2 = $result;
                        $result = objAwaitFirstDown$default;
                        $this$awaitEachGesture = $this$awaitEachGesture4;
                        down = (PointerInputChange) $result;
                        down.consume();
                        resetJob = BuildersKt__Builders_commonKt.launch$default(this.$$this$coroutineScope, null, TapGestureDetectorKt.getCoroutineStartForCurrentDispatchBehavior(), new TapGestureDetectorKt$detectTapGestures$2$1$resetJob$1(this.$pressScope, null), 1, null);
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob, null, new C00191(this.$onPress, this.$pressScope, down, null), 2, null);
                        }
                        if (this.$onLongPress == null) {
                            this.L$0 = $this$awaitEachGesture;
                            this.L$1 = down;
                            this.L$2 = resetJob;
                            this.label = 3;
                            $result = TapGestureDetectorKt.waitForLongPress$default($this$awaitEachGesture, null, this, 1, null);
                            if ($result == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            longPressResult = (LongPressResult) $result;
                            if (!Intrinsics.areEqual(longPressResult, LongPressResult.Success.INSTANCE)) {
                                this.$onLongPress.invoke(Offset.m4441boximpl(down.getPosition()));
                                this.L$0 = resetJob;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.label = 4;
                                if (TapGestureDetectorKt.consumeUntilUp($this$awaitEachGesture, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                resetJob3 = resetJob;
                                TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob3, null, new C00202(this.$pressScope, null), 2, null);
                                return Unit.INSTANCE;
                            }
                            if (longPressResult instanceof LongPressResult.Released) {
                                finalUpChange = ((LongPressResult.Released) longPressResult).getFinalUpChange();
                            } else {
                                if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                finalUpChange = null;
                            }
                            upOrCancel = finalUpChange;
                            $this$awaitEachGesture2 = $this$awaitEachGesture;
                            resetJob2 = resetJob;
                            if (upOrCancel == null) {
                            }
                            if (upOrCancel != null) {
                            }
                            return Unit.INSTANCE;
                        }
                        this.L$0 = $this$awaitEachGesture;
                        this.L$1 = resetJob;
                        this.label = 2;
                        $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture, null, this, 1, null);
                        if ($result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $this$awaitEachGesture2 = $this$awaitEachGesture;
                        upOrCancel = (PointerInputChange) $result;
                        resetJob2 = resetJob;
                        if (upOrCancel == null) {
                            cancelOrReleaseJob = TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob2, null, new AnonymousClass3(this.$pressScope, null), 2, null);
                        } else {
                            upOrCancel.consume();
                            cancelOrReleaseJob = TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob2, null, new AnonymousClass4(this.$pressScope, null), 2, null);
                        }
                        if (upOrCancel != null) {
                            if (this.$onDoubleTap == null) {
                                Function1<Offset, Unit> function1 = this.$onTap;
                                if (function1 != null) {
                                    function1.invoke(Offset.m4441boximpl(upOrCancel.getPosition()));
                                }
                            } else {
                                this.L$0 = $this$awaitEachGesture2;
                                this.L$1 = upOrCancel;
                                this.L$2 = cancelOrReleaseJob;
                                this.label = 5;
                                Object objAwaitSecondDown = TapGestureDetectorKt.awaitSecondDown($this$awaitEachGesture2, upOrCancel, this);
                                if (objAwaitSecondDown == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                AwaitPointerEventScope awaitPointerEventScope = $this$awaitEachGesture2;
                                upOrCancel2 = upOrCancel;
                                $result = objAwaitSecondDown;
                                $this$awaitEachGesture3 = awaitPointerEventScope;
                                secondDown = (PointerInputChange) $result;
                                if (secondDown != null) {
                                    Function1<Offset, Unit> function12 = this.$onTap;
                                    if (function12 != null) {
                                        function12.invoke(Offset.m4441boximpl(upOrCancel2.getPosition()));
                                    }
                                } else {
                                    resetJob4 = BuildersKt__Builders_commonKt.launch$default(this.$$this$coroutineScope, null, TapGestureDetectorKt.getCoroutineStartForCurrentDispatchBehavior(), new AnonymousClass5(cancelOrReleaseJob, this.$pressScope, null), 1, null);
                                    if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                        TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob4, null, new AnonymousClass6(this.$onPress, this.$pressScope, secondDown, null), 2, null);
                                    }
                                    if (this.$onLongPress == null) {
                                        this.L$0 = resetJob4;
                                        this.L$1 = upOrCancel2;
                                        this.L$2 = null;
                                        this.label = 6;
                                        $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture3, null, this, 1, null);
                                        if ($result == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        upOrCancel5 = upOrCancel2;
                                        secondUp = (PointerInputChange) $result;
                                        resetJob6 = resetJob4;
                                        if (secondUp != null) {
                                            secondUp.consume();
                                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob6, null, new AnonymousClass7(this.$pressScope, null), 2, null);
                                            this.$onDoubleTap.invoke(Offset.m4441boximpl(secondUp.getPosition()));
                                        } else {
                                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob6, null, new AnonymousClass8(this.$pressScope, null), 2, null);
                                            Function1<Offset, Unit> function13 = this.$onTap;
                                            if (function13 != null) {
                                                function13.invoke(Offset.m4441boximpl(upOrCancel5.getPosition()));
                                            }
                                        }
                                    } else {
                                        this.L$0 = $this$awaitEachGesture3;
                                        this.L$1 = resetJob4;
                                        this.L$2 = upOrCancel2;
                                        this.L$3 = secondDown;
                                        this.label = 7;
                                        Object objWaitForLongPress$default = TapGestureDetectorKt.waitForLongPress$default($this$awaitEachGesture3, null, this, 1, null);
                                        if (objWaitForLongPress$default == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        upOrCancel3 = secondDown;
                                        $result = objWaitForLongPress$default;
                                        upOrCancel4 = upOrCancel2;
                                        resetJob5 = resetJob4;
                                        longPressResult2 = (LongPressResult) $result;
                                        if (!Intrinsics.areEqual(longPressResult2, LongPressResult.Success.INSTANCE)) {
                                            this.$onLongPress.invoke(Offset.m4441boximpl(upOrCancel3.getPosition()));
                                            this.L$0 = resetJob5;
                                            this.L$1 = null;
                                            this.L$2 = null;
                                            this.L$3 = null;
                                            this.label = 8;
                                            if (TapGestureDetectorKt.consumeUntilUp($this$awaitEachGesture3, this) == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            resetJob7 = resetJob5;
                                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob7, null, new TapGestureDetectorKt$detectTapGestures$2$1$secondUp$1(this.$pressScope, null), 2, null);
                                            return Unit.INSTANCE;
                                        }
                                        if (longPressResult2 instanceof LongPressResult.Released) {
                                            secondUp = ((LongPressResult.Released) longPressResult2).getFinalUpChange();
                                            upOrCancel5 = upOrCancel4;
                                            resetJob6 = resetJob5;
                                        } else {
                                            if (!(longPressResult2 instanceof LongPressResult.Canceled)) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            secondUp = null;
                                            upOrCancel5 = upOrCancel4;
                                            resetJob6 = resetJob5;
                                        }
                                        if (secondUp != null) {
                                        }
                                    }
                                }
                            }
                        }
                        return Unit.INSTANCE;
                    case 1:
                        AwaitPointerEventScope $this$awaitEachGesture5 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture = $this$awaitEachGesture5;
                        $result2 = $result;
                        down = (PointerInputChange) $result;
                        down.consume();
                        resetJob = BuildersKt__Builders_commonKt.launch$default(this.$$this$coroutineScope, null, TapGestureDetectorKt.getCoroutineStartForCurrentDispatchBehavior(), new TapGestureDetectorKt$detectTapGestures$2$1$resetJob$1(this.$pressScope, null), 1, null);
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                        }
                        if (this.$onLongPress == null) {
                        }
                        break;
                    case 2:
                        Job resetJob8 = (Job) this.L$1;
                        $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob = resetJob8;
                        $result2 = $result;
                        upOrCancel = (PointerInputChange) $result;
                        resetJob2 = resetJob;
                        if (upOrCancel == null) {
                        }
                        if (upOrCancel != null) {
                        }
                        return Unit.INSTANCE;
                    case 3:
                        Job resetJob9 = (Job) this.L$2;
                        down = (PointerInputChange) this.L$1;
                        $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob = resetJob9;
                        $result2 = $result;
                        longPressResult = (LongPressResult) $result;
                        if (!Intrinsics.areEqual(longPressResult, LongPressResult.Success.INSTANCE)) {
                        }
                        break;
                    case 4:
                        Job resetJob10 = (Job) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob3 = resetJob10;
                        TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob3, null, new C00202(this.$pressScope, null), 2, null);
                        return Unit.INSTANCE;
                    case 5:
                        Job cancelOrReleaseJob2 = (Job) this.L$2;
                        upOrCancel2 = (PointerInputChange) this.L$1;
                        AwaitPointerEventScope $this$awaitEachGesture6 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture3 = $this$awaitEachGesture6;
                        cancelOrReleaseJob = cancelOrReleaseJob2;
                        $result2 = $result;
                        secondDown = (PointerInputChange) $result;
                        if (secondDown != null) {
                        }
                        break;
                    case 6:
                        upOrCancel5 = (PointerInputChange) this.L$1;
                        Job resetJob11 = (Job) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob4 = resetJob11;
                        secondUp = (PointerInputChange) $result;
                        resetJob6 = resetJob4;
                        if (secondUp != null) {
                        }
                        return Unit.INSTANCE;
                    case 7:
                        PointerInputChange secondDown2 = (PointerInputChange) this.L$3;
                        PointerInputChange upOrCancel6 = (PointerInputChange) this.L$2;
                        resetJob5 = (Job) this.L$1;
                        AwaitPointerEventScope $this$awaitEachGesture7 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture3 = $this$awaitEachGesture7;
                        upOrCancel4 = upOrCancel6;
                        upOrCancel3 = secondDown2;
                        $result2 = $result;
                        longPressResult2 = (LongPressResult) $result;
                        if (!Intrinsics.areEqual(longPressResult2, LongPressResult.Success.INSTANCE)) {
                        }
                        break;
                    case 8:
                        Job resetJob12 = (Job) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob7 = resetJob12;
                        TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob7, null, new TapGestureDetectorKt$detectTapGestures$2$1$secondUp$1(this.$pressScope, null), 2, null);
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1", f = "TapGestureDetector.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class C00191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00191(Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation<? super C00191> continuation) {
                    super(2, continuation);
                    this.$onPress = function3;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00191(this.$onPress, this.$pressScope, this.$down, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> function3 = this.$onPress;
                            PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                            Offset offsetM4441boximpl = Offset.m4441boximpl(this.$down.getPosition());
                            this.label = 1;
                            if (function3.invoke(pressGestureScopeImpl, offsetM4441boximpl, this) == coroutine_suspended) {
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

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$2, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$2", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class C00202 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00202(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super C00202> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00202(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00202) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.release();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$3, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$3", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass3> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass3(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.cancel();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$4, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$4", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass4(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass4> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass4(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.release();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$5, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$5", f = "TapGestureDetector.kt", i = {}, l = {157, 158}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Job $cancelOrReleaseJob;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass5(Job job, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass5> continuation) {
                    super(2, continuation);
                    this.$cancelOrReleaseJob = job;
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass5(this.$cancelOrReleaseJob, this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:13:0x003a A[RETURN] */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (this.$cancelOrReleaseJob.join(this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            this.label = 2;
                            if (this.$pressScope.reset(this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        case 1:
                            ResultKt.throwOnFailure($result);
                            this.label = 2;
                            if (this.$pressScope.reset(this) == coroutine_suspended) {
                            }
                            return Unit.INSTANCE;
                        case 2:
                            ResultKt.throwOnFailure($result);
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$6, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$6", f = "TapGestureDetector.kt", i = {}, l = {161}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                final /* synthetic */ PointerInputChange $secondDown;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass6(Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation<? super AnonymousClass6> continuation) {
                    super(2, continuation);
                    this.$onPress = function3;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$secondDown = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass6(this.$onPress, this.$pressScope, this.$secondDown, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> function3 = this.$onPress;
                            PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                            Offset offsetM4441boximpl = Offset.m4441boximpl(this.$secondDown.getPosition());
                            this.label = 1;
                            if (function3.invoke(pressGestureScopeImpl, offsetM4441boximpl, this) == coroutine_suspended) {
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

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$7, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$7", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass7(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass7> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass7(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.release();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$8, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$8", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass8 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass8(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass8> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass8(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass8) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.cancel();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }
        }
    }

    public static final Object detectTapGestures(PointerInputScope $this$detectTapGestures, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function13, Continuation<? super Unit> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C02682($this$detectTapGestures, function3, function12, function1, function13, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064 A[LOOP:0: B:19:0x0062->B:20:0x0064, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004c -> B:18:0x0053). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object consumeUntilUp(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
        C02661 c02661;
        Object $result;
        AwaitPointerEventScope $this$consumeUntilUp;
        Object obj;
        int index$iv;
        int size;
        int index$iv$iv;
        int size2;
        boolean z;
        if (continuation instanceof C02661) {
            c02661 = (C02661) continuation;
            if ((c02661.label & Integer.MIN_VALUE) != 0) {
                c02661.label -= Integer.MIN_VALUE;
            } else {
                c02661 = new C02661(continuation);
            }
        }
        Object $result2 = c02661.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02661.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                AwaitPointerEventScope $this$consumeUntilUp2 = awaitPointerEventScope;
                c02661.L$0 = $this$consumeUntilUp2;
                c02661.label = 1;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$consumeUntilUp2, null, c02661, 1, null);
                if (objAwaitPointerEvent$default != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent$default;
                $this$consumeUntilUp = $this$consumeUntilUp2;
                obj = obj2;
                PointerEvent event = (PointerEvent) $result2;
                List<PointerInputChange> changes = event.getChanges();
                size = changes.size();
                for (index$iv = 0; index$iv < size; index$iv++) {
                    Object item$iv = changes.get(index$iv);
                    PointerInputChange it = (PointerInputChange) item$iv;
                    it.consume();
                }
                List<PointerInputChange> changes2 = event.getChanges();
                index$iv$iv = 0;
                size2 = changes2.size();
                while (true) {
                    if (index$iv$iv >= size2) {
                        Object item$iv$iv = changes2.get(index$iv$iv);
                        PointerInputChange it2 = (PointerInputChange) item$iv$iv;
                        if (it2.getPressed()) {
                            z = true;
                        } else {
                            index$iv$iv++;
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    return Unit.INSTANCE;
                }
                $result2 = $result;
                $result3 = obj;
                $this$consumeUntilUp2 = $this$consumeUntilUp;
                c02661.L$0 = $this$consumeUntilUp2;
                c02661.label = 1;
                Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$consumeUntilUp2, null, c02661, 1, null);
                if (objAwaitPointerEvent$default2 != $result3) {
                }
                break;
            case 1:
                AwaitPointerEventScope $this$consumeUntilUp3 = (AwaitPointerEventScope) c02661.L$0;
                ResultKt.throwOnFailure($result2);
                $this$consumeUntilUp = $this$consumeUntilUp3;
                obj = $result3;
                $result = $result2;
                PointerEvent event2 = (PointerEvent) $result2;
                List<PointerInputChange> changes3 = event2.getChanges();
                size = changes3.size();
                while (index$iv < size) {
                }
                List<PointerInputChange> changes22 = event2.getChanges();
                index$iv$iv = 0;
                size2 = changes22.size();
                while (true) {
                    if (index$iv$iv >= size2) {
                    }
                    index$iv$iv++;
                }
                if (z) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2", f = "TapGestureDetector.kt", i = {0, 0}, l = {227}, m = "invokeSuspend", n = {"$this$withTimeoutOrNull", "minUptime"}, s = {"L$0", "J$0"}, v = 1)
    static final class C02652 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super PointerInputChange>, Object> {
        final /* synthetic */ PointerInputChange $firstUp;
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02652(PointerInputChange pointerInputChange, Continuation<? super C02652> continuation) {
            super(2, continuation);
            this.$firstUp = pointerInputChange;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02652 c02652 = new C02652(this.$firstUp, continuation);
            c02652.L$0 = obj;
            return c02652;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super PointerInputChange> continuation) {
            return ((C02652) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004d -> B:12:0x0051). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            C02652 c02652;
            long minUptime;
            AwaitPointerEventScope $this$withTimeoutOrNull;
            Object obj;
            Object $result2;
            PointerInputChange change;
            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    AwaitPointerEventScope $this$withTimeoutOrNull2 = (AwaitPointerEventScope) this.L$0;
                    long minUptime2 = this.$firstUp.getUptimeMillis() + $this$withTimeoutOrNull2.getViewConfiguration().getDoubleTapMinTimeMillis();
                    c02652 = this;
                    minUptime = minUptime2;
                    c02652.L$0 = $this$withTimeoutOrNull2;
                    c02652.J$0 = minUptime;
                    c02652.label = 1;
                    Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$withTimeoutOrNull2, false, null, c02652, 3, null);
                    if (objAwaitFirstDown$default != $result3) {
                        return $result3;
                    }
                    $this$withTimeoutOrNull = $this$withTimeoutOrNull2;
                    obj = $result3;
                    $result2 = $result;
                    $result = objAwaitFirstDown$default;
                    change = (PointerInputChange) $result;
                    if (change.getUptimeMillis() >= minUptime) {
                        $result = $result2;
                        $result3 = obj;
                        $this$withTimeoutOrNull2 = $this$withTimeoutOrNull;
                        c02652.L$0 = $this$withTimeoutOrNull2;
                        c02652.J$0 = minUptime;
                        c02652.label = 1;
                        Object objAwaitFirstDown$default2 = TapGestureDetectorKt.awaitFirstDown$default($this$withTimeoutOrNull2, false, null, c02652, 3, null);
                        if (objAwaitFirstDown$default2 != $result3) {
                        }
                    } else {
                        return change;
                    }
                    break;
                case 1:
                    long minUptime3 = this.J$0;
                    $this$withTimeoutOrNull = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c02652 = this;
                    minUptime = minUptime3;
                    obj = $result3;
                    $result2 = $result;
                    change = (PointerInputChange) $result;
                    if (change.getUptimeMillis() >= minUptime) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object awaitSecondDown(AwaitPointerEventScope $this$awaitSecondDown, PointerInputChange firstUp, Continuation<? super PointerInputChange> continuation) {
        return $this$awaitSecondDown.withTimeoutOrNull($this$awaitSecondDown.getViewConfiguration().getDoubleTapTimeoutMillis(), new C02652(firstUp, null), continuation);
    }

    public static /* synthetic */ Object detectTapAndPress$default(PointerInputScope pointerInputScope, Function3 function3, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function3 = NoPressGesture;
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        return detectTapAndPress(pointerInputScope, function3, function1, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", i = {}, l = {247}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C02672 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
        final /* synthetic */ Function1<Offset, Unit> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        final /* synthetic */ PointerInputScope $this_detectTapAndPress;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02672(PointerInputScope pointerInputScope, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super C02672> continuation) {
            super(2, continuation);
            this.$this_detectTapAndPress = pointerInputScope;
            this.$onPress = function3;
            this.$onTap = function1;
            this.$pressScope = pressGestureScopeImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02672 c02672 = new C02672(this.$this_detectTapAndPress, this.$onPress, this.$onTap, this.$pressScope, continuation);
            c02672.L$0 = obj;
            return c02672;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02672) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: TapGestureDetector.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", i = {0, 0, 1}, l = {251, 257}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "resetJob", "resetJob"}, s = {"L$0", "L$1", "L$0"}, v = 1)
        static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ CoroutineScope $$this$coroutineScope;
            final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
            final /* synthetic */ Function1<Offset, Unit> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(CoroutineScope coroutineScope, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$$this$coroutineScope = coroutineScope;
                this.$onPress = function3;
                this.$onTap = function1;
                this.$pressScope = pressGestureScopeImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$coroutineScope, this.$onPress, this.$onTap, this.$pressScope, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
            /* JADX WARN: Removed duplicated region for block: B:17:0x009b A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x00b3  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object $result) {
                Job resetJob;
                AwaitPointerEventScope $this$awaitEachGesture;
                PointerInputChange up;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                        Job resetJob2 = BuildersKt__Builders_commonKt.launch$default(this.$$this$coroutineScope, null, TapGestureDetectorKt.getCoroutineStartForCurrentDispatchBehavior(), new TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1(this.$pressScope, null), 1, null);
                        this.L$0 = $this$awaitEachGesture2;
                        this.L$1 = resetJob2;
                        this.label = 1;
                        Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture2, false, null, this, 3, null);
                        if (objAwaitFirstDown$default == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result = objAwaitFirstDown$default;
                        resetJob = resetJob2;
                        $this$awaitEachGesture = $this$awaitEachGesture2;
                        PointerInputChange it = (PointerInputChange) $result;
                        it.consume();
                        PointerInputChange down = (PointerInputChange) $result;
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob, null, new C00171(this.$onPress, this.$pressScope, down, null), 2, null);
                        }
                        this.L$0 = resetJob;
                        this.L$1 = null;
                        this.label = 2;
                        $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture, null, this, 1, null);
                        if ($result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        up = (PointerInputChange) $result;
                        if (up == null) {
                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob, null, new C00182(this.$pressScope, null), 2, null);
                        } else {
                            up.consume();
                            TapGestureDetectorKt.launchAwaitingReset$default(this.$$this$coroutineScope, resetJob, null, new AnonymousClass3(this.$pressScope, null), 2, null);
                            Function1<Offset, Unit> function1 = this.$onTap;
                            if (function1 != null) {
                                function1.invoke(Offset.m4441boximpl(up.getPosition()));
                            }
                        }
                        return Unit.INSTANCE;
                    case 1:
                        Job resetJob3 = (Job) this.L$1;
                        AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob = resetJob3;
                        $this$awaitEachGesture = $this$awaitEachGesture3;
                        PointerInputChange it2 = (PointerInputChange) $result;
                        it2.consume();
                        PointerInputChange down2 = (PointerInputChange) $result;
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                        }
                        this.L$0 = resetJob;
                        this.L$1 = null;
                        this.label = 2;
                        $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture, null, this, 1, null);
                        if ($result == coroutine_suspended) {
                        }
                        up = (PointerInputChange) $result;
                        if (up == null) {
                        }
                        return Unit.INSTANCE;
                    case 2:
                        Job resetJob4 = (Job) this.L$0;
                        ResultKt.throwOnFailure($result);
                        resetJob = resetJob4;
                        up = (PointerInputChange) $result;
                        if (up == null) {
                        }
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", i = {}, l = {254}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class C00171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00171(Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, Continuation<? super C00171> continuation) {
                    super(2, continuation);
                    this.$onPress = function3;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00171(this.$onPress, this.$pressScope, this.$down, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> function3 = this.$onPress;
                            PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                            Offset offsetM4441boximpl = Offset.m4441boximpl(this.$down.getPosition());
                            this.label = 1;
                            if (function3.invoke(pressGestureScopeImpl, offsetM4441boximpl, this) == coroutine_suspended) {
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

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$2", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class C00182 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00182(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super C00182> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00182(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00182) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.cancel();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3, reason: invalid class name */
            /* JADX INFO: compiled from: TapGestureDetector.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$3", f = "TapGestureDetector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass3(PressGestureScopeImpl pressGestureScopeImpl, Continuation<? super AnonymousClass3> continuation) {
                    super(2, continuation);
                    this.$pressScope = pressGestureScopeImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass3(this.$pressScope, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            this.$pressScope.release();
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                    this.label = 1;
                    if (ForEachGestureKt.awaitEachGesture(this.$this_detectTapAndPress, new AnonymousClass1($this$coroutineScope, this.$onPress, this.$onTap, this.$pressScope, null), this) == coroutine_suspended) {
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

    public static final Object detectTapAndPress(PointerInputScope $this$detectTapAndPress, Function3<? super PressGestureScope, ? super Offset, ? super Continuation<? super Unit>, ? extends Object> function3, Function1<? super Offset, Unit> function1, Continuation<? super Unit> continuation) {
        PressGestureScopeImpl pressScope = new PressGestureScopeImpl($this$detectTapAndPress);
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C02672($this$detectTapAndPress, function3, function1, pressScope, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return awaitFirstDown(awaitPointerEventScope, z, continuation);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with PointerEventPass instead.")
    public static final /* synthetic */ Object awaitFirstDown(AwaitPointerEventScope $this$awaitFirstDown, boolean requireUnconsumed, Continuation $completion) {
        return awaitFirstDown($this$awaitFirstDown, requireUnconsumed, PointerEventPass.Main, $completion);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0054 -> B:18:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitFirstDown(AwaitPointerEventScope $this$awaitFirstDown, boolean requireUnconsumed, PointerEventPass pass, Continuation<? super PointerInputChange> continuation) {
        AnonymousClass2 anonymousClass2;
        AwaitPointerEventScope $this$awaitFirstDown2;
        boolean requireUnconsumed2;
        PointerEventPass pass2;
        Object $result;
        Object obj;
        PointerEvent event;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        }
        Object $result2 = anonymousClass2.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass2.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                $this$awaitFirstDown2 = $this$awaitFirstDown;
                requireUnconsumed2 = requireUnconsumed;
                pass2 = pass;
                anonymousClass2.L$0 = $this$awaitFirstDown2;
                anonymousClass2.L$1 = pass2;
                anonymousClass2.Z$0 = requireUnconsumed2;
                anonymousClass2.label = 1;
                Object objAwaitPointerEvent = $this$awaitFirstDown2.awaitPointerEvent(pass2, anonymousClass2);
                if (objAwaitPointerEvent != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent;
                obj = obj2;
                event = (PointerEvent) $result2;
                if (!isChangedToDown$default(event, !requireUnconsumed2, false, 2, null)) {
                    return event.getChanges().get(0);
                }
                $result2 = $result;
                $result3 = obj;
                anonymousClass2.L$0 = $this$awaitFirstDown2;
                anonymousClass2.L$1 = pass2;
                anonymousClass2.Z$0 = requireUnconsumed2;
                anonymousClass2.label = 1;
                Object objAwaitPointerEvent2 = $this$awaitFirstDown2.awaitPointerEvent(pass2, anonymousClass2);
                if (objAwaitPointerEvent2 != $result3) {
                }
                break;
            case 1:
                requireUnconsumed2 = anonymousClass2.Z$0;
                pass2 = (PointerEventPass) anonymousClass2.L$1;
                $this$awaitFirstDown2 = (AwaitPointerEventScope) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result2);
                obj = $result3;
                $result = $result2;
                event = (PointerEvent) $result2;
                if (!isChangedToDown$default(event, !requireUnconsumed2, false, 2, null)) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object awaitFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitFirstDown(awaitPointerEventScope, z, pointerEventPass, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0054 -> B:18:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitPrimaryFirstDown(AwaitPointerEventScope $this$awaitPrimaryFirstDown, boolean requireUnconsumed, PointerEventPass pass, Continuation<? super PointerInputChange> continuation) {
        AnonymousClass1 anonymousClass1;
        AwaitPointerEventScope $this$awaitPrimaryFirstDown2;
        boolean requireUnconsumed2;
        PointerEventPass pass2;
        Object $result;
        Object obj;
        PointerEvent event;
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
                $this$awaitPrimaryFirstDown2 = $this$awaitPrimaryFirstDown;
                requireUnconsumed2 = requireUnconsumed;
                pass2 = pass;
                anonymousClass1.L$0 = $this$awaitPrimaryFirstDown2;
                anonymousClass1.L$1 = pass2;
                anonymousClass1.Z$0 = requireUnconsumed2;
                anonymousClass1.label = 1;
                Object objAwaitPointerEvent = $this$awaitPrimaryFirstDown2.awaitPointerEvent(pass2, anonymousClass1);
                if (objAwaitPointerEvent != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent;
                obj = obj2;
                event = (PointerEvent) $result2;
                if (!isChangedToDown(event, !requireUnconsumed2, true)) {
                    return event.getChanges().get(0);
                }
                $result2 = $result;
                $result3 = obj;
                anonymousClass1.L$0 = $this$awaitPrimaryFirstDown2;
                anonymousClass1.L$1 = pass2;
                anonymousClass1.Z$0 = requireUnconsumed2;
                anonymousClass1.label = 1;
                Object objAwaitPointerEvent2 = $this$awaitPrimaryFirstDown2.awaitPointerEvent(pass2, anonymousClass1);
                if (objAwaitPointerEvent2 != $result3) {
                }
                break;
            case 1:
                requireUnconsumed2 = anonymousClass1.Z$0;
                pass2 = (PointerEventPass) anonymousClass1.L$1;
                $this$awaitPrimaryFirstDown2 = (AwaitPointerEventScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result2);
                obj = $result3;
                $result = $result2;
                event = (PointerEvent) $result2;
                if (!isChangedToDown(event, !requireUnconsumed2, true)) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object awaitPrimaryFirstDown$default(AwaitPointerEventScope awaitPointerEventScope, boolean z, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitPrimaryFirstDown(awaitPointerEventScope, z, pointerEventPass, continuation);
    }

    public static /* synthetic */ boolean isChangedToDown$default(PointerEvent pointerEvent, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = TapGestureDetector_androidKt.firstDownRefersToPrimaryMouseButtonOnly();
        }
        return isChangedToDown(pointerEvent, z, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean isChangedToDown(PointerEvent $this$isChangedToDown, boolean requireUnconsumed, boolean onlyPrimaryMouseButton) {
        boolean onlyPrimaryButtonCausesDown;
        boolean z;
        if (onlyPrimaryMouseButton) {
            List<PointerInputChange> changes = $this$isChangedToDown.getChanges();
            int index$iv$iv = 0;
            int size = changes.size();
            while (true) {
                if (index$iv$iv < size) {
                    Object item$iv$iv = changes.get(index$iv$iv);
                    if (!PointerType.m6081equalsimpl0(((PointerInputChange) item$iv$iv).getType(), PointerType.INSTANCE.m6086getMouseT8wyACA())) {
                        z = false;
                        break;
                    }
                    index$iv$iv++;
                } else {
                    z = true;
                    break;
                }
            }
            onlyPrimaryButtonCausesDown = z;
        }
        if (onlyPrimaryButtonCausesDown && !PointerEvent_androidKt.m5983isPrimaryPressedaHzCxE($this$isChangedToDown.getButtons())) {
            return false;
        }
        List<PointerInputChange> changes2 = $this$isChangedToDown.getChanges();
        int size2 = changes2.size();
        for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
            Object item$iv$iv2 = changes2.get(index$iv$iv2);
            PointerInputChange it = (PointerInputChange) item$iv$iv2;
            if (!(requireUnconsumed ? PointerEventKt.changedToDown(it) : PointerEventKt.changedToDownIgnoreConsumed(it))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e9 A[LOOP:2: B:30:0x00b9->B:41:0x00e9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x009c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x010c -> B:49:0x010e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object waitForUpOrCancellation(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, Continuation<? super PointerInputChange> continuation) {
        C02722 c02722;
        PointerEventPass pass;
        AwaitPointerEventScope $this$waitForUpOrCancellation;
        Object obj;
        Object $result;
        int index$iv$iv;
        int size;
        int i;
        PointerEventPass pass2;
        Object obj2;
        boolean z;
        PointerEventPass pass3;
        AwaitPointerEventScope $this$waitForUpOrCancellation2;
        boolean z2;
        int index$iv$iv2;
        int size2;
        boolean z3;
        if (continuation instanceof C02722) {
            c02722 = (C02722) continuation;
            if ((c02722.label & Integer.MIN_VALUE) != 0) {
                c02722.label -= Integer.MIN_VALUE;
            } else {
                c02722 = new C02722(continuation);
            }
        }
        Object $result2 = c02722.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = 0;
        int i3 = 1;
        switch (c02722.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                AwaitPointerEventScope $this$waitForUpOrCancellation3 = awaitPointerEventScope;
                pass = pointerEventPass;
                c02722.L$0 = $this$waitForUpOrCancellation3;
                c02722.L$1 = pass;
                c02722.label = i3;
                Object objAwaitPointerEvent = $this$waitForUpOrCancellation3.awaitPointerEvent(pass, c02722);
                if (objAwaitPointerEvent != $result3) {
                    return $result3;
                }
                Object obj3 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent;
                $this$waitForUpOrCancellation = $this$waitForUpOrCancellation3;
                obj = obj3;
                PointerEvent event = (PointerEvent) $result2;
                List<PointerInputChange> changes = event.getChanges();
                index$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv >= size) {
                        Object item$iv$iv = changes.get(index$iv$iv);
                        if (PointerEventKt.changedToUp((PointerInputChange) item$iv$iv)) {
                            index$iv$iv++;
                        } else {
                            i = i2;
                        }
                    } else {
                        i = i3;
                    }
                }
                if (i == 0) {
                    return event.getChanges().get(i2);
                }
                List<PointerInputChange> changes2 = event.getChanges();
                int index$iv$iv3 = 0;
                int size3 = changes2.size();
                while (true) {
                    if (index$iv$iv3 < size3) {
                        Object it$iv = changes2.get(index$iv$iv3);
                        PointerInputChange it = (PointerInputChange) it$iv;
                        if (it.isConsumed()) {
                            pass2 = pass;
                            obj2 = null;
                        } else {
                            obj2 = null;
                            pass2 = pass;
                            if (!PointerEventKt.m5955isOutOfBoundsjwHxaWs(it, $this$waitForUpOrCancellation.mo5906getSizeYbymL2g(), $this$waitForUpOrCancellation.mo5905getExtendedTouchPaddingNHjbRc())) {
                                z2 = false;
                            }
                            if (z2) {
                                index$iv$iv3++;
                                pass = pass2;
                            } else {
                                z = true;
                            }
                        }
                        z2 = true;
                        if (z2) {
                        }
                    } else {
                        pass2 = pass;
                        obj2 = null;
                        z = false;
                    }
                }
                if (z) {
                    return obj2;
                }
                PointerEventPass pointerEventPass2 = PointerEventPass.Final;
                c02722.L$0 = $this$waitForUpOrCancellation;
                PointerEventPass pass4 = pass2;
                c02722.L$1 = pass4;
                c02722.label = 2;
                $result2 = $this$waitForUpOrCancellation.awaitPointerEvent(pointerEventPass2, c02722);
                if ($result2 == obj) {
                    return obj;
                }
                pass3 = pass4;
                $this$waitForUpOrCancellation2 = $this$waitForUpOrCancellation;
                PointerEvent consumeCheck = (PointerEvent) $result2;
                List<PointerInputChange> changes3 = consumeCheck.getChanges();
                index$iv$iv2 = 0;
                size2 = changes3.size();
                while (true) {
                    if (index$iv$iv2 >= size2) {
                        Object item$iv$iv2 = changes3.get(index$iv$iv2);
                        if (((PointerInputChange) item$iv$iv2).isConsumed()) {
                            z3 = true;
                        } else {
                            index$iv$iv2++;
                        }
                    } else {
                        z3 = false;
                    }
                }
                if (!z3) {
                    return obj2;
                }
                $result2 = $result;
                $result3 = obj;
                $this$waitForUpOrCancellation3 = $this$waitForUpOrCancellation2;
                i2 = 0;
                i3 = 1;
                pass = pass3;
                c02722.L$0 = $this$waitForUpOrCancellation3;
                c02722.L$1 = pass;
                c02722.label = i3;
                Object objAwaitPointerEvent2 = $this$waitForUpOrCancellation3.awaitPointerEvent(pass, c02722);
                if (objAwaitPointerEvent2 != $result3) {
                }
                break;
            case 1:
                PointerEventPass pass5 = (PointerEventPass) c02722.L$1;
                AwaitPointerEventScope $this$waitForUpOrCancellation4 = (AwaitPointerEventScope) c02722.L$0;
                ResultKt.throwOnFailure($result2);
                $this$waitForUpOrCancellation = $this$waitForUpOrCancellation4;
                pass = pass5;
                obj = $result3;
                $result = $result2;
                PointerEvent event2 = (PointerEvent) $result2;
                List<PointerInputChange> changes4 = event2.getChanges();
                index$iv$iv = 0;
                size = changes4.size();
                while (true) {
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv++;
                }
                if (i == 0) {
                }
                break;
            case 2:
                PointerEventPass pass6 = (PointerEventPass) c02722.L$1;
                $this$waitForUpOrCancellation2 = (AwaitPointerEventScope) c02722.L$0;
                ResultKt.throwOnFailure($result2);
                pass3 = pass6;
                obj2 = null;
                obj = $result3;
                $result = $result2;
                PointerEvent consumeCheck2 = (PointerEvent) $result2;
                List<PointerInputChange> changes32 = consumeCheck2.getChanges();
                index$iv$iv2 = 0;
                size2 = changes32.size();
                while (true) {
                    if (index$iv$iv2 >= size2) {
                    }
                    index$iv$iv2++;
                }
                if (!z3) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object waitForUpOrCancellation$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return waitForUpOrCancellation(awaitPointerEventScope, pointerEventPass, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r4v0, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object waitForLongPress(AwaitPointerEventScope $this$waitForLongPress, PointerEventPass pass, Continuation<? super LongPressResult> continuation) {
        C02701 c02701;
        Ref.ObjectRef result;
        if (continuation instanceof C02701) {
            c02701 = (C02701) continuation;
            if ((c02701.label & Integer.MIN_VALUE) != 0) {
                c02701.label -= Integer.MIN_VALUE;
            } else {
                c02701 = new C02701(continuation);
            }
        }
        Object $result = c02701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c02701.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Ref.ObjectRef result2 = new Ref.ObjectRef();
                    result2.element = LongPressResult.Canceled.INSTANCE;
                    long longPressTimeoutMillis = $this$waitForLongPress.getViewConfiguration().getLongPressTimeoutMillis();
                    C02712 c02712 = new C02712(pass, result2, null);
                    c02701.L$0 = result2;
                    c02701.label = 1;
                    if ($this$waitForLongPress.withTimeout(longPressTimeoutMillis, c02712, c02701) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = result2;
                    break;
                    break;
                case 1:
                    result = (Ref.ObjectRef) c02701.L$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return result.element;
        } catch (PointerEventTimeoutCancellationException e) {
            return LongPressResult.Success.INSTANCE;
        }
    }

    public static /* synthetic */ Object waitForLongPress$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return waitForLongPress(awaitPointerEventScope, pointerEventPass, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2", f = "TapGestureDetector.kt", i = {0, 1}, l = {386, 409}, m = "invokeSuspend", n = {"$this$withTimeout", "$this$withTimeout"}, s = {"L$0", "L$0"}, v = 1)
    static final class C02712 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PointerEventPass $pass;
        final /* synthetic */ Ref.ObjectRef<LongPressResult> $result;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02712(PointerEventPass pointerEventPass, Ref.ObjectRef<LongPressResult> objectRef, Continuation<? super C02712> continuation) {
            super(2, continuation);
            this.$pass = pointerEventPass;
            this.$result = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02712 c02712 = new C02712(this.$pass, this.$result, continuation);
            c02712.L$0 = obj;
            return c02712;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((C02712) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00e4 A[LOOP:2: B:26:0x00b5->B:37:0x00e4, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x013b  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0137 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x007e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00e2 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r2v10, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
        /* JADX WARN: Type inference failed for: r2v12, types: [T, androidx.compose.foundation.gestures.LongPressResult$Success] */
        /* JADX WARN: Type inference failed for: r2v21, types: [T, androidx.compose.foundation.gestures.LongPressResult$Canceled] */
        /* JADX WARN: Type inference failed for: r4v4, types: [T, androidx.compose.foundation.gestures.LongPressResult$Released] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x010b -> B:44:0x010e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object $result;
            C02712 c02712;
            AwaitPointerEventScope $this$withTimeout;
            Object $result2;
            int index$iv$iv;
            int size;
            int i;
            boolean z;
            Object $result3;
            int $i$f$fastAny;
            int $i$f$fastForEach;
            boolean z2;
            int index$iv$iv2;
            int size2;
            boolean z3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = 0;
            int i3 = 1;
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Object $result4 = obj;
                    AwaitPointerEventScope $this$withTimeout2 = (AwaitPointerEventScope) this.L$0;
                    C02712 c027122 = this;
                    c027122.L$0 = $this$withTimeout2;
                    c027122.label = i3;
                    Object objAwaitPointerEvent = $this$withTimeout2.awaitPointerEvent(c027122.$pass, c027122);
                    if (objAwaitPointerEvent != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    AwaitPointerEventScope awaitPointerEventScope = $this$withTimeout2;
                    $result2 = $result4;
                    $result = objAwaitPointerEvent;
                    c02712 = c027122;
                    $this$withTimeout = awaitPointerEventScope;
                    PointerEvent event = (PointerEvent) $result;
                    List<PointerInputChange> changes = event.getChanges();
                    index$iv$iv = 0;
                    size = changes.size();
                    while (true) {
                        if (index$iv$iv >= size) {
                            Object item$iv$iv = changes.get(index$iv$iv);
                            if (PointerEventKt.changedToUp((PointerInputChange) item$iv$iv)) {
                                index$iv$iv++;
                            } else {
                                i = i2;
                            }
                        } else {
                            i = i3;
                        }
                    }
                    if (i != 0) {
                        c02712.$result.element = new LongPressResult.Released(event.getChanges().get(i2));
                    } else if (TapGestureDetector_androidKt.isDeepPress(event)) {
                        c02712.$result.element = LongPressResult.Success.INSTANCE;
                    } else {
                        List<PointerInputChange> changes2 = event.getChanges();
                        int $i$f$fastAny2 = 0;
                        int $i$f$fastForEach2 = 0;
                        int index$iv$iv3 = 0;
                        int size3 = changes2.size();
                        while (true) {
                            if (index$iv$iv3 < size3) {
                                Object it$iv = changes2.get(index$iv$iv3);
                                PointerInputChange it = (PointerInputChange) it$iv;
                                if (it.isConsumed()) {
                                    $i$f$fastAny = $i$f$fastAny2;
                                    $i$f$fastForEach = $i$f$fastForEach2;
                                } else {
                                    $i$f$fastAny = $i$f$fastAny2;
                                    $i$f$fastForEach = $i$f$fastForEach2;
                                    if (!PointerEventKt.m5955isOutOfBoundsjwHxaWs(it, $this$withTimeout.mo5906getSizeYbymL2g(), $this$withTimeout.mo5905getExtendedTouchPaddingNHjbRc())) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        index$iv$iv3++;
                                        $i$f$fastAny2 = $i$f$fastAny;
                                        $i$f$fastForEach2 = $i$f$fastForEach;
                                    } else {
                                        z = true;
                                    }
                                }
                                z2 = true;
                                if (z2) {
                                }
                            } else {
                                z = false;
                            }
                        }
                        if (z) {
                            c02712.$result.element = LongPressResult.Canceled.INSTANCE;
                        } else {
                            c02712.L$0 = $this$withTimeout;
                            c02712.label = 2;
                            $result3 = $this$withTimeout.awaitPointerEvent(PointerEventPass.Final, c02712);
                            if ($result3 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            PointerEvent consumeCheck = (PointerEvent) $result3;
                            List<PointerInputChange> changes3 = consumeCheck.getChanges();
                            index$iv$iv2 = 0;
                            size2 = changes3.size();
                            while (true) {
                                if (index$iv$iv2 >= size2) {
                                    Object item$iv$iv2 = changes3.get(index$iv$iv2);
                                    if (((PointerInputChange) item$iv$iv2).isConsumed()) {
                                        z3 = true;
                                    } else {
                                        index$iv$iv2++;
                                    }
                                } else {
                                    z3 = false;
                                }
                            }
                            if (z3) {
                                $result4 = $result2;
                                $this$withTimeout2 = $this$withTimeout;
                                c027122 = c02712;
                                i2 = 0;
                                i3 = 1;
                                c027122.L$0 = $this$withTimeout2;
                                c027122.label = i3;
                                Object objAwaitPointerEvent2 = $this$withTimeout2.awaitPointerEvent(c027122.$pass, c027122);
                                if (objAwaitPointerEvent2 != coroutine_suspended) {
                                }
                            } else {
                                c02712.$result.element = LongPressResult.Canceled.INSTANCE;
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    $result = obj;
                    AwaitPointerEventScope $this$withTimeout3 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    c02712 = this;
                    $this$withTimeout = $this$withTimeout3;
                    $result2 = $result;
                    PointerEvent event2 = (PointerEvent) $result;
                    List<PointerInputChange> changes4 = event2.getChanges();
                    index$iv$iv = 0;
                    size = changes4.size();
                    while (true) {
                        if (index$iv$iv >= size) {
                        }
                        index$iv$iv++;
                    }
                    if (i != 0) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    $result3 = obj;
                    AwaitPointerEventScope $this$withTimeout4 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result3);
                    c02712 = this;
                    $this$withTimeout = $this$withTimeout4;
                    $result2 = $result3;
                    PointerEvent consumeCheck2 = (PointerEvent) $result3;
                    List<PointerInputChange> changes32 = consumeCheck2.getChanges();
                    index$iv$iv2 = 0;
                    size2 = changes32.size();
                    while (true) {
                        if (index$iv$iv2 >= size2) {
                        }
                        index$iv$iv2++;
                    }
                    if (z3) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final void setDetectTapGesturesEnableNewDispatchingBehavior(boolean value) {
        ComposeFoundationFlags composeFoundationFlags = ComposeFoundationFlags.INSTANCE;
        ComposeFoundationFlags.isDetectTapGesturesImmediateCoroutineDispatchEnabled = value;
    }

    public static final boolean getDetectTapGesturesEnableNewDispatchingBehavior() {
        return ComposeFoundationFlags.isDetectTapGesturesImmediateCoroutineDispatchEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineStart getCoroutineStartForCurrentDispatchBehavior() {
        if (ComposeFoundationFlags.isDetectTapGesturesImmediateCoroutineDispatchEnabled) {
            return CoroutineStart.UNDISPATCHED;
        }
        return CoroutineStart.DEFAULT;
    }

    static /* synthetic */ Job launchAwaitingReset$default(CoroutineScope coroutineScope, Job job, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineStart = getCoroutineStartForCurrentDispatchBehavior();
        }
        return launchAwaitingReset(coroutineScope, job, coroutineStart, function2);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$launchAwaitingReset$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$launchAwaitingReset$1", f = "TapGestureDetector.kt", i = {0}, l = {498, LogSeverity.ERROR_VALUE}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"}, v = 1)
    static final class C02691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<CoroutineScope, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ Job $resetJob;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02691(Job job, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C02691> continuation) {
            super(2, continuation);
            this.$resetJob = job;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02691 c02691 = new C02691(this.$resetJob, this.$block, continuation);
            c02691.L$0 = obj;
            return c02691;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02691) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0049 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            CoroutineScope $this$launch;
            Function2<CoroutineScope, Continuation<? super Unit>, Object> function2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$launch = (CoroutineScope) this.L$0;
                    if (ComposeFoundationFlags.isDetectTapGesturesImmediateCoroutineDispatchEnabled) {
                        this.L$0 = $this$launch;
                        this.label = 1;
                        if (this.$resetJob.join(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    function2 = this.$block;
                    this.L$0 = null;
                    this.label = 2;
                    if (function2.invoke($this$launch, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 1:
                    $this$launch = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    function2 = this.$block;
                    this.L$0 = null;
                    this.label = 2;
                    if (function2.invoke($this$launch, this) == coroutine_suspended) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private static final Job launchAwaitingReset(CoroutineScope $this$launchAwaitingReset, Job resetJob, CoroutineStart start, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return BuildersKt__Builders_commonKt.launch$default($this$launchAwaitingReset, null, start, new C02691(resetJob, function2, null), 1, null);
    }
}
