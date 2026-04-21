package androidx.compose.foundation.gestures;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: DragGestureDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aV\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000426\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0004\b\r\u0010\u000e\u001a0\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f0\u0012H\u0086@¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0080\u0001\u0010\u0018\u001a\u00020\f*\u00020\u00192\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u00122\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c26\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0002\u0010\u001f\u001aè\u0001\u0010\u0018\u001a\u00020\f*\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!2M\b\u0002\u0010\u001a\u001aG\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b($\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\f0\"2#\b\u0002\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\f0\u00122\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100\u001c26\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0002\u0010'\u001a\u0080\u0001\u0010(\u001a\u00020\f*\u00020\u00192\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u00122\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c26\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0002\u0010\u001f\u001aV\u0010)\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000426\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0004\b+\u0010\u000e\u001a^\u0010,\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.26\u0010/\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0004\b0\u00101\u001a0\u00102\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f0\u0012H\u0086@¢\u0006\u0004\b3\u0010\u0014\u001a\u001e\u00104\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b5\u0010\u0017\u001a\u0080\u0001\u00106\u001a\u00020\f*\u00020\u00192\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u00122\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c26\u00107\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0002\u0010\u001f\u001aV\u00108\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000426\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0004\b9\u0010\u000e\u001a^\u0010:\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.26\u0010/\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0004\b;\u00101\u001a0\u0010<\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f0\u0012H\u0086@¢\u0006\u0004\b=\u0010\u0014\u001a\u001e\u0010>\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@¢\u0006\u0004\b?\u0010\u0017\u001a\u0080\u0001\u0010@\u001a\u00020\f*\u00020\u00192\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u00122\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c26\u0010A\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110*¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0006H\u0086@¢\u0006\u0002\u0010\u001f\u001aP\u0010\u000f\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f0\u00122\b\u0010B\u001a\u0004\u0018\u00010!2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00100\u0012H\u0080H¢\u0006\u0004\bD\u0010E\u001a2\u0010F\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00100\u0012H\u0082H¢\u0006\u0004\bH\u0010\u0014\u001aT\u0010I\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.2\b\u0010B\u001a\u0004\u0018\u00010!2\b\b\u0002\u0010J\u001a\u00020\n2\u0018\u0010/\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u0006H\u0080H¢\u0006\u0004\bK\u0010L\u001a$\u0010M\u001a\u00020\u0010*\u00020\u00022\u0006\u0010J\u001a\u00020\u00012\b\b\u0002\u0010N\u001a\u00020OH\u0080@¢\u0006\u0002\u0010P\u001a\u001e\u0010Q\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@¢\u0006\u0004\bR\u0010\u0017\u001a\u001b\u0010S\u001a\u00020\u0010*\u00020T2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¢\u0006\u0004\bU\u0010V\u001a\u001b\u0010\\\u001a\u00020**\u00020]2\u0006\u0010-\u001a\u00020.H\u0000¢\u0006\u0004\b^\u0010_\"\u0010\u0010W\u001a\u00020XX\u0082\u0004¢\u0006\u0004\n\u0002\u0010Y\"\u0010\u0010Z\u001a\u00020XX\u0082\u0004¢\u0006\u0004\n\u0002\u0010Y\"\u000e\u0010[\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006`"}, d2 = {"awaitTouchSlopOrCancellation", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "onTouchSlopReached", "Lkotlin/Function2;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "change", "Landroidx/compose/ui/geometry/Offset;", "overSlop", "", "awaitTouchSlopOrCancellation-jO51t88", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "drag", "", "onDrag", "Lkotlin/Function1;", "drag-jO51t88", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitDragOrCancellation", "awaitDragOrCancellation-rnUCldI", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectDragGestures", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onDragStart", "onDragEnd", "Lkotlin/Function0;", "onDragCancel", "dragAmount", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "orientationLock", "Landroidx/compose/foundation/gestures/Orientation;", "Lkotlin/Function3;", "down", "slopTriggerChange", "overSlopOffset", "shouldAwaitTouchSlop", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectDragGesturesAfterLongPress", "awaitVerticalTouchSlopOrCancellation", "", "awaitVerticalTouchSlopOrCancellation-jO51t88", "awaitVerticalPointerSlopOrCancellation", "pointerType", "Landroidx/compose/ui/input/pointer/PointerType;", "onPointerSlopReached", "awaitVerticalPointerSlopOrCancellation-gDDlDlE", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verticalDrag", "verticalDrag-jO51t88", "awaitVerticalDragOrCancellation", "awaitVerticalDragOrCancellation-rnUCldI", "detectVerticalDragGestures", "onVerticalDrag", "awaitHorizontalTouchSlopOrCancellation", "awaitHorizontalTouchSlopOrCancellation-jO51t88", "awaitHorizontalPointerSlopOrCancellation", "awaitHorizontalPointerSlopOrCancellation-gDDlDlE", "horizontalDrag", "horizontalDrag-jO51t88", "awaitHorizontalDragOrCancellation", "awaitHorizontalDragOrCancellation-rnUCldI", "detectHorizontalDragGestures", "onHorizontalDrag", "orientation", "motionConsumed", "drag-VnAYq1g", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitDragOrUp", "hasDragged", "awaitDragOrUp-jO51t88", "awaitPointerSlopOrCancellation", "initialPositionChange", "awaitPointerSlopOrCancellation-6ksA65w", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILandroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitAllPointersUpWithSlopDetection", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitLongPressOrCancellation", "awaitLongPressOrCancellation-rnUCldI", "isPointerUp", "Landroidx/compose/ui/input/pointer/PointerEvent;", "isPointerUp-DmW0f2w", "(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z", "mouseSlop", "Landroidx/compose/ui/unit/Dp;", "F", "defaultTouchSlop", "mouseToTouchSlopRatio", "pointerSlop", "Landroidx/compose/ui/platform/ViewConfiguration;", "pointerSlop-E8SPZFQ", "(Landroidx/compose/ui/platform/ViewConfiguration;I)F", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class DragGestureDetectorKt {
    private static final float mouseSlop = Dp.m7505constructorimpl((float) 0.125d);
    private static final float defaultTouchSlop = Dp.m7505constructorimpl(18);
    private static final float mouseToTouchSlopRatio = mouseSlop / defaultTouchSlop;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitAllPointersUpWithSlopDetection$1, reason: invalid class name */
    /* JADX INFO: compiled from: DragGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", i = {0, 0, 0, 0, 0, 0}, l = {897}, m = "awaitAllPointersUpWithSlopDetection", n = {"$this$awaitAllPointersUpWithSlopDetection", "pass", "pointer", "touchSlopDetector", "pointerSlopReached", "touchSlop"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "F$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        float F$0;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureDetectorKt.awaitAllPointersUpWithSlopDetection(null, null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0113 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01da -> B:62:0x01e3). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m467awaitTouchSlopOrCancellationjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitTouchSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
        Function2<? super PointerInputChange, ? super Offset, Unit> function22;
        int i;
        Ref.LongRef pointer$iv;
        float touchSlop$iv;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
        TouchSlopDetector touchSlopDetector$iv;
        Ref.LongRef pointer$iv2;
        float touchSlop$iv2;
        int touchSlop$iv3;
        Object obj;
        Object $result;
        PointerEvent event$iv;
        int index$iv$iv$iv;
        int size;
        PointerEvent event$iv2;
        Object $result2;
        int i2;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        int i3;
        PointerEventPass pointerEventPass;
        Function2<? super PointerInputChange, ? super Offset, Unit> function23;
        TouchSlopDetector touchSlopDetector$iv2;
        PointerInputChange dragEvent$iv2;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
        Object it$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitTouchSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1 = (DragGestureDetectorKt$awaitTouchSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1 = new DragGestureDetectorKt$awaitTouchSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass2 = null;
        switch (dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope;
                function22 = function2;
                int iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
                long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                i = 0;
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getCurrentEvent(), j)) {
                    return null;
                }
                float touchSlop$iv4 = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getViewConfiguration(), iM6088getTouchT8wyACA);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = j;
                TouchSlopDetector touchSlopDetector$iv3 = new TouchSlopDetector(null, jM4468getZeroF1C5BW0, null);
                touchSlop$iv = touchSlop$iv4;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                obj = obj2;
                touchSlop$iv2 = touchSlop$iv;
                touchSlopDetector$iv = touchSlopDetector$iv3;
                touchSlop$iv3 = i;
                pointer$iv2 = pointer$iv;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        i2 = touchSlop$iv3;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv2.element)) {
                            index$iv$iv$iv++;
                            touchSlop$iv3 = i2;
                            $result = $result2;
                            event$iv = event$iv2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        i2 = touchSlop$iv3;
                        it$iv$iv = null;
                    }
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null && !dragEvent$iv.isConsumed()) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                        long postSlopOffset$iv = touchSlopDetector$iv.m604addPositionsakrDWew(dragEvent$iv.getPosition(), dragEvent$iv.getPreviousPosition(), touchSlop$iv2);
                        touchSlop$iv = touchSlop$iv2;
                        if ((9223372034707292159L & postSlopOffset$iv) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                            function22.invoke(dragEvent$iv, Offset.m4441boximpl(postSlopOffset$iv));
                            if (dragEvent$iv.isConsumed()) {
                                return dragEvent$iv;
                            }
                            TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector$iv, 0L, 1, null);
                            i = i2;
                            $result3 = $result2;
                            i4 = 1;
                            coroutine_suspended = obj;
                            pointer$iv = pointer$iv2;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlopDetector$iv3 = touchSlopDetector$iv;
                            pointerEventPass2 = null;
                        } else {
                            i3 = 1;
                            pointerEventPass = null;
                            PointerEventPass pointerEventPass3 = PointerEventPass.Final;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0 = function22;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2 = pointer$iv2;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$4 = dragEvent$iv;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label = 2;
                            if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2.awaitPointerEvent(pointerEventPass3, dragGestureDetectorKt$awaitTouchSlopOrCancellation$1) == obj) {
                                return obj;
                            }
                            i = i2;
                            pointer$iv = pointer$iv2;
                            function23 = function22;
                            touchSlopDetector$iv2 = touchSlopDetector$iv;
                            dragEvent$iv2 = dragEvent$iv;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            $result3 = $result2;
                            if (!dragEvent$iv2.isConsumed()) {
                                return pointerEventPass;
                            }
                            touchSlopDetector$iv3 = touchSlopDetector$iv2;
                            pointerEventPass2 = pointerEventPass;
                            function22 = function23;
                            i4 = i3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
                        }
                    } else {
                        List<PointerInputChange> changes2 = event$iv2.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv == null) {
                            return null;
                        }
                        pointer$iv2.element = otherDown$iv.getId();
                        touchSlop$iv = touchSlop$iv2;
                        i = i2;
                        $result3 = $result2;
                        i4 = 1;
                        coroutine_suspended = obj;
                        pointer$iv = pointer$iv2;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                        touchSlopDetector$iv3 = touchSlopDetector$iv;
                        pointerEventPass2 = null;
                    }
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0 = function22;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2 = pointer$iv;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label = i4;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitTouchSlopOrCancellation$1, i4, pointerEventPass2);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                }
                return null;
            case 1:
                float touchSlop$iv5 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0;
                TouchSlopDetector touchSlopDetector$iv4 = (TouchSlopDetector) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Offset, Unit> function24 = (Function2) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                touchSlopDetector$iv = touchSlopDetector$iv4;
                pointer$iv2 = pointer$iv3;
                function22 = function24;
                touchSlop$iv2 = touchSlop$iv5;
                touchSlop$iv3 = 0;
                obj = coroutine_suspended;
                $result = $result3;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    touchSlop$iv3 = i2;
                    $result = $result2;
                    event$iv = event$iv2;
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                }
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                touchSlop$iv = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$4;
                touchSlopDetector$iv2 = (TouchSlopDetector) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Offset, Unit> function25 = (Function2) dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                i = 0;
                pointer$iv = pointer$iv4;
                obj = coroutine_suspended;
                i3 = 1;
                function23 = function25;
                pointerEventPass = null;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004f -> B:18:0x0052). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: drag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m473dragjO51t88(AwaitPointerEventScope $this$drag_u2djO51t88, long j, Function1<? super PointerInputChange, Unit> function1, Continuation<? super Boolean> continuation) {
        DragGestureDetectorKt$drag$1 dragGestureDetectorKt$drag$1;
        AwaitPointerEventScope $this$drag_u2djO51t882;
        Function1<? super PointerInputChange, Unit> function12;
        Object $result;
        PointerInputChange change;
        if (continuation instanceof DragGestureDetectorKt$drag$1) {
            dragGestureDetectorKt$drag$1 = (DragGestureDetectorKt$drag$1) continuation;
            if ((dragGestureDetectorKt$drag$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$drag$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$drag$1 = new DragGestureDetectorKt$drag$1(continuation);
            }
        }
        Object $result2 = dragGestureDetectorKt$drag$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (dragGestureDetectorKt$drag$1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                long pointer = j;
                $this$drag_u2djO51t882 = $this$drag_u2djO51t88;
                function12 = function1;
                dragGestureDetectorKt$drag$1.L$0 = $this$drag_u2djO51t882;
                dragGestureDetectorKt$drag$1.L$1 = function12;
                dragGestureDetectorKt$drag$1.label = 1;
                Object objM458awaitDragOrCancellationrnUCldI = m458awaitDragOrCancellationrnUCldI($this$drag_u2djO51t882, pointer, dragGestureDetectorKt$drag$1);
                if (objM458awaitDragOrCancellationrnUCldI != coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj = $result2;
                $result2 = objM458awaitDragOrCancellationrnUCldI;
                $result = obj;
                change = (PointerInputChange) $result2;
                if (change == null) {
                    return Boxing.boxBoolean(false);
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(change)) {
                    return Boxing.boxBoolean(true);
                }
                function12.invoke(change);
                pointer = change.getId();
                $result2 = $result;
                dragGestureDetectorKt$drag$1.L$0 = $this$drag_u2djO51t882;
                dragGestureDetectorKt$drag$1.L$1 = function12;
                dragGestureDetectorKt$drag$1.label = 1;
                Object objM458awaitDragOrCancellationrnUCldI2 = m458awaitDragOrCancellationrnUCldI($this$drag_u2djO51t882, pointer, dragGestureDetectorKt$drag$1);
                if (objM458awaitDragOrCancellationrnUCldI2 != coroutine_suspended) {
                }
                break;
            case 1:
                function12 = (Function1) dragGestureDetectorKt$drag$1.L$1;
                $this$drag_u2djO51t882 = (AwaitPointerEventScope) dragGestureDetectorKt$drag$1.L$0;
                ResultKt.throwOnFailure($result2);
                $result = $result2;
                change = (PointerInputChange) $result2;
                if (change == null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0104, code lost:
    
        if (androidx.compose.ui.input.pointer.PointerEventKt.positionChangedIgnoreConsumed(r16) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0119 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006f -> B:21:0x0078). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m458awaitDragOrCancellationrnUCldI(AwaitPointerEventScope $this$awaitDragOrCancellation_u2drnUCldI, long j, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitDragOrCancellation$1 dragGestureDetectorKt$awaitDragOrCancellation$1;
        Object $result;
        AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv;
        Ref.LongRef pointer$iv;
        AwaitPointerEventScope awaitPointerEventScope;
        Object obj;
        int index$iv$iv$iv;
        int size;
        Continuation<? super PointerInputChange> continuation2;
        DragGestureDetectorKt$awaitDragOrCancellation$1 dragGestureDetectorKt$awaitDragOrCancellation$12;
        Object it$iv$iv;
        PointerInputChange change;
        Object it$iv$iv2;
        Continuation<? super PointerInputChange> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$awaitDragOrCancellation$1) {
            dragGestureDetectorKt$awaitDragOrCancellation$1 = (DragGestureDetectorKt$awaitDragOrCancellation$1) continuation3;
            if ((dragGestureDetectorKt$awaitDragOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitDragOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitDragOrCancellation$1 = new DragGestureDetectorKt$awaitDragOrCancellation$1(continuation3);
            }
        }
        Object $result2 = dragGestureDetectorKt$awaitDragOrCancellation$1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = 1;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$awaitDragOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                if (m475isPointerUpDmW0f2w($this$awaitDragOrCancellation_u2drnUCldI.getCurrentEvent(), j)) {
                    return null;
                }
                Ref.LongRef pointer$iv2 = new Ref.LongRef();
                pointer$iv2.element = j;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrCancellation_u2drnUCldI;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv3 = null;
                Ref.LongRef pointer$iv3 = pointer$iv2;
                dragGestureDetectorKt$awaitDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                dragGestureDetectorKt$awaitDragOrCancellation$1.L$1 = pointer$iv3;
                dragGestureDetectorKt$awaitDragOrCancellation$1.label = i;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitDragOrCancellation$1, i, pointerEventPass);
                if (objAwaitPointerEvent$default != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent$default;
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv2;
                pointer$iv = pointer$iv3;
                awaitPointerEventScope = $this$awaitDragOrUp_u2djO51t88$iv3;
                obj = obj2;
                PointerEvent event$iv = (PointerEvent) $result2;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitDragOrCancellation$12 = dragGestureDetectorKt$awaitDragOrCancellation$1;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv++;
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitDragOrCancellation$1 = dragGestureDetectorKt$awaitDragOrCancellation$12;
                        }
                    } else {
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitDragOrCancellation$12 = dragGestureDetectorKt$awaitDragOrCancellation$1;
                        it$iv$iv = null;
                    }
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(change)) {
                        List<PointerInputChange> changes2 = event$iv.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv != null) {
                            pointer$iv.element = otherDown$iv.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitDragOrCancellation$1 = dragGestureDetectorKt$awaitDragOrCancellation$12;
                            $result2 = $result;
                            $result3 = obj;
                            $this$awaitDragOrUp_u2djO51t88$iv3 = awaitPointerEventScope;
                            pointer$iv3 = pointer$iv;
                            $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                            i = 1;
                            pointerEventPass = null;
                        }
                    }
                    dragGestureDetectorKt$awaitDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                    dragGestureDetectorKt$awaitDragOrCancellation$1.L$1 = pointer$iv3;
                    dragGestureDetectorKt$awaitDragOrCancellation$1.label = i;
                    Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitDragOrCancellation$1, i, pointerEventPass);
                    if (objAwaitPointerEvent$default2 != $result3) {
                    }
                    break;
                } else {
                    change = null;
                }
                if (change == null && !change.isConsumed()) {
                    return null;
                }
                return change;
            case 1:
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitDragOrCancellation$1.L$1;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv4 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitDragOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result2);
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv4;
                pointer$iv = pointer$iv4;
                awaitPointerEventScope = null;
                obj = $result3;
                $result = $result2;
                PointerEvent event$iv2 = (PointerEvent) $result2;
                List<PointerInputChange> changes3 = event$iv2.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$awaitDragOrCancellation$1 = dragGestureDetectorKt$awaitDragOrCancellation$12;
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                }
                if (change == null && !change.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object detectDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function02 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function02;
        return detectDragGestures(pointerInputScope, function1, function0, function03, function2, continuation);
    }

    public static final Object detectDragGestures(PointerInputScope $this$detectDragGestures, final Function1<? super Offset, Unit> function1, final Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super Unit> continuation) {
        Object objDetectDragGestures = detectDragGestures($this$detectDragGestures, null, new Function3() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return DragGestureDetectorKt.detectDragGestures$lambda$3(function1, (PointerInputChange) obj, (PointerInputChange) obj2, (Offset) obj3);
            }
        }, new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DragGestureDetectorKt.detectDragGestures$lambda$4(function0, (PointerInputChange) obj);
            }
        }, function02, new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(DragGestureDetectorKt.detectDragGestures$lambda$5());
            }
        }, function2, continuation);
        return objDetectDragGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectDragGestures : Unit.INSTANCE;
    }

    static final Unit detectDragGestures$lambda$3(Function1 $onDragStart, PointerInputChange pointerInputChange, PointerInputChange slopTriggerChange, Offset offset) {
        $onDragStart.invoke(Offset.m4441boximpl(slopTriggerChange.getPosition()));
        return Unit.INSTANCE;
    }

    static final Unit detectDragGestures$lambda$4(Function0 $onDragEnd, PointerInputChange it) {
        $onDragEnd.invoke();
        return Unit.INSTANCE;
    }

    static final boolean detectDragGestures$lambda$5() {
        return true;
    }

    static final boolean detectDragGestures$lambda$9() {
        return true;
    }

    public static final Object detectDragGestures(PointerInputScope $this$detectDragGestures, Orientation orientationLock, Function3<? super PointerInputChange, ? super PointerInputChange, ? super Offset, Unit> function3, Function1<? super PointerInputChange, Unit> function1, Function0<Unit> function0, Function0<Boolean> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super Unit> continuation) {
        Ref.LongRef overSlop = new Ref.LongRef();
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectDragGestures, new AnonymousClass13(function02, overSlop, orientationLock, function3, function2, function0, function1, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13, reason: invalid class name */
    /* JADX INFO: compiled from: DragGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13", f = "DragGestureDetector.kt", i = {0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7}, l = {248, 254, 1116, 1158, 279, 1197, 1240, 1252}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "initialDown", "awaitTouchSlop", "$this$awaitEachGesture", "down", "$this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv", "pointer$iv", "touchSlopDetector$iv", "touchSlop$iv", "$this$awaitEachGesture", "down", "$this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv", "pointer$iv", "touchSlopDetector$iv", "dragEvent$iv", "touchSlop$iv", "$this$awaitEachGesture", "down", "drag", "$this$awaitEachGesture", "down", "$this$awaitPointerSlopOrCancellation_u2d6ksA65w$iv", "pointer$iv", "touchSlopDetector$iv", "touchSlop$iv", "$this$awaitEachGesture", "down", "$this$awaitPointerSlopOrCancellation_u2d6ksA65w$iv", "pointer$iv", "touchSlopDetector$iv", "dragEvent$iv", "touchSlop$iv", "$this$drag_u2dVnAYq1g$iv", "$this$awaitDragOrUp_u2djO51t88$iv$iv", "pointer$iv$iv"}, s = {"L$0", "L$0", "L$1", "Z$0", "L$0", "L$1", "L$2", "L$4", "L$5", "F$0", "L$0", "L$1", "L$2", "L$4", "L$5", "L$6", "F$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$4", "L$5", "F$0", "L$0", "L$1", "L$2", "L$4", "L$5", "L$6", "F$0", "L$0", "L$2", "L$3"}, v = 1)
    static final class AnonymousClass13 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<PointerInputChange, Offset, Unit> $onDrag;
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function1<PointerInputChange, Unit> $onDragEnd;
        final /* synthetic */ Function3<PointerInputChange, PointerInputChange, Offset, Unit> $onDragStart;
        final /* synthetic */ Orientation $orientationLock;
        final /* synthetic */ Ref.LongRef $overSlop;
        final /* synthetic */ Function0<Boolean> $shouldAwaitTouchSlop;
        float F$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass13(Function0<Boolean> function0, Ref.LongRef longRef, Orientation orientation, Function3<? super PointerInputChange, ? super PointerInputChange, ? super Offset, Unit> function3, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Function0<Unit> function02, Function1<? super PointerInputChange, Unit> function1, Continuation<? super AnonymousClass13> continuation) {
            super(2, continuation);
            this.$shouldAwaitTouchSlop = function0;
            this.$overSlop = longRef;
            this.$orientationLock = orientation;
            this.$onDragStart = function3;
            this.$onDrag = function2;
            this.$onDragCancel = function02;
            this.$onDragEnd = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass13 anonymousClass13 = new AnonymousClass13(this.$shouldAwaitTouchSlop, this.$overSlop, this.$orientationLock, this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, continuation);
            anonymousClass13.L$0 = obj;
            return anonymousClass13;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass13) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:229:0x079f, code lost:
        
            if (r0 == false) goto L230;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Path cross not found for [B:154:0x0577, B:165:0x05bf], limit reached: 256 */
        /* JADX WARN: Path cross not found for [B:165:0x05bf, B:154:0x0577], limit reached: 256 */
        /* JADX WARN: Path cross not found for [B:207:0x072a, B:218:0x0761], limit reached: 256 */
        /* JADX WARN: Path cross not found for [B:51:0x02bb, B:62:0x02fe], limit reached: 256 */
        /* JADX WARN: Path cross not found for [B:62:0x02fe, B:51:0x02bb], limit reached: 256 */
        /* JADX WARN: Removed duplicated region for block: B:100:0x03e5  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0401  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x041d  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x0463  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x047f  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x04f5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:138:0x04f6  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0517  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x0577  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x05bf  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x063d  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x0647  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x064e  */
        /* JADX WARN: Removed duplicated region for block: B:186:0x065b  */
        /* JADX WARN: Removed duplicated region for block: B:193:0x06bf A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:194:0x06c0  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x06e2  */
        /* JADX WARN: Removed duplicated region for block: B:204:0x0720  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x0724  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:237:0x07be  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x01ce A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:240:0x07c7  */
        /* JADX WARN: Removed duplicated region for block: B:241:0x07cd  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x07d3  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x0711 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x01cf  */
        /* JADX WARN: Removed duplicated region for block: B:254:0x0419 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:258:0x047b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:260:0x0544 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:264:0x028c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x01e3  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0207  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x023a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x023b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x025d  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x02bb  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x02fe  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0378  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x037e  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x038a  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x038f  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0393  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x03e4 A[RETURN] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v10 */
        /* JADX WARN: Type inference failed for: r11v12 */
        /* JADX WARN: Type inference failed for: r11v13 */
        /* JADX WARN: Type inference failed for: r11v15, types: [androidx.compose.ui.input.pointer.PointerEventPass, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v16, types: [kotlin.jvm.internal.DefaultConstructorMarker] */
        /* JADX WARN: Type inference failed for: r11v17, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
        /* JADX WARN: Type inference failed for: r11v18 */
        /* JADX WARN: Type inference failed for: r11v19 */
        /* JADX WARN: Type inference failed for: r11v20 */
        /* JADX WARN: Type inference failed for: r11v37 */
        /* JADX WARN: Type inference failed for: r11v44, types: [androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v46 */
        /* JADX WARN: Type inference failed for: r11v5 */
        /* JADX WARN: Type inference failed for: r11v54 */
        /* JADX WARN: Type inference failed for: r11v6 */
        /* JADX WARN: Type inference failed for: r11v9 */
        /* JADX WARN: Type inference failed for: r35v2 */
        /* JADX WARN: Type inference failed for: r3v62 */
        /* JADX WARN: Type inference failed for: r3v63, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v66 */
        /* JADX WARN: Type inference failed for: r4v31 */
        /* JADX WARN: Type inference failed for: r4v44 */
        /* JADX WARN: Type inference failed for: r4v54 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x044b -> B:97:0x03c7). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:133:0x04b8 -> B:182:0x0642). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:148:0x0553 -> B:182:0x0642). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:151:0x0566 -> B:182:0x0642). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:163:0x05aa -> B:182:0x0642). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:172:0x05ef -> B:182:0x0642). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x062d -> B:179:0x0637). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:184:0x064e -> B:87:0x0391). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:194:0x06c0 -> B:195:0x06cb). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0203 -> B:80:0x037c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x029b -> B:80:0x037c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x02ac -> B:80:0x037c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x02eb -> B:80:0x037c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x032c -> B:80:0x037c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0368 -> B:76:0x0372). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            long j;
            long j2;
            Object obj2;
            Object obj3;
            AwaitPointerEventScope awaitPointerEventScope;
            boolean zBooleanValue;
            AwaitPointerEventScope awaitPointerEventScope2;
            Object objAwaitFirstDown$default;
            PointerInputChange pointerInputChange;
            Object obj4;
            PointerInputChange pointerInputChange2;
            ?? r11;
            AnonymousClass13 anonymousClass13;
            Object obj5;
            Ref.LongRef longRef;
            PointerInputChange pointerInputChange3;
            float f;
            TouchSlopDetector touchSlopDetector;
            Ref.LongRef longRef2;
            AwaitPointerEventScope awaitPointerEventScope3;
            AwaitPointerEventScope awaitPointerEventScope4;
            AnonymousClass13 anonymousClass132;
            PointerEvent pointerEvent;
            List<PointerInputChange> changes;
            int size;
            int i;
            PointerEvent pointerEvent2;
            Object obj6;
            Ref.LongRef longRef3;
            Object obj7;
            PointerInputChange pointerInputChange4;
            PointerInputChange pointerInputChange5;
            TouchSlopDetector touchSlopDetector2;
            float fM476pointerSlopE8SPZFQ;
            AwaitPointerEventScope awaitPointerEventScope5;
            Ref.LongRef longRef4;
            Ref.LongRef longRef5;
            Object obj8;
            List<PointerInputChange> list;
            Object obj9;
            PointerInputChange pointerInputChange6;
            AwaitPointerEventScope awaitPointerEventScope6;
            AnonymousClass13 anonymousClass133;
            ?? r4;
            Object obj10;
            AwaitPointerEventScope awaitPointerEventScope7;
            Ref.LongRef longRef6;
            float f2;
            TouchSlopDetector touchSlopDetector3;
            Ref.LongRef longRef7;
            Ref.LongRef longRef8;
            List<PointerInputChange> changes2;
            int i2;
            int size2;
            int i3;
            Object obj11;
            Object obj12;
            PointerInputChange pointerInputChange7;
            PointerInputChange pointerInputChange8;
            Ref.LongRef longRef9;
            float fM476pointerSlopE8SPZFQ2;
            Ref.LongRef longRef10;
            AwaitPointerEventScope awaitPointerEventScope8;
            TouchSlopDetector touchSlopDetector4;
            PointerInputChange pointerInputChange9;
            Object obj13;
            int i4;
            List<PointerInputChange> list2;
            int i5;
            int i6;
            int size3;
            boolean z;
            int i7;
            int size4;
            boolean z2;
            boolean z3;
            PointerInputChange pointerInputChange10;
            boolean z4;
            AwaitPointerEventScope awaitPointerEventScope9;
            AwaitPointerEventScope awaitPointerEventScope10;
            Object obj14;
            Object obj15;
            Function2<PointerInputChange, Offset, Unit> function2;
            Orientation orientation;
            int i8;
            Ref.LongRef longRef11;
            AnonymousClass13 anonymousClass134;
            int i9;
            PointerEvent pointerEvent3;
            int size5;
            int i10;
            AwaitPointerEventScope awaitPointerEventScope11;
            Object obj16;
            PointerEvent pointerEvent4;
            Object obj17;
            Object obj18;
            PointerInputChange pointerInputChange11;
            Object obj19;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i11 = 1;
            ?? r112 = 0;
            switch (this.label) {
                case 0:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    ResultKt.throwOnFailure(obj);
                    AwaitPointerEventScope awaitPointerEventScope12 = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = awaitPointerEventScope12;
                    this.label = 1;
                    Object objAwaitFirstDown = TapGestureDetectorKt.awaitFirstDown(awaitPointerEventScope12, false, PointerEventPass.Initial, this);
                    if (objAwaitFirstDown == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = obj;
                    obj3 = objAwaitFirstDown;
                    awaitPointerEventScope = awaitPointerEventScope12;
                    PointerInputChange pointerInputChange12 = (PointerInputChange) obj3;
                    zBooleanValue = this.$shouldAwaitTouchSlop.invoke().booleanValue();
                    if (!zBooleanValue) {
                        pointerInputChange12.consume();
                    }
                    this.L$0 = awaitPointerEventScope;
                    this.L$1 = pointerInputChange12;
                    this.Z$0 = zBooleanValue;
                    this.label = 2;
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default(awaitPointerEventScope2, false, null, this, 2, null);
                    if (objAwaitFirstDown$default != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    pointerInputChange = pointerInputChange12;
                    obj4 = objAwaitFirstDown$default;
                    pointerInputChange2 = (PointerInputChange) obj4;
                    this.$overSlop.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
                    if (zBooleanValue) {
                        r11 = pointerInputChange;
                        anonymousClass13 = this;
                        if (r11 == 0) {
                        }
                        if (r11 != 0) {
                        }
                        return Unit.INSTANCE;
                    }
                    anonymousClass13 = this;
                    AwaitPointerEventScope awaitPointerEventScope13 = awaitPointerEventScope2;
                    long id = pointerInputChange2.getId();
                    int type = pointerInputChange2.getType();
                    Orientation orientation2 = anonymousClass13.$orientationLock;
                    longRef5 = anonymousClass13.$overSlop;
                    long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                    r11 = r112;
                    if (!DragGestureDetectorKt.m475isPointerUpDmW0f2w(awaitPointerEventScope13.getCurrentEvent(), id)) {
                        fM476pointerSlopE8SPZFQ = DragGestureDetectorKt.m476pointerSlopE8SPZFQ(awaitPointerEventScope13.getViewConfiguration(), type);
                        longRef4 = new Ref.LongRef();
                        longRef4.element = id;
                        touchSlopDetector2 = new TouchSlopDetector(orientation2, jM4468getZeroF1C5BW0, r112);
                        awaitPointerEventScope5 = awaitPointerEventScope2;
                        anonymousClass13.L$0 = awaitPointerEventScope5;
                        anonymousClass13.L$1 = pointerInputChange2;
                        anonymousClass13.L$2 = awaitPointerEventScope13;
                        anonymousClass13.L$3 = longRef5;
                        anonymousClass13.L$4 = longRef4;
                        anonymousClass13.L$5 = touchSlopDetector2;
                        anonymousClass13.L$6 = r112;
                        anonymousClass13.F$0 = fM476pointerSlopE8SPZFQ;
                        anonymousClass13.label = 3;
                        Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope13, r112, anonymousClass13, i11, r112);
                        if (objAwaitPointerEvent$default != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        pointerInputChange3 = pointerInputChange2;
                        obj5 = objAwaitPointerEvent$default;
                        awaitPointerEventScope3 = awaitPointerEventScope13;
                        awaitPointerEventScope4 = awaitPointerEventScope5;
                        longRef2 = longRef4;
                        longRef = longRef5;
                        anonymousClass132 = anonymousClass13;
                        touchSlopDetector = touchSlopDetector2;
                        f = fM476pointerSlopE8SPZFQ;
                        pointerEvent = (PointerEvent) obj5;
                        changes = pointerEvent.getChanges();
                        size = changes.size();
                        i = 0;
                        while (true) {
                            if (i >= size) {
                                obj7 = changes.get(i);
                                pointerEvent2 = pointerEvent;
                                obj6 = obj2;
                                list = changes;
                                longRef3 = longRef;
                                if (!PointerId.m5992equalsimpl0(((PointerInputChange) obj7).getId(), longRef2.element)) {
                                    i++;
                                    obj2 = obj6;
                                    pointerEvent = pointerEvent2;
                                    longRef = longRef3;
                                    changes = list;
                                }
                            } else {
                                pointerEvent2 = pointerEvent;
                                obj6 = obj2;
                                longRef3 = longRef;
                                obj7 = null;
                            }
                        }
                        pointerInputChange4 = (PointerInputChange) obj7;
                        if (pointerInputChange4 != null || pointerInputChange4.isConsumed()) {
                            obj2 = obj6;
                            pointerInputChange2 = pointerInputChange3;
                            anonymousClass13 = anonymousClass132;
                            awaitPointerEventScope2 = awaitPointerEventScope4;
                            r11 = 0;
                        } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange4)) {
                            Ref.LongRef longRef12 = longRef2;
                            Ref.LongRef longRef13 = longRef3;
                            long jM604addPositionsakrDWew = touchSlopDetector.m604addPositionsakrDWew(pointerInputChange4.getPosition(), pointerInputChange4.getPreviousPosition(), f);
                            if ((jM604addPositionsakrDWew & j2) != j) {
                                pointerInputChange4.consume();
                                longRef13.element = jM604addPositionsakrDWew;
                                if (pointerInputChange4.isConsumed()) {
                                    obj2 = obj6;
                                    r11 = pointerInputChange4;
                                    pointerInputChange2 = pointerInputChange3;
                                    anonymousClass13 = anonymousClass132;
                                    awaitPointerEventScope2 = awaitPointerEventScope4;
                                } else {
                                    TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
                                    touchSlopDetector2 = touchSlopDetector;
                                    fM476pointerSlopE8SPZFQ = f;
                                    pointerInputChange2 = pointerInputChange3;
                                    anonymousClass13 = anonymousClass132;
                                    awaitPointerEventScope13 = awaitPointerEventScope3;
                                    awaitPointerEventScope5 = awaitPointerEventScope4;
                                    r112 = 0;
                                    longRef4 = longRef12;
                                    longRef5 = longRef13;
                                    i11 = 1;
                                    obj2 = obj6;
                                    anonymousClass13.L$0 = awaitPointerEventScope5;
                                    anonymousClass13.L$1 = pointerInputChange2;
                                    anonymousClass13.L$2 = awaitPointerEventScope13;
                                    anonymousClass13.L$3 = longRef5;
                                    anonymousClass13.L$4 = longRef4;
                                    anonymousClass13.L$5 = touchSlopDetector2;
                                    anonymousClass13.L$6 = r112;
                                    anonymousClass13.F$0 = fM476pointerSlopE8SPZFQ;
                                    anonymousClass13.label = 3;
                                    Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope13, r112, anonymousClass13, i11, r112);
                                    if (objAwaitPointerEvent$default2 != coroutine_suspended) {
                                    }
                                }
                            } else {
                                anonymousClass132.L$0 = awaitPointerEventScope4;
                                anonymousClass132.L$1 = pointerInputChange3;
                                anonymousClass132.L$2 = awaitPointerEventScope3;
                                anonymousClass132.L$3 = longRef13;
                                anonymousClass132.L$4 = longRef12;
                                anonymousClass132.L$5 = touchSlopDetector;
                                anonymousClass132.L$6 = pointerInputChange4;
                                anonymousClass132.F$0 = f;
                                anonymousClass132.label = 4;
                                if (awaitPointerEventScope3.awaitPointerEvent(PointerEventPass.Final, anonymousClass132) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                pointerInputChange5 = pointerInputChange4;
                                touchSlopDetector2 = touchSlopDetector;
                                fM476pointerSlopE8SPZFQ = f;
                                pointerInputChange2 = pointerInputChange3;
                                anonymousClass13 = anonymousClass132;
                                awaitPointerEventScope5 = awaitPointerEventScope4;
                                longRef4 = longRef12;
                                longRef5 = longRef13;
                                obj2 = obj6;
                                if (pointerInputChange5.isConsumed()) {
                                    awaitPointerEventScope13 = awaitPointerEventScope3;
                                    i11 = 1;
                                    r112 = 0;
                                    anonymousClass13.L$0 = awaitPointerEventScope5;
                                    anonymousClass13.L$1 = pointerInputChange2;
                                    anonymousClass13.L$2 = awaitPointerEventScope13;
                                    anonymousClass13.L$3 = longRef5;
                                    anonymousClass13.L$4 = longRef4;
                                    anonymousClass13.L$5 = touchSlopDetector2;
                                    anonymousClass13.L$6 = r112;
                                    anonymousClass13.F$0 = fM476pointerSlopE8SPZFQ;
                                    anonymousClass13.label = 3;
                                    Object objAwaitPointerEvent$default22 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope13, r112, anonymousClass13, i11, r112);
                                    if (objAwaitPointerEvent$default22 != coroutine_suspended) {
                                    }
                                } else {
                                    awaitPointerEventScope2 = awaitPointerEventScope5;
                                    r11 = 0;
                                }
                            }
                        } else {
                            List<PointerInputChange> changes3 = pointerEvent2.getChanges();
                            int i12 = 0;
                            int size6 = changes3.size();
                            while (true) {
                                if (i12 < size6) {
                                    obj8 = changes3.get(i12);
                                    if (!((PointerInputChange) obj8).getPressed()) {
                                        i12++;
                                    }
                                } else {
                                    obj8 = null;
                                }
                            }
                            PointerInputChange pointerInputChange13 = (PointerInputChange) obj8;
                            if (pointerInputChange13 == null) {
                                obj2 = obj6;
                                pointerInputChange2 = pointerInputChange3;
                                anonymousClass13 = anonymousClass132;
                                awaitPointerEventScope2 = awaitPointerEventScope4;
                                r11 = 0;
                            } else {
                                longRef2.element = pointerInputChange13.getId();
                                Ref.LongRef longRef14 = longRef2;
                                touchSlopDetector2 = touchSlopDetector;
                                fM476pointerSlopE8SPZFQ = f;
                                pointerInputChange2 = pointerInputChange3;
                                anonymousClass13 = anonymousClass132;
                                awaitPointerEventScope13 = awaitPointerEventScope3;
                                awaitPointerEventScope5 = awaitPointerEventScope4;
                                r112 = 0;
                                longRef4 = longRef14;
                                longRef5 = longRef3;
                                i11 = 1;
                                obj2 = obj6;
                                anonymousClass13.L$0 = awaitPointerEventScope5;
                                anonymousClass13.L$1 = pointerInputChange2;
                                anonymousClass13.L$2 = awaitPointerEventScope13;
                                anonymousClass13.L$3 = longRef5;
                                anonymousClass13.L$4 = longRef4;
                                anonymousClass13.L$5 = touchSlopDetector2;
                                anonymousClass13.L$6 = r112;
                                anonymousClass13.F$0 = fM476pointerSlopE8SPZFQ;
                                anonymousClass13.label = 3;
                                Object objAwaitPointerEvent$default222 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope13, r112, anonymousClass13, i11, r112);
                                if (objAwaitPointerEvent$default222 != coroutine_suspended) {
                                }
                            }
                        }
                    }
                    if (r11 != 0 && !r11.isConsumed()) {
                        i11 = 1;
                        r112 = 0;
                        AwaitPointerEventScope awaitPointerEventScope132 = awaitPointerEventScope2;
                        long id2 = pointerInputChange2.getId();
                        int type2 = pointerInputChange2.getType();
                        Orientation orientation22 = anonymousClass13.$orientationLock;
                        longRef5 = anonymousClass13.$overSlop;
                        long jM4468getZeroF1C5BW02 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                        r11 = r112;
                        if (!DragGestureDetectorKt.m475isPointerUpDmW0f2w(awaitPointerEventScope132.getCurrentEvent(), id2)) {
                        }
                        if (r11 != 0) {
                            i11 = 1;
                            r112 = 0;
                            AwaitPointerEventScope awaitPointerEventScope1322 = awaitPointerEventScope2;
                            long id22 = pointerInputChange2.getId();
                            int type22 = pointerInputChange2.getType();
                            Orientation orientation222 = anonymousClass13.$orientationLock;
                            longRef5 = anonymousClass13.$overSlop;
                            long jM4468getZeroF1C5BW022 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                            r11 = r112;
                            if (!DragGestureDetectorKt.m475isPointerUpDmW0f2w(awaitPointerEventScope1322.getCurrentEvent(), id22)) {
                            }
                            if (r11 != 0) {
                            }
                        }
                    }
                    if (r11 == 0) {
                        List<PointerInputChange> changes4 = awaitPointerEventScope2.getCurrentEvent().getChanges();
                        int i13 = 0;
                        int size7 = changes4.size();
                        while (true) {
                            if (i13 >= size7) {
                                z4 = false;
                            } else if (changes4.get(i13).getPressed()) {
                                z4 = true;
                            } else {
                                i13++;
                            }
                        }
                        if (z4) {
                            PointerInputChange pointerInputChange14 = pointerInputChange2;
                            Object obj20 = obj2;
                            ?? r3 = r11;
                            AwaitPointerEventScope awaitPointerEventScope14 = awaitPointerEventScope2;
                            anonymousClass13.L$0 = awaitPointerEventScope14;
                            anonymousClass13.L$1 = pointerInputChange14;
                            anonymousClass13.L$2 = r3;
                            anonymousClass13.L$3 = null;
                            anonymousClass13.L$4 = null;
                            anonymousClass13.L$5 = null;
                            anonymousClass13.L$6 = null;
                            anonymousClass13.label = 5;
                            Object objAwaitPointerEvent = awaitPointerEventScope14.awaitPointerEvent(PointerEventPass.Final, anonymousClass13);
                            if (objAwaitPointerEvent != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            ?? r35 = r3;
                            obj2 = obj20;
                            obj9 = objAwaitPointerEvent;
                            awaitPointerEventScope6 = awaitPointerEventScope14;
                            pointerInputChange6 = pointerInputChange14;
                            anonymousClass133 = anonymousClass13;
                            r4 = r35;
                            PointerEvent pointerEvent5 = (PointerEvent) obj9;
                            List<PointerInputChange> changes5 = pointerEvent5.getChanges();
                            i6 = 0;
                            size3 = changes5.size();
                            while (true) {
                                if (i6 >= size3) {
                                    z = false;
                                } else if (changes5.get(i6).isConsumed()) {
                                    z = true;
                                } else {
                                    i6++;
                                }
                            }
                            if (z) {
                                List<PointerInputChange> changes6 = pointerEvent5.getChanges();
                                int i14 = 0;
                                int size8 = changes6.size();
                                while (true) {
                                    if (i14 >= size8) {
                                        z3 = false;
                                    } else if (changes6.get(i14).getPressed()) {
                                        z3 = true;
                                    } else {
                                        i14++;
                                    }
                                }
                                if (z3) {
                                    obj20 = obj2;
                                    r3 = r4;
                                    anonymousClass13 = anonymousClass133;
                                    pointerInputChange14 = pointerInputChange6;
                                    awaitPointerEventScope14 = awaitPointerEventScope6;
                                    anonymousClass13.L$0 = awaitPointerEventScope14;
                                    anonymousClass13.L$1 = pointerInputChange14;
                                    anonymousClass13.L$2 = r3;
                                    anonymousClass13.L$3 = null;
                                    anonymousClass13.L$4 = null;
                                    anonymousClass13.L$5 = null;
                                    anonymousClass13.L$6 = null;
                                    anonymousClass13.label = 5;
                                    Object objAwaitPointerEvent2 = awaitPointerEventScope14.awaitPointerEvent(PointerEventPass.Final, anonymousClass13);
                                    if (objAwaitPointerEvent2 != coroutine_suspended) {
                                    }
                                }
                            }
                            List<PointerInputChange> changes7 = pointerEvent5.getChanges();
                            i7 = 0;
                            size4 = changes7.size();
                            while (true) {
                                if (i7 >= size4) {
                                    z2 = false;
                                } else if (changes7.get(i7).getPressed()) {
                                    z2 = true;
                                } else {
                                    i7++;
                                }
                            }
                            if (z2) {
                                PointerInputChange pointerInputChange15 = (PointerInputChange) CollectionsKt.firstOrNull((List) pointerEvent5.getChanges());
                                long jM4456minusMKHz9U = Offset.m4456minusMKHz9U(pointerInputChange15 != null ? pointerInputChange15.getPosition() : Offset.INSTANCE.m4468getZeroF1C5BW0(), pointerInputChange6.getPosition());
                                awaitPointerEventScope8 = awaitPointerEventScope6;
                                long id3 = pointerInputChange6.getId();
                                int type3 = pointerInputChange6.getType();
                                Orientation orientation3 = anonymousClass133.$orientationLock;
                                Ref.LongRef longRef15 = anonymousClass133.$overSlop;
                                Ref.LongRef longRef16 = null;
                                if (DragGestureDetectorKt.m475isPointerUpDmW0f2w(awaitPointerEventScope8.getCurrentEvent(), id3)) {
                                    anonymousClass13 = anonymousClass133;
                                    pointerInputChange2 = pointerInputChange6;
                                    awaitPointerEventScope2 = awaitPointerEventScope6;
                                    pointerInputChange9 = null;
                                    r11 = pointerInputChange9;
                                    if (r11 == 0) {
                                    }
                                } else {
                                    fM476pointerSlopE8SPZFQ2 = DragGestureDetectorKt.m476pointerSlopE8SPZFQ(awaitPointerEventScope8.getViewConfiguration(), type3);
                                    Ref.LongRef longRef17 = new Ref.LongRef();
                                    longRef17.element = id3;
                                    touchSlopDetector4 = new TouchSlopDetector(orientation3, jM4456minusMKHz9U, null);
                                    anonymousClass133.L$0 = awaitPointerEventScope6;
                                    anonymousClass133.L$1 = pointerInputChange6;
                                    anonymousClass133.L$2 = awaitPointerEventScope8;
                                    anonymousClass133.L$3 = longRef15;
                                    anonymousClass133.L$4 = longRef17;
                                    anonymousClass133.L$5 = touchSlopDetector4;
                                    anonymousClass133.L$6 = null;
                                    anonymousClass133.F$0 = fM476pointerSlopE8SPZFQ2;
                                    anonymousClass133.label = 6;
                                    Object objAwaitPointerEvent$default3 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope8, null, anonymousClass133, 1, null);
                                    if (objAwaitPointerEvent$default3 != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    awaitPointerEventScope7 = awaitPointerEventScope8;
                                    obj10 = objAwaitPointerEvent$default3;
                                    touchSlopDetector3 = touchSlopDetector4;
                                    longRef7 = longRef17;
                                    longRef6 = longRef16;
                                    f2 = fM476pointerSlopE8SPZFQ2;
                                    longRef8 = longRef15;
                                    PointerEvent pointerEvent6 = (PointerEvent) obj10;
                                    changes2 = pointerEvent6.getChanges();
                                    i2 = 0;
                                    size2 = changes2.size();
                                    i3 = 0;
                                    while (true) {
                                        if (i3 >= size2) {
                                            obj12 = changes2.get(i3);
                                            i4 = i3;
                                            obj11 = obj2;
                                            list2 = changes2;
                                            i5 = i2;
                                            if (!PointerId.m5992equalsimpl0(((PointerInputChange) obj12).getId(), longRef7.element)) {
                                                i3 = i4 + 1;
                                                obj2 = obj11;
                                                i2 = i5;
                                                changes2 = list2;
                                            }
                                        } else {
                                            obj11 = obj2;
                                            obj12 = null;
                                        }
                                    }
                                    pointerInputChange7 = (PointerInputChange) obj12;
                                    if (pointerInputChange7 != null || pointerInputChange7.isConsumed()) {
                                        anonymousClass13 = anonymousClass133;
                                        pointerInputChange2 = pointerInputChange6;
                                        awaitPointerEventScope2 = awaitPointerEventScope6;
                                        obj2 = obj11;
                                        pointerInputChange9 = null;
                                    } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange7)) {
                                        Ref.LongRef longRef18 = longRef7;
                                        if (((touchSlopDetector3.m604addPositionsakrDWew(pointerInputChange7.getPosition(), pointerInputChange7.getPreviousPosition(), f2) & j2) != j ? 1 : 0) != 0) {
                                            pointerInputChange7.consume();
                                            longRef8.element = PointerEventKt.positionChange(pointerInputChange7);
                                            if (pointerInputChange7.isConsumed()) {
                                                pointerInputChange9 = pointerInputChange7;
                                                anonymousClass13 = anonymousClass133;
                                                pointerInputChange2 = pointerInputChange6;
                                                awaitPointerEventScope2 = awaitPointerEventScope6;
                                                obj2 = obj11;
                                            } else {
                                                TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector3, 0L, 1, null);
                                                longRef15 = longRef8;
                                                touchSlopDetector4 = touchSlopDetector3;
                                                fM476pointerSlopE8SPZFQ2 = f2;
                                                longRef16 = longRef6;
                                                obj2 = obj11;
                                                longRef17 = longRef18;
                                                awaitPointerEventScope8 = awaitPointerEventScope7;
                                                anonymousClass133.L$0 = awaitPointerEventScope6;
                                                anonymousClass133.L$1 = pointerInputChange6;
                                                anonymousClass133.L$2 = awaitPointerEventScope8;
                                                anonymousClass133.L$3 = longRef15;
                                                anonymousClass133.L$4 = longRef17;
                                                anonymousClass133.L$5 = touchSlopDetector4;
                                                anonymousClass133.L$6 = null;
                                                anonymousClass133.F$0 = fM476pointerSlopE8SPZFQ2;
                                                anonymousClass133.label = 6;
                                                Object objAwaitPointerEvent$default32 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope8, null, anonymousClass133, 1, null);
                                                if (objAwaitPointerEvent$default32 != coroutine_suspended) {
                                                }
                                            }
                                        } else {
                                            anonymousClass133.L$0 = awaitPointerEventScope6;
                                            anonymousClass133.L$1 = pointerInputChange6;
                                            anonymousClass133.L$2 = awaitPointerEventScope7;
                                            anonymousClass133.L$3 = longRef8;
                                            anonymousClass133.L$4 = longRef18;
                                            anonymousClass133.L$5 = touchSlopDetector3;
                                            anonymousClass133.L$6 = pointerInputChange7;
                                            anonymousClass133.F$0 = f2;
                                            anonymousClass133.label = 7;
                                            if (awaitPointerEventScope7.awaitPointerEvent(PointerEventPass.Final, anonymousClass133) == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            float f3 = f2;
                                            pointerInputChange8 = pointerInputChange7;
                                            longRef9 = longRef8;
                                            fM476pointerSlopE8SPZFQ2 = f3;
                                            AwaitPointerEventScope awaitPointerEventScope15 = awaitPointerEventScope7;
                                            longRef10 = longRef18;
                                            awaitPointerEventScope8 = awaitPointerEventScope15;
                                            touchSlopDetector4 = touchSlopDetector3;
                                            obj2 = obj11;
                                            if (pointerInputChange8.isConsumed()) {
                                                longRef15 = longRef9;
                                                longRef16 = longRef6;
                                                longRef17 = longRef10;
                                                anonymousClass133.L$0 = awaitPointerEventScope6;
                                                anonymousClass133.L$1 = pointerInputChange6;
                                                anonymousClass133.L$2 = awaitPointerEventScope8;
                                                anonymousClass133.L$3 = longRef15;
                                                anonymousClass133.L$4 = longRef17;
                                                anonymousClass133.L$5 = touchSlopDetector4;
                                                anonymousClass133.L$6 = null;
                                                anonymousClass133.F$0 = fM476pointerSlopE8SPZFQ2;
                                                anonymousClass133.label = 6;
                                                Object objAwaitPointerEvent$default322 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope8, null, anonymousClass133, 1, null);
                                                if (objAwaitPointerEvent$default322 != coroutine_suspended) {
                                                }
                                            } else {
                                                anonymousClass13 = anonymousClass133;
                                                pointerInputChange2 = pointerInputChange6;
                                                awaitPointerEventScope2 = awaitPointerEventScope6;
                                                pointerInputChange9 = null;
                                            }
                                        }
                                    } else {
                                        List<PointerInputChange> changes8 = pointerEvent6.getChanges();
                                        int i15 = 0;
                                        int size9 = changes8.size();
                                        while (true) {
                                            if (i15 < size9) {
                                                obj13 = changes8.get(i15);
                                                if (!((PointerInputChange) obj13).getPressed()) {
                                                    i15++;
                                                }
                                            } else {
                                                obj13 = null;
                                            }
                                        }
                                        PointerInputChange pointerInputChange16 = (PointerInputChange) obj13;
                                        if (pointerInputChange16 == null) {
                                            anonymousClass13 = anonymousClass133;
                                            pointerInputChange2 = pointerInputChange6;
                                            awaitPointerEventScope2 = awaitPointerEventScope6;
                                            obj2 = obj11;
                                            pointerInputChange9 = null;
                                        } else {
                                            longRef7.element = pointerInputChange16.getId();
                                            Ref.LongRef longRef19 = longRef7;
                                            longRef15 = longRef8;
                                            touchSlopDetector4 = touchSlopDetector3;
                                            fM476pointerSlopE8SPZFQ2 = f2;
                                            longRef16 = longRef6;
                                            obj2 = obj11;
                                            longRef17 = longRef19;
                                            awaitPointerEventScope8 = awaitPointerEventScope7;
                                            anonymousClass133.L$0 = awaitPointerEventScope6;
                                            anonymousClass133.L$1 = pointerInputChange6;
                                            anonymousClass133.L$2 = awaitPointerEventScope8;
                                            anonymousClass133.L$3 = longRef15;
                                            anonymousClass133.L$4 = longRef17;
                                            anonymousClass133.L$5 = touchSlopDetector4;
                                            anonymousClass133.L$6 = null;
                                            anonymousClass133.F$0 = fM476pointerSlopE8SPZFQ2;
                                            anonymousClass133.label = 6;
                                            Object objAwaitPointerEvent$default3222 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope8, null, anonymousClass133, 1, null);
                                            if (objAwaitPointerEvent$default3222 != coroutine_suspended) {
                                            }
                                        }
                                    }
                                    r11 = pointerInputChange9;
                                    if (r11 == 0) {
                                    }
                                }
                            } else {
                                r11 = r4;
                                anonymousClass13 = anonymousClass133;
                                pointerInputChange2 = pointerInputChange6;
                                awaitPointerEventScope2 = awaitPointerEventScope6;
                                if (r11 == 0) {
                                }
                            }
                        }
                    }
                    if (r11 != 0) {
                        anonymousClass13.$onDragStart.invoke(pointerInputChange2, r11, Offset.m4441boximpl(anonymousClass13.$overSlop.element));
                        anonymousClass13.$onDrag.invoke(r11, Offset.m4441boximpl(anonymousClass13.$overSlop.element));
                        long id4 = r11.getId();
                        Function2<PointerInputChange, Offset, Unit> function22 = anonymousClass13.$onDrag;
                        Orientation orientation4 = null;
                        int i16 = 0;
                        if (DragGestureDetectorKt.m475isPointerUpDmW0f2w(awaitPointerEventScope2.getCurrentEvent(), id4)) {
                            pointerInputChange10 = null;
                            if (pointerInputChange10 == null) {
                                anonymousClass13.$onDragCancel.invoke();
                            } else {
                                anonymousClass13.$onDragEnd.invoke(pointerInputChange10);
                            }
                        } else {
                            long id5 = id4;
                            int i17 = 0;
                            Ref.LongRef longRef20 = new Ref.LongRef();
                            longRef20.element = id5;
                            int i18 = i16;
                            Orientation orientation5 = orientation4;
                            Object obj21 = obj2;
                            int i19 = i18;
                            Function2<PointerInputChange, Offset, Unit> function23 = function22;
                            awaitPointerEventScope10 = awaitPointerEventScope2;
                            Ref.LongRef longRef21 = longRef20;
                            awaitPointerEventScope9 = awaitPointerEventScope2;
                            anonymousClass13.L$0 = awaitPointerEventScope9;
                            anonymousClass13.L$1 = function23;
                            anonymousClass13.L$2 = awaitPointerEventScope10;
                            anonymousClass13.L$3 = longRef21;
                            anonymousClass13.L$4 = null;
                            anonymousClass13.L$5 = null;
                            anonymousClass13.L$6 = null;
                            anonymousClass13.label = 8;
                            Object objAwaitPointerEvent$default4 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope10, null, anonymousClass13, 1, null);
                            if (objAwaitPointerEvent$default4 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            int i20 = i19;
                            obj14 = obj21;
                            obj15 = objAwaitPointerEvent$default4;
                            function2 = function23;
                            orientation = orientation5;
                            i8 = i17;
                            longRef11 = longRef21;
                            anonymousClass134 = anonymousClass13;
                            i9 = i20;
                            pointerEvent3 = (PointerEvent) obj15;
                            List<PointerInputChange> changes9 = pointerEvent3.getChanges();
                            size5 = changes9.size();
                            i10 = 0;
                            while (true) {
                                if (i10 >= size5) {
                                    obj18 = changes9.get(i10);
                                    awaitPointerEventScope11 = awaitPointerEventScope10;
                                    obj16 = coroutine_suspended;
                                    pointerEvent4 = pointerEvent3;
                                    obj17 = obj14;
                                    if (!PointerId.m5992equalsimpl0(((PointerInputChange) obj18).getId(), longRef11.element)) {
                                        i10++;
                                        awaitPointerEventScope10 = awaitPointerEventScope11;
                                        coroutine_suspended = obj16;
                                        obj14 = obj17;
                                        pointerEvent3 = pointerEvent4;
                                    }
                                } else {
                                    awaitPointerEventScope11 = awaitPointerEventScope10;
                                    obj16 = coroutine_suspended;
                                    pointerEvent4 = pointerEvent3;
                                    obj17 = obj14;
                                    obj18 = null;
                                }
                            }
                            pointerInputChange11 = (PointerInputChange) obj18;
                            if (pointerInputChange11 == null) {
                                pointerInputChange11 = null;
                            } else if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange11)) {
                                long jPositionChangeIgnoreConsumed = PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange11);
                                break;
                            } else {
                                List<PointerInputChange> changes10 = pointerEvent4.getChanges();
                                int i21 = 0;
                                int size10 = changes10.size();
                                while (true) {
                                    if (i21 < size10) {
                                        obj19 = changes10.get(i21);
                                        if (!((PointerInputChange) obj19).getPressed()) {
                                            i21++;
                                        }
                                    } else {
                                        obj19 = null;
                                    }
                                }
                                PointerInputChange pointerInputChange17 = (PointerInputChange) obj19;
                                if (pointerInputChange17 != null) {
                                    longRef11.element = pointerInputChange17.getId();
                                    awaitPointerEventScope10 = awaitPointerEventScope11;
                                    i19 = i9;
                                    anonymousClass13 = anonymousClass134;
                                    longRef21 = longRef11;
                                    i17 = i8;
                                    orientation5 = orientation;
                                    function23 = function2;
                                    coroutine_suspended = obj16;
                                    obj21 = obj17;
                                    anonymousClass13.L$0 = awaitPointerEventScope9;
                                    anonymousClass13.L$1 = function23;
                                    anonymousClass13.L$2 = awaitPointerEventScope10;
                                    anonymousClass13.L$3 = longRef21;
                                    anonymousClass13.L$4 = null;
                                    anonymousClass13.L$5 = null;
                                    anonymousClass13.L$6 = null;
                                    anonymousClass13.label = 8;
                                    Object objAwaitPointerEvent$default42 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope10, null, anonymousClass13, 1, null);
                                    if (objAwaitPointerEvent$default42 == coroutine_suspended) {
                                    }
                                }
                            }
                            if (pointerInputChange11 != null || pointerInputChange11.isConsumed()) {
                                anonymousClass13 = anonymousClass134;
                                pointerInputChange10 = null;
                            } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange11)) {
                                PointerInputChange pointerInputChange18 = pointerInputChange11;
                                function2.invoke(pointerInputChange18, Offset.m4441boximpl(PointerEventKt.positionChange(pointerInputChange18)));
                                pointerInputChange18.consume();
                                i16 = i9;
                                anonymousClass13 = anonymousClass134;
                                orientation4 = orientation;
                                obj2 = obj17;
                                awaitPointerEventScope2 = awaitPointerEventScope9;
                                function22 = function2;
                                id5 = pointerInputChange11.getId();
                                coroutine_suspended = obj16;
                                int i172 = 0;
                                Ref.LongRef longRef202 = new Ref.LongRef();
                                longRef202.element = id5;
                                int i182 = i16;
                                Orientation orientation52 = orientation4;
                                Object obj212 = obj2;
                                int i192 = i182;
                                Function2<PointerInputChange, Offset, Unit> function232 = function22;
                                awaitPointerEventScope10 = awaitPointerEventScope2;
                                Ref.LongRef longRef212 = longRef202;
                                awaitPointerEventScope9 = awaitPointerEventScope2;
                                anonymousClass13.L$0 = awaitPointerEventScope9;
                                anonymousClass13.L$1 = function232;
                                anonymousClass13.L$2 = awaitPointerEventScope10;
                                anonymousClass13.L$3 = longRef212;
                                anonymousClass13.L$4 = null;
                                anonymousClass13.L$5 = null;
                                anonymousClass13.L$6 = null;
                                anonymousClass13.label = 8;
                                Object objAwaitPointerEvent$default422 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope10, null, anonymousClass13, 1, null);
                                if (objAwaitPointerEvent$default422 == coroutine_suspended) {
                                }
                            } else {
                                anonymousClass13 = anonymousClass134;
                                pointerInputChange10 = pointerInputChange11;
                            }
                            if (pointerInputChange10 == null) {
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    obj3 = obj;
                    AwaitPointerEventScope awaitPointerEventScope16 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj3);
                    awaitPointerEventScope = awaitPointerEventScope16;
                    obj2 = obj3;
                    PointerInputChange pointerInputChange122 = (PointerInputChange) obj3;
                    zBooleanValue = this.$shouldAwaitTouchSlop.invoke().booleanValue();
                    if (!zBooleanValue) {
                    }
                    this.L$0 = awaitPointerEventScope;
                    this.L$1 = pointerInputChange122;
                    this.Z$0 = zBooleanValue;
                    this.label = 2;
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default(awaitPointerEventScope2, false, null, this, 2, null);
                    if (objAwaitFirstDown$default != coroutine_suspended) {
                    }
                    break;
                case 2:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    obj4 = obj;
                    boolean z5 = this.Z$0;
                    pointerInputChange = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope17 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj4);
                    awaitPointerEventScope2 = awaitPointerEventScope17;
                    zBooleanValue = z5;
                    obj2 = obj4;
                    pointerInputChange2 = (PointerInputChange) obj4;
                    this.$overSlop.element = Offset.INSTANCE.m4468getZeroF1C5BW0();
                    if (zBooleanValue) {
                    }
                    break;
                case 3:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    obj5 = obj;
                    float f4 = this.F$0;
                    TouchSlopDetector touchSlopDetector5 = (TouchSlopDetector) this.L$5;
                    Ref.LongRef longRef22 = (Ref.LongRef) this.L$4;
                    longRef = (Ref.LongRef) this.L$3;
                    AwaitPointerEventScope awaitPointerEventScope18 = (AwaitPointerEventScope) this.L$2;
                    pointerInputChange3 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope19 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj5);
                    f = f4;
                    touchSlopDetector = touchSlopDetector5;
                    longRef2 = longRef22;
                    awaitPointerEventScope3 = awaitPointerEventScope18;
                    awaitPointerEventScope4 = awaitPointerEventScope19;
                    anonymousClass132 = this;
                    obj2 = obj5;
                    pointerEvent = (PointerEvent) obj5;
                    changes = pointerEvent.getChanges();
                    size = changes.size();
                    i = 0;
                    while (true) {
                        if (i >= size) {
                        }
                        i++;
                        obj2 = obj6;
                        pointerEvent = pointerEvent2;
                        longRef = longRef3;
                        changes = list;
                    }
                    pointerInputChange4 = (PointerInputChange) obj7;
                    if (pointerInputChange4 != null) {
                        obj2 = obj6;
                        pointerInputChange2 = pointerInputChange3;
                        anonymousClass13 = anonymousClass132;
                        awaitPointerEventScope2 = awaitPointerEventScope4;
                        r11 = 0;
                    } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange4)) {
                    }
                    if (r11 != 0) {
                    }
                    if (r11 == 0) {
                    }
                    if (r11 != 0) {
                    }
                    return Unit.INSTANCE;
                case 4:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    float f5 = this.F$0;
                    pointerInputChange5 = (PointerInputChange) this.L$6;
                    touchSlopDetector2 = (TouchSlopDetector) this.L$5;
                    Ref.LongRef longRef23 = (Ref.LongRef) this.L$4;
                    Ref.LongRef longRef24 = (Ref.LongRef) this.L$3;
                    AwaitPointerEventScope awaitPointerEventScope20 = (AwaitPointerEventScope) this.L$2;
                    PointerInputChange pointerInputChange19 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope21 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    longRef4 = longRef23;
                    awaitPointerEventScope5 = awaitPointerEventScope21;
                    obj2 = obj;
                    awaitPointerEventScope3 = awaitPointerEventScope20;
                    pointerInputChange2 = pointerInputChange19;
                    longRef5 = longRef24;
                    fM476pointerSlopE8SPZFQ = f5;
                    anonymousClass13 = this;
                    if (pointerInputChange5.isConsumed()) {
                    }
                    break;
                case 5:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    obj9 = obj;
                    PointerInputChange pointerInputChange20 = (PointerInputChange) this.L$2;
                    PointerInputChange pointerInputChange21 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope22 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj9);
                    pointerInputChange6 = pointerInputChange21;
                    awaitPointerEventScope6 = awaitPointerEventScope22;
                    anonymousClass133 = this;
                    r4 = pointerInputChange20;
                    obj2 = obj9;
                    PointerEvent pointerEvent52 = (PointerEvent) obj9;
                    List<PointerInputChange> changes52 = pointerEvent52.getChanges();
                    i6 = 0;
                    size3 = changes52.size();
                    while (true) {
                        if (i6 >= size3) {
                        }
                        i6++;
                    }
                    if (z) {
                    }
                    List<PointerInputChange> changes72 = pointerEvent52.getChanges();
                    i7 = 0;
                    size4 = changes72.size();
                    while (true) {
                        if (i7 >= size4) {
                        }
                        i7++;
                    }
                    if (z2) {
                    }
                    break;
                case 6:
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    j2 = 9223372034707292159L;
                    obj10 = obj;
                    float f6 = this.F$0;
                    TouchSlopDetector touchSlopDetector6 = (TouchSlopDetector) this.L$5;
                    Ref.LongRef longRef25 = (Ref.LongRef) this.L$4;
                    Ref.LongRef longRef26 = (Ref.LongRef) this.L$3;
                    awaitPointerEventScope7 = (AwaitPointerEventScope) this.L$2;
                    PointerInputChange pointerInputChange22 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope23 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj10);
                    longRef6 = null;
                    f2 = f6;
                    touchSlopDetector3 = touchSlopDetector6;
                    longRef7 = longRef25;
                    longRef8 = longRef26;
                    pointerInputChange6 = pointerInputChange22;
                    awaitPointerEventScope6 = awaitPointerEventScope23;
                    anonymousClass133 = this;
                    obj2 = obj10;
                    PointerEvent pointerEvent62 = (PointerEvent) obj10;
                    changes2 = pointerEvent62.getChanges();
                    i2 = 0;
                    size2 = changes2.size();
                    i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                        }
                        i3 = i4 + 1;
                        obj2 = obj11;
                        i2 = i5;
                        changes2 = list2;
                    }
                    pointerInputChange7 = (PointerInputChange) obj12;
                    if (pointerInputChange7 != null) {
                        anonymousClass13 = anonymousClass133;
                        pointerInputChange2 = pointerInputChange6;
                        awaitPointerEventScope2 = awaitPointerEventScope6;
                        obj2 = obj11;
                        pointerInputChange9 = null;
                    } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange7)) {
                    }
                    r11 = pointerInputChange9;
                    if (r11 == 0) {
                    }
                    if (r11 != 0) {
                    }
                    return Unit.INSTANCE;
                case 7:
                    float f7 = this.F$0;
                    pointerInputChange8 = (PointerInputChange) this.L$6;
                    TouchSlopDetector touchSlopDetector7 = (TouchSlopDetector) this.L$5;
                    j = InlineClassHelperKt.UnspecifiedPackedFloats;
                    Ref.LongRef longRef27 = (Ref.LongRef) this.L$4;
                    Ref.LongRef longRef28 = (Ref.LongRef) this.L$3;
                    j2 = 9223372034707292159L;
                    AwaitPointerEventScope awaitPointerEventScope24 = (AwaitPointerEventScope) this.L$2;
                    PointerInputChange pointerInputChange23 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope awaitPointerEventScope25 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    anonymousClass133 = this;
                    longRef9 = longRef28;
                    pointerInputChange6 = pointerInputChange23;
                    longRef10 = longRef27;
                    obj2 = obj;
                    awaitPointerEventScope8 = awaitPointerEventScope24;
                    awaitPointerEventScope6 = awaitPointerEventScope25;
                    fM476pointerSlopE8SPZFQ2 = f7;
                    touchSlopDetector4 = touchSlopDetector7;
                    longRef6 = null;
                    if (pointerInputChange8.isConsumed()) {
                    }
                    break;
                case 8:
                    obj15 = obj;
                    Ref.LongRef longRef29 = (Ref.LongRef) this.L$3;
                    AwaitPointerEventScope awaitPointerEventScope26 = (AwaitPointerEventScope) this.L$2;
                    Function2<PointerInputChange, Offset, Unit> function24 = (Function2) this.L$1;
                    awaitPointerEventScope9 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure(obj15);
                    anonymousClass134 = this;
                    awaitPointerEventScope10 = awaitPointerEventScope26;
                    longRef11 = longRef29;
                    function2 = function24;
                    orientation = null;
                    i8 = 0;
                    i9 = 0;
                    obj14 = obj15;
                    pointerEvent3 = (PointerEvent) obj15;
                    List<PointerInputChange> changes92 = pointerEvent3.getChanges();
                    size5 = changes92.size();
                    i10 = 0;
                    while (true) {
                        if (i10 >= size5) {
                        }
                        i10++;
                        awaitPointerEventScope10 = awaitPointerEventScope11;
                        coroutine_suspended = obj16;
                        obj14 = obj17;
                        pointerEvent3 = pointerEvent4;
                    }
                    pointerInputChange11 = (PointerInputChange) obj18;
                    if (pointerInputChange11 == null) {
                    }
                    if (pointerInputChange11 != null) {
                        anonymousClass13 = anonymousClass134;
                        pointerInputChange10 = null;
                    } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange11)) {
                    }
                    if (pointerInputChange10 == null) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static /* synthetic */ Object detectDragGesturesAfterLongPress$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function02 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function02;
        return detectDragGesturesAfterLongPress(pointerInputScope, function1, function0, function03, function2, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5, reason: invalid class name */
    /* JADX INFO: compiled from: DragGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5", f = "DragGestureDetector.kt", i = {0, 1, 2}, l = {359, 360, 365}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "$this$awaitEachGesture"}, s = {"L$0", "L$0", "L$0"}, v = 1)
    static final class AnonymousClass5 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<PointerInputChange, Offset, Unit> $onDrag;
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function0<Unit> $onDragEnd;
        final /* synthetic */ Function1<Offset, Unit> $onDragStart;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass5(Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$onDragStart = function1;
            this.$onDragEnd = function0;
            this.$onDragCancel = function02;
            this.$onDrag = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$onDrag, continuation);
            anonymousClass5.L$0 = obj;
            return anonymousClass5;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0063 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[Catch: CancellationException -> 0x00d2, TryCatch #0 {CancellationException -> 0x00d2, blocks: (B:30:0x0093, B:32:0x009b, B:34:0x00ae, B:36:0x00bc, B:37:0x00bf, B:38:0x00c3, B:39:0x00ca, B:24:0x0065, B:26:0x0069, B:20:0x004f), top: B:47:0x004f }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x009b A[Catch: CancellationException -> 0x00d2, TryCatch #0 {CancellationException -> 0x00d2, blocks: (B:30:0x0093, B:32:0x009b, B:34:0x00ae, B:36:0x00bc, B:37:0x00bf, B:38:0x00c3, B:39:0x00ca, B:24:0x0065, B:26:0x0069, B:20:0x004f), top: B:47:0x004f }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ca A[Catch: CancellationException -> 0x00d2, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x00d2, blocks: (B:30:0x0093, B:32:0x009b, B:34:0x00ae, B:36:0x00bc, B:37:0x00bf, B:38:0x00c3, B:39:0x00ca, B:24:0x0065, B:26:0x0069, B:20:0x004f), top: B:47:0x004f }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            Object $result2;
            Object objM463awaitLongPressOrCancellationrnUCldI;
            PointerInputChange drag;
            AwaitPointerEventScope $this$awaitEachGesture2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                        this.L$0 = $this$awaitEachGesture;
                        this.label = 1;
                        Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, null, this, 2, null);
                        if (objAwaitFirstDown$default == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result2 = $result;
                        $result = objAwaitFirstDown$default;
                        try {
                            PointerInputChange down = (PointerInputChange) $result;
                            this.L$0 = $this$awaitEachGesture;
                            this.label = 2;
                            objM463awaitLongPressOrCancellationrnUCldI = DragGestureDetectorKt.m463awaitLongPressOrCancellationrnUCldI($this$awaitEachGesture, down.getId(), this);
                            if (objM463awaitLongPressOrCancellationrnUCldI != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result = objM463awaitLongPressOrCancellationrnUCldI;
                            drag = (PointerInputChange) $result;
                            if (drag != null) {
                                this.$onDragStart.invoke(Offset.m4441boximpl(drag.getPosition()));
                                long id = drag.getId();
                                final Function2<PointerInputChange, Offset, Unit> function2 = this.$onDrag;
                                this.L$0 = $this$awaitEachGesture;
                                this.label = 3;
                                Object objM473dragjO51t88 = DragGestureDetectorKt.m473dragjO51t88($this$awaitEachGesture, id, new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$$ExternalSyntheticLambda0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return DragGestureDetectorKt.AnonymousClass5.invokeSuspend$lambda$0(function2, (PointerInputChange) obj);
                                    }
                                }, this);
                                if (objM473dragjO51t88 == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $this$awaitEachGesture2 = $this$awaitEachGesture;
                                $result = objM473dragjO51t88;
                                if (((Boolean) $result).booleanValue()) {
                                    this.$onDragCancel.invoke();
                                } else {
                                    List<PointerInputChange> changes = $this$awaitEachGesture2.getCurrentEvent().getChanges();
                                    int size = changes.size();
                                    for (int index$iv = 0; index$iv < size; index$iv++) {
                                        Object item$iv = changes.get(index$iv);
                                        PointerInputChange it = (PointerInputChange) item$iv;
                                        if (PointerEventKt.changedToUp(it)) {
                                            it.consume();
                                        }
                                    }
                                    this.$onDragEnd.invoke();
                                }
                            }
                            return Unit.INSTANCE;
                        } catch (CancellationException e) {
                            c = e;
                            this.$onDragCancel.invoke();
                            throw c;
                        }
                    case 1:
                        AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture = $this$awaitEachGesture3;
                        $result2 = $result;
                        PointerInputChange down2 = (PointerInputChange) $result;
                        this.L$0 = $this$awaitEachGesture;
                        this.label = 2;
                        objM463awaitLongPressOrCancellationrnUCldI = DragGestureDetectorKt.m463awaitLongPressOrCancellationrnUCldI($this$awaitEachGesture, down2.getId(), this);
                        if (objM463awaitLongPressOrCancellationrnUCldI != coroutine_suspended) {
                        }
                        break;
                    case 2:
                        AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        $this$awaitEachGesture = $this$awaitEachGesture4;
                        drag = (PointerInputChange) $result;
                        if (drag != null) {
                        }
                        return Unit.INSTANCE;
                    case 3:
                        $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        if (((Boolean) $result).booleanValue()) {
                        }
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (CancellationException e2) {
                c = e2;
            }
        }

        static final Unit invokeSuspend$lambda$0(Function2 $onDrag, PointerInputChange it) {
            $onDrag.invoke(it, Offset.m4441boximpl(PointerEventKt.positionChange(it)));
            it.consume();
            return Unit.INSTANCE;
        }
    }

    public static final Object detectDragGesturesAfterLongPress(PointerInputScope $this$detectDragGesturesAfterLongPress, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectDragGesturesAfterLongPress, new AnonymousClass5(function1, function0, function02, function2, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ca A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01f6 -> B:62:0x01ff). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitVerticalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m470awaitVerticalTouchSlopOrCancellationjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
        Function2<? super PointerInputChange, ? super Float, Unit> function22;
        int i;
        Ref.LongRef pointer$iv;
        float touchSlop$iv;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
        TouchSlopDetector touchSlopDetector$iv;
        Ref.LongRef pointer$iv2;
        float touchSlop$iv2;
        int touchSlop$iv3;
        Object obj;
        Object $result;
        PointerEvent event$iv;
        int index$iv$iv$iv;
        int size;
        PointerEvent event$iv2;
        Object $result2;
        int i2;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        int i3;
        PointerEventPass pointerEventPass;
        Function2<? super PointerInputChange, ? super Float, Unit> function23;
        TouchSlopDetector touchSlopDetector$iv2;
        PointerInputChange dragEvent$iv2;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
        Object it$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1 = (DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1 = new DragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass2 = null;
        switch (dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope;
                function22 = function2;
                int iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
                Orientation orientation$iv = Orientation.Vertical;
                long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                i = 0;
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getCurrentEvent(), j)) {
                    return null;
                }
                float touchSlop$iv4 = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getViewConfiguration(), iM6088getTouchT8wyACA);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = j;
                TouchSlopDetector touchSlopDetector$iv3 = new TouchSlopDetector(orientation$iv, jM4468getZeroF1C5BW0, null);
                touchSlop$iv = touchSlop$iv4;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                obj = obj2;
                touchSlop$iv2 = touchSlop$iv;
                touchSlopDetector$iv = touchSlopDetector$iv3;
                touchSlop$iv3 = i;
                pointer$iv2 = pointer$iv;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        i2 = touchSlop$iv3;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv2.element)) {
                            index$iv$iv$iv++;
                            touchSlop$iv3 = i2;
                            $result = $result2;
                            event$iv = event$iv2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        i2 = touchSlop$iv3;
                        it$iv$iv = null;
                    }
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null && !dragEvent$iv.isConsumed()) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                        long postSlopOffset$iv = touchSlopDetector$iv.m604addPositionsakrDWew(dragEvent$iv.getPosition(), dragEvent$iv.getPreviousPosition(), touchSlop$iv2);
                        touchSlop$iv = touchSlop$iv2;
                        if ((9223372034707292159L & postSlopOffset$iv) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                            long overSlop = postSlopOffset$iv & 4294967295L;
                            int bits$iv$iv$iv = (int) overSlop;
                            function22.invoke(dragEvent$iv, Boxing.boxFloat(Float.intBitsToFloat(bits$iv$iv$iv)));
                            if (dragEvent$iv.isConsumed()) {
                                return dragEvent$iv;
                            }
                            TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector$iv, 0L, 1, null);
                            i = i2;
                            $result3 = $result2;
                            i4 = 1;
                            coroutine_suspended = obj;
                            pointer$iv = pointer$iv2;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlopDetector$iv3 = touchSlopDetector$iv;
                            pointerEventPass2 = null;
                        } else {
                            i3 = 1;
                            pointerEventPass = null;
                            PointerEventPass pointerEventPass3 = PointerEventPass.Final;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0 = function22;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2 = pointer$iv2;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$4 = dragEvent$iv;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                            dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label = 2;
                            if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2.awaitPointerEvent(pointerEventPass3, dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1) == obj) {
                                return obj;
                            }
                            i = i2;
                            pointer$iv = pointer$iv2;
                            function23 = function22;
                            touchSlopDetector$iv2 = touchSlopDetector$iv;
                            dragEvent$iv2 = dragEvent$iv;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            $result3 = $result2;
                            if (!dragEvent$iv2.isConsumed()) {
                                return pointerEventPass;
                            }
                            touchSlopDetector$iv3 = touchSlopDetector$iv2;
                            pointerEventPass2 = pointerEventPass;
                            function22 = function23;
                            i4 = i3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
                        }
                    } else {
                        List<PointerInputChange> changes2 = event$iv2.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv == null) {
                            return null;
                        }
                        pointer$iv2.element = otherDown$iv.getId();
                        touchSlop$iv = touchSlop$iv2;
                        i = i2;
                        $result3 = $result2;
                        i4 = 1;
                        coroutine_suspended = obj;
                        pointer$iv = pointer$iv2;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                        touchSlopDetector$iv3 = touchSlopDetector$iv;
                        pointerEventPass2 = null;
                    }
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0 = function22;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                    dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label = i4;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                }
                return null;
            case 1:
                float touchSlop$iv5 = dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0;
                TouchSlopDetector touchSlopDetector$iv4 = (TouchSlopDetector) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function24 = (Function2) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                touchSlopDetector$iv = touchSlopDetector$iv4;
                pointer$iv2 = pointer$iv3;
                function22 = function24;
                touchSlop$iv2 = touchSlop$iv5;
                touchSlop$iv3 = 0;
                obj = coroutine_suspended;
                $result = $result3;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    touchSlop$iv3 = i2;
                    $result = $result2;
                    event$iv = event$iv2;
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                }
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                touchSlop$iv = dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$4;
                touchSlopDetector$iv2 = (TouchSlopDetector) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function25 = (Function2) dragGestureDetectorKt$awaitVerticalTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                i = 0;
                pointer$iv = pointer$iv4;
                obj = coroutine_suspended;
                i3 = 1;
                function23 = function25;
                pointerEventPass = null;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01fe -> B:62:0x0206). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitVerticalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m469awaitVerticalPointerSlopOrCancellationgDDlDlE(AwaitPointerEventScope awaitPointerEventScope, long j, int i, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1 dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
        Function2<? super PointerInputChange, ? super Float, Unit> function22;
        float touchSlop$iv;
        Ref.LongRef pointer$iv;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
        Object obj;
        TouchSlopDetector touchSlopDetector$iv;
        Object $result;
        float touchSlop$iv2;
        PointerEvent event$iv;
        int size;
        int index$iv$iv$iv;
        PointerEvent event$iv2;
        Object $result2;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        int i2;
        PointerEventPass pointerEventPass;
        TouchSlopDetector touchSlopDetector$iv2;
        PointerInputChange dragEvent$iv2;
        Object it$iv$iv2;
        int i3;
        int index$iv$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1 = (DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1 = new DragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass2 = null;
        switch (dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope;
                function22 = function2;
                Orientation orientation$iv = Orientation.Vertical;
                long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getCurrentEvent(), j)) {
                    return null;
                }
                touchSlop$iv = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getViewConfiguration(), i);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = j;
                TouchSlopDetector touchSlopDetector$iv3 = new TouchSlopDetector(orientation$iv, jM4468getZeroF1C5BW0, null);
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                touchSlopDetector$iv = touchSlopDetector$iv3;
                touchSlop$iv2 = touchSlop$iv;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                obj = obj2;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                size = changes.size();
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        i3 = size;
                        index$iv$iv$iv2 = index$iv$iv$iv;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv = index$iv$iv$iv2 + 1;
                            event$iv = event$iv2;
                            size = i3;
                            $result = $result2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        it$iv$iv = null;
                    }
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null && !dragEvent$iv.isConsumed()) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                        float touchSlop$iv3 = touchSlop$iv2;
                        TouchSlopDetector touchSlopDetector$iv4 = touchSlopDetector$iv;
                        long postSlopOffset$iv = touchSlopDetector$iv4.m604addPositionsakrDWew(dragEvent$iv.getPosition(), dragEvent$iv.getPreviousPosition(), touchSlop$iv3);
                        touchSlopDetector$iv3 = touchSlopDetector$iv4;
                        if ((postSlopOffset$iv & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                            long overSlop = postSlopOffset$iv & 4294967295L;
                            int bits$iv$iv$iv = (int) overSlop;
                            function22.invoke(dragEvent$iv, Boxing.boxFloat(Float.intBitsToFloat(bits$iv$iv$iv)));
                            if (dragEvent$iv.isConsumed()) {
                                return dragEvent$iv;
                            }
                            TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector$iv3, 0L, 1, null);
                            AwaitPointerEventScope awaitPointerEventScope2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlop$iv = touchSlop$iv3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope2;
                            i4 = 1;
                            pointerEventPass2 = null;
                            $result3 = $result2;
                        } else {
                            i2 = 1;
                            pointerEventPass = null;
                            PointerEventPass pointerEventPass3 = PointerEventPass.Final;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0 = function22;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$4 = dragEvent$iv;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0 = touchSlop$iv3;
                            dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label = 2;
                            if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2.awaitPointerEvent(pointerEventPass3, dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1) == obj) {
                                return obj;
                            }
                            AwaitPointerEventScope awaitPointerEventScope3 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlop$iv = touchSlop$iv3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope3;
                            touchSlopDetector$iv2 = touchSlopDetector$iv3;
                            dragEvent$iv2 = dragEvent$iv;
                            $result3 = $result2;
                            if (!dragEvent$iv2.isConsumed()) {
                                return pointerEventPass;
                            }
                            touchSlopDetector$iv3 = touchSlopDetector$iv2;
                            i4 = i2;
                            pointerEventPass2 = pointerEventPass;
                        }
                    } else {
                        List<PointerInputChange> changes2 = event$iv2.getChanges();
                        int index$iv$iv$iv3 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv3 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv3);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv3++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv == null) {
                            return null;
                        }
                        pointer$iv.element = otherDown$iv.getId();
                        float touchSlop$iv4 = touchSlop$iv2;
                        touchSlopDetector$iv3 = touchSlopDetector$iv;
                        AwaitPointerEventScope awaitPointerEventScope4 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                        touchSlop$iv = touchSlop$iv4;
                        coroutine_suspended = obj;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope4;
                        i4 = 1;
                        pointerEventPass2 = null;
                        $result3 = $result2;
                    }
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0 = function22;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                    dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label = i4;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                }
                return null;
            case 1:
                float touchSlop$iv5 = dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0;
                TouchSlopDetector touchSlopDetector$iv5 = (TouchSlopDetector) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv2 = (Ref.LongRef) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function23 = (Function2) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                pointer$iv = pointer$iv2;
                obj = coroutine_suspended;
                touchSlopDetector$iv = touchSlopDetector$iv5;
                $result = $result3;
                touchSlop$iv2 = touchSlop$iv5;
                function22 = function23;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                size = changes3.size();
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv = index$iv$iv$iv2 + 1;
                    event$iv = event$iv2;
                    size = i3;
                    $result = $result2;
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                }
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                float touchSlop$iv6 = dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$4;
                TouchSlopDetector touchSlopDetector$iv6 = (TouchSlopDetector) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$2;
                AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function24 = (Function2) dragGestureDetectorKt$awaitVerticalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                i2 = 1;
                touchSlopDetector$iv2 = touchSlopDetector$iv6;
                pointer$iv = pointer$iv3;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
                pointerEventPass = null;
                touchSlop$iv = touchSlop$iv6;
                function22 = function24;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x017f, code lost:
    
        if (r0 == false) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:34:0x00fe, B:45:0x0136], limit reached: 72 */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0095 -> B:22:0x00a2). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: verticalDrag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m477verticalDragjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function1<? super PointerInputChange, Unit> function1, Continuation<? super Boolean> continuation) {
        DragGestureDetectorKt$verticalDrag$1 dragGestureDetectorKt$verticalDrag$1;
        Object obj;
        Function1<? super PointerInputChange, Unit> function12;
        AwaitPointerEventScope awaitPointerEventScope2;
        Orientation orientation;
        AwaitPointerEventScope awaitPointerEventScope3;
        Ref.LongRef longRef;
        Object[] objArr;
        int i;
        Object obj2;
        int size;
        int i2;
        Continuation<? super Boolean> continuation2;
        DragGestureDetectorKt$verticalDrag$1 dragGestureDetectorKt$verticalDrag$12;
        int i3;
        Object obj3;
        PointerInputChange pointerInputChange;
        Object obj4;
        Continuation<? super Boolean> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$verticalDrag$1) {
            dragGestureDetectorKt$verticalDrag$1 = (DragGestureDetectorKt$verticalDrag$1) continuation3;
            if ((dragGestureDetectorKt$verticalDrag$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$verticalDrag$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$verticalDrag$1 = new DragGestureDetectorKt$verticalDrag$1(continuation3);
            }
        }
        Object obj5 = dragGestureDetectorKt$verticalDrag$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerInputChange pointerInputChange2 = null;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$verticalDrag$1.label) {
            case 0:
                ResultKt.throwOnFailure(obj5);
                AwaitPointerEventScope awaitPointerEventScope4 = awaitPointerEventScope;
                Function1<? super PointerInputChange, Unit> function13 = function1;
                Orientation orientation2 = Orientation.Vertical;
                int i5 = 0;
                if (!m475isPointerUpDmW0f2w(awaitPointerEventScope4.getCurrentEvent(), j)) {
                    long id = j;
                    AwaitPointerEventScope awaitPointerEventScope5 = awaitPointerEventScope4;
                    Ref.LongRef longRef2 = new Ref.LongRef();
                    longRef2.element = id;
                    int i6 = i5;
                    AwaitPointerEventScope awaitPointerEventScope6 = awaitPointerEventScope4;
                    int i7 = i6;
                    Function1<? super PointerInputChange, Unit> function14 = function13;
                    AwaitPointerEventScope awaitPointerEventScope7 = awaitPointerEventScope5;
                    Object[] objArr2 = 0;
                    Ref.LongRef longRef3 = longRef2;
                    dragGestureDetectorKt$verticalDrag$1.L$0 = function14;
                    dragGestureDetectorKt$verticalDrag$1.L$1 = awaitPointerEventScope6;
                    dragGestureDetectorKt$verticalDrag$1.L$2 = orientation2;
                    dragGestureDetectorKt$verticalDrag$1.L$3 = awaitPointerEventScope7;
                    dragGestureDetectorKt$verticalDrag$1.L$4 = longRef3;
                    dragGestureDetectorKt$verticalDrag$1.label = i4;
                    Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope7, pointerEventPass, dragGestureDetectorKt$verticalDrag$1, i4, pointerEventPass);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj6 = coroutine_suspended;
                    obj = obj5;
                    obj5 = objAwaitPointerEvent$default;
                    function12 = function14;
                    awaitPointerEventScope2 = awaitPointerEventScope6;
                    orientation = orientation2;
                    awaitPointerEventScope3 = awaitPointerEventScope7;
                    longRef = longRef3;
                    objArr = objArr2;
                    i = i7;
                    obj2 = obj6;
                    PointerEvent pointerEvent = (PointerEvent) obj5;
                    List<PointerInputChange> changes = pointerEvent.getChanges();
                    size = changes.size();
                    i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            obj3 = changes.get(i2);
                            i3 = i;
                            continuation2 = continuation3;
                            dragGestureDetectorKt$verticalDrag$12 = dragGestureDetectorKt$verticalDrag$1;
                            if (!PointerId.m5992equalsimpl0(((PointerInputChange) obj3).getId(), longRef.element)) {
                                i2++;
                                i = i3;
                                continuation3 = continuation2;
                                dragGestureDetectorKt$verticalDrag$1 = dragGestureDetectorKt$verticalDrag$12;
                            }
                        } else {
                            continuation2 = continuation3;
                            dragGestureDetectorKt$verticalDrag$12 = dragGestureDetectorKt$verticalDrag$1;
                            i3 = i;
                            obj3 = null;
                        }
                    }
                    pointerInputChange = (PointerInputChange) obj3;
                    if (pointerInputChange == null) {
                        pointerInputChange = null;
                    } else if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
                        long jPositionChangeIgnoreConsumed = PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange);
                        break;
                    } else {
                        List<PointerInputChange> changes2 = pointerEvent.getChanges();
                        int i8 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (i8 < size2) {
                                obj4 = changes2.get(i8);
                                if (!((PointerInputChange) obj4).getPressed()) {
                                    i8++;
                                }
                            } else {
                                obj4 = null;
                            }
                        }
                        PointerInputChange pointerInputChange3 = (PointerInputChange) obj4;
                        if (pointerInputChange3 != null) {
                            longRef.element = pointerInputChange3.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$verticalDrag$1 = dragGestureDetectorKt$verticalDrag$12;
                            obj5 = obj;
                            coroutine_suspended = obj2;
                            objArr2 = objArr;
                            longRef3 = longRef;
                            awaitPointerEventScope7 = awaitPointerEventScope3;
                            orientation2 = orientation;
                            awaitPointerEventScope6 = awaitPointerEventScope2;
                            function14 = function12;
                            i4 = 1;
                            pointerEventPass = null;
                            i7 = i3;
                            dragGestureDetectorKt$verticalDrag$1.L$0 = function14;
                            dragGestureDetectorKt$verticalDrag$1.L$1 = awaitPointerEventScope6;
                            dragGestureDetectorKt$verticalDrag$1.L$2 = orientation2;
                            dragGestureDetectorKt$verticalDrag$1.L$3 = awaitPointerEventScope7;
                            dragGestureDetectorKt$verticalDrag$1.L$4 = longRef3;
                            dragGestureDetectorKt$verticalDrag$1.label = i4;
                            Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope7, pointerEventPass, dragGestureDetectorKt$verticalDrag$1, i4, pointerEventPass);
                            if (objAwaitPointerEvent$default2 == coroutine_suspended) {
                            }
                        }
                    }
                    if (pointerInputChange != null) {
                        pointerInputChange2 = null;
                    } else {
                        PointerInputChange pointerInputChange4 = pointerInputChange;
                        if (pointerInputChange4.isConsumed()) {
                            pointerInputChange2 = null;
                        } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange4)) {
                            pointerInputChange2 = pointerInputChange4;
                        } else {
                            function12.invoke(pointerInputChange4);
                            obj5 = obj;
                            coroutine_suspended = obj2;
                            orientation2 = orientation;
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            function13 = function12;
                            i4 = 1;
                            pointerEventPass = null;
                            i5 = i3;
                            id = pointerInputChange4.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$verticalDrag$1 = dragGestureDetectorKt$verticalDrag$12;
                            AwaitPointerEventScope awaitPointerEventScope52 = awaitPointerEventScope4;
                            Ref.LongRef longRef22 = new Ref.LongRef();
                            longRef22.element = id;
                            int i62 = i5;
                            AwaitPointerEventScope awaitPointerEventScope62 = awaitPointerEventScope4;
                            int i72 = i62;
                            Function1<? super PointerInputChange, Unit> function142 = function13;
                            AwaitPointerEventScope awaitPointerEventScope72 = awaitPointerEventScope52;
                            Object[] objArr22 = 0;
                            Ref.LongRef longRef32 = longRef22;
                            dragGestureDetectorKt$verticalDrag$1.L$0 = function142;
                            dragGestureDetectorKt$verticalDrag$1.L$1 = awaitPointerEventScope62;
                            dragGestureDetectorKt$verticalDrag$1.L$2 = orientation2;
                            dragGestureDetectorKt$verticalDrag$1.L$3 = awaitPointerEventScope72;
                            dragGestureDetectorKt$verticalDrag$1.L$4 = longRef32;
                            dragGestureDetectorKt$verticalDrag$1.label = i4;
                            Object objAwaitPointerEvent$default22 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope72, pointerEventPass, dragGestureDetectorKt$verticalDrag$1, i4, pointerEventPass);
                            if (objAwaitPointerEvent$default22 == coroutine_suspended) {
                            }
                        }
                    }
                }
                return Boxing.boxBoolean(pointerInputChange2 == null);
            case 1:
                Ref.LongRef longRef4 = (Ref.LongRef) dragGestureDetectorKt$verticalDrag$1.L$4;
                AwaitPointerEventScope awaitPointerEventScope8 = (AwaitPointerEventScope) dragGestureDetectorKt$verticalDrag$1.L$3;
                Orientation orientation3 = (Orientation) dragGestureDetectorKt$verticalDrag$1.L$2;
                AwaitPointerEventScope awaitPointerEventScope9 = (AwaitPointerEventScope) dragGestureDetectorKt$verticalDrag$1.L$1;
                Function1<? super PointerInputChange, Unit> function15 = (Function1) dragGestureDetectorKt$verticalDrag$1.L$0;
                ResultKt.throwOnFailure(obj5);
                function12 = function15;
                awaitPointerEventScope2 = awaitPointerEventScope9;
                orientation = orientation3;
                awaitPointerEventScope3 = awaitPointerEventScope8;
                longRef = longRef4;
                objArr = 0;
                i = 0;
                obj2 = coroutine_suspended;
                obj = obj5;
                PointerEvent pointerEvent2 = (PointerEvent) obj5;
                List<PointerInputChange> changes3 = pointerEvent2.getChanges();
                size = changes3.size();
                i2 = 0;
                while (true) {
                    if (i2 >= size) {
                    }
                    i2++;
                    i = i3;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$verticalDrag$1 = dragGestureDetectorKt$verticalDrag$12;
                }
                pointerInputChange = (PointerInputChange) obj3;
                if (pointerInputChange == null) {
                }
                if (pointerInputChange != null) {
                }
                return Boxing.boxBoolean(pointerInputChange2 == null);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x011e, code lost:
    
        if (r1 == false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0132 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006f -> B:21:0x0078). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitVerticalDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m468awaitVerticalDragOrCancellationrnUCldI(AwaitPointerEventScope $this$awaitVerticalDragOrCancellation_u2drnUCldI, long j, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitVerticalDragOrCancellation$1 dragGestureDetectorKt$awaitVerticalDragOrCancellation$1;
        Object $result;
        AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv;
        Ref.LongRef pointer$iv;
        AwaitPointerEventScope awaitPointerEventScope;
        Object obj;
        int index$iv$iv$iv;
        int size;
        Continuation<? super PointerInputChange> continuation2;
        DragGestureDetectorKt$awaitVerticalDragOrCancellation$1 dragGestureDetectorKt$awaitVerticalDragOrCancellation$12;
        Object it$iv$iv;
        PointerInputChange change;
        Object it$iv$iv2;
        Continuation<? super PointerInputChange> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$awaitVerticalDragOrCancellation$1) {
            dragGestureDetectorKt$awaitVerticalDragOrCancellation$1 = (DragGestureDetectorKt$awaitVerticalDragOrCancellation$1) continuation3;
            if ((dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitVerticalDragOrCancellation$1 = new DragGestureDetectorKt$awaitVerticalDragOrCancellation$1(continuation3);
            }
        }
        Object $result2 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = 1;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                if (m475isPointerUpDmW0f2w($this$awaitVerticalDragOrCancellation_u2drnUCldI.getCurrentEvent(), j)) {
                    return null;
                }
                Ref.LongRef pointer$iv2 = new Ref.LongRef();
                pointer$iv2.element = j;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitVerticalDragOrCancellation_u2drnUCldI;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv3 = null;
                Ref.LongRef pointer$iv3 = pointer$iv2;
                dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$1 = pointer$iv3;
                dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.label = i;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitVerticalDragOrCancellation$1, i, pointerEventPass);
                if (objAwaitPointerEvent$default != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent$default;
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv2;
                pointer$iv = pointer$iv3;
                awaitPointerEventScope = $this$awaitDragOrUp_u2djO51t88$iv3;
                obj = obj2;
                PointerEvent event$iv = (PointerEvent) $result2;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitVerticalDragOrCancellation$12 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$1;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv++;
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitVerticalDragOrCancellation$1 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$12;
                        }
                    } else {
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitVerticalDragOrCancellation$12 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$1;
                        it$iv$iv = null;
                    }
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                    if (!PointerEventKt.changedToUpIgnoreConsumed(change)) {
                        int bits$iv$iv$iv = (int) (4294967295L & PointerEventKt.positionChangeIgnoreConsumed(change));
                    } else {
                        List<PointerInputChange> changes2 = event$iv.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv != null) {
                            pointer$iv.element = otherDown$iv.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitVerticalDragOrCancellation$1 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$12;
                            $result2 = $result;
                            $result3 = obj;
                            $this$awaitDragOrUp_u2djO51t88$iv3 = awaitPointerEventScope;
                            pointer$iv3 = pointer$iv;
                            $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                            i = 1;
                            pointerEventPass = null;
                        }
                    }
                    dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                    dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$1 = pointer$iv3;
                    dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.label = i;
                    Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitVerticalDragOrCancellation$1, i, pointerEventPass);
                    if (objAwaitPointerEvent$default2 != $result3) {
                    }
                    break;
                } else {
                    change = null;
                }
                if (change == null && !change.isConsumed()) {
                    return null;
                }
                return change;
            case 1:
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$1;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv4 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitVerticalDragOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result2);
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv4;
                pointer$iv = pointer$iv4;
                awaitPointerEventScope = null;
                obj = $result3;
                $result = $result2;
                PointerEvent event$iv2 = (PointerEvent) $result2;
                List<PointerInputChange> changes3 = event$iv2.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$awaitVerticalDragOrCancellation$1 = dragGestureDetectorKt$awaitVerticalDragOrCancellation$12;
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                }
                if (change == null && !change.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object detectVerticalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function02 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function02;
        return detectVerticalDragGestures(pointerInputScope, function1, function0, function03, function2, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DragGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5", f = "DragGestureDetector.kt", i = {0, 1, 1}, l = {533, 536, 544}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "overSlop"}, s = {"L$0", "L$0", "L$1"}, v = 1)
    static final class C02465 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function0<Unit> $onDragEnd;
        final /* synthetic */ Function1<Offset, Unit> $onDragStart;
        final /* synthetic */ Function2<PointerInputChange, Float, Unit> $onVerticalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02465(Function1<? super Offset, Unit> function1, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function0<Unit> function0, Function0<Unit> function02, Continuation<? super C02465> continuation) {
            super(2, continuation);
            this.$onDragStart = function1;
            this.$onVerticalDrag = function2;
            this.$onDragEnd = function0;
            this.$onDragCancel = function02;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02465 c02465 = new C02465(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, continuation);
            c02465.L$0 = obj;
            return c02465;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((C02465) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            final Ref.FloatRef overSlop;
            PointerInputChange drag;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = $this$awaitEachGesture;
                    this.label = 1;
                    Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, null, this, 2, null);
                    if (objAwaitFirstDown$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objAwaitFirstDown$default;
                    PointerInputChange down = (PointerInputChange) $result;
                    overSlop = new Ref.FloatRef();
                    this.L$0 = $this$awaitEachGesture;
                    this.L$1 = overSlop;
                    this.label = 2;
                    $result = DragGestureDetectorKt.m469awaitVerticalPointerSlopOrCancellationgDDlDlE($this$awaitEachGesture, down.getId(), down.getType(), new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return DragGestureDetectorKt.C02465.invokeSuspend$lambda$0(overSlop, (PointerInputChange) obj, ((Float) obj2).floatValue());
                        }
                    }, this);
                    if ($result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                        this.$onDragStart.invoke(Offset.m4441boximpl(drag.getPosition()));
                        this.$onVerticalDrag.invoke(drag, Boxing.boxFloat(overSlop.element));
                        long id = drag.getId();
                        final Function2<PointerInputChange, Float, Unit> function2 = this.$onVerticalDrag;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        $result = DragGestureDetectorKt.m477verticalDragjO51t88($this$awaitEachGesture, id, new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return DragGestureDetectorKt.C02465.invokeSuspend$lambda$1(function2, (PointerInputChange) obj);
                            }
                        }, this);
                        if ($result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        if (((Boolean) $result).booleanValue()) {
                            this.$onDragCancel.invoke();
                        } else {
                            this.$onDragEnd.invoke();
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = $this$awaitEachGesture2;
                    PointerInputChange down2 = (PointerInputChange) $result;
                    overSlop = new Ref.FloatRef();
                    this.L$0 = $this$awaitEachGesture;
                    this.L$1 = overSlop;
                    this.label = 2;
                    $result = DragGestureDetectorKt.m469awaitVerticalPointerSlopOrCancellationgDDlDlE($this$awaitEachGesture, down2.getId(), down2.getType(), new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return DragGestureDetectorKt.C02465.invokeSuspend$lambda$0(overSlop, (PointerInputChange) obj, ((Float) obj2).floatValue());
                        }
                    }, this);
                    if ($result == coroutine_suspended) {
                    }
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    Ref.FloatRef overSlop2 = (Ref.FloatRef) this.L$1;
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    overSlop = overSlop2;
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                    }
                    return Unit.INSTANCE;
                case 3:
                    ResultKt.throwOnFailure($result);
                    if (((Boolean) $result).booleanValue()) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        static final Unit invokeSuspend$lambda$0(Ref.FloatRef $overSlop, PointerInputChange change, float over) {
            change.consume();
            $overSlop.element = over;
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$1(Function2 $onVerticalDrag, PointerInputChange it) {
            int bits$iv$iv$iv = (int) (4294967295L & PointerEventKt.positionChange(it));
            $onVerticalDrag.invoke(it, Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv)));
            it.consume();
            return Unit.INSTANCE;
        }
    }

    public static final Object detectVerticalDragGestures(PointerInputScope $this$detectVerticalDragGestures, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectVerticalDragGestures, new C02465(function1, function2, function0, function02, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ca A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01f3 -> B:62:0x01fc). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitHorizontalTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m462awaitHorizontalTouchSlopOrCancellationjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
        Function2<? super PointerInputChange, ? super Float, Unit> function22;
        int i;
        Ref.LongRef pointer$iv;
        float touchSlop$iv;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
        TouchSlopDetector touchSlopDetector$iv;
        Ref.LongRef pointer$iv2;
        float touchSlop$iv2;
        int touchSlop$iv3;
        Object obj;
        Object $result;
        PointerEvent event$iv;
        int index$iv$iv$iv;
        int size;
        PointerEvent event$iv2;
        Object $result2;
        int i2;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        int i3;
        PointerEventPass pointerEventPass;
        Function2<? super PointerInputChange, ? super Float, Unit> function23;
        TouchSlopDetector touchSlopDetector$iv2;
        PointerInputChange dragEvent$iv2;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
        Object it$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1 = (DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1 = new DragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass2 = null;
        switch (dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope;
                function22 = function2;
                int iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
                Orientation orientation$iv = Orientation.Horizontal;
                long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                i = 0;
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getCurrentEvent(), j)) {
                    return null;
                }
                float touchSlop$iv4 = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getViewConfiguration(), iM6088getTouchT8wyACA);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = j;
                TouchSlopDetector touchSlopDetector$iv3 = new TouchSlopDetector(orientation$iv, jM4468getZeroF1C5BW0, null);
                touchSlop$iv = touchSlop$iv4;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                obj = obj2;
                touchSlop$iv2 = touchSlop$iv;
                touchSlopDetector$iv = touchSlopDetector$iv3;
                touchSlop$iv3 = i;
                pointer$iv2 = pointer$iv;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        i2 = touchSlop$iv3;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv2.element)) {
                            index$iv$iv$iv++;
                            touchSlop$iv3 = i2;
                            $result = $result2;
                            event$iv = event$iv2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        i2 = touchSlop$iv3;
                        it$iv$iv = null;
                    }
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null && !dragEvent$iv.isConsumed()) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                        long postSlopOffset$iv = touchSlopDetector$iv.m604addPositionsakrDWew(dragEvent$iv.getPosition(), dragEvent$iv.getPreviousPosition(), touchSlop$iv2);
                        touchSlop$iv = touchSlop$iv2;
                        if ((9223372034707292159L & postSlopOffset$iv) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                            long overSlop = postSlopOffset$iv >> 32;
                            int bits$iv$iv$iv = (int) overSlop;
                            function22.invoke(dragEvent$iv, Boxing.boxFloat(Float.intBitsToFloat(bits$iv$iv$iv)));
                            if (dragEvent$iv.isConsumed()) {
                                return dragEvent$iv;
                            }
                            TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector$iv, 0L, 1, null);
                            i = i2;
                            $result3 = $result2;
                            i4 = 1;
                            coroutine_suspended = obj;
                            pointer$iv = pointer$iv2;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlopDetector$iv3 = touchSlopDetector$iv;
                            pointerEventPass2 = null;
                        } else {
                            i3 = 1;
                            pointerEventPass = null;
                            PointerEventPass pointerEventPass3 = PointerEventPass.Final;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0 = function22;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2 = pointer$iv2;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$4 = dragEvent$iv;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                            dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label = 2;
                            if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2.awaitPointerEvent(pointerEventPass3, dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1) == obj) {
                                return obj;
                            }
                            i = i2;
                            pointer$iv = pointer$iv2;
                            function23 = function22;
                            touchSlopDetector$iv2 = touchSlopDetector$iv;
                            dragEvent$iv2 = dragEvent$iv;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            $result3 = $result2;
                            if (!dragEvent$iv2.isConsumed()) {
                                return pointerEventPass;
                            }
                            touchSlopDetector$iv3 = touchSlopDetector$iv2;
                            pointerEventPass2 = pointerEventPass;
                            function22 = function23;
                            i4 = i3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
                        }
                    } else {
                        List<PointerInputChange> changes2 = event$iv2.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv == null) {
                            return null;
                        }
                        pointer$iv2.element = otherDown$iv.getId();
                        touchSlop$iv = touchSlop$iv2;
                        i = i2;
                        $result3 = $result2;
                        i4 = 1;
                        coroutine_suspended = obj;
                        pointer$iv = pointer$iv2;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                        touchSlopDetector$iv3 = touchSlopDetector$iv;
                        pointerEventPass2 = null;
                    }
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0 = function22;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                    dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label = i4;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                }
                return null;
            case 1:
                float touchSlop$iv5 = dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0;
                TouchSlopDetector touchSlopDetector$iv4 = (TouchSlopDetector) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function24 = (Function2) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                touchSlopDetector$iv = touchSlopDetector$iv4;
                pointer$iv2 = pointer$iv3;
                function22 = function24;
                touchSlop$iv2 = touchSlop$iv5;
                touchSlop$iv3 = 0;
                obj = coroutine_suspended;
                $result = $result3;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    touchSlop$iv3 = i2;
                    $result = $result2;
                    event$iv = event$iv2;
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                }
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                touchSlop$iv = dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$4;
                touchSlopDetector$iv2 = (TouchSlopDetector) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function25 = (Function2) dragGestureDetectorKt$awaitHorizontalTouchSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                i = 0;
                pointer$iv = pointer$iv4;
                obj = coroutine_suspended;
                i3 = 1;
                function23 = function25;
                pointerEventPass = null;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01fb -> B:62:0x0203). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m461awaitHorizontalPointerSlopOrCancellationgDDlDlE(AwaitPointerEventScope awaitPointerEventScope, long j, int i, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1 dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
        Function2<? super PointerInputChange, ? super Float, Unit> function22;
        float touchSlop$iv;
        Ref.LongRef pointer$iv;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
        Object obj;
        TouchSlopDetector touchSlopDetector$iv;
        Object $result;
        float touchSlop$iv2;
        PointerEvent event$iv;
        int size;
        int index$iv$iv$iv;
        PointerEvent event$iv2;
        Object $result2;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        int i2;
        PointerEventPass pointerEventPass;
        TouchSlopDetector touchSlopDetector$iv2;
        PointerInputChange dragEvent$iv2;
        Object it$iv$iv2;
        int i3;
        int index$iv$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1 = (DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1 = new DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass2 = null;
        switch (dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope;
                function22 = function2;
                Orientation orientation$iv = Orientation.Horizontal;
                long jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getCurrentEvent(), j)) {
                    return null;
                }
                touchSlop$iv = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv.getViewConfiguration(), i);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = j;
                TouchSlopDetector touchSlopDetector$iv3 = new TouchSlopDetector(orientation$iv, jM4468getZeroF1C5BW0, null);
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                touchSlopDetector$iv = touchSlopDetector$iv3;
                touchSlop$iv2 = touchSlop$iv;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                obj = obj2;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                size = changes.size();
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        i3 = size;
                        index$iv$iv$iv2 = index$iv$iv$iv;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv = index$iv$iv$iv2 + 1;
                            event$iv = event$iv2;
                            size = i3;
                            $result = $result2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        it$iv$iv = null;
                    }
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null && !dragEvent$iv.isConsumed()) {
                    if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                        float touchSlop$iv3 = touchSlop$iv2;
                        TouchSlopDetector touchSlopDetector$iv4 = touchSlopDetector$iv;
                        long postSlopOffset$iv = touchSlopDetector$iv4.m604addPositionsakrDWew(dragEvent$iv.getPosition(), dragEvent$iv.getPreviousPosition(), touchSlop$iv3);
                        touchSlopDetector$iv3 = touchSlopDetector$iv4;
                        if ((postSlopOffset$iv & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                            long overSlop = postSlopOffset$iv >> 32;
                            int bits$iv$iv$iv = (int) overSlop;
                            function22.invoke(dragEvent$iv, Boxing.boxFloat(Float.intBitsToFloat(bits$iv$iv$iv)));
                            if (dragEvent$iv.isConsumed()) {
                                return dragEvent$iv;
                            }
                            TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector$iv3, 0L, 1, null);
                            AwaitPointerEventScope awaitPointerEventScope2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlop$iv = touchSlop$iv3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope2;
                            i4 = 1;
                            pointerEventPass2 = null;
                            $result3 = $result2;
                        } else {
                            i2 = 1;
                            pointerEventPass = null;
                            PointerEventPass pointerEventPass3 = PointerEventPass.Final;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$4 = dragEvent$iv;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv3;
                            dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label = 2;
                            if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2.awaitPointerEvent(pointerEventPass3, dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1) == obj) {
                                return obj;
                            }
                            AwaitPointerEventScope awaitPointerEventScope3 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                            touchSlop$iv = touchSlop$iv3;
                            coroutine_suspended = obj;
                            $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope3;
                            touchSlopDetector$iv2 = touchSlopDetector$iv3;
                            dragEvent$iv2 = dragEvent$iv;
                            $result3 = $result2;
                            if (!dragEvent$iv2.isConsumed()) {
                                return pointerEventPass;
                            }
                            touchSlopDetector$iv3 = touchSlopDetector$iv2;
                            i4 = i2;
                            pointerEventPass2 = pointerEventPass;
                        }
                    } else {
                        List<PointerInputChange> changes2 = event$iv2.getChanges();
                        int index$iv$iv$iv3 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv3 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv3);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv3++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv == null) {
                            return null;
                        }
                        pointer$iv.element = otherDown$iv.getId();
                        float touchSlop$iv4 = touchSlop$iv2;
                        touchSlopDetector$iv3 = touchSlopDetector$iv;
                        AwaitPointerEventScope awaitPointerEventScope4 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2;
                        touchSlop$iv = touchSlop$iv4;
                        coroutine_suspended = obj;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = awaitPointerEventScope4;
                        i4 = 1;
                        pointerEventPass2 = null;
                        $result3 = $result2;
                    }
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                    dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label = i4;
                    objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                    }
                }
                return null;
            case 1:
                float touchSlop$iv5 = dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0;
                TouchSlopDetector touchSlopDetector$iv5 = (TouchSlopDetector) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv2 = (Ref.LongRef) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function23 = (Function2) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                pointer$iv = pointer$iv2;
                obj = coroutine_suspended;
                touchSlopDetector$iv = touchSlopDetector$iv5;
                $result = $result3;
                touchSlop$iv2 = touchSlop$iv5;
                function22 = function23;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                size = changes3.size();
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv = index$iv$iv$iv2 + 1;
                    event$iv = event$iv2;
                    size = i3;
                    $result = $result2;
                }
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv == null) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                }
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = touchSlopDetector$iv3;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$4 = pointerEventPass2;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv, pointerEventPass2, dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1, i4, pointerEventPass2);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                float touchSlop$iv6 = dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$4;
                TouchSlopDetector touchSlopDetector$iv6 = (TouchSlopDetector) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$2;
                AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function24 = (Function2) dragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                i2 = 1;
                touchSlopDetector$iv2 = touchSlopDetector$iv6;
                pointer$iv = pointer$iv3;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv = $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default$iv3;
                pointerEventPass = null;
                touchSlop$iv = touchSlop$iv6;
                function22 = function24;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x017f, code lost:
    
        if (r0 == false) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:34:0x00fe, B:45:0x0136], limit reached: 72 */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0095 -> B:22:0x00a2). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: horizontalDrag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m474horizontalDragjO51t88(AwaitPointerEventScope awaitPointerEventScope, long j, Function1<? super PointerInputChange, Unit> function1, Continuation<? super Boolean> continuation) {
        DragGestureDetectorKt$horizontalDrag$1 dragGestureDetectorKt$horizontalDrag$1;
        Object obj;
        Function1<? super PointerInputChange, Unit> function12;
        AwaitPointerEventScope awaitPointerEventScope2;
        Orientation orientation;
        AwaitPointerEventScope awaitPointerEventScope3;
        Ref.LongRef longRef;
        Object[] objArr;
        int i;
        Object obj2;
        int size;
        int i2;
        Continuation<? super Boolean> continuation2;
        DragGestureDetectorKt$horizontalDrag$1 dragGestureDetectorKt$horizontalDrag$12;
        int i3;
        Object obj3;
        PointerInputChange pointerInputChange;
        Object obj4;
        Continuation<? super Boolean> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$horizontalDrag$1) {
            dragGestureDetectorKt$horizontalDrag$1 = (DragGestureDetectorKt$horizontalDrag$1) continuation3;
            if ((dragGestureDetectorKt$horizontalDrag$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$horizontalDrag$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$horizontalDrag$1 = new DragGestureDetectorKt$horizontalDrag$1(continuation3);
            }
        }
        Object obj5 = dragGestureDetectorKt$horizontalDrag$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerInputChange pointerInputChange2 = null;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$horizontalDrag$1.label) {
            case 0:
                ResultKt.throwOnFailure(obj5);
                AwaitPointerEventScope awaitPointerEventScope4 = awaitPointerEventScope;
                Function1<? super PointerInputChange, Unit> function13 = function1;
                Orientation orientation2 = Orientation.Horizontal;
                int i5 = 0;
                if (!m475isPointerUpDmW0f2w(awaitPointerEventScope4.getCurrentEvent(), j)) {
                    long id = j;
                    AwaitPointerEventScope awaitPointerEventScope5 = awaitPointerEventScope4;
                    Ref.LongRef longRef2 = new Ref.LongRef();
                    longRef2.element = id;
                    int i6 = i5;
                    AwaitPointerEventScope awaitPointerEventScope6 = awaitPointerEventScope4;
                    int i7 = i6;
                    Function1<? super PointerInputChange, Unit> function14 = function13;
                    AwaitPointerEventScope awaitPointerEventScope7 = awaitPointerEventScope5;
                    Object[] objArr2 = 0;
                    Ref.LongRef longRef3 = longRef2;
                    dragGestureDetectorKt$horizontalDrag$1.L$0 = function14;
                    dragGestureDetectorKt$horizontalDrag$1.L$1 = awaitPointerEventScope6;
                    dragGestureDetectorKt$horizontalDrag$1.L$2 = orientation2;
                    dragGestureDetectorKt$horizontalDrag$1.L$3 = awaitPointerEventScope7;
                    dragGestureDetectorKt$horizontalDrag$1.L$4 = longRef3;
                    dragGestureDetectorKt$horizontalDrag$1.label = i4;
                    Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope7, pointerEventPass, dragGestureDetectorKt$horizontalDrag$1, i4, pointerEventPass);
                    if (objAwaitPointerEvent$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj6 = coroutine_suspended;
                    obj = obj5;
                    obj5 = objAwaitPointerEvent$default;
                    function12 = function14;
                    awaitPointerEventScope2 = awaitPointerEventScope6;
                    orientation = orientation2;
                    awaitPointerEventScope3 = awaitPointerEventScope7;
                    longRef = longRef3;
                    objArr = objArr2;
                    i = i7;
                    obj2 = obj6;
                    PointerEvent pointerEvent = (PointerEvent) obj5;
                    List<PointerInputChange> changes = pointerEvent.getChanges();
                    size = changes.size();
                    i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            obj3 = changes.get(i2);
                            i3 = i;
                            continuation2 = continuation3;
                            dragGestureDetectorKt$horizontalDrag$12 = dragGestureDetectorKt$horizontalDrag$1;
                            if (!PointerId.m5992equalsimpl0(((PointerInputChange) obj3).getId(), longRef.element)) {
                                i2++;
                                i = i3;
                                continuation3 = continuation2;
                                dragGestureDetectorKt$horizontalDrag$1 = dragGestureDetectorKt$horizontalDrag$12;
                            }
                        } else {
                            continuation2 = continuation3;
                            dragGestureDetectorKt$horizontalDrag$12 = dragGestureDetectorKt$horizontalDrag$1;
                            i3 = i;
                            obj3 = null;
                        }
                    }
                    pointerInputChange = (PointerInputChange) obj3;
                    if (pointerInputChange == null) {
                        pointerInputChange = null;
                    } else if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
                        long jPositionChangeIgnoreConsumed = PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange);
                        break;
                    } else {
                        List<PointerInputChange> changes2 = pointerEvent.getChanges();
                        int i8 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (i8 < size2) {
                                obj4 = changes2.get(i8);
                                if (!((PointerInputChange) obj4).getPressed()) {
                                    i8++;
                                }
                            } else {
                                obj4 = null;
                            }
                        }
                        PointerInputChange pointerInputChange3 = (PointerInputChange) obj4;
                        if (pointerInputChange3 != null) {
                            longRef.element = pointerInputChange3.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$horizontalDrag$1 = dragGestureDetectorKt$horizontalDrag$12;
                            obj5 = obj;
                            coroutine_suspended = obj2;
                            objArr2 = objArr;
                            longRef3 = longRef;
                            awaitPointerEventScope7 = awaitPointerEventScope3;
                            orientation2 = orientation;
                            awaitPointerEventScope6 = awaitPointerEventScope2;
                            function14 = function12;
                            i4 = 1;
                            pointerEventPass = null;
                            i7 = i3;
                            dragGestureDetectorKt$horizontalDrag$1.L$0 = function14;
                            dragGestureDetectorKt$horizontalDrag$1.L$1 = awaitPointerEventScope6;
                            dragGestureDetectorKt$horizontalDrag$1.L$2 = orientation2;
                            dragGestureDetectorKt$horizontalDrag$1.L$3 = awaitPointerEventScope7;
                            dragGestureDetectorKt$horizontalDrag$1.L$4 = longRef3;
                            dragGestureDetectorKt$horizontalDrag$1.label = i4;
                            Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope7, pointerEventPass, dragGestureDetectorKt$horizontalDrag$1, i4, pointerEventPass);
                            if (objAwaitPointerEvent$default2 == coroutine_suspended) {
                            }
                        }
                    }
                    if (pointerInputChange != null) {
                        pointerInputChange2 = null;
                    } else {
                        PointerInputChange pointerInputChange4 = pointerInputChange;
                        if (pointerInputChange4.isConsumed()) {
                            pointerInputChange2 = null;
                        } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange4)) {
                            pointerInputChange2 = pointerInputChange4;
                        } else {
                            function12.invoke(pointerInputChange4);
                            obj5 = obj;
                            coroutine_suspended = obj2;
                            orientation2 = orientation;
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            function13 = function12;
                            i4 = 1;
                            pointerEventPass = null;
                            i5 = i3;
                            id = pointerInputChange4.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$horizontalDrag$1 = dragGestureDetectorKt$horizontalDrag$12;
                            AwaitPointerEventScope awaitPointerEventScope52 = awaitPointerEventScope4;
                            Ref.LongRef longRef22 = new Ref.LongRef();
                            longRef22.element = id;
                            int i62 = i5;
                            AwaitPointerEventScope awaitPointerEventScope62 = awaitPointerEventScope4;
                            int i72 = i62;
                            Function1<? super PointerInputChange, Unit> function142 = function13;
                            AwaitPointerEventScope awaitPointerEventScope72 = awaitPointerEventScope52;
                            Object[] objArr22 = 0;
                            Ref.LongRef longRef32 = longRef22;
                            dragGestureDetectorKt$horizontalDrag$1.L$0 = function142;
                            dragGestureDetectorKt$horizontalDrag$1.L$1 = awaitPointerEventScope62;
                            dragGestureDetectorKt$horizontalDrag$1.L$2 = orientation2;
                            dragGestureDetectorKt$horizontalDrag$1.L$3 = awaitPointerEventScope72;
                            dragGestureDetectorKt$horizontalDrag$1.L$4 = longRef32;
                            dragGestureDetectorKt$horizontalDrag$1.label = i4;
                            Object objAwaitPointerEvent$default22 = AwaitPointerEventScope.awaitPointerEvent$default(awaitPointerEventScope72, pointerEventPass, dragGestureDetectorKt$horizontalDrag$1, i4, pointerEventPass);
                            if (objAwaitPointerEvent$default22 == coroutine_suspended) {
                            }
                        }
                    }
                }
                return Boxing.boxBoolean(pointerInputChange2 == null);
            case 1:
                Ref.LongRef longRef4 = (Ref.LongRef) dragGestureDetectorKt$horizontalDrag$1.L$4;
                AwaitPointerEventScope awaitPointerEventScope8 = (AwaitPointerEventScope) dragGestureDetectorKt$horizontalDrag$1.L$3;
                Orientation orientation3 = (Orientation) dragGestureDetectorKt$horizontalDrag$1.L$2;
                AwaitPointerEventScope awaitPointerEventScope9 = (AwaitPointerEventScope) dragGestureDetectorKt$horizontalDrag$1.L$1;
                Function1<? super PointerInputChange, Unit> function15 = (Function1) dragGestureDetectorKt$horizontalDrag$1.L$0;
                ResultKt.throwOnFailure(obj5);
                function12 = function15;
                awaitPointerEventScope2 = awaitPointerEventScope9;
                orientation = orientation3;
                awaitPointerEventScope3 = awaitPointerEventScope8;
                longRef = longRef4;
                objArr = 0;
                i = 0;
                obj2 = coroutine_suspended;
                obj = obj5;
                PointerEvent pointerEvent2 = (PointerEvent) obj5;
                List<PointerInputChange> changes3 = pointerEvent2.getChanges();
                size = changes3.size();
                i2 = 0;
                while (true) {
                    if (i2 >= size) {
                    }
                    i2++;
                    i = i3;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$horizontalDrag$1 = dragGestureDetectorKt$horizontalDrag$12;
                }
                pointerInputChange = (PointerInputChange) obj3;
                if (pointerInputChange == null) {
                }
                if (pointerInputChange != null) {
                }
                return Boxing.boxBoolean(pointerInputChange2 == null);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x011c, code lost:
    
        if (r1 == false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0130 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006f -> B:21:0x0078). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitHorizontalDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m460awaitHorizontalDragOrCancellationrnUCldI(AwaitPointerEventScope $this$awaitHorizontalDragOrCancellation_u2drnUCldI, long j, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;
        Object $result;
        AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv;
        Ref.LongRef pointer$iv;
        AwaitPointerEventScope awaitPointerEventScope;
        Object obj;
        int index$iv$iv$iv;
        int size;
        Continuation<? super PointerInputChange> continuation2;
        DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12;
        Object it$iv$iv;
        PointerInputChange change;
        Object it$iv$iv2;
        Continuation<? super PointerInputChange> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1) {
            dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 = (DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1) continuation3;
            if ((dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 = new DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1(continuation3);
            }
        }
        Object $result2 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = 1;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                if (m475isPointerUpDmW0f2w($this$awaitHorizontalDragOrCancellation_u2drnUCldI.getCurrentEvent(), j)) {
                    return null;
                }
                Ref.LongRef pointer$iv2 = new Ref.LongRef();
                pointer$iv2.element = j;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitHorizontalDragOrCancellation_u2drnUCldI;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv3 = null;
                Ref.LongRef pointer$iv3 = pointer$iv2;
                dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$1 = pointer$iv3;
                dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.label = i;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1, i, pointerEventPass);
                if (objAwaitPointerEvent$default != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent$default;
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv2;
                pointer$iv = pointer$iv3;
                awaitPointerEventScope = $this$awaitDragOrUp_u2djO51t88$iv3;
                obj = obj2;
                PointerEvent event$iv = (PointerEvent) $result2;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv++;
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12;
                        }
                    } else {
                        continuation2 = continuation3;
                        dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1;
                        it$iv$iv = null;
                    }
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                    if (!PointerEventKt.changedToUpIgnoreConsumed(change)) {
                        int bits$iv$iv$iv = (int) (PointerEventKt.positionChangeIgnoreConsumed(change) >> 32);
                    } else {
                        List<PointerInputChange> changes2 = event$iv.getChanges();
                        int index$iv$iv$iv2 = 0;
                        int size2 = changes2.size();
                        while (true) {
                            if (index$iv$iv$iv2 < size2) {
                                Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                                it$iv$iv2 = item$iv$iv$iv2;
                                PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                                if (!it$iv2.getPressed()) {
                                    index$iv$iv$iv2++;
                                }
                            } else {
                                it$iv$iv2 = null;
                            }
                        }
                        PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                        if (otherDown$iv != null) {
                            pointer$iv.element = otherDown$iv.getId();
                            continuation3 = continuation2;
                            dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12;
                            $result2 = $result;
                            $result3 = obj;
                            $this$awaitDragOrUp_u2djO51t88$iv3 = awaitPointerEventScope;
                            pointer$iv3 = pointer$iv;
                            $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                            i = 1;
                            pointerEventPass = null;
                        }
                    }
                    dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$0 = $this$awaitDragOrUp_u2djO51t88$iv2;
                    dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$1 = pointer$iv3;
                    dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.label = i;
                    Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass, dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1, i, pointerEventPass);
                    if (objAwaitPointerEvent$default2 != $result3) {
                    }
                    break;
                } else {
                    change = null;
                }
                if (change == null && !change.isConsumed()) {
                    return null;
                }
                return change;
            case 1:
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$1;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv4 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result2);
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv4;
                pointer$iv = pointer$iv4;
                awaitPointerEventScope = null;
                obj = $result3;
                $result = $result2;
                PointerEvent event$iv2 = (PointerEvent) $result2;
                List<PointerInputChange> changes3 = event$iv2.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 = dragGestureDetectorKt$awaitHorizontalDragOrCancellation$12;
                }
                change = (PointerInputChange) it$iv$iv;
                if (change != null) {
                }
                if (change == null && !change.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object detectHorizontalDragGestures$default(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        if ((i & 4) != 0) {
            function02 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        Function0 function03 = function02;
        return detectHorizontalDragGestures(pointerInputScope, function1, function0, function03, function2, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DragGestureDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5", f = "DragGestureDetector.kt", i = {0, 1, 1}, l = {702, 705, 713}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "overSlop"}, s = {"L$0", "L$0", "L$1"}, v = 1)
    static final class C02455 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function0<Unit> $onDragEnd;
        final /* synthetic */ Function1<Offset, Unit> $onDragStart;
        final /* synthetic */ Function2<PointerInputChange, Float, Unit> $onHorizontalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02455(Function1<? super Offset, Unit> function1, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function0<Unit> function0, Function0<Unit> function02, Continuation<? super C02455> continuation) {
            super(2, continuation);
            this.$onDragStart = function1;
            this.$onHorizontalDrag = function2;
            this.$onDragEnd = function0;
            this.$onDragCancel = function02;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02455 c02455 = new C02455(this.$onDragStart, this.$onHorizontalDrag, this.$onDragEnd, this.$onDragCancel, continuation);
            c02455.L$0 = obj;
            return c02455;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((C02455) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            final Ref.FloatRef overSlop;
            PointerInputChange drag;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = $this$awaitEachGesture;
                    this.label = 1;
                    Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, null, this, 2, null);
                    if (objAwaitFirstDown$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objAwaitFirstDown$default;
                    PointerInputChange down = (PointerInputChange) $result;
                    overSlop = new Ref.FloatRef();
                    this.L$0 = $this$awaitEachGesture;
                    this.L$1 = overSlop;
                    this.label = 2;
                    $result = DragGestureDetectorKt.m461awaitHorizontalPointerSlopOrCancellationgDDlDlE($this$awaitEachGesture, down.getId(), down.getType(), new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return DragGestureDetectorKt.C02455.invokeSuspend$lambda$0(overSlop, (PointerInputChange) obj, ((Float) obj2).floatValue());
                        }
                    }, this);
                    if ($result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                        this.$onDragStart.invoke(Offset.m4441boximpl(drag.getPosition()));
                        this.$onHorizontalDrag.invoke(drag, Boxing.boxFloat(overSlop.element));
                        long id = drag.getId();
                        final Function2<PointerInputChange, Float, Unit> function2 = this.$onHorizontalDrag;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        $result = DragGestureDetectorKt.m474horizontalDragjO51t88($this$awaitEachGesture, id, new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return DragGestureDetectorKt.C02455.invokeSuspend$lambda$1(function2, (PointerInputChange) obj);
                            }
                        }, this);
                        if ($result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        if (((Boolean) $result).booleanValue()) {
                            this.$onDragCancel.invoke();
                        } else {
                            this.$onDragEnd.invoke();
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = $this$awaitEachGesture2;
                    PointerInputChange down2 = (PointerInputChange) $result;
                    overSlop = new Ref.FloatRef();
                    this.L$0 = $this$awaitEachGesture;
                    this.L$1 = overSlop;
                    this.label = 2;
                    $result = DragGestureDetectorKt.m461awaitHorizontalPointerSlopOrCancellationgDDlDlE($this$awaitEachGesture, down2.getId(), down2.getType(), new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return DragGestureDetectorKt.C02455.invokeSuspend$lambda$0(overSlop, (PointerInputChange) obj, ((Float) obj2).floatValue());
                        }
                    }, this);
                    if ($result == coroutine_suspended) {
                    }
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    Ref.FloatRef overSlop2 = (Ref.FloatRef) this.L$1;
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    overSlop = overSlop2;
                    drag = (PointerInputChange) $result;
                    if (drag != null) {
                    }
                    return Unit.INSTANCE;
                case 3:
                    ResultKt.throwOnFailure($result);
                    if (((Boolean) $result).booleanValue()) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        static final Unit invokeSuspend$lambda$0(Ref.FloatRef $overSlop, PointerInputChange change, float over) {
            change.consume();
            $overSlop.element = over;
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$1(Function2 $onHorizontalDrag, PointerInputChange it) {
            int bits$iv$iv$iv = (int) (PointerEventKt.positionChange(it) >> 32);
            $onHorizontalDrag.invoke(it, Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv)));
            it.consume();
            return Unit.INSTANCE;
        }
    }

    public static final Object detectHorizontalDragGestures(PointerInputScope $this$detectHorizontalDragGestures, Function1<? super Offset, Unit> function1, Function0<Unit> function0, Function0<Unit> function02, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectHorizontalDragGestures, new C02455(function1, function2, function0, function02, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0192, code lost:
    
        if (r0 == false) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:34:0x010e, B:45:0x0148], limit reached: 68 */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0197 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r0v25, types: [androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r20v2, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x009d -> B:22:0x00ab). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: drag-VnAYq1g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m471dragVnAYq1g(AwaitPointerEventScope awaitPointerEventScope, long j, Function1<? super PointerInputChange, Unit> function1, Orientation orientation, Function1<? super PointerInputChange, Boolean> function12, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$drag$2 dragGestureDetectorKt$drag$2;
        Function1<? super PointerInputChange, Boolean> function13;
        Object $result;
        AwaitPointerEventScope $this$drag_u2dVnAYq1g;
        Function1<? super PointerInputChange, Unit> function14;
        Orientation orientation2;
        AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv;
        Ref.LongRef pointer$iv;
        int i;
        int i2;
        Object obj;
        PointerEvent event$iv;
        int size;
        int index$iv$iv$iv;
        Continuation<? super PointerInputChange> continuation2;
        DragGestureDetectorKt$drag$2 dragGestureDetectorKt$drag$22;
        PointerEvent event$iv2;
        Object $result2;
        Object it$iv$iv;
        ?? r20;
        float motionChange;
        Object it$iv$iv2;
        Continuation<? super PointerInputChange> continuation3 = continuation;
        if (continuation3 instanceof DragGestureDetectorKt$drag$2) {
            dragGestureDetectorKt$drag$2 = (DragGestureDetectorKt$drag$2) continuation3;
            if ((dragGestureDetectorKt$drag$2.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$drag$2.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$drag$2 = new DragGestureDetectorKt$drag$2(continuation3);
            }
        }
        Object $result3 = dragGestureDetectorKt$drag$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = 1;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$drag$2.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                AwaitPointerEventScope $this$drag_u2dVnAYq1g2 = awaitPointerEventScope;
                Orientation orientation3 = orientation;
                Function1<? super PointerInputChange, Unit> function15 = function1;
                function13 = function12;
                int i4 = 0;
                if (m475isPointerUpDmW0f2w($this$drag_u2dVnAYq1g2.getCurrentEvent(), j)) {
                    return null;
                }
                long pointer = j;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv2 = $this$drag_u2dVnAYq1g2;
                Ref.LongRef pointer$iv2 = new Ref.LongRef();
                pointer$iv2.element = pointer;
                AwaitPointerEventScope $this$drag_u2dVnAYq1g3 = $this$drag_u2dVnAYq1g2;
                int i5 = i4;
                Function1<? super PointerInputChange, Unit> function16 = function15;
                Function1<? super PointerInputChange, Boolean> function17 = function13;
                Orientation orientation4 = orientation3;
                int i6 = 0;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv3 = $this$awaitDragOrUp_u2djO51t88$iv2;
                Ref.LongRef pointer$iv3 = pointer$iv2;
                dragGestureDetectorKt$drag$2.L$0 = $this$drag_u2dVnAYq1g3;
                dragGestureDetectorKt$drag$2.L$1 = function16;
                dragGestureDetectorKt$drag$2.L$2 = orientation4;
                dragGestureDetectorKt$drag$2.L$3 = function17;
                dragGestureDetectorKt$drag$2.L$4 = $this$awaitDragOrUp_u2djO51t88$iv3;
                dragGestureDetectorKt$drag$2.L$5 = pointer$iv3;
                dragGestureDetectorKt$drag$2.label = i3;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv3, pointerEventPass, dragGestureDetectorKt$drag$2, i3, pointerEventPass);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Object obj2 = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                $this$drag_u2dVnAYq1g = $this$drag_u2dVnAYq1g3;
                function14 = function16;
                orientation2 = orientation4;
                function13 = function17;
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv3;
                pointer$iv = pointer$iv3;
                i = i6;
                i2 = i5;
                obj = obj2;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                size = changes.size();
                PointerEventPass pointerEventPass2 = pointerEventPass;
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        continuation2 = continuation3;
                        dragGestureDetectorKt$drag$22 = dragGestureDetectorKt$drag$2;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv++;
                            continuation3 = continuation2;
                            dragGestureDetectorKt$drag$2 = dragGestureDetectorKt$drag$22;
                            $result = $result2;
                            event$iv = event$iv2;
                        }
                    } else {
                        continuation2 = continuation3;
                        dragGestureDetectorKt$drag$22 = dragGestureDetectorKt$drag$2;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        it$iv$iv = pointerEventPass2;
                    }
                }
                r20 = (PointerInputChange) it$iv$iv;
                if (r20 == 0) {
                    r20 = pointerEventPass2;
                } else if (!PointerEventKt.changedToUpIgnoreConsumed(r20)) {
                    long positionChange = PointerEventKt.positionChangeIgnoreConsumed(r20);
                    if (orientation2 == null) {
                        motionChange = Offset.m4450getDistanceimpl(positionChange);
                    } else if (orientation2 == Orientation.Vertical) {
                        int bits$iv$iv$iv = (int) (positionChange & 4294967295L);
                        motionChange = Float.intBitsToFloat(bits$iv$iv$iv);
                    } else {
                        int bits$iv$iv$iv2 = (int) (positionChange >> 32);
                        motionChange = Float.intBitsToFloat(bits$iv$iv$iv2);
                    }
                    break;
                } else {
                    List<PointerInputChange> changes2 = event$iv2.getChanges();
                    int index$iv$iv$iv2 = 0;
                    int size2 = changes2.size();
                    while (true) {
                        if (index$iv$iv$iv2 < size2) {
                            Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                            it$iv$iv2 = item$iv$iv$iv2;
                            PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                            if (!it$iv2.getPressed()) {
                                index$iv$iv$iv2++;
                            }
                        } else {
                            it$iv$iv2 = pointerEventPass2;
                        }
                    }
                    PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                    if (otherDown$iv != null) {
                        pointer$iv.element = otherDown$iv.getId();
                        continuation3 = continuation2;
                        dragGestureDetectorKt$drag$2 = dragGestureDetectorKt$drag$22;
                        $result3 = $result2;
                        coroutine_suspended = obj;
                        i5 = i2;
                        i6 = i;
                        pointer$iv3 = pointer$iv;
                        $this$awaitDragOrUp_u2djO51t88$iv3 = $this$awaitDragOrUp_u2djO51t88$iv;
                        function17 = function13;
                        orientation4 = orientation2;
                        function16 = function14;
                        $this$drag_u2dVnAYq1g3 = $this$drag_u2dVnAYq1g;
                        pointerEventPass = pointerEventPass2;
                        i3 = 1;
                        dragGestureDetectorKt$drag$2.L$0 = $this$drag_u2dVnAYq1g3;
                        dragGestureDetectorKt$drag$2.L$1 = function16;
                        dragGestureDetectorKt$drag$2.L$2 = orientation4;
                        dragGestureDetectorKt$drag$2.L$3 = function17;
                        dragGestureDetectorKt$drag$2.L$4 = $this$awaitDragOrUp_u2djO51t88$iv3;
                        dragGestureDetectorKt$drag$2.L$5 = pointer$iv3;
                        dragGestureDetectorKt$drag$2.label = i3;
                        Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv3, pointerEventPass, dragGestureDetectorKt$drag$2, i3, pointerEventPass);
                        if (objAwaitPointerEvent$default2 == coroutine_suspended) {
                        }
                    }
                }
                if (r20 != 0) {
                    return pointerEventPass2;
                }
                ?? r0 = r20;
                if (function13.invoke(r0).booleanValue()) {
                    return pointerEventPass2;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(r0)) {
                    return r0;
                }
                function14.invoke(r0);
                Orientation orientation5 = orientation2;
                i4 = i2;
                orientation3 = orientation5;
                $result3 = $result2;
                coroutine_suspended = obj;
                function15 = function14;
                $this$drag_u2dVnAYq1g2 = $this$drag_u2dVnAYq1g;
                pointerEventPass = pointerEventPass2;
                i3 = 1;
                pointer = r0.getId();
                continuation3 = continuation2;
                dragGestureDetectorKt$drag$2 = dragGestureDetectorKt$drag$22;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv22 = $this$drag_u2dVnAYq1g2;
                Ref.LongRef pointer$iv22 = new Ref.LongRef();
                pointer$iv22.element = pointer;
                AwaitPointerEventScope $this$drag_u2dVnAYq1g32 = $this$drag_u2dVnAYq1g2;
                int i52 = i4;
                Function1<? super PointerInputChange, Unit> function162 = function15;
                Function1<? super PointerInputChange, Boolean> function172 = function13;
                Orientation orientation42 = orientation3;
                int i62 = 0;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv32 = $this$awaitDragOrUp_u2djO51t88$iv22;
                Ref.LongRef pointer$iv32 = pointer$iv22;
                dragGestureDetectorKt$drag$2.L$0 = $this$drag_u2dVnAYq1g32;
                dragGestureDetectorKt$drag$2.L$1 = function162;
                dragGestureDetectorKt$drag$2.L$2 = orientation42;
                dragGestureDetectorKt$drag$2.L$3 = function172;
                dragGestureDetectorKt$drag$2.L$4 = $this$awaitDragOrUp_u2djO51t88$iv32;
                dragGestureDetectorKt$drag$2.L$5 = pointer$iv32;
                dragGestureDetectorKt$drag$2.label = i3;
                Object objAwaitPointerEvent$default22 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv32, pointerEventPass, dragGestureDetectorKt$drag$2, i3, pointerEventPass);
                if (objAwaitPointerEvent$default22 == coroutine_suspended) {
                }
                break;
            case 1:
                Ref.LongRef pointer$iv4 = (Ref.LongRef) dragGestureDetectorKt$drag$2.L$5;
                AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv4 = (AwaitPointerEventScope) dragGestureDetectorKt$drag$2.L$4;
                Function1<? super PointerInputChange, Boolean> function18 = (Function1) dragGestureDetectorKt$drag$2.L$3;
                Orientation orientation6 = (Orientation) dragGestureDetectorKt$drag$2.L$2;
                Function1<? super PointerInputChange, Unit> function19 = (Function1) dragGestureDetectorKt$drag$2.L$1;
                AwaitPointerEventScope $this$drag_u2dVnAYq1g4 = (AwaitPointerEventScope) dragGestureDetectorKt$drag$2.L$0;
                ResultKt.throwOnFailure($result3);
                $this$drag_u2dVnAYq1g = $this$drag_u2dVnAYq1g4;
                function14 = function19;
                orientation2 = orientation6;
                function13 = function18;
                $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv4;
                pointer$iv = pointer$iv4;
                i = 0;
                i2 = 0;
                obj = coroutine_suspended;
                $result = $result3;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                size = changes3.size();
                PointerEventPass pointerEventPass22 = pointerEventPass;
                index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    continuation3 = continuation2;
                    dragGestureDetectorKt$drag$2 = dragGestureDetectorKt$drag$22;
                    $result = $result2;
                    event$iv = event$iv2;
                }
                r20 = (PointerInputChange) it$iv$iv;
                if (r20 == 0) {
                }
                if (r20 != 0) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r22v2, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX INFO: renamed from: drag-VnAYq1g$$forInline, reason: not valid java name */
    private static final Object m472dragVnAYq1g$$forInline(AwaitPointerEventScope $this$drag_u2dVnAYq1g, long j, Function1<? super PointerInputChange, Unit> function1, Orientation orientation, Function1<? super PointerInputChange, Boolean> function12, Continuation<? super PointerInputChange> continuation) {
        PointerEventPass pointerEventPass;
        int i;
        AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv;
        Object it$iv$iv;
        ?? r22;
        float motionChange;
        Object it$iv$iv2;
        Orientation orientation2 = orientation;
        int i2 = 0;
        PointerEventPass pointerEventPass2 = null;
        if (m475isPointerUpDmW0f2w($this$drag_u2dVnAYq1g.getCurrentEvent(), j)) {
            return null;
        }
        long pointer = j;
        while (true) {
            AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88$iv2 = $this$drag_u2dVnAYq1g;
            Ref.LongRef pointer$iv = new Ref.LongRef();
            pointer$iv.element = pointer;
            while (true) {
                PointerEvent event$iv = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88$iv2, pointerEventPass2, continuation, 1, pointerEventPass2);
                List<PointerInputChange> changes = event$iv.getChanges();
                pointerEventPass = pointerEventPass2;
                int size = changes.size();
                int index$iv$iv$iv = 0;
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        i = i2;
                        $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv2;
                        it$iv$iv = pointerEventPass;
                        break;
                    }
                    i = i2;
                    List<PointerInputChange> list = changes;
                    Object item$iv$iv$iv = list.get(index$iv$iv$iv);
                    it$iv$iv = item$iv$iv$iv;
                    PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                    $this$awaitDragOrUp_u2djO51t88$iv = $this$awaitDragOrUp_u2djO51t88$iv2;
                    if (Boolean.valueOf(PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)).booleanValue()) {
                        break;
                    }
                    index$iv$iv$iv++;
                    i2 = i;
                    $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                    changes = list;
                }
                r22 = (PointerInputChange) it$iv$iv;
                if (r22 == 0) {
                    r22 = pointerEventPass;
                    break;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(r22)) {
                    List<PointerInputChange> changes2 = event$iv.getChanges();
                    int index$iv$iv$iv2 = 0;
                    int size2 = changes2.size();
                    while (true) {
                        if (index$iv$iv$iv2 >= size2) {
                            it$iv$iv2 = pointerEventPass;
                            break;
                        }
                        Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                        it$iv$iv2 = item$iv$iv$iv2;
                        PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                        if (Boolean.valueOf(it$iv2.getPressed()).booleanValue()) {
                            break;
                        }
                        index$iv$iv$iv2++;
                    }
                    PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                    if (otherDown$iv == null) {
                        break;
                    }
                    pointer$iv.element = otherDown$iv.getId();
                    orientation2 = orientation;
                    i2 = i;
                    pointerEventPass2 = pointerEventPass;
                    $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                } else {
                    PointerInputChange it = (PointerInputChange) r22;
                    long positionChange = PointerEventKt.positionChangeIgnoreConsumed(it);
                    if (orientation2 == null) {
                        motionChange = Offset.m4450getDistanceimpl(positionChange);
                    } else if (orientation2 == Orientation.Vertical) {
                        int bits$iv$iv$iv = (int) (positionChange & 4294967295L);
                        motionChange = Float.intBitsToFloat(bits$iv$iv$iv);
                    } else {
                        int bits$iv$iv$iv2 = (int) (positionChange >> 32);
                        motionChange = Float.intBitsToFloat(bits$iv$iv$iv2);
                    }
                    if (Boolean.valueOf(!(motionChange == 0.0f)).booleanValue()) {
                        break;
                    }
                    orientation2 = orientation;
                    i2 = i;
                    pointerEventPass2 = pointerEventPass;
                    $this$awaitDragOrUp_u2djO51t88$iv2 = $this$awaitDragOrUp_u2djO51t88$iv;
                }
            }
            if (r22 == 0) {
                return pointerEventPass;
            }
            ?? r0 = r22;
            if (function12.invoke(r0).booleanValue()) {
                return pointerEventPass;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(r0)) {
                return r0;
            }
            function1.invoke(r0);
            pointer = r0.getId();
            orientation2 = orientation;
            i2 = i;
            pointerEventPass2 = pointerEventPass;
        }
    }

    /* JADX INFO: renamed from: awaitDragOrUp-jO51t88, reason: not valid java name */
    private static final Object m459awaitDragOrUpjO51t88(AwaitPointerEventScope $this$awaitDragOrUp_u2djO51t88, long j, Function1<? super PointerInputChange, Boolean> function1, Continuation<? super PointerInputChange> continuation) {
        Object obj;
        PointerEvent event;
        Object it$iv;
        Object obj2;
        Ref.LongRef pointer = new Ref.LongRef();
        pointer.element = j;
        while (true) {
            Object obj3 = null;
            PointerEvent event2 = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default($this$awaitDragOrUp_u2djO51t88, null, continuation, 1, null);
            List<PointerInputChange> changes = event2.getChanges();
            int index$iv$iv = 0;
            int size = changes.size();
            while (true) {
                if (index$iv$iv >= size) {
                    obj = obj3;
                    event = event2;
                    it$iv = obj;
                    break;
                }
                it$iv = changes.get(index$iv$iv);
                PointerInputChange it = (PointerInputChange) it$iv;
                obj = obj3;
                event = event2;
                if (Boolean.valueOf(PointerId.m5992equalsimpl0(it.getId(), pointer.element)).booleanValue()) {
                    break;
                }
                index$iv$iv++;
                obj3 = obj;
                event2 = event;
            }
            PointerInputChange dragEvent = (PointerInputChange) it$iv;
            if (dragEvent == null) {
                return obj;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                List<PointerInputChange> changes2 = event.getChanges();
                int index$iv$iv2 = 0;
                int size2 = changes2.size();
                while (true) {
                    if (index$iv$iv2 >= size2) {
                        obj2 = obj;
                        break;
                    }
                    Object item$iv$iv = changes2.get(index$iv$iv2);
                    PointerInputChange it2 = (PointerInputChange) item$iv$iv;
                    if (Boolean.valueOf(it2.getPressed()).booleanValue()) {
                        obj2 = item$iv$iv;
                        break;
                    }
                    index$iv$iv2++;
                }
                PointerInputChange otherDown = (PointerInputChange) obj2;
                if (otherDown == null) {
                    return dragEvent;
                }
                pointer.element = otherDown.getId();
            } else if (function1.invoke(dragEvent).booleanValue()) {
                return dragEvent;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01bc -> B:62:0x01c0). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m464awaitPointerSlopOrCancellation6ksA65w(AwaitPointerEventScope awaitPointerEventScope, long j, int i, Orientation orientation, long j2, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitPointerSlopOrCancellation$1 dragGestureDetectorKt$awaitPointerSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w;
        Function2<? super PointerInputChange, ? super Offset, Unit> function22;
        Ref.LongRef pointer;
        TouchSlopDetector touchSlopDetector;
        float touchSlop;
        Function2<? super PointerInputChange, ? super Offset, Unit> function23;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w2;
        Object obj;
        Object $result;
        PointerEvent event;
        int size;
        Object obj2;
        int index$iv$iv;
        PointerEvent event2;
        Object $result2;
        Object it$iv;
        PointerInputChange dragEvent;
        int i2;
        TouchSlopDetector touchSlopDetector2;
        PointerInputChange dragEvent2;
        Object it$iv2;
        int i3;
        int index$iv$iv2;
        Object objAwaitPointerEvent$default;
        if (continuation instanceof DragGestureDetectorKt$awaitPointerSlopOrCancellation$1) {
            dragGestureDetectorKt$awaitPointerSlopOrCancellation$1 = (DragGestureDetectorKt$awaitPointerSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1 = new DragGestureDetectorKt$awaitPointerSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = 1;
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w = awaitPointerEventScope;
                function22 = function2;
                if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w.getCurrentEvent(), j)) {
                    return null;
                }
                float touchSlop2 = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w.getViewConfiguration(), i);
                pointer = new Ref.LongRef();
                pointer.element = j;
                touchSlopDetector = new TouchSlopDetector(orientation, j2, null);
                touchSlop = touchSlop2;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1 = function22;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2 = pointer;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3 = touchSlopDetector;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$4 = pointerEventPass;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0 = touchSlop;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w, pointerEventPass, dragGestureDetectorKt$awaitPointerSlopOrCancellation$1, i4, pointerEventPass);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function23 = function22;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w;
                obj = coroutine_suspended;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                event = (PointerEvent) $result3;
                List<PointerInputChange> changes = event.getChanges();
                size = changes.size();
                obj2 = pointerEventPass;
                index$iv$iv = 0;
                while (true) {
                    if (index$iv$iv >= size) {
                        Object item$iv$iv = changes.get(index$iv$iv);
                        it$iv = item$iv$iv;
                        PointerInputChange it = (PointerInputChange) it$iv;
                        event2 = event;
                        $result2 = $result;
                        i3 = size;
                        index$iv$iv2 = index$iv$iv;
                        if (!PointerId.m5992equalsimpl0(it.getId(), pointer.element)) {
                            index$iv$iv = index$iv$iv2 + 1;
                            event = event2;
                            size = i3;
                            $result = $result2;
                        }
                    } else {
                        event2 = event;
                        $result2 = $result;
                        it$iv = obj2;
                    }
                }
                dragEvent = (PointerInputChange) it$iv;
                if (dragEvent != null || dragEvent.isConsumed()) {
                    return obj2;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                    long postSlopOffset = touchSlopDetector.m604addPositionsakrDWew(dragEvent.getPosition(), dragEvent.getPreviousPosition(), touchSlop);
                    if ((postSlopOffset & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                        function23.invoke(dragEvent, Offset.m4441boximpl(postSlopOffset));
                        if (dragEvent.isConsumed()) {
                            return dragEvent;
                        }
                        TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector, 0L, 1, obj2);
                        $result3 = $result2;
                        i4 = 1;
                        coroutine_suspended = obj;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w = $this$awaitPointerSlopOrCancellation_u2d6ksA65w2;
                        pointerEventPass = null;
                        function22 = function23;
                    } else {
                        i2 = 1;
                        PointerEventPass pointerEventPass2 = PointerEventPass.Final;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w2;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1 = function23;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2 = pointer;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3 = touchSlopDetector;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$4 = dragEvent;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0 = touchSlop;
                        dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label = 2;
                        if ($this$awaitPointerSlopOrCancellation_u2d6ksA65w2.awaitPointerEvent(pointerEventPass2, dragGestureDetectorKt$awaitPointerSlopOrCancellation$1) == obj) {
                            return obj;
                        }
                        touchSlopDetector2 = touchSlopDetector;
                        dragEvent2 = dragEvent;
                        $result3 = $result2;
                        if (!dragEvent2.isConsumed()) {
                            return null;
                        }
                        i4 = i2;
                        coroutine_suspended = obj;
                        touchSlopDetector = touchSlopDetector2;
                        $this$awaitPointerSlopOrCancellation_u2d6ksA65w = $this$awaitPointerSlopOrCancellation_u2d6ksA65w2;
                        pointerEventPass = null;
                        function22 = function23;
                    }
                } else {
                    List<PointerInputChange> changes2 = event2.getChanges();
                    int index$iv$iv3 = 0;
                    int size2 = changes2.size();
                    while (true) {
                        if (index$iv$iv3 < size2) {
                            Object item$iv$iv2 = changes2.get(index$iv$iv3);
                            it$iv2 = item$iv$iv2;
                            PointerInputChange it2 = (PointerInputChange) it$iv2;
                            if (!it2.getPressed()) {
                                index$iv$iv3++;
                            }
                        } else {
                            it$iv2 = obj2;
                        }
                    }
                    PointerInputChange otherDown = (PointerInputChange) it$iv2;
                    if (otherDown == null) {
                        return obj2;
                    }
                    pointer.element = otherDown.getId();
                    $result3 = $result2;
                    i4 = 1;
                    coroutine_suspended = obj;
                    $this$awaitPointerSlopOrCancellation_u2d6ksA65w = $this$awaitPointerSlopOrCancellation_u2d6ksA65w2;
                    pointerEventPass = null;
                    function22 = function23;
                }
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1 = function22;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2 = pointer;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3 = touchSlopDetector;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$4 = pointerEventPass;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0 = touchSlop;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w, pointerEventPass, dragGestureDetectorKt$awaitPointerSlopOrCancellation$1, i4, pointerEventPass);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 1:
                touchSlop = dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0;
                touchSlopDetector = (TouchSlopDetector) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer2 = (Ref.LongRef) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2;
                function23 = (Function2) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w2 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                pointer = pointer2;
                obj = coroutine_suspended;
                $result = $result3;
                event = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event.getChanges();
                size = changes3.size();
                obj2 = pointerEventPass;
                index$iv$iv = 0;
                while (true) {
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv = index$iv$iv2 + 1;
                    event = event2;
                    size = i3;
                    $result = $result2;
                }
                dragEvent = (PointerInputChange) it$iv;
                if (dragEvent != null) {
                    return obj2;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                }
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1 = function22;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2 = pointer;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3 = touchSlopDetector;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$4 = pointerEventPass;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0 = touchSlop;
                dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.label = i4;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w, pointerEventPass, dragGestureDetectorKt$awaitPointerSlopOrCancellation$1, i4, pointerEventPass);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                }
                break;
            case 2:
                touchSlop = dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.F$0;
                dragEvent2 = (PointerInputChange) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$4;
                touchSlopDetector2 = (TouchSlopDetector) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer3 = (Ref.LongRef) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$2;
                Function2<? super PointerInputChange, ? super Offset, Unit> function24 = (Function2) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$1;
                AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w3 = (AwaitPointerEventScope) dragGestureDetectorKt$awaitPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                pointer = pointer3;
                function23 = function24;
                $this$awaitPointerSlopOrCancellation_u2d6ksA65w2 = $this$awaitPointerSlopOrCancellation_u2d6ksA65w3;
                obj = coroutine_suspended;
                i2 = 1;
                if (!dragEvent2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w$default, reason: not valid java name */
    public static /* synthetic */ Object m466awaitPointerSlopOrCancellation6ksA65w$default(AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default, long j, int i, Orientation orientation, long j2, Function2 onPointerSlopReached, Continuation $completion, int i2, Object obj) {
        long j3;
        Object it$iv;
        Object it$iv2;
        long pointer;
        PointerEventPass pointerEventPass;
        long jM4468getZeroF1C5BW0 = (i2 & 8) != 0 ? Offset.INSTANCE.m4468getZeroF1C5BW0() : j2;
        int i3 = 0;
        PointerEventPass pointerEventPass2 = null;
        if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default.getCurrentEvent(), j)) {
            return null;
        }
        float touchSlop = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default.getViewConfiguration(), i);
        long pointer2 = j;
        TouchSlopDetector touchSlopDetector = new TouchSlopDetector(orientation, jM4468getZeroF1C5BW0, null);
        while (true) {
            PointerEvent event = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default, pointerEventPass2, $completion, 1, pointerEventPass2);
            List<PointerInputChange> changes = event.getChanges();
            int size = changes.size();
            PointerEventPass pointerEventPass3 = pointerEventPass2;
            int index$iv$iv = 0;
            while (true) {
                if (index$iv$iv >= size) {
                    j3 = jM4468getZeroF1C5BW0;
                    it$iv = pointerEventPass3;
                    break;
                }
                j3 = jM4468getZeroF1C5BW0;
                Object item$iv$iv = changes.get(index$iv$iv);
                it$iv = item$iv$iv;
                PointerInputChange it = (PointerInputChange) it$iv;
                if (PointerId.m5992equalsimpl0(it.getId(), pointer2)) {
                    break;
                }
                index$iv$iv++;
                jM4468getZeroF1C5BW0 = j3;
            }
            PointerInputChange dragEvent = (PointerInputChange) it$iv;
            if (dragEvent == null) {
                return pointerEventPass3;
            }
            if (dragEvent.isConsumed()) {
                return pointerEventPass3;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                List<PointerInputChange> changes2 = event.getChanges();
                int size2 = changes2.size();
                int i4 = i3;
                int index$iv$iv2 = 0;
                while (true) {
                    if (index$iv$iv2 >= size2) {
                        it$iv2 = pointerEventPass3;
                        break;
                    }
                    Object item$iv$iv2 = changes2.get(index$iv$iv2);
                    it$iv2 = item$iv$iv2;
                    PointerInputChange it2 = (PointerInputChange) it$iv2;
                    if (it2.getPressed()) {
                        break;
                    }
                    index$iv$iv2++;
                }
                PointerInputChange otherDown = (PointerInputChange) it$iv2;
                if (otherDown == null) {
                    return pointerEventPass3;
                }
                pointer2 = otherDown.getId();
                pointerEventPass2 = pointerEventPass3;
                i3 = i4;
                jM4468getZeroF1C5BW0 = j3;
            } else {
                int i5 = i3;
                long pointer3 = pointer2;
                TouchSlopDetector touchSlopDetector2 = touchSlopDetector;
                long postSlopOffset = touchSlopDetector2.m604addPositionsakrDWew(dragEvent.getPosition(), dragEvent.getPreviousPosition(), touchSlop);
                if ((postSlopOffset & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    onPointerSlopReached.invoke(dragEvent, Offset.m4441boximpl(postSlopOffset));
                    if (dragEvent.isConsumed()) {
                        return dragEvent;
                    }
                    pointer = pointer3;
                    pointerEventPass = pointerEventPass3;
                    TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector2, 0L, 1, pointerEventPass);
                } else {
                    pointer = pointer3;
                    pointerEventPass = pointerEventPass3;
                    $this$awaitPointerSlopOrCancellation_u2d6ksA65w_u24default.awaitPointerEvent(PointerEventPass.Final, $completion);
                    if (dragEvent.isConsumed()) {
                        return pointerEventPass;
                    }
                }
                pointerEventPass2 = pointerEventPass;
                touchSlopDetector = touchSlopDetector2;
                pointer2 = pointer;
                jM4468getZeroF1C5BW0 = j3;
                i3 = i5;
            }
        }
    }

    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-6ksA65w$$forInline, reason: not valid java name */
    private static final Object m465awaitPointerSlopOrCancellation6ksA65w$$forInline(AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2d6ksA65w, long j, int i, Orientation orientation, long j2, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        Object it$iv;
        PointerEventPass pointerEventPass;
        Object it$iv2;
        PointerEventPass pointerEventPass2 = null;
        if (m475isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2d6ksA65w.getCurrentEvent(), j)) {
            return null;
        }
        float touchSlop = m476pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2d6ksA65w.getViewConfiguration(), i);
        Ref.LongRef pointer = new Ref.LongRef();
        pointer.element = j;
        TouchSlopDetector touchSlopDetector = new TouchSlopDetector(orientation, j2, null);
        while (true) {
            PointerEvent event = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2d6ksA65w, pointerEventPass2, continuation, 1, pointerEventPass2);
            List<PointerInputChange> changes = event.getChanges();
            PointerEventPass pointerEventPass3 = pointerEventPass2;
            int size = changes.size();
            int index$iv$iv = 0;
            while (true) {
                if (index$iv$iv >= size) {
                    it$iv = pointerEventPass3;
                    break;
                }
                List<PointerInputChange> list = changes;
                Object item$iv$iv = list.get(index$iv$iv);
                it$iv = item$iv$iv;
                PointerInputChange it = (PointerInputChange) it$iv;
                int i2 = size;
                if (Boolean.valueOf(PointerId.m5992equalsimpl0(it.getId(), pointer.element)).booleanValue()) {
                    break;
                }
                index$iv$iv++;
                changes = list;
                size = i2;
            }
            PointerInputChange dragEvent = (PointerInputChange) it$iv;
            if (dragEvent == null) {
                return pointerEventPass3;
            }
            if (dragEvent.isConsumed()) {
                return pointerEventPass3;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                List<PointerInputChange> changes2 = event.getChanges();
                int index$iv$iv2 = 0;
                int size2 = changes2.size();
                while (true) {
                    if (index$iv$iv2 >= size2) {
                        it$iv2 = pointerEventPass3;
                        break;
                    }
                    Object item$iv$iv2 = changes2.get(index$iv$iv2);
                    it$iv2 = item$iv$iv2;
                    PointerInputChange it2 = (PointerInputChange) it$iv2;
                    if (Boolean.valueOf(it2.getPressed()).booleanValue()) {
                        break;
                    }
                    index$iv$iv2++;
                }
                PointerInputChange otherDown = (PointerInputChange) it$iv2;
                if (otherDown == null) {
                    return pointerEventPass3;
                }
                pointer.element = otherDown.getId();
                pointerEventPass = pointerEventPass3;
            } else {
                long postSlopOffset = touchSlopDetector.m604addPositionsakrDWew(dragEvent.getPosition(), dragEvent.getPreviousPosition(), touchSlop);
                if ((9223372034707292159L & postSlopOffset) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    function2.invoke(dragEvent, Offset.m4441boximpl(postSlopOffset));
                    if (dragEvent.isConsumed()) {
                        return dragEvent;
                    }
                    pointerEventPass = pointerEventPass3;
                    TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector, 0L, 1, pointerEventPass);
                } else {
                    pointerEventPass = pointerEventPass3;
                    $this$awaitPointerSlopOrCancellation_u2d6ksA65w.awaitPointerEvent(PointerEventPass.Final, continuation);
                    if (dragEvent.isConsumed()) {
                        return pointerEventPass;
                    }
                }
            }
            pointerEventPass2 = pointerEventPass;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0167 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00aa -> B:22:0x00b5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitAllPointersUpWithSlopDetection(AwaitPointerEventScope $this$awaitAllPointersUpWithSlopDetection, PointerInputChange initialPositionChange, PointerEventPass pass, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        Object $result;
        float touchSlop;
        Object obj;
        int i;
        TouchSlopDetector touchSlopDetector;
        Ref.LongRef pointer;
        PointerEventPass pass2;
        AwaitPointerEventScope $this$awaitAllPointersUpWithSlopDetection2;
        PointerEvent event;
        int index$iv$iv;
        int size;
        Object obj2;
        Continuation<? super Boolean> continuation2;
        AnonymousClass1 anonymousClass12;
        TouchSlopDetector touchSlopDetector2;
        Object it$iv;
        PointerInputChange dragEvent;
        int index$iv$iv2;
        int size2;
        boolean z;
        int index$iv$iv3;
        int size3;
        PointerInputChange otherDown;
        Continuation<? super Boolean> continuation3 = continuation;
        if (continuation3 instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation3;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation3);
            }
        }
        Object $result2 = anonymousClass1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = 1;
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                if (ForEachGestureKt.allPointersUp($this$awaitAllPointersUpWithSlopDetection)) {
                    return Boxing.boxBoolean(false);
                }
                Ref.LongRef pointer2 = new Ref.LongRef();
                pointer2.element = initialPositionChange.getId();
                float touchSlop2 = m476pointerSlopE8SPZFQ($this$awaitAllPointersUpWithSlopDetection.getViewConfiguration(), initialPositionChange.getType());
                AwaitPointerEventScope $this$awaitAllPointersUpWithSlopDetection3 = $this$awaitAllPointersUpWithSlopDetection;
                float touchSlop3 = touchSlop2;
                TouchSlopDetector touchSlopDetector3 = new TouchSlopDetector(null, 0L, 3, null);
                PointerEventPass pass3 = pass;
                int i3 = 0;
                anonymousClass1.L$0 = $this$awaitAllPointersUpWithSlopDetection3;
                anonymousClass1.L$1 = pass3;
                anonymousClass1.L$2 = pointer2;
                anonymousClass1.L$3 = touchSlopDetector3;
                anonymousClass1.I$0 = i3;
                anonymousClass1.F$0 = touchSlop3;
                anonymousClass1.label = i2;
                Object objAwaitPointerEvent = $this$awaitAllPointersUpWithSlopDetection3.awaitPointerEvent(pass3, anonymousClass1);
                if (objAwaitPointerEvent != $result3) {
                    return $result3;
                }
                Object obj3 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent;
                touchSlop = touchSlop3;
                obj = obj3;
                i = i3;
                touchSlopDetector = touchSlopDetector3;
                pointer = pointer2;
                pass2 = pass3;
                $this$awaitAllPointersUpWithSlopDetection2 = $this$awaitAllPointersUpWithSlopDetection3;
                event = (PointerEvent) $result2;
                List<PointerInputChange> changes = event.getChanges();
                index$iv$iv = 0;
                size = changes.size();
                while (true) {
                    obj2 = null;
                    if (index$iv$iv >= size) {
                        it$iv = changes.get(index$iv$iv);
                        PointerInputChange it = (PointerInputChange) it$iv;
                        touchSlopDetector2 = touchSlopDetector;
                        continuation2 = continuation3;
                        anonymousClass12 = anonymousClass1;
                        if (!PointerId.m5992equalsimpl0(it.getId(), pointer.element)) {
                            index$iv$iv++;
                            touchSlopDetector = touchSlopDetector2;
                            continuation3 = continuation2;
                            anonymousClass1 = anonymousClass12;
                        }
                    } else {
                        continuation2 = continuation3;
                        anonymousClass12 = anonymousClass1;
                        touchSlopDetector2 = touchSlopDetector;
                        it$iv = null;
                    }
                }
                dragEvent = (PointerInputChange) it$iv;
                if (dragEvent != null || PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                    List<PointerInputChange> changes2 = event.getChanges();
                    index$iv$iv3 = 0;
                    size3 = changes2.size();
                    while (true) {
                        if (index$iv$iv3 >= size3) {
                            Object item$iv$iv = changes2.get(index$iv$iv3);
                            PointerInputChange it2 = (PointerInputChange) item$iv$iv;
                            if (!it2.getPressed()) {
                                index$iv$iv3++;
                            } else {
                                obj2 = item$iv$iv;
                            }
                        }
                    }
                    otherDown = (PointerInputChange) obj2;
                    if (otherDown != null) {
                        return Boxing.boxBoolean(i != 0);
                    }
                    pointer.element = otherDown.getId();
                    List<PointerInputChange> changes3 = event.getChanges();
                    index$iv$iv2 = 0;
                    size2 = changes3.size();
                    while (true) {
                        if (index$iv$iv2 >= size2) {
                            PointerInputChange it3 = (PointerInputChange) changes3.get(index$iv$iv2);
                            if (it3.getPressed()) {
                                z = true;
                            } else {
                                index$iv$iv2++;
                            }
                        } else {
                            z = false;
                        }
                    }
                    if (z) {
                        return Boxing.boxBoolean(i != 0);
                    }
                    continuation3 = continuation2;
                    anonymousClass1 = anonymousClass12;
                    $result2 = $result;
                    $result3 = obj;
                    touchSlopDetector3 = touchSlopDetector;
                    touchSlop3 = touchSlop;
                    i3 = i;
                    pointer2 = pointer;
                    pass3 = pass2;
                    $this$awaitAllPointersUpWithSlopDetection3 = $this$awaitAllPointersUpWithSlopDetection2;
                    i2 = 1;
                    anonymousClass1.L$0 = $this$awaitAllPointersUpWithSlopDetection3;
                    anonymousClass1.L$1 = pass3;
                    anonymousClass1.L$2 = pointer2;
                    anonymousClass1.L$3 = touchSlopDetector3;
                    anonymousClass1.I$0 = i3;
                    anonymousClass1.F$0 = touchSlop3;
                    anonymousClass1.label = i2;
                    Object objAwaitPointerEvent2 = $this$awaitAllPointersUpWithSlopDetection3.awaitPointerEvent(pass3, anonymousClass1);
                    if (objAwaitPointerEvent2 != $result3) {
                    }
                } else {
                    touchSlopDetector = touchSlopDetector2;
                    if ((9223372034707292159L & touchSlopDetector.m604addPositionsakrDWew(dragEvent.getPosition(), dragEvent.getPreviousPosition(), touchSlop)) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                        i = 1;
                    }
                    List<PointerInputChange> changes32 = event.getChanges();
                    index$iv$iv2 = 0;
                    size2 = changes32.size();
                    while (true) {
                        if (index$iv$iv2 >= size2) {
                        }
                        index$iv$iv2++;
                    }
                    if (z) {
                    }
                }
                break;
            case 1:
                float touchSlop4 = anonymousClass1.F$0;
                int i4 = anonymousClass1.I$0;
                TouchSlopDetector touchSlopDetector4 = (TouchSlopDetector) anonymousClass1.L$3;
                Ref.LongRef pointer3 = (Ref.LongRef) anonymousClass1.L$2;
                PointerEventPass pass4 = (PointerEventPass) anonymousClass1.L$1;
                AwaitPointerEventScope $this$awaitAllPointersUpWithSlopDetection4 = (AwaitPointerEventScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result2);
                touchSlop = touchSlop4;
                obj = $result3;
                $result = $result2;
                i = i4;
                touchSlopDetector = touchSlopDetector4;
                pointer = pointer3;
                pass2 = pass4;
                $this$awaitAllPointersUpWithSlopDetection2 = $this$awaitAllPointersUpWithSlopDetection4;
                event = (PointerEvent) $result2;
                List<PointerInputChange> changes4 = event.getChanges();
                index$iv$iv = 0;
                size = changes4.size();
                while (true) {
                    obj2 = null;
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv++;
                    touchSlopDetector = touchSlopDetector2;
                    continuation3 = continuation2;
                    anonymousClass1 = anonymousClass12;
                }
                dragEvent = (PointerInputChange) it$iv;
                TouchSlopDetector touchSlopDetector5 = dragEvent != null ? touchSlopDetector2 : touchSlopDetector2;
                List<PointerInputChange> changes22 = event.getChanges();
                index$iv$iv3 = 0;
                size3 = changes22.size();
                while (true) {
                    if (index$iv$iv3 >= size3) {
                    }
                    index$iv$iv3++;
                }
                otherDown = (PointerInputChange) obj2;
                if (otherDown != null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ Object awaitAllPointersUpWithSlopDetection$default(AwaitPointerEventScope awaitPointerEventScope, PointerInputChange pointerInputChange, PointerEventPass pointerEventPass, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitAllPointersUpWithSlopDetection(awaitPointerEventScope, pointerInputChange, pointerEventPass, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d2 A[Catch: PointerEventTimeoutCancellationException -> 0x0042, TRY_LEAVE, TryCatch #0 {PointerEventTimeoutCancellationException -> 0x0042, blocks: (B:13:0x003d, B:35:0x00ce, B:37:0x00d2), top: B:49:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX INFO: renamed from: awaitLongPressOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m463awaitLongPressOrCancellationrnUCldI(AwaitPointerEventScope awaitPointerEventScope, long j, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        PointerInputChange pointerInputChange;
        ?? r6;
        Ref.ObjectRef objectRef;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof DragGestureDetectorKt$awaitLongPressOrCancellation$1) {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = (DragGestureDetectorKt$awaitLongPressOrCancellation$1) continuation;
            if ((dragGestureDetectorKt$awaitLongPressOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(continuation);
            }
        }
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$12 = dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        Object obj = dragGestureDetectorKt$awaitLongPressOrCancellation$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (dragGestureDetectorKt$awaitLongPressOrCancellation$12.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (m475isPointerUpDmW0f2w(awaitPointerEventScope.getCurrentEvent(), j)) {
                    return null;
                }
                List<PointerInputChange> changes = awaitPointerEventScope.getCurrentEvent().getChanges();
                int i = 0;
                int i2 = 0;
                int size = changes.size();
                while (true) {
                    if (i2 < size) {
                        pointerInputChange = changes.get(i2);
                        List<PointerInputChange> list = changes;
                        int i3 = i;
                        if (!PointerId.m5992equalsimpl0(pointerInputChange.getId(), j)) {
                            i2++;
                            i = i3;
                            changes = list;
                        }
                    } else {
                        pointerInputChange = null;
                    }
                }
                PointerInputChange pointerInputChange2 = pointerInputChange;
                if (pointerInputChange2 == null) {
                    return null;
                }
                r6 = pointerInputChange2;
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                objectRef3.element = r6;
                long longPressTimeoutMillis = awaitPointerEventScope.getViewConfiguration().getLongPressTimeoutMillis();
                try {
                    Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                    DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(booleanRef2, objectRef3, objectRef2, null);
                    dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$0 = r6;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$1 = objectRef2;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$2 = booleanRef2;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$12.label = 1;
                    if (awaitPointerEventScope.withTimeout(longPressTimeoutMillis, dragGestureDetectorKt$awaitLongPressOrCancellation$2, dragGestureDetectorKt$awaitLongPressOrCancellation$12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef = objectRef2;
                    booleanRef = booleanRef2;
                    r6 = r6;
                    if (booleanRef.element) {
                        return null;
                    }
                    PointerInputChange pointerInputChange3 = (PointerInputChange) objectRef.element;
                    return pointerInputChange3 == null ? r6 : pointerInputChange3;
                } catch (PointerEventTimeoutCancellationException e) {
                    objectRef = objectRef2;
                    PointerInputChange pointerInputChange4 = (PointerInputChange) objectRef.element;
                    if (pointerInputChange4 != null) {
                    }
                }
                break;
            case 1:
                booleanRef = (Ref.BooleanRef) dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$2;
                objectRef = (Ref.ObjectRef) dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$1;
                r6 = (PointerInputChange) dragGestureDetectorKt$awaitLongPressOrCancellation$12.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    r6 = r6;
                    if (booleanRef.element) {
                    }
                } catch (PointerEventTimeoutCancellationException e2) {
                    PointerInputChange pointerInputChange42 = (PointerInputChange) objectRef.element;
                    return pointerInputChange42 != null ? r6 : pointerInputChange42;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m475isPointerUpDmW0f2w(PointerEvent $this$isPointerUp_u2dDmW0f2w, long j) {
        Object it$iv;
        List<PointerInputChange> changes = $this$isPointerUp_u2dDmW0f2w.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv = changes.get(index$iv$iv);
                it$iv = item$iv$iv;
                PointerInputChange it = (PointerInputChange) it$iv;
                if (PointerId.m5992equalsimpl0(it.getId(), j)) {
                    break;
                }
                index$iv$iv++;
            } else {
                it$iv = null;
                break;
            }
        }
        PointerInputChange pointerInputChange = (PointerInputChange) it$iv;
        boolean z = false;
        if (pointerInputChange != null && pointerInputChange.getPressed()) {
            z = true;
        }
        return !z;
    }

    /* JADX INFO: renamed from: pointerSlop-E8SPZFQ, reason: not valid java name */
    public static final float m476pointerSlopE8SPZFQ(ViewConfiguration $this$pointerSlop_u2dE8SPZFQ, int i) {
        return PointerType.m6081equalsimpl0(i, PointerType.INSTANCE.m6086getMouseT8wyACA()) ? $this$pointerSlop_u2dE8SPZFQ.getTouchSlop() * mouseToTouchSlopRatio : $this$pointerSlop_u2dE8SPZFQ.getTouchSlop();
    }
}
