package androidx.compose.foundation.gestures;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.gestures.DragDetectionState;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragGestureNode;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.core.app.NotificationCompat;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: Draggable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B7\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJM\u0010H\u001a\u00020I2=\u0010J\u001a9\b\u0001\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110L¢\u0006\f\bM\u0012\b\bN\u0012\u0004\b\b(O\u0012\u0004\u0012\u00020I0\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020I0P\u0012\u0006\u0012\u0004\u0018\u00010Q0KH¦@¢\u0006\u0002\u0010RJ\u0017\u0010S\u001a\u00020I2\u0006\u0010T\u001a\u00020AH&¢\u0006\u0004\bU\u0010VJ\u0010\u0010W\u001a\u00020I2\u0006\u0010X\u001a\u00020YH&J\b\u0010Z\u001a\u00020\bH&J\b\u0010[\u001a\u00020?H\u0002J\u000e\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\b\u0010]\u001a\u00020DH\u0002J\b\u0010^\u001a\u00020IH\u0002J\b\u0010a\u001a\u00020IH\u0016J'\u0010b\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hH\u0016¢\u0006\u0004\bi\u0010jJ\u0018\u0010k\u001a\u00020I2\u0006\u0010X\u001a\u00020l2\u0006\u0010e\u001a\u00020fH\u0016J\b\u0010m\u001a\u00020IH\u0016J\b\u0010n\u001a\u00020`H\u0002J\b\u0010o\u001a\u00020IH\u0016J\u0016\u0010p\u001a\u00020I2\u0006\u0010X\u001a\u00020qH\u0082@¢\u0006\u0002\u0010rJ\u0016\u0010s\u001a\u00020I2\u0006\u0010X\u001a\u00020YH\u0082@¢\u0006\u0002\u0010tJ\u000e\u0010u\u001a\u00020IH\u0082@¢\u0006\u0002\u0010vJ\u0006\u0010w\u001a\u00020IJH\u0010x\u001a\u00020I2\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010y\u001a\u00020\bJ\u0018\u0010z\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020fH\u0002J\b\u0010{\u001a\u00020IH\u0002J8\u0010|\u001a\u00020I2\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\t\b\u0002\u0010\u0081\u0001\u001a\u00020A2\t\b\u0002\u0010\u0082\u0001\u001a\u00020\bH\u0002¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u001a\u0010\u0085\u0001\u001a\u00020I2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002¢\u0006\u0005\b\u0086\u0001\u0010VJ\t\u0010\u0087\u0001\u001a\u00020IH\u0002J+\u0010\u0088\u0001\u001a\u00020I2\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\u0006\u0010C\u001a\u00020DH\u0002¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\"\u0010\u008b\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u00020)H\u0002J\"\u0010\u008d\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u000203H\u0002J\"\u0010\u008e\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u000208H\u0002J\"\u0010\u008f\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u00020.H\u0002J-\u0010\u0090\u0001\u001a\u00020I2\u0007\u0010\u0091\u0001\u001a\u00020~2\u0007\u0010\u0092\u0001\u001a\u00020~2\u0007\u0010\u0093\u0001\u001a\u00020AH\u0002¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J$\u0010\u0096\u0001\u001a\u00020I2\u0007\u0010\u0097\u0001\u001a\u00020~2\u0007\u0010\u0098\u0001\u001a\u00020AH\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0012\u0010\u009b\u0001\u001a\u00020I2\u0007\u0010\u0097\u0001\u001a\u00020~H\u0002J\t\u0010\u009c\u0001\u001a\u00020IH\u0002J\u000f\u0010\u009d\u0001\u001a\u00020I2\u0006\u0010X\u001a\u00020\u001eR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R6\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0018\"\u0004\b'\u0010$R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020)8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u00020.8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0002038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00109\u001a\u0002088BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u00020AX\u0082\u000e¢\u0006\u0004\n\u0002\u0010BR\u0010\u0010C\u001a\u0004\u0018\u00010DX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u0004\u0018\u00010FX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020AX\u0082\u000e¢\u0006\u0004\n\u0002\u0010BR\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u009e\u0001"}, d2 = {"Landroidx/compose/foundation/gestures/DragGestureNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "canDrag", "Lkotlin/Function1;", "Landroidx/compose/ui/input/pointer/PointerType;", "", "enabled", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "orientationLock", "Landroidx/compose/foundation/gestures/Orientation;", "<init>", "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V", "getOrientationLock", "()Landroidx/compose/foundation/gestures/Orientation;", "setOrientationLock", "(Landroidx/compose/foundation/gestures/Orientation;)V", Values.VECTOR_MAP_VECTORS_KEY, "getCanDrag", "()Lkotlin/jvm/functions/Function1;", "getEnabled", "()Z", "getInteractionSource", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "_canDrag", "channel", "Lkotlinx/coroutines/channels/Channel;", "Landroidx/compose/foundation/gestures/DragEvent;", "dragInteraction", "Landroidx/compose/foundation/interaction/DragInteraction$Start;", "isListeningForEvents", "isListeningForEvents$foundation", "setListeningForEvents$foundation", "(Z)V", "isListeningForPointerInputEvents", "isListeningForPointerInputEvents$foundation", "setListeningForPointerInputEvents$foundation", "_awaitDownState", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;", "awaitDownState", "getAwaitDownState", "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;", "_draggingState", "Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;", "draggingState", "getDraggingState", "()Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;", "_awaitTouchSlopState", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;", "awaitTouchSlopState", "getAwaitTouchSlopState", "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;", "_awaitGesturePickupState", "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;", "awaitGesturePickupState", "getAwaitGesturePickupState", "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;", "currentDragState", "Landroidx/compose/foundation/gestures/DragDetectionState;", "velocityTracker", "Landroidx/compose/ui/input/pointer/util/VelocityTracker;", "previousPositionOnScreen", "Landroidx/compose/ui/geometry/Offset;", "J", "touchSlopDetector", "Landroidx/compose/foundation/gestures/TouchSlopDetector;", "indirectPointerInputDragCycleDetector", "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;", "nodeOffset", "drag", "", "forEachDelta", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "dragDelta", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onDragStarted", "startedPosition", "onDragStarted-k-4lQ0M", "(J)V", "onDragStopped", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;", "startDragImmediately", "requireVelocityTracker", "requireChannel", "requireTouchSlopDetector", "startListeningForEvents", "pointerInputNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "onDetach", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "onIndirectPointerEvent", "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;", "onCancelIndirectPointerInput", "initializePointerInputNode", "onCancelPointerInput", "processDragStart", "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;", "(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processDragStop", "(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processDragCancel", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disposeInteractionSource", "update", "shouldResetPointerInputHandling", "processRawPointerEvent", "resetDragDetectionState", "moveToAwaitTouchSlopState", "initialDown", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "initialTouchSlopPositionChange", "verifyConsumptionInFinalPass", "moveToAwaitTouchSlopState-aWI9W7U", "(Landroidx/compose/ui/input/pointer/PointerInputChange;JJZ)V", "moveToDraggingState", "moveToDraggingState-0FcD4WY", "moveToAwaitDownState", "moveToAwaitGesturePickupState", "moveToAwaitGesturePickupState-rnUCldI", "(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V", "processInitialDownState", "state", "processAwaitTouchSlop", "processAwaitGesturePickup", "processDraggingState", "sendDragStart", "down", "slopTriggerChange", "overSlopOffset", "sendDragStart-0AR0LA0", "(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V", "sendDragEvent", "change", "dragAmount", "sendDragEvent-Uv8p0NA", "(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V", "sendDragStopped", "sendDragCancelled", "onDragEvent", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class DragGestureNode extends DelegatingNode implements PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public static final int $stable = 8;
    private DragDetectionState.AwaitDown _awaitDownState;
    private DragDetectionState.AwaitGesturePickup _awaitGesturePickupState;
    private DragDetectionState.AwaitTouchSlop _awaitTouchSlopState;
    private DragDetectionState.Dragging _draggingState;
    private Function1<? super PointerType, Boolean> canDrag;
    private Channel<DragEvent> channel;
    private DragDetectionState currentDragState;
    private DragInteraction.Start dragInteraction;
    private boolean enabled;
    private IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector;
    private MutableInteractionSource interactionSource;
    private boolean isListeningForEvents;
    private boolean isListeningForPointerInputEvents;
    private Orientation orientationLock;
    private SuspendingPointerInputModifierNode pointerInputNode;
    private TouchSlopDetector touchSlopDetector;
    private VelocityTracker velocityTracker;
    private final Function1<PointerType, Boolean> _canDrag = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureNode$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(this.f$0.canDrag.invoke((PointerType) obj).booleanValue());
        }
    };
    private long previousPositionOnScreen = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
    private long nodeOffset = Offset.INSTANCE.m4468getZeroF1C5BW0();

    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DragDetectionState.AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", i = {}, l = {667}, m = "processDragCancel", n = {}, s = {}, v = 1)
    static final class C02471 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02471(Continuation<? super C02471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragCancel(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", i = {0, 1, 1}, l = {649, 652}, m = "processDragStart", n = {NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT, "interaction"}, s = {"L$0", "L$0", "L$1"}, v = 1)
    static final class C02481 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02481(Continuation<? super C02481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragStart(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", i = {0}, l = {659}, m = "processDragStop", n = {NotificationCompat.CATEGORY_EVENT}, s = {"L$0"}, v = 1)
    static final class C02491 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02491(Continuation<? super C02491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragStop(null, this);
        }
    }

    public abstract Object drag(Function2<? super Function1<? super DragEvent.DragDelta, Unit>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation);

    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public abstract void mo423onDragStartedk4lQ0M(long startedPosition);

    public abstract void onDragStopped(DragEvent.DragStopped event);

    /* JADX INFO: renamed from: startDragImmediately */
    public abstract boolean getStartDragImmediately();

    public DragGestureNode(Function1<? super PointerType, Boolean> function1, boolean enabled, MutableInteractionSource interactionSource, Orientation orientationLock) {
        this.orientationLock = orientationLock;
        this.canDrag = function1;
        this.enabled = enabled;
        this.interactionSource = interactionSource;
    }

    public final Orientation getOrientationLock() {
        return this.orientationLock;
    }

    public final void setOrientationLock(Orientation orientation) {
        this.orientationLock = orientation;
    }

    public final Function1<PointerType, Boolean> getCanDrag() {
        return this.canDrag;
    }

    protected final boolean getEnabled() {
        return this.enabled;
    }

    protected final MutableInteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    /* JADX INFO: renamed from: isListeningForEvents$foundation, reason: from getter */
    public final boolean getIsListeningForEvents() {
        return this.isListeningForEvents;
    }

    public final void setListeningForEvents$foundation(boolean z) {
        this.isListeningForEvents = z;
    }

    /* JADX INFO: renamed from: isListeningForPointerInputEvents$foundation, reason: from getter */
    public final boolean getIsListeningForPointerInputEvents() {
        return this.isListeningForPointerInputEvents;
    }

    public final void setListeningForPointerInputEvents$foundation(boolean z) {
        this.isListeningForPointerInputEvents = z;
    }

    private final DragDetectionState.AwaitDown getAwaitDownState() {
        DragDetectionState.AwaitDown awaitDown = this._awaitDownState;
        if (awaitDown != null) {
            return awaitDown;
        }
        DragDetectionState.AwaitDown it = new DragDetectionState.AwaitDown(null, false, 3, null);
        this._awaitDownState = it;
        return it;
    }

    private final DragDetectionState.Dragging getDraggingState() {
        DragDetectionState.Dragging dragging = this._draggingState;
        if (dragging != null) {
            return dragging;
        }
        DragDetectionState.Dragging it = new DragDetectionState.Dragging(0L, 1, null);
        this._draggingState = it;
        return it;
    }

    private final DragDetectionState.AwaitTouchSlop getAwaitTouchSlopState() {
        DragDetectionState.AwaitTouchSlop it = this._awaitTouchSlopState;
        if (it != null) {
            return it;
        }
        DragDetectionState.AwaitTouchSlop it2 = new DragDetectionState.AwaitTouchSlop(null, 0L, false, 7, null);
        this._awaitTouchSlopState = it2;
        return it2;
    }

    private final DragDetectionState.AwaitGesturePickup getAwaitGesturePickupState() {
        DragDetectionState.AwaitGesturePickup it = this._awaitGesturePickupState;
        if (it != null) {
            return it;
        }
        DragDetectionState.AwaitGesturePickup it2 = new DragDetectionState.AwaitGesturePickup(null, 0L, null, 7, null);
        this._awaitGesturePickupState = it2;
        return it2;
    }

    private final VelocityTracker requireVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        throw new IllegalArgumentException("Velocity Tracker not initialized.".toString());
    }

    private final Channel<DragEvent> requireChannel() {
        Channel<DragEvent> channel = this.channel;
        if (channel != null) {
            return channel;
        }
        throw new IllegalArgumentException("Events channel not initialized.".toString());
    }

    private final TouchSlopDetector requireTouchSlopDetector() {
        TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
        if (touchSlopDetector != null) {
            return touchSlopDetector;
        }
        throw new IllegalArgumentException("Touch slop detector not initialized.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startListeningForEvents() {
        this.isListeningForEvents = true;
        if (this.channel == null) {
            this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        }
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new C02501(null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1", f = "Draggable.kt", i = {0, 0, 1, 1, 2, 2, 3, 4, 5}, l = {499, 501, 503, 510, 512, 515}, m = "invokeSuspend", n = {"$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", "$this$launch", "$this$launch"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0"}, v = 1)
    static final class C02501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C02501(Continuation<? super C02501> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02501 c02501 = DragGestureNode.this.new C02501(continuation);
            c02501.L$0 = obj;
            return c02501;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00ee A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00f5 A[Catch: CancellationException -> 0x0137, TryCatch #0 {CancellationException -> 0x0137, blocks: (B:40:0x00d3, B:43:0x00ef, B:45:0x00f5, B:50:0x0116, B:52:0x011c), top: B:68:0x00d3 }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0116 A[Catch: CancellationException -> 0x0137, TryCatch #0 {CancellationException -> 0x0137, blocks: (B:40:0x00d3, B:43:0x00ef, B:45:0x00f5, B:50:0x0116, B:52:0x011c), top: B:68:0x00d3 }] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x014b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x014c  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0157  */
        /* JADX WARN: Type inference failed for: r11v14 */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v4, types: [T] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v34 */
        /* JADX WARN: Type inference failed for: r1v44 */
        /* JADX WARN: Type inference failed for: r3v19 */
        /* JADX WARN: Type inference failed for: r3v20 */
        /* JADX WARN: Type inference failed for: r3v21 */
        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.Object, kotlinx.coroutines.CoroutineScope] */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v21 */
        /* JADX WARN: Type inference failed for: r4v22 */
        /* JADX WARN: Type inference failed for: r4v23 */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Type inference failed for: r4v5 */
        /* JADX WARN: Type inference failed for: r4v6 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference failed for: r6v11 */
        /* JADX WARN: Type inference failed for: r6v12 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x012f -> B:23:0x0078). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0133 -> B:23:0x0078). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x014c -> B:23:0x0078). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0151 -> B:23:0x0078). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            C02501 c02501;
            ?? r1;
            ?? r4;
            C02501 c025012;
            ?? r3;
            Ref.ObjectRef objectRef;
            ?? r32;
            ?? r11;
            ?? r6;
            Ref.ObjectRef objectRef2;
            Ref.ObjectRef objectRef3;
            Object obj2;
            Object obj3;
            ?? r62;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (CancellationException e) {
                c02501 = this;
                r1 = i;
            }
            switch (i) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    r4 = (CoroutineScope) this.L$0;
                    c025012 = this;
                    if (CoroutineScopeKt.isActive(r4)) {
                        objectRef3 = new Ref.ObjectRef();
                        Channel channel = DragGestureNode.this.channel;
                        if (channel != null) {
                            c025012.L$0 = r4;
                            c025012.L$1 = objectRef3;
                            c025012.L$2 = objectRef3;
                            c025012.label = 1;
                            Object objReceive = channel.receive(c025012);
                            if (objReceive == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            r62 = r4;
                            c02501 = c025012;
                            obj2 = coroutine_suspended;
                            obj3 = obj;
                            obj = objReceive;
                            objectRef2 = objectRef3;
                            r6 = r62;
                            r11 = (DragEvent) obj;
                            objectRef3.element = r11;
                            if (objectRef2.element instanceof DragEvent.DragStarted) {
                                c02501.L$0 = r6;
                                c02501.L$1 = objectRef2;
                                c02501.L$2 = null;
                                c02501.label = 2;
                                if (DragGestureNode.this.processDragStart((DragEvent.DragStarted) objectRef2.element, c02501) == obj2) {
                                    return obj2;
                                }
                                obj = obj3;
                                coroutine_suspended = obj2;
                                objectRef = objectRef2;
                                r32 = r6;
                                try {
                                } catch (CancellationException e2) {
                                    r1 = r32;
                                    c02501.L$0 = r1;
                                    c02501.L$1 = null;
                                    c02501.label = 6;
                                    if (DragGestureNode.this.processDragCancel(c02501) != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    C02501 c025013 = c02501;
                                    r4 = r1;
                                    c025012 = c025013;
                                    if (CoroutineScopeKt.isActive(r4)) {
                                    }
                                }
                                c02501.L$0 = r32;
                                c02501.L$1 = objectRef;
                                c02501.label = 3;
                                r3 = r32;
                                if (DragGestureNode.this.drag(new C00161(objectRef, DragGestureNode.this, null), c02501) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                if (objectRef.element instanceof DragEvent.DragStopped) {
                                    DragGestureNode dragGestureNode = DragGestureNode.this;
                                    Object obj4 = objectRef.element;
                                    Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type androidx.compose.foundation.gestures.DragEvent.DragStopped");
                                    c02501.L$0 = r3;
                                    c02501.L$1 = null;
                                    c02501.label = 4;
                                    if (dragGestureNode.processDragStop((DragEvent.DragStopped) obj4, c02501) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    c025012 = c02501;
                                    r4 = r3;
                                } else if (objectRef.element instanceof DragEvent.DragCancelled) {
                                    c02501.L$0 = r3;
                                    c02501.L$1 = null;
                                    c02501.label = 5;
                                    if (DragGestureNode.this.processDragCancel(c02501) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    c025012 = c02501;
                                    r4 = r3;
                                } else {
                                    c025012 = c02501;
                                    r4 = r3;
                                }
                                if (CoroutineScopeKt.isActive(r4)) {
                                    return Unit.INSTANCE;
                                }
                            } else {
                                obj = obj3;
                                coroutine_suspended = obj2;
                                c025012 = c02501;
                                r4 = r6;
                                if (CoroutineScopeKt.isActive(r4)) {
                                }
                            }
                        } else {
                            objectRef2 = objectRef3;
                            r6 = r4;
                            c02501 = c025012;
                            obj2 = coroutine_suspended;
                            obj3 = obj;
                            r11 = 0;
                            objectRef3.element = r11;
                            if (objectRef2.element instanceof DragEvent.DragStarted) {
                            }
                        }
                    }
                    break;
                case 1:
                    Ref.ObjectRef objectRef4 = (Ref.ObjectRef) this.L$2;
                    Ref.ObjectRef objectRef5 = (Ref.ObjectRef) this.L$1;
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    objectRef2 = objectRef5;
                    r62 = coroutineScope;
                    c02501 = this;
                    objectRef3 = objectRef4;
                    obj2 = coroutine_suspended;
                    obj3 = obj;
                    r6 = r62;
                    r11 = (DragEvent) obj;
                    objectRef3.element = r11;
                    if (objectRef2.element instanceof DragEvent.DragStarted) {
                    }
                    break;
                case 2:
                    objectRef = (Ref.ObjectRef) this.L$1;
                    CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    c02501 = this;
                    r32 = coroutineScope2;
                    c02501.L$0 = r32;
                    c02501.L$1 = objectRef;
                    c02501.label = 3;
                    r3 = r32;
                    if (DragGestureNode.this.drag(new C00161(objectRef, DragGestureNode.this, null), c02501) == coroutine_suspended) {
                    }
                    if (objectRef.element instanceof DragEvent.DragStopped) {
                    }
                    if (CoroutineScopeKt.isActive(r4)) {
                    }
                    break;
                case 3:
                    objectRef = (Ref.ObjectRef) this.L$1;
                    CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        c02501 = this;
                        r3 = coroutineScope3;
                    } catch (CancellationException e3) {
                        c02501 = this;
                        r1 = coroutineScope3;
                        c02501.L$0 = r1;
                        c02501.L$1 = null;
                        c02501.label = 6;
                        if (DragGestureNode.this.processDragCancel(c02501) != coroutine_suspended) {
                        }
                    }
                    if (objectRef.element instanceof DragEvent.DragStopped) {
                    }
                    if (CoroutineScopeKt.isActive(r4)) {
                    }
                    break;
                case 4:
                    CoroutineScope coroutineScope4 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    r4 = coroutineScope4;
                    c025012 = this;
                    if (CoroutineScopeKt.isActive(r4)) {
                    }
                    break;
                case 5:
                    CoroutineScope coroutineScope5 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    r4 = coroutineScope5;
                    c025012 = this;
                    if (CoroutineScopeKt.isActive(r4)) {
                    }
                    break;
                case 6:
                    CoroutineScope coroutineScope6 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    r4 = coroutineScope6;
                    c025012 = this;
                    if (CoroutineScopeKt.isActive(r4)) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Draggable.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "processDelta", "Lkotlin/Function1;", "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "dragDelta"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1", f = "Draggable.kt", i = {0}, l = {506}, m = "invokeSuspend", n = {"processDelta"}, s = {"L$0"}, v = 1)
        static final class C00161 extends SuspendLambda implements Function2<Function1<? super DragEvent.DragDelta, ? extends Unit>, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref.ObjectRef<DragEvent> $event;
            /* synthetic */ Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ DragGestureNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00161(Ref.ObjectRef<DragEvent> objectRef, DragGestureNode dragGestureNode, Continuation<? super C00161> continuation) {
                super(2, continuation);
                this.$event = objectRef;
                this.this$0 = dragGestureNode;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00161 c00161 = new C00161(this.$event, this.this$0, continuation);
                c00161.L$0 = obj;
                return c00161;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Function1<? super DragEvent.DragDelta, ? extends Unit> function1, Continuation<? super Unit> continuation) {
                return invoke2((Function1<? super DragEvent.DragDelta, Unit>) function1, continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Function1<? super DragEvent.DragDelta, Unit> function1, Continuation<? super Unit> continuation) {
                return ((C00161) create(function1, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0056 -> B:25:0x0076). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0069 -> B:24:0x006f). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                Function1 function1;
                C00161 c00161;
                T t;
                Ref.ObjectRef<DragEvent> objectRef;
                Object obj2;
                Function1 function12;
                C00161 c001612;
                Object obj3;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure(obj);
                        function1 = (Function1) this.L$0;
                        c00161 = this;
                        if ((c00161.$event.element instanceof DragEvent.DragStopped) && !(c00161.$event.element instanceof DragEvent.DragCancelled)) {
                            DragEvent dragEvent = c00161.$event.element;
                            t = 0;
                            DragEvent.DragDelta dragDelta = dragEvent instanceof DragEvent.DragDelta ? (DragEvent.DragDelta) dragEvent : null;
                            if (dragDelta != null) {
                                function1.invoke(dragDelta);
                            }
                            objectRef = c00161.$event;
                            Channel channel = c00161.this$0.channel;
                            if (channel != null) {
                                c00161.L$0 = function1;
                                c00161.L$1 = objectRef;
                                c00161.label = 1;
                                Object objReceive = channel.receive(c00161);
                                if (objReceive == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                Object obj4 = coroutine_suspended;
                                obj2 = obj;
                                obj = objReceive;
                                function12 = function1;
                                c001612 = c00161;
                                obj3 = obj4;
                                DragEvent dragEvent2 = (DragEvent) obj;
                                obj = obj2;
                                coroutine_suspended = obj3;
                                c00161 = c001612;
                                function1 = function12;
                                t = dragEvent2;
                            }
                            objectRef.element = t;
                            if (c00161.$event.element instanceof DragEvent.DragStopped) {
                            }
                            return Unit.INSTANCE;
                        }
                        return Unit.INSTANCE;
                    case 1:
                        Ref.ObjectRef<DragEvent> objectRef2 = (Ref.ObjectRef) this.L$1;
                        Function1 function13 = (Function1) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        objectRef = objectRef2;
                        function12 = function13;
                        c001612 = this;
                        obj3 = coroutine_suspended;
                        obj2 = obj;
                        DragEvent dragEvent22 = (DragEvent) obj;
                        obj = obj2;
                        coroutine_suspended = obj3;
                        c00161 = c001612;
                        function1 = function12;
                        t = dragEvent22;
                        objectRef.element = t;
                        if (c00161.$event.element instanceof DragEvent.DragStopped) {
                        }
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.isListeningForEvents = false;
        disposeInteractionSource();
        this.nodeOffset = Offset.INSTANCE.m4468getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo233onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        this.isListeningForPointerInputEvents = true;
        boolean z = ComposeFoundationFlags.isNonSuspendingPointerInputInDraggableEnabled;
        boolean z2 = this.enabled;
        if (z) {
            if (z2) {
                if (this.currentDragState == null) {
                    this.currentDragState = getAwaitDownState();
                }
                processRawPointerEvent(pointerEvent, pass);
                return;
            }
            return;
        }
        if (z2 && this.pointerInputNode == null) {
            this.pointerInputNode = (SuspendingPointerInputModifierNode) delegate(initializePointerInputNode());
        }
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
        if (suspendingPointerInputModifierNode != null) {
            suspendingPointerInputModifierNode.mo233onPointerEventH0pRuoY(pointerEvent, pass, bounds);
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onIndirectPointerEvent(IndirectPointerEvent event, PointerEventPass pass) {
        if (this.enabled) {
            if (this.indirectPointerInputDragCycleDetector == null) {
                this.indirectPointerInputDragCycleDetector = new IndirectPointerInputDragCycleDetector(this);
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.processIndirectPointerInputEvent(event, pass);
            }
        }
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onCancelIndirectPointerInput() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.resetDragDetectionState();
        }
    }

    private final SuspendingPointerInputModifierNode initializePointerInputNode() {
        return SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new AnonymousClass1());
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1, reason: invalid class name */
    /* JADX INFO: compiled from: Draggable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass1 implements PointerInputEventHandler {
        AnonymousClass1() {
        }

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(final PointerInputScope $this$SuspendingPointerInputModifierNode, Continuation<? super Unit> continuation) {
            final VelocityTracker suspendingPointerInputVelocityTracker = new VelocityTracker();
            final Ref.LongRef previousPositionOnScreen = new Ref.LongRef();
            previousPositionOnScreen.element = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(DragGestureNode.this));
            final DragGestureNode dragGestureNode = DragGestureNode.this;
            Function3 onDragStart = new Function3() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return DragGestureNode.AnonymousClass1.invoke$lambda$0(dragGestureNode, suspendingPointerInputVelocityTracker, (PointerInputChange) obj, (PointerInputChange) obj2, (Offset) obj3);
                }
            };
            final DragGestureNode dragGestureNode2 = DragGestureNode.this;
            Function1 onDragEnd = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DragGestureNode.AnonymousClass1.invoke$lambda$1(suspendingPointerInputVelocityTracker, $this$SuspendingPointerInputModifierNode, dragGestureNode2, (PointerInputChange) obj);
                }
            };
            final DragGestureNode dragGestureNode3 = DragGestureNode.this;
            Function0 onDragCancel = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DragGestureNode.AnonymousClass1.invoke$lambda$2(dragGestureNode3);
                }
            };
            final DragGestureNode dragGestureNode4 = DragGestureNode.this;
            Function0 shouldAwaitTouchSlop = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(DragGestureNode.AnonymousClass1.invoke$lambda$3(dragGestureNode4));
                }
            };
            final DragGestureNode dragGestureNode5 = DragGestureNode.this;
            Function2 onDrag = new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DragGestureNode.AnonymousClass1.invoke$lambda$4(dragGestureNode5, previousPositionOnScreen, suspendingPointerInputVelocityTracker, (PointerInputChange) obj, (Offset) obj2);
                }
            };
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C00151($this$SuspendingPointerInputModifierNode, DragGestureNode.this, onDragStart, onDragEnd, onDragCancel, shouldAwaitTouchSlop, onDrag, null), continuation);
            return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
        }

        static final Unit invoke$lambda$0(DragGestureNode this$0, VelocityTracker $suspendingPointerInputVelocityTracker, PointerInputChange down, PointerInputChange slopTriggerChange, Offset postSlopOffset) {
            this$0.nodeOffset = Offset.INSTANCE.m4468getZeroF1C5BW0();
            if (this$0.getCanDrag().invoke(PointerType.m6078boximpl(down.getType())).booleanValue()) {
                if (!this$0.getIsListeningForEvents()) {
                    this$0.startListeningForEvents();
                }
                VelocityTrackerKt.addPointerInputChange($suspendingPointerInputVelocityTracker, down);
                long dragStartedOffset = Offset.m4456minusMKHz9U(slopTriggerChange.getPosition(), postSlopOffset.m4462unboximpl());
                Channel channel = this$0.channel;
                if (channel != null) {
                    ChannelResult.m10064boximpl(channel.mo10050trySendJP2dKIU(new DragEvent.DragStarted(dragStartedOffset, null)));
                }
            }
            return Unit.INSTANCE;
        }

        static final Unit invoke$lambda$1(VelocityTracker $suspendingPointerInputVelocityTracker, PointerInputScope $this_SuspendingPointerInputModifierNode, DragGestureNode this$0, PointerInputChange upEvent) {
            VelocityTrackerKt.addPointerInputChange($suspendingPointerInputVelocityTracker, upEvent);
            float maximumVelocity = $this_SuspendingPointerInputModifierNode.getViewConfiguration().getMaximumFlingVelocity();
            long velocity = $suspendingPointerInputVelocityTracker.m6116calculateVelocityAH228Gc(VelocityKt.Velocity(maximumVelocity, maximumVelocity));
            $suspendingPointerInputVelocityTracker.resetTracking();
            Channel channel = this$0.channel;
            if (channel != null) {
                ChannelResult.m10064boximpl(channel.mo10050trySendJP2dKIU(new DragEvent.DragStopped(DraggableKt.m488toValidVelocityTH1AsA0(velocity), false, null)));
            }
            return Unit.INSTANCE;
        }

        static final Unit invoke$lambda$2(DragGestureNode this$0) {
            Channel channel = this$0.channel;
            if (channel != null) {
                ChannelResult.m10064boximpl(channel.mo10050trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE));
            }
            return Unit.INSTANCE;
        }

        static final boolean invoke$lambda$3(DragGestureNode this$0) {
            return !this$0.getStartDragImmediately();
        }

        static final Unit invoke$lambda$4(DragGestureNode this$0, Ref.LongRef $previousPositionOnScreen, VelocityTracker $suspendingPointerInputVelocityTracker, PointerInputChange change, Offset delta) {
            long currentPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(this$0));
            if (!Offset.m4449equalsimpl0(currentPositionOnScreen, $previousPositionOnScreen.element)) {
                long delta2 = Offset.m4456minusMKHz9U(currentPositionOnScreen, $previousPositionOnScreen.element);
                this$0.nodeOffset = Offset.m4457plusMKHz9U(this$0.nodeOffset, delta2);
            }
            $previousPositionOnScreen.element = currentPositionOnScreen;
            VelocityTrackerKt.m6117addPointerInputChange0AR0LA0($suspendingPointerInputVelocityTracker, change, this$0.nodeOffset);
            Channel channel = this$0.channel;
            if (channel != null) {
                ChannelResult.m10064boximpl(channel.mo10050trySendJP2dKIU(new DragEvent.DragDelta(delta.m4462unboximpl(), false, null)));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Draggable.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$1", f = "Draggable.kt", i = {0}, l = {624}, m = "invokeSuspend", n = {"$this$coroutineScope"}, s = {"L$0"}, v = 1)
        static final class C00151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function2<PointerInputChange, Offset, Unit> $onDrag;
            final /* synthetic */ Function0<Unit> $onDragCancel;
            final /* synthetic */ Function1<PointerInputChange, Unit> $onDragEnd;
            final /* synthetic */ Function3<PointerInputChange, PointerInputChange, Offset, Unit> $onDragStart;
            final /* synthetic */ Function0<Boolean> $shouldAwaitTouchSlop;
            final /* synthetic */ PointerInputScope $this_SuspendingPointerInputModifierNode;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ DragGestureNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00151(PointerInputScope pointerInputScope, DragGestureNode dragGestureNode, Function3<? super PointerInputChange, ? super PointerInputChange, ? super Offset, Unit> function3, Function1<? super PointerInputChange, Unit> function1, Function0<Unit> function0, Function0<Boolean> function02, Function2<? super PointerInputChange, ? super Offset, Unit> function2, Continuation<? super C00151> continuation) {
                super(2, continuation);
                this.$this_SuspendingPointerInputModifierNode = pointerInputScope;
                this.this$0 = dragGestureNode;
                this.$onDragStart = function3;
                this.$onDragEnd = function1;
                this.$onDragCancel = function0;
                this.$shouldAwaitTouchSlop = function02;
                this.$onDrag = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00151 c00151 = new C00151(this.$this_SuspendingPointerInputModifierNode, this.this$0, this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$shouldAwaitTouchSlop, this.$onDrag, continuation);
                c00151.L$0 = obj;
                return c00151;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0, types: [int] */
            /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.CoroutineScope] */
            /* JADX WARN: Type inference failed for: r1v4 */
            /* JADX WARN: Type inference failed for: r1v7 */
            /* JADX WARN: Type inference failed for: r1v8 */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ?? r1 = this.label;
                try {
                    switch (r1) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                            this.L$0 = coroutineScope;
                            this.label = 1;
                            r1 = coroutineScope;
                            if (DragGestureDetectorKt.detectDragGestures(this.$this_SuspendingPointerInputModifierNode, this.this$0.getOrientationLock(), this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$shouldAwaitTouchSlop, this.$onDrag, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                            ResultKt.throwOnFailure(obj);
                            r1 = coroutineScope2;
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } catch (CancellationException e) {
                    Channel channel = this.this$0.channel;
                    if (channel != null) {
                        ChannelResult.m10064boximpl(channel.mo10050trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE));
                    }
                    if (!CoroutineScopeKt.isActive(r1)) {
                        throw e;
                    }
                }
                return Unit.INSTANCE;
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
        if (suspendingPointerInputModifierNode != null) {
            suspendingPointerInputModifierNode.onCancelPointerInput();
        }
        if (ComposeFoundationFlags.isNonSuspendingPointerInputInDraggableEnabled && this.isListeningForPointerInputEvents) {
            resetDragDetectionState();
        }
        this.isListeningForPointerInputEvents = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processDragStart(DragEvent.DragStarted dragStarted, Continuation<? super Unit> continuation) {
        C02481 c02481;
        DragGestureNode dragGestureNode;
        DragEvent.DragStarted event;
        MutableInteractionSource mutableInteractionSource;
        DragGestureNode dragGestureNode2;
        DragGestureNode dragGestureNode3;
        DragEvent.DragStarted event2;
        DragInteraction.Start interaction;
        MutableInteractionSource mutableInteractionSource2;
        DragInteraction.Start interaction2;
        if (continuation instanceof C02481) {
            c02481 = (C02481) continuation;
            if ((c02481.label & Integer.MIN_VALUE) != 0) {
                c02481.label -= Integer.MIN_VALUE;
            } else {
                c02481 = new C02481(continuation);
            }
        }
        Object $result = c02481.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02481.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                dragGestureNode = this;
                event = dragStarted;
                DragInteraction.Start oldInteraction = dragGestureNode.dragInteraction;
                if (oldInteraction != null && (mutableInteractionSource = dragGestureNode.interactionSource) != null) {
                    DragInteraction.Cancel cancel = new DragInteraction.Cancel(oldInteraction);
                    c02481.L$0 = event;
                    c02481.label = 1;
                    if (mutableInteractionSource.emit(cancel, c02481) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    dragGestureNode2 = dragGestureNode;
                    dragGestureNode = dragGestureNode2;
                }
                dragGestureNode3 = dragGestureNode;
                event2 = event;
                interaction = new DragInteraction.Start();
                mutableInteractionSource2 = dragGestureNode3.interactionSource;
                if (mutableInteractionSource2 != null) {
                    c02481.L$0 = event2;
                    c02481.L$1 = interaction;
                    c02481.label = 2;
                    if (mutableInteractionSource2.emit(interaction, c02481) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    interaction2 = interaction;
                    interaction = interaction2;
                }
                dragGestureNode3.dragInteraction = interaction;
                dragGestureNode3.mo423onDragStartedk4lQ0M(event2.getStartPoint());
                return Unit.INSTANCE;
            case 1:
                dragGestureNode2 = this;
                event = (DragEvent.DragStarted) c02481.L$0;
                ResultKt.throwOnFailure($result);
                dragGestureNode = dragGestureNode2;
                dragGestureNode3 = dragGestureNode;
                event2 = event;
                interaction = new DragInteraction.Start();
                mutableInteractionSource2 = dragGestureNode3.interactionSource;
                if (mutableInteractionSource2 != null) {
                }
                dragGestureNode3.dragInteraction = interaction;
                dragGestureNode3.mo423onDragStartedk4lQ0M(event2.getStartPoint());
                return Unit.INSTANCE;
            case 2:
                dragGestureNode3 = this;
                interaction2 = (DragInteraction.Start) c02481.L$1;
                event2 = (DragEvent.DragStarted) c02481.L$0;
                ResultKt.throwOnFailure($result);
                interaction = interaction2;
                dragGestureNode3.dragInteraction = interaction;
                dragGestureNode3.mo423onDragStartedk4lQ0M(event2.getStartPoint());
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processDragStop(DragEvent.DragStopped event, Continuation<? super Unit> continuation) {
        C02491 c02491;
        DragGestureNode dragGestureNode;
        DragEvent.DragStopped event2;
        DragGestureNode dragGestureNode2;
        int i;
        if (continuation instanceof C02491) {
            c02491 = (C02491) continuation;
            if ((c02491.label & Integer.MIN_VALUE) != 0) {
                c02491.label -= Integer.MIN_VALUE;
            } else {
                c02491 = new C02491(continuation);
            }
        }
        Object $result = c02491.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02491.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                dragGestureNode = this;
                DragInteraction.Start interaction = dragGestureNode.dragInteraction;
                if (interaction != null) {
                    MutableInteractionSource mutableInteractionSource = dragGestureNode.interactionSource;
                    if (mutableInteractionSource != null) {
                        DragInteraction.Stop stop = new DragInteraction.Stop(interaction);
                        c02491.L$0 = event;
                        c02491.label = 1;
                        if (mutableInteractionSource.emit(stop, c02491) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        event2 = event;
                        dragGestureNode2 = dragGestureNode;
                        i = 0;
                        DragEvent.DragStopped dragStopped = event2;
                        dragGestureNode = dragGestureNode2;
                        event = dragStopped;
                    }
                    dragGestureNode.dragInteraction = null;
                }
                dragGestureNode.onDragStopped(event);
                return Unit.INSTANCE;
            case 1:
                dragGestureNode2 = this;
                i = 0;
                event2 = (DragEvent.DragStopped) c02491.L$0;
                ResultKt.throwOnFailure($result);
                DragEvent.DragStopped dragStopped2 = event2;
                dragGestureNode = dragGestureNode2;
                event = dragStopped2;
                dragGestureNode.dragInteraction = null;
                dragGestureNode.onDragStopped(event);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processDragCancel(Continuation<? super Unit> continuation) {
        C02471 c02471;
        DragGestureNode dragGestureNode;
        DragGestureNode dragGestureNode2;
        DragGestureNode dragGestureNode3;
        if (continuation instanceof C02471) {
            c02471 = (C02471) continuation;
            if ((c02471.label & Integer.MIN_VALUE) != 0) {
                c02471.label -= Integer.MIN_VALUE;
            } else {
                c02471 = new C02471(continuation);
            }
        }
        Object $result = c02471.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02471.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                dragGestureNode = this;
                DragInteraction.Start interaction = dragGestureNode.dragInteraction;
                if (interaction != null) {
                    MutableInteractionSource mutableInteractionSource = dragGestureNode.interactionSource;
                    if (mutableInteractionSource != null) {
                        DragInteraction.Cancel cancel = new DragInteraction.Cancel(interaction);
                        c02471.label = 1;
                        if (mutableInteractionSource.emit(cancel, c02471) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        dragGestureNode2 = dragGestureNode;
                        dragGestureNode3 = null;
                        dragGestureNode = dragGestureNode2;
                    }
                    dragGestureNode.dragInteraction = null;
                }
                dragGestureNode.onDragStopped(new DragEvent.DragStopped(Velocity.INSTANCE.m7754getZero9UxMQ8M(), false, null));
                return Unit.INSTANCE;
            case 1:
                dragGestureNode2 = this;
                dragGestureNode3 = null;
                ResultKt.throwOnFailure($result);
                dragGestureNode = dragGestureNode2;
                dragGestureNode.dragInteraction = null;
                dragGestureNode.onDragStopped(new DragEvent.DragStopped(Velocity.INSTANCE.m7754getZero9UxMQ8M(), false, null));
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void disposeInteractionSource() {
        DragInteraction.Start interaction = this.dragInteraction;
        if (interaction != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                mutableInteractionSource.tryEmit(new DragInteraction.Cancel(interaction));
            }
            this.dragInteraction = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void update$default(DragGestureNode dragGestureNode, Function1 function1, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: update");
        }
        if ((i & 1) != 0) {
            function1 = dragGestureNode.canDrag;
        }
        if ((i & 2) != 0) {
            z = dragGestureNode.enabled;
        }
        if ((i & 4) != 0) {
            mutableInteractionSource = dragGestureNode.interactionSource;
        }
        if ((i & 8) != 0) {
            orientation = dragGestureNode.orientationLock;
        }
        dragGestureNode.update(function1, z, mutableInteractionSource, orientation, (i & 16) != 0 ? false : z2);
    }

    public final void update(Function1<? super PointerType, Boolean> canDrag, boolean enabled, MutableInteractionSource interactionSource, Orientation orientationLock, boolean shouldResetPointerInputHandling) {
        boolean resetPointerInputHandling = shouldResetPointerInputHandling;
        this.canDrag = canDrag;
        if (this.enabled != enabled) {
            this.enabled = enabled;
            if (!enabled) {
                disposeInteractionSource();
                SuspendingPointerInputModifierNode it = this.pointerInputNode;
                if (it != null) {
                    undelegate(it);
                }
                this.pointerInputNode = null;
                this.indirectPointerInputDragCycleDetector = null;
            }
            resetPointerInputHandling = true;
        }
        if (!Intrinsics.areEqual(this.interactionSource, interactionSource)) {
            disposeInteractionSource();
            this.interactionSource = interactionSource;
        }
        if (this.orientationLock != orientationLock) {
            this.orientationLock = orientationLock;
            resetPointerInputHandling = true;
        }
        if (resetPointerInputHandling) {
            if (ComposeFoundationFlags.isNonSuspendingPointerInputInDraggableEnabled && this.isListeningForPointerInputEvents) {
                resetDragDetectionState();
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.resetDragDetectionState();
            }
            SuspendingPointerInputModifierNode suspendingPointerInputModifierNode = this.pointerInputNode;
            if (suspendingPointerInputModifierNode != null) {
                suspendingPointerInputModifierNode.resetPointerInputHandler();
            }
        }
    }

    private final void processRawPointerEvent(PointerEvent pointerEvent, PointerEventPass pass) {
        DragDetectionState state = this.currentDragState;
        if (state == null) {
            throw new IllegalArgumentException("currentDragState should not be null".toString());
        }
        if (!(state instanceof DragDetectionState.AwaitDown)) {
            if (!(state instanceof DragDetectionState.AwaitTouchSlop)) {
                if (state instanceof DragDetectionState.AwaitGesturePickup) {
                    processAwaitGesturePickup(pointerEvent, pass, (DragDetectionState.AwaitGesturePickup) state);
                    return;
                } else {
                    if (!(state instanceof DragDetectionState.Dragging)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    processDraggingState(pointerEvent, pass, (DragDetectionState.Dragging) state);
                    return;
                }
            }
            processAwaitTouchSlop(pointerEvent, pass, (DragDetectionState.AwaitTouchSlop) state);
            return;
        }
        processInitialDownState(pointerEvent, pass, (DragDetectionState.AwaitDown) state);
    }

    private final void resetDragDetectionState() {
        moveToAwaitDownState();
        if (this.isListeningForEvents) {
            sendDragCancelled();
        }
        this.velocityTracker = null;
    }

    /* JADX INFO: renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    static /* synthetic */ void m480moveToAwaitTouchSlopStateaWI9W7U$default(DragGestureNode dragGestureNode, PointerInputChange pointerInputChange, long j, long j2, boolean z, int i, Object obj) {
        long jM4468getZeroF1C5BW0;
        boolean z2;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: moveToAwaitTouchSlopState-aWI9W7U");
        }
        if ((i & 4) == 0) {
            jM4468getZeroF1C5BW0 = j2;
        } else {
            jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        if ((i & 8) == 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        dragGestureNode.m479moveToAwaitTouchSlopStateaWI9W7U(pointerInputChange, j, jM4468getZeroF1C5BW0, z2);
    }

    /* JADX INFO: renamed from: moveToAwaitTouchSlopState-aWI9W7U, reason: not valid java name */
    private final void m479moveToAwaitTouchSlopStateaWI9W7U(PointerInputChange initialDown, long pointerId, long initialTouchSlopPositionChange, boolean verifyConsumptionInFinalPass) {
        DragDetectionState.AwaitTouchSlop $this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240 = getAwaitTouchSlopState();
        $this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240.setInitialDown(initialDown);
        $this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240.m451setPointerId0FcD4WY(pointerId);
        if (this.touchSlopDetector == null) {
            this.touchSlopDetector = new TouchSlopDetector(this.orientationLock, 0L, 2, null);
        } else {
            TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
            if (touchSlopDetector != null) {
                touchSlopDetector.setOrientation(this.orientationLock);
            }
            TouchSlopDetector touchSlopDetector2 = this.touchSlopDetector;
            if (touchSlopDetector2 != null) {
                touchSlopDetector2.m607resetk4lQ0M(initialTouchSlopPositionChange);
            }
        }
        $this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240.setVerifyConsumptionInFinalPass(verifyConsumptionInFinalPass);
        this.currentDragState = $this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240;
    }

    /* JADX INFO: renamed from: moveToDraggingState-0FcD4WY, reason: not valid java name */
    private final void m481moveToDraggingState0FcD4WY(long pointerId) {
        DragDetectionState.Dragging $this$moveToDraggingState_0FcD4WY_u24lambda_u240 = getDraggingState();
        $this$moveToDraggingState_0FcD4WY_u24lambda_u240.m453setPointerId0FcD4WY(pointerId);
        this.currentDragState = $this$moveToDraggingState_0FcD4WY_u24lambda_u240;
    }

    private final void moveToAwaitDownState() {
        DragDetectionState.AwaitDown $this$moveToAwaitDownState_u24lambda_u240 = getAwaitDownState();
        $this$moveToAwaitDownState_u24lambda_u240.setAwaitTouchSlop(DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized);
        $this$moveToAwaitDownState_u24lambda_u240.setConsumedOnInitial(false);
        this.currentDragState = $this$moveToAwaitDownState_u24lambda_u240;
    }

    /* JADX INFO: renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    private final void m478moveToAwaitGesturePickupStaternUCldI(PointerInputChange initialDown, long pointerId, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup $this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240 = getAwaitGesturePickupState();
        $this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240.setInitialDown(initialDown);
        $this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240.m449setPointerId0FcD4WY(pointerId);
        TouchSlopDetector.m603resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
        $this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240.setTouchSlopDetector(touchSlopDetector);
        this.currentDragState = $this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240;
    }

    private final void processInitialDownState(PointerEvent pointerEvent, PointerEventPass pass, DragDetectionState.AwaitDown state) {
        DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop;
        if (!pointerEvent.getChanges().isEmpty() && TapGestureDetectorKt.isChangedToDown$default(pointerEvent, false, false, 2, null)) {
            PointerInputChange firstDown = (PointerInputChange) CollectionsKt.first((List) pointerEvent.getChanges());
            if (WhenMappings.$EnumSwitchMapping$0[state.getAwaitTouchSlop().ordinal()] == 1) {
                if (!getStartDragImmediately()) {
                    awaitTouchSlop = DragDetectionState.AwaitDown.AwaitTouchSlop.Yes;
                } else {
                    awaitTouchSlop = DragDetectionState.AwaitDown.AwaitTouchSlop.No;
                }
            } else {
                awaitTouchSlop = state.getAwaitTouchSlop();
            }
            state.setAwaitTouchSlop(awaitTouchSlop);
            if (pass == PointerEventPass.Initial && awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.No) {
                firstDown.consume();
                state.setConsumedOnInitial(true);
            }
            if (pass == PointerEventPass.Main) {
                if (awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.Yes) {
                    m480moveToAwaitTouchSlopStateaWI9W7U$default(this, firstDown, firstDown.getId(), 0L, false, 12, null);
                } else if (state.getConsumedOnInitial()) {
                    m483sendDragStart0AR0LA0(firstDown, firstDown, Offset.INSTANCE.m4468getZeroF1C5BW0());
                    m482sendDragEventUv8p0NA(firstDown, Offset.INSTANCE.m4468getZeroF1C5BW0());
                    m481moveToDraggingState0FcD4WY(firstDown.getId());
                }
            }
        }
    }

    private final void processAwaitTouchSlop(PointerEvent pointerEvent, PointerEventPass pass, DragDetectionState.AwaitTouchSlop state) {
        Object it$iv;
        PointerInputChange otherDown;
        Object obj;
        Object it$iv2;
        if (pass == PointerEventPass.Initial) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int $i$f$fastFirstOrNull = 0;
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv < size) {
                it$iv = changes.get(index$iv$iv);
                PointerInputChange it = (PointerInputChange) it$iv;
                List<PointerInputChange> list = changes;
                int $i$f$fastFirstOrNull2 = $i$f$fastFirstOrNull;
                if (PointerId.m5992equalsimpl0(it.getId(), state.getPointerId())) {
                    break;
                }
                index$iv$iv++;
                changes = list;
                $i$f$fastFirstOrNull = $i$f$fastFirstOrNull2;
            } else {
                it$iv = null;
                break;
            }
        }
        PointerInputChange eventFromPointerId = (PointerInputChange) it$iv;
        if (eventFromPointerId == null) {
            List<PointerInputChange> changes2 = pointerEvent.getChanges();
            int index$iv$iv2 = 0;
            int size2 = changes2.size();
            while (true) {
                if (index$iv$iv2 < size2) {
                    it$iv2 = changes2.get(index$iv$iv2);
                    PointerInputChange it2 = (PointerInputChange) it$iv2;
                    if (it2.getPressed()) {
                        break;
                    } else {
                        index$iv$iv2++;
                    }
                } else {
                    it$iv2 = null;
                    break;
                }
            }
            otherDown = (PointerInputChange) it$iv2;
            if (otherDown == null) {
                moveToAwaitDownState();
                return;
            }
            state.m451setPointerId0FcD4WY(otherDown.getId());
        } else {
            otherDown = eventFromPointerId;
        }
        if (pass == PointerEventPass.Main) {
            if (!otherDown.isConsumed()) {
                if (PointerEventKt.changedToUpIgnoreConsumed(otherDown)) {
                    List<PointerInputChange> changes3 = pointerEvent.getChanges();
                    int index$iv$iv3 = 0;
                    int size3 = changes3.size();
                    while (true) {
                        if (index$iv$iv3 < size3) {
                            Object item$iv$iv = changes3.get(index$iv$iv3);
                            PointerInputChange it3 = (PointerInputChange) item$iv$iv;
                            if (!it3.getPressed()) {
                                index$iv$iv3++;
                            } else {
                                obj = item$iv$iv;
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    PointerInputChange otherDown2 = (PointerInputChange) obj;
                    if (otherDown2 == null) {
                        moveToAwaitDownState();
                    } else {
                        state.m451setPointerId0FcD4WY(otherDown2.getId());
                    }
                } else {
                    float touchSlop = DragGestureDetectorKt.m476pointerSlopE8SPZFQ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration()), otherDown.getType());
                    long postSlopOffset = requireTouchSlopDetector().m604addPositionsakrDWew(otherDown.getPosition(), otherDown.getPreviousPosition(), touchSlop);
                    if (((9223372034707292159L & postSlopOffset) != InlineClassHelperKt.UnspecifiedPackedFloats ? 1 : 0) != 0) {
                        otherDown.consume();
                        PointerInputChange initialDown = state.getInitialDown();
                        Intrinsics.checkNotNull(initialDown);
                        m483sendDragStart0AR0LA0(initialDown, otherDown, postSlopOffset);
                        m482sendDragEventUv8p0NA(otherDown, postSlopOffset);
                        m481moveToDraggingState0FcD4WY(otherDown.getId());
                    } else {
                        state.setVerifyConsumptionInFinalPass(true);
                    }
                }
            } else {
                PointerInputChange initialDown2 = state.getInitialDown();
                if (initialDown2 == null) {
                    throw new IllegalArgumentException("AwaitTouchSlop.initialDown was not initialized".toString());
                }
                long pointerId = state.getPointerId();
                TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
                if (touchSlopDetector != null) {
                    m478moveToAwaitGesturePickupStaternUCldI(initialDown2, pointerId, touchSlopDetector);
                } else {
                    throw new IllegalArgumentException("AwaitTouchSlop.touchSlopDetector was not initialized".toString());
                }
            }
        }
        if (pass == PointerEventPass.Final && state.getVerifyConsumptionInFinalPass()) {
            if (otherDown.isConsumed()) {
                PointerInputChange initialDown3 = state.getInitialDown();
                if (initialDown3 == null) {
                    throw new IllegalArgumentException("AwaitTouchSlop.initialDown was not initialized".toString());
                }
                long pointerId2 = state.getPointerId();
                TouchSlopDetector touchSlopDetector2 = this.touchSlopDetector;
                if (touchSlopDetector2 != null) {
                    m478moveToAwaitGesturePickupStaternUCldI(initialDown3, pointerId2, touchSlopDetector2);
                    return;
                }
                throw new IllegalArgumentException("AwaitTouchSlop.touchSlopDetector was not initialized".toString());
            }
            state.setVerifyConsumptionInFinalPass(false);
        }
    }

    private final void processAwaitGesturePickup(PointerEvent pointerEvent, PointerEventPass pass, DragDetectionState.AwaitGesturePickup state) {
        boolean hasDownPointers;
        boolean hasUnconsumedDrag;
        if (pass != PointerEventPass.Final) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            hasDownPointers = false;
            if (index$iv$iv < size) {
                Object item$iv$iv = changes.get(index$iv$iv);
                PointerInputChange it = (PointerInputChange) item$iv$iv;
                if (it.isConsumed()) {
                    hasUnconsumedDrag = false;
                    break;
                }
                index$iv$iv++;
            } else {
                hasUnconsumedDrag = true;
                break;
            }
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int index$iv$iv2 = 0;
        int size2 = changes2.size();
        while (true) {
            if (index$iv$iv2 >= size2) {
                break;
            }
            Object item$iv$iv2 = changes2.get(index$iv$iv2);
            PointerInputChange it2 = (PointerInputChange) item$iv$iv2;
            if (it2.getPressed()) {
                hasDownPointers = true;
                break;
            }
            index$iv$iv2++;
        }
        if (!hasDownPointers || pointerEvent.getChanges().isEmpty()) {
            moveToAwaitDownState();
            return;
        }
        if (hasUnconsumedDrag) {
            long position = ((PointerInputChange) CollectionsKt.first((List) pointerEvent.getChanges())).getPosition();
            PointerInputChange initialDown = state.getInitialDown();
            Intrinsics.checkNotNull(initialDown);
            long initialPositionChange = Offset.m4456minusMKHz9U(position, initialDown.getPosition());
            PointerInputChange initialDown2 = state.getInitialDown();
            if (initialDown2 != null) {
                m480moveToAwaitTouchSlopStateaWI9W7U$default(this, initialDown2, state.getPointerId(), initialPositionChange, false, 8, null);
                return;
            }
            throw new IllegalArgumentException("AwaitGesturePickup.initialDown was not initialized.".toString());
        }
    }

    private final void processDraggingState(PointerEvent pointerEvent, PointerEventPass pass, DragDetectionState.Dragging state) {
        Object it$iv;
        Object item$iv$iv;
        if (pass != PointerEventPass.Main) {
            return;
        }
        long pointer = state.getPointerId();
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv2 = changes.get(index$iv$iv);
                it$iv = item$iv$iv2;
                PointerInputChange it = (PointerInputChange) it$iv;
                if (PointerId.m5992equalsimpl0(it.getId(), pointer)) {
                    break;
                } else {
                    index$iv$iv++;
                }
            } else {
                it$iv = null;
                break;
            }
        }
        PointerInputChange dragEvent = (PointerInputChange) it$iv;
        if (dragEvent == null) {
            return;
        }
        if (!PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
            if (dragEvent.isConsumed()) {
                sendDragCancelled();
                return;
            }
            long positionChange = PointerEventKt.positionChangeIgnoreConsumed(dragEvent);
            float motionChange = Offset.m4450getDistanceimpl(positionChange);
            if (!(motionChange == 0.0f)) {
                long positionChange2 = PointerEventKt.positionChange(dragEvent);
                m482sendDragEventUv8p0NA(dragEvent, positionChange2);
                dragEvent.consume();
                return;
            }
            return;
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int index$iv$iv2 = 0;
        int size2 = changes2.size();
        while (true) {
            if (index$iv$iv2 < size2) {
                Object item$iv$iv3 = changes2.get(index$iv$iv2);
                PointerInputChange it2 = (PointerInputChange) item$iv$iv3;
                if (!it2.getPressed()) {
                    index$iv$iv2++;
                } else {
                    item$iv$iv = item$iv$iv3;
                    break;
                }
            } else {
                item$iv$iv = null;
                break;
            }
        }
        PointerInputChange otherDown = (PointerInputChange) item$iv$iv;
        if (otherDown == null) {
            if (!dragEvent.isConsumed() && PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                sendDragStopped(dragEvent);
            } else {
                sendDragCancelled();
            }
            moveToAwaitDownState();
            return;
        }
        state.m453setPointerId0FcD4WY(otherDown.getId());
    }

    /* JADX INFO: renamed from: sendDragStart-0AR0LA0, reason: not valid java name */
    private final void m483sendDragStart0AR0LA0(PointerInputChange down, PointerInputChange slopTriggerChange, long overSlopOffset) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new VelocityTracker();
        }
        VelocityTrackerKt.addPointerInputChange(requireVelocityTracker(), down);
        long dragStartedOffset = Offset.m4456minusMKHz9U(slopTriggerChange.getPosition(), overSlopOffset);
        this.nodeOffset = Offset.INSTANCE.m4468getZeroF1C5BW0();
        if (this.canDrag.invoke(PointerType.m6078boximpl(down.getType())).booleanValue()) {
            if (!this.isListeningForEvents) {
                if (this.channel == null) {
                    this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
                }
                startListeningForEvents();
            }
            this.previousPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(this));
            requireChannel().mo10050trySendJP2dKIU(new DragEvent.DragStarted(dragStartedOffset, null));
        }
    }

    /* JADX INFO: renamed from: sendDragEvent-Uv8p0NA, reason: not valid java name */
    private final void m482sendDragEventUv8p0NA(PointerInputChange change, long dragAmount) {
        long currentPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(getNode()));
        if (!Offset.m4449equalsimpl0(this.previousPositionOnScreen, Offset.INSTANCE.m4467getUnspecifiedF1C5BW0()) && !Offset.m4449equalsimpl0(currentPositionOnScreen, this.previousPositionOnScreen)) {
            long delta = Offset.m4456minusMKHz9U(currentPositionOnScreen, this.previousPositionOnScreen);
            this.nodeOffset = Offset.m4457plusMKHz9U(this.nodeOffset, delta);
        }
        this.previousPositionOnScreen = currentPositionOnScreen;
        VelocityTrackerKt.m6117addPointerInputChange0AR0LA0(requireVelocityTracker(), change, this.nodeOffset);
        requireChannel().mo10050trySendJP2dKIU(new DragEvent.DragDelta(dragAmount, false, null));
    }

    private final void sendDragStopped(PointerInputChange change) {
        VelocityTrackerKt.addPointerInputChange(requireVelocityTracker(), change);
        float maximumVelocity = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getMaximumFlingVelocity();
        long velocity = requireVelocityTracker().m6116calculateVelocityAH228Gc(VelocityKt.Velocity(maximumVelocity, maximumVelocity));
        requireVelocityTracker().resetTracking();
        requireChannel().mo10050trySendJP2dKIU(new DragEvent.DragStopped(DraggableKt.m488toValidVelocityTH1AsA0(velocity), false, null));
        this.isListeningForPointerInputEvents = false;
    }

    private final void sendDragCancelled() {
        requireChannel().mo10050trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE);
    }

    public final void onDragEvent(DragEvent event) {
        if ((event instanceof DragEvent.DragStarted) && !this.isListeningForEvents) {
            this.isListeningForEvents = true;
            startListeningForEvents();
        }
        requireChannel().mo10050trySendJP2dKIU(event);
    }
}
