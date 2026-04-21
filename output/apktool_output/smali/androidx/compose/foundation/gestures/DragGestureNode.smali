.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DragGestureNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,1164:1\n1#2:1165\n118#3:1166\n35#3,5:1167\n119#3:1172\n118#3:1173\n35#3,5:1174\n119#3:1179\n118#3:1180\n35#3,5:1181\n119#3:1186\n88#3:1188\n35#3,5:1189\n89#3:1194\n103#3:1195\n35#3,5:1196\n104#3:1201\n118#3:1202\n35#3,5:1203\n119#3:1208\n118#3:1209\n35#3,5:1210\n119#3:1215\n273#4:1187\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DragGestureNode\n*L\n840#1:1166\n840#1:1167,5\n840#1:1172\n849#1:1173\n849#1:1174,5\n849#1:1179\n871#1:1180\n871#1:1181,5\n871#1:1186\n950#1:1188\n950#1:1189,5\n950#1:1194\n951#1:1195\n951#1:1196,5\n951#1:1201\n982#1:1202\n982#1:1203,5\n982#1:1208\n984#1:1209\n984#1:1210,5\n984#1:1215\n890#1:1187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B7\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJM\u0010H\u001a\u00020I2=\u0010J\u001a9\u0008\u0001\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110L\u00a2\u0006\u000c\u0008M\u0012\u0008\u0008N\u0012\u0004\u0008\u0008(O\u0012\u0004\u0012\u00020I0\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020I0P\u0012\u0006\u0012\u0004\u0018\u00010Q0KH\u00a6@\u00a2\u0006\u0002\u0010RJ\u0017\u0010S\u001a\u00020I2\u0006\u0010T\u001a\u00020AH&\u00a2\u0006\u0004\u0008U\u0010VJ\u0010\u0010W\u001a\u00020I2\u0006\u0010X\u001a\u00020YH&J\u0008\u0010Z\u001a\u00020\u0008H&J\u0008\u0010[\u001a\u00020?H\u0002J\u000e\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0008\u0010]\u001a\u00020DH\u0002J\u0008\u0010^\u001a\u00020IH\u0002J\u0008\u0010a\u001a\u00020IH\u0016J\'\u0010b\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\u0018\u0010k\u001a\u00020I2\u0006\u0010X\u001a\u00020l2\u0006\u0010e\u001a\u00020fH\u0016J\u0008\u0010m\u001a\u00020IH\u0016J\u0008\u0010n\u001a\u00020`H\u0002J\u0008\u0010o\u001a\u00020IH\u0016J\u0016\u0010p\u001a\u00020I2\u0006\u0010X\u001a\u00020qH\u0082@\u00a2\u0006\u0002\u0010rJ\u0016\u0010s\u001a\u00020I2\u0006\u0010X\u001a\u00020YH\u0082@\u00a2\u0006\u0002\u0010tJ\u000e\u0010u\u001a\u00020IH\u0082@\u00a2\u0006\u0002\u0010vJ\u0006\u0010w\u001a\u00020IJH\u0010x\u001a\u00020I2\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010y\u001a\u00020\u0008J\u0018\u0010z\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020fH\u0002J\u0008\u0010{\u001a\u00020IH\u0002J8\u0010|\u001a\u00020I2\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\t\u0008\u0002\u0010\u0081\u0001\u001a\u00020A2\t\u0008\u0002\u0010\u0082\u0001\u001a\u00020\u0008H\u0002\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u001a\u0010\u0085\u0001\u001a\u00020I2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002\u00a2\u0006\u0005\u0008\u0086\u0001\u0010VJ\t\u0010\u0087\u0001\u001a\u00020IH\u0002J+\u0010\u0088\u0001\u001a\u00020I2\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\u0006\u0010C\u001a\u00020DH\u0002\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J\"\u0010\u008b\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u00020)H\u0002J\"\u0010\u008d\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u000203H\u0002J\"\u0010\u008e\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u000208H\u0002J\"\u0010\u008f\u0001\u001a\u00020I2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0007\u0010\u008c\u0001\u001a\u00020.H\u0002J-\u0010\u0090\u0001\u001a\u00020I2\u0007\u0010\u0091\u0001\u001a\u00020~2\u0007\u0010\u0092\u0001\u001a\u00020~2\u0007\u0010\u0093\u0001\u001a\u00020AH\u0002\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J$\u0010\u0096\u0001\u001a\u00020I2\u0007\u0010\u0097\u0001\u001a\u00020~2\u0007\u0010\u0098\u0001\u001a\u00020AH\u0002\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u0012\u0010\u009b\u0001\u001a\u00020I2\u0007\u0010\u0097\u0001\u001a\u00020~H\u0002J\t\u0010\u009c\u0001\u001a\u00020IH\u0002J\u000f\u0010\u009d\u0001\u001a\u00020I2\u0006\u0010X\u001a\u00020\u001eR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R6\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0018\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0018\"\u0004\u0008\'\u0010$R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020)8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0002038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u0002088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u0010\u0010C\u001a\u0004\u0018\u00010DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u0004\u0018\u00010FX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020AX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010BR\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DragGestureNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "canDrag",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "orientationLock",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V",
        "getOrientationLock",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "setOrientationLock",
        "(Landroidx/compose/foundation/gestures/Orientation;)V",
        "value",
        "getCanDrag",
        "()Lkotlin/jvm/functions/Function1;",
        "getEnabled",
        "()Z",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "_canDrag",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/DragEvent;",
        "dragInteraction",
        "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
        "isListeningForEvents",
        "isListeningForEvents$foundation",
        "setListeningForEvents$foundation",
        "(Z)V",
        "isListeningForPointerInputEvents",
        "isListeningForPointerInputEvents$foundation",
        "setListeningForPointerInputEvents$foundation",
        "_awaitDownState",
        "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;",
        "awaitDownState",
        "getAwaitDownState",
        "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;",
        "_draggingState",
        "Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;",
        "draggingState",
        "getDraggingState",
        "()Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;",
        "_awaitTouchSlopState",
        "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;",
        "awaitTouchSlopState",
        "getAwaitTouchSlopState",
        "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;",
        "_awaitGesturePickupState",
        "Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;",
        "awaitGesturePickupState",
        "getAwaitGesturePickupState",
        "()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;",
        "currentDragState",
        "Landroidx/compose/foundation/gestures/DragDetectionState;",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "previousPositionOnScreen",
        "Landroidx/compose/ui/geometry/Offset;",
        "J",
        "touchSlopDetector",
        "Landroidx/compose/foundation/gestures/TouchSlopDetector;",
        "indirectPointerInputDragCycleDetector",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;",
        "nodeOffset",
        "drag",
        "",
        "forEachDelta",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "Lkotlin/ParameterName;",
        "name",
        "dragDelta",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onDragStarted",
        "startedPosition",
        "onDragStarted-k-4lQ0M",
        "(J)V",
        "onDragStopped",
        "event",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
        "startDragImmediately",
        "requireVelocityTracker",
        "requireChannel",
        "requireTouchSlopDetector",
        "startListeningForEvents",
        "pointerInputNode",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "onDetach",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onIndirectPointerEvent",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "onCancelIndirectPointerInput",
        "initializePointerInputNode",
        "onCancelPointerInput",
        "processDragStart",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
        "(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragStop",
        "(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragCancel",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disposeInteractionSource",
        "update",
        "shouldResetPointerInputHandling",
        "processRawPointerEvent",
        "resetDragDetectionState",
        "moveToAwaitTouchSlopState",
        "initialDown",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "initialTouchSlopPositionChange",
        "verifyConsumptionInFinalPass",
        "moveToAwaitTouchSlopState-aWI9W7U",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;JJZ)V",
        "moveToDraggingState",
        "moveToDraggingState-0FcD4WY",
        "moveToAwaitDownState",
        "moveToAwaitGesturePickupState",
        "moveToAwaitGesturePickupState-rnUCldI",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V",
        "processInitialDownState",
        "state",
        "processAwaitTouchSlop",
        "processAwaitGesturePickup",
        "processDraggingState",
        "sendDragStart",
        "down",
        "slopTriggerChange",
        "overSlopOffset",
        "sendDragStart-0AR0LA0",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V",
        "sendDragEvent",
        "change",
        "dragAmount",
        "sendDragEvent-Uv8p0NA",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V",
        "sendDragStopped",
        "sendDragCancelled",
        "onDragEvent",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private _awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

.field private _awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

.field private _awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

.field private final _canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

.field private canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

.field private dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field private enabled:Z

.field private indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private isListeningForEvents:Z

.field private isListeningForPointerInputEvents:Z

.field private nodeOffset:J

.field private orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field private pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private previousPositionOnScreen:J

.field private touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

.field private velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/DragGestureNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 2
    .param p1, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p2, "enabled"    # Z
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "orientationLock"    # Landroidx/compose/foundation/gestures/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 385
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 392
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 395
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 398
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 404
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    .line 433
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 446
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 381
    return-void
.end method

.method static final _canDrag$lambda$0(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerType;)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "it"    # Landroidx/compose/ui/input/pointer/PointerType;

    .line 404
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 380
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object v0
.end method

.method public static final synthetic access$getNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 380
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    return-wide v0
.end method

.method public static final synthetic access$processDragCancel(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 380
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragCancel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processDragStart(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "event"    # Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 380
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragStart(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processDragStop(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "event"    # Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 380
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDragStop(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "<set-?>"    # J

    .line 380
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    return-void
.end method

.method public static final synthetic access$startListeningForEvents(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 380
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    return-void
.end method

.method private final getAwaitDownState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;
    .locals 4

    .line 413
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;-><init>(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 1165
    .local v1, "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;
    const/4 v2, 0x0

    .line 413
    .local v2, "$i$a$-also-DragGestureNode$awaitDownState$1":I
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .end local v1    # "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;
    .end local v2    # "$i$a$-also-DragGestureNode$awaitDownState$1":I
    :cond_0
    return-object v0
.end method

.method private final getAwaitGesturePickupState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;
    .locals 8

    .line 428
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    if-nez v0, :cond_0

    .line 429
    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    .line 1165
    .local v0, "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;
    const/4 v2, 0x0

    .line 429
    .local v2, "$i$a$-also-DragGestureNode$awaitGesturePickupState$1":I
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .end local v0    # "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;
    .end local v2    # "$i$a$-also-DragGestureNode$awaitGesturePickupState$1":I
    :cond_0
    return-object v0
.end method

.method private final getAwaitTouchSlopState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;
    .locals 8

    .line 422
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    if-nez v0, :cond_0

    .line 423
    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    .line 1165
    .local v0, "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;
    const/4 v2, 0x0

    .line 423
    .local v2, "$i$a$-also-DragGestureNode$awaitTouchSlopState$1":I
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .end local v0    # "it":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;
    .end local v2    # "$i$a$-also-DragGestureNode$awaitTouchSlopState$1":I
    :cond_0
    return-object v0
.end method

.method private final getDraggingState()Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
    .locals 5

    .line 417
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 1165
    .local v1, "it":Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
    const/4 v2, 0x0

    .line 417
    .local v2, "$i$a$-also-DragGestureNode$draggingState$1":I
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .end local v1    # "it":Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
    .end local v2    # "$i$a$-also-DragGestureNode$draggingState$1":I
    :cond_0
    return-object v0
.end method

.method private final initializePointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    .locals 1

    .line 565
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    return-object v0
.end method

.method private final moveToAwaitDownState()V
    .locals 4

    .line 761
    nop

    .line 762
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getAwaitDownState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitDownState_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;
    const/4 v2, 0x0

    .line 763
    .local v2, "$i$a$-apply-DragGestureNode$moveToAwaitDownState$1":I
    sget-object v3, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->setAwaitTouchSlop(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;)V

    .line 764
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->setConsumedOnInitial(Z)V

    .line 765
    nop

    .line 762
    .end local v1    # "$this$moveToAwaitDownState_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;
    .end local v2    # "$i$a$-apply-DragGestureNode$moveToAwaitDownState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 761
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 766
    return-void
.end method

.method private final moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 9
    .param p1, "initialDown"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J
    .param p4, "touchSlopDetector"    # Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 773
    nop

    .line 774
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getAwaitGesturePickupState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;
    const/4 v2, 0x0

    .line 775
    .local v2, "$i$a$-apply-DragGestureNode$moveToAwaitGesturePickupState$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->setInitialDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 776
    invoke-virtual {v1, p2, p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->setPointerId-0FcD4WY(J)V

    .line 777
    nop

    .line 1165
    move-object v3, p4

    .local v3, "it":Landroidx/compose/foundation/gestures/TouchSlopDetector;
    const/4 v4, 0x0

    .line 777
    .local v4, "$i$a$-also-DragGestureNode$moveToAwaitGesturePickupState$1$1":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v3, v7, v8, v5, v6}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->reset-k-4lQ0M$default(Landroidx/compose/foundation/gestures/TouchSlopDetector;JILjava/lang/Object;)V

    .end local v3    # "it":Landroidx/compose/foundation/gestures/TouchSlopDetector;
    .end local v4    # "$i$a$-also-DragGestureNode$moveToAwaitGesturePickupState$1$1":I
    invoke-virtual {v1, p4}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->setTouchSlopDetector(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 778
    nop

    .line 774
    .end local v1    # "$this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;
    .end local v2    # "$i$a$-apply-DragGestureNode$moveToAwaitGesturePickupState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 773
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 779
    return-void
.end method

.method private final moveToAwaitTouchSlopState-aWI9W7U(Landroidx/compose/ui/input/pointer/PointerInputChange;JJZ)V
    .locals 10
    .param p1, "initialDown"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J
    .param p4, "$v$c$androidx-compose-ui-geometry-Offset$-initialTouchSlopPositionChange$0"    # J
    .param p6, "verifyConsumptionInFinalPass"    # Z

    .line 742
    nop

    .line 743
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getAwaitTouchSlopState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;
    const/4 v2, 0x0

    .line 744
    .local v2, "$i$a$-apply-DragGestureNode$moveToAwaitTouchSlopState$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setInitialDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 745
    invoke-virtual {v1, p2, p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .line 746
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-nez v3, :cond_0

    .line 747
    new-instance v4, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    goto :goto_0

    .line 749
    :cond_0
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->setOrientation(Landroidx/compose/foundation/gestures/Orientation;)V

    .line 750
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p4, p5}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->reset-k-4lQ0M(J)V

    .line 752
    :cond_2
    :goto_0
    move/from16 v3, p6

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .line 753
    nop

    .line 743
    .end local v1    # "$this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;
    .end local v2    # "$i$a$-apply-DragGestureNode$moveToAwaitTouchSlopState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 742
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 754
    return-void
.end method

.method static synthetic moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJZILjava/lang/Object;)V
    .locals 7

    .line 736
    if-nez p8, :cond_2

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 739
    sget-object p4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p4

    move-wide v4, p4

    goto :goto_0

    .line 736
    :cond_0
    move-wide v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x8

    if-eqz p4, :cond_1

    .line 740
    const/4 p6, 0x0

    move v6, p6

    goto :goto_1

    .line 736
    :cond_1
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitTouchSlopState-aWI9W7U(Landroidx/compose/ui/input/pointer/PointerInputChange;JJZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: moveToAwaitTouchSlopState-aWI9W7U"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final moveToDraggingState-0FcD4WY(J)V
    .locals 3
    .param p1, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J

    .line 757
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getDraggingState()Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    move-result-object v0

    .line 1165
    move-object v1, v0

    .local v1, "$this$moveToDraggingState_0FcD4WY_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
    const/4 v2, 0x0

    .line 757
    .local v2, "$i$a$-apply-DragGestureNode$moveToDraggingState$1":I
    invoke-virtual {v1, p1, p2}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->setPointerId-0FcD4WY(J)V

    .end local v1    # "$this$moveToDraggingState_0FcD4WY_u24lambda_u240":Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;
    .end local v2    # "$i$a$-apply-DragGestureNode$moveToDraggingState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/DragDetectionState;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 758
    return-void
.end method

.method private final processAwaitGesturePickup(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;)V
    .locals 17
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 949
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object/from16 v1, p2

    if-eq v1, v0, :cond_0

    return-void

    .line 950
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAll$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1188
    .local v2, "$i$f$fastAll":I
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1189
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_2

    .line 1190
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1191
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1188
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v12, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v13, 0x0

    .line 950
    .local v13, "$i$a$-fastAll-DragGestureNode$processAwaitGesturePickup$hasUnconsumedDrag$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v14

    .line 1188
    .end local v12    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v13    # "$i$a$-fastAll-DragGestureNode$processAwaitGesturePickup$hasUnconsumedDrag$1":I
    if-eqz v14, :cond_1

    move v0, v7

    goto :goto_1

    .line 1191
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_1
    nop

    .line 1189
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1193
    .end local v5    # "index$iv$iv":I
    :cond_2
    nop

    .line 1194
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v0, v8

    .line 950
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAll":I
    :goto_1
    nop

    .line 951
    .local v0, "hasUnconsumedDrag":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastAny$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1195
    .local v3, "$i$f$fastAny":I
    move-object v4, v2

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1196
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2
    if-ge v6, v9, :cond_4

    .line 1197
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1198
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1195
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v13, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v14, 0x0

    .line 951
    .local v14, "$i$a$-fastAny-DragGestureNode$processAwaitGesturePickup$hasDownPointers$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v13

    .line 1195
    .end local v13    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v14    # "$i$a$-fastAny-DragGestureNode$processAwaitGesturePickup$hasDownPointers$1":I
    if-eqz v13, :cond_3

    move v7, v8

    goto :goto_3

    .line 1198
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_3
    nop

    .line 1196
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1200
    .end local v6    # "index$iv$iv":I
    :cond_4
    nop

    .line 1201
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .line 951
    .end local v2    # "$this$fastAny$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastAny":I
    :goto_3
    nop

    .line 953
    .local v7, "hasDownPointers":Z
    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 955
    :cond_5
    if-eqz v0, :cond_8

    .line 959
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->getInitialDown()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 958
    move-wide v12, v2

    .line 964
    .local v12, "initialPositionChange":J
    nop

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->getInitialDown()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->getPointerId-J3iCeTQ()J

    move-result-wide v10

    .line 969
    nop

    .line 964
    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v16}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJZILjava/lang/Object;)V

    goto :goto_5

    .line 965
    :cond_6
    const/4 v2, 0x0

    .line 966
    .local v2, "$i$a$-requireNotNull-DragGestureNode$processAwaitGesturePickup$1":I
    nop

    .line 965
    .end local v2    # "$i$a$-requireNotNull-DragGestureNode$processAwaitGesturePickup$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "AwaitGesturePickup.initialDown was not initialized."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 954
    .end local v12    # "initialPositionChange":J
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 972
    :cond_8
    :goto_5
    return-void
.end method

.method private final processAwaitTouchSlop(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;)V
    .locals 20
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v1, v3, :cond_0

    return-void

    .line 840
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1166
    .local v4, "$i$f$fastFirstOrNull":I
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1167
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_2

    .line 1168
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1169
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1166
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v13, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v14, 0x0

    .line 840
    .local v14, "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$eventFromPointerId$1":I
    move-object/from16 v16, v10

    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .local v16, "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .local v17, "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$i$f$fastFirstOrNull":I
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v3

    invoke-static {v9, v10, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v3

    .line 1166
    .end local v13    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v14    # "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$eventFromPointerId$1":I
    if-eqz v3, :cond_1

    goto :goto_1

    .line 1169
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_1
    nop

    .line 1167
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_0

    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    .restart local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirstOrNull":I
    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 1171
    .end local v3    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirstOrNull":I
    .end local v7    # "index$iv$iv":I
    .restart local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastFirstOrNull":I
    nop

    .line 1172
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 840
    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    :goto_1
    move-object v3, v11

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 848
    .local v3, "eventFromPointerId":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v3, :cond_6

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1173
    .local v5, "$i$f$fastFirstOrNull":I
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1174
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2
    if-ge v8, v9, :cond_4

    .line 1175
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1176
    .restart local v10    # "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1173
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v13    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v14, 0x0

    .line 849
    .local v14, "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$dragEvent$otherDown$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v13

    .line 1173
    .end local v13    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v14    # "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$dragEvent$otherDown$1":I
    if-eqz v13, :cond_3

    goto :goto_3

    .line 1176
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_3
    nop

    .line 1174
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1178
    .end local v8    # "index$iv$iv":I
    :cond_4
    nop

    .line 1179
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 849
    .end local v4    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_3
    move-object v4, v11

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 850
    .local v4, "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v4, :cond_5

    .line 852
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 853
    return-void

    .line 856
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .line 858
    nop

    .end local v4    # "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_4

    .line 860
    :cond_6
    move-object v4, v3

    .line 848
    :goto_4
    nop

    .line 847
    nop

    .line 867
    .local v4, "dragEvent":Landroidx/compose/ui/input/pointer/PointerInputChange;
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const-string v6, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const/4 v7, 0x0

    const-string v8, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v1, v5, :cond_10

    .line 868
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_d

    .line 869
    invoke-static {v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    .local v5, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1180
    .local v9, "$i$f$fastFirstOrNull":I
    move-object v10, v5

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1181
    .local v11, "$i$f$fastForEach":I
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    move-object v13, v10

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    :goto_5
    if-ge v12, v13, :cond_8

    .line 1182
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1183
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v14

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1180
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v19, 0x0

    .line 871
    .local v19, "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$otherDown$1":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v18

    .line 1180
    .end local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$a$-fastFirstOrNull-DragGestureNode$processAwaitTouchSlop$otherDown$1":I
    if-eqz v18, :cond_7

    move-object/from16 v9, v16

    goto :goto_6

    .line 1183
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_7
    nop

    .line 1181
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1185
    .end local v12    # "index$iv$iv":I
    :cond_8
    nop

    .line 1186
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    const/4 v9, 0x0

    .line 871
    .end local v5    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastFirstOrNull":I
    :goto_6
    move-object v5, v9

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 872
    .local v5, "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v5, :cond_9

    .line 874
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    goto/16 :goto_8

    .line 877
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .end local v5    # "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto/16 :goto_8

    .line 882
    :cond_a
    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v5, v9}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v9

    invoke-static {v5, v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v5

    .line 881
    move v14, v5

    .line 886
    .local v14, "touchSlop":F
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireTouchSlopDetector()Landroidx/compose/foundation/gestures/TouchSlopDetector;

    move-result-object v9

    .line 887
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v12

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->addPositions-akrDWew(JJF)J

    move-result-wide v9

    .line 885
    nop

    .line 890
    .local v9, "postSlopOffset":J
    move-wide v11, v9

    .local v11, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v5, 0x0

    .line 1187
    .local v5, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v15, 0x7fffffff7fffffffL

    and-long/2addr v15, v11

    const-wide v17, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v13, v15, v17

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    move v5, v15

    goto :goto_7

    :cond_b
    move v5, v7

    .line 890
    .end local v5    # "$i$f$isSpecified-k-4lQ0M":I
    .end local v11    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    :goto_7
    if-eqz v5, :cond_c

    .line 891
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 892
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v5, v4, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 893
    invoke-direct {v0, v4, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 894
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v11

    invoke-direct {v0, v11, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToDraggingState-0FcD4WY(J)V

    goto :goto_8

    .line 896
    :cond_c
    invoke-virtual {v2, v15}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .end local v9    # "postSlopOffset":J
    .end local v14    # "touchSlop":F
    goto :goto_8

    .line 903
    :cond_d
    nop

    .line 904
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 907
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v9

    .line 908
    iget-object v11, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v11, :cond_e

    .line 903
    invoke-direct {v0, v5, v9, v10, v11}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_8

    .line 908
    :cond_e
    const/4 v5, 0x0

    .line 909
    .local v5, "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$2":I
    nop

    .line 908
    .end local v5    # "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$2":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 904
    :cond_f
    const/4 v5, 0x0

    .line 905
    .local v5, "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$1":I
    nop

    .line 904
    .end local v5    # "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    :cond_10
    :goto_8
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v1, v5, :cond_14

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getVerifyConsumptionInFinalPass()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 921
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 925
    nop

    .line 926
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 929
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v7

    .line 930
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v9, :cond_11

    .line 925
    invoke-direct {v0, v5, v7, v8, v9}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_9

    .line 930
    :cond_11
    const/4 v5, 0x0

    .line 931
    .local v5, "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$4":I
    nop

    .line 930
    .end local v5    # "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$4":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 926
    :cond_12
    const/4 v5, 0x0

    .line 927
    .local v5, "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$3":I
    nop

    .line 926
    .end local v5    # "$i$a$-requireNotNull-DragGestureNode$processAwaitTouchSlop$3":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 935
    :cond_13
    invoke-virtual {v2, v7}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .line 938
    :cond_14
    :goto_9
    return-void
.end method

.method private final processDragCancel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 665
    iget v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object v2, p0

    .local v2, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    const/4 v3, 0x0

    .local v3, "$i$a$-let-DragGestureNode$processDragCancel$2":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .end local v3    # "$i$a$-let-DragGestureNode$processDragCancel$2":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 666
    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v5, :cond_3

    .local v5, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v6, 0x0

    .line 667
    .local v6, "$i$a$-let-DragGestureNode$processDragCancel$2":I
    iget-object v7, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v7, :cond_2

    new-instance v8, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v8, v5}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v8, Landroidx/compose/foundation/interaction/Interaction;

    const/4 v9, 0x1

    iput v9, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    invoke-interface {v7, v8, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne v5, v2, :cond_1

    .line 665
    .end local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    return-object v2

    .line 667
    .restart local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :cond_1
    move-object v2, v3

    move v3, v6

    .end local v6    # "$i$a$-let-DragGestureNode$processDragCancel$2":I
    .restart local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .local v3, "$i$a$-let-DragGestureNode$processDragCancel$2":I
    :goto_1
    move v6, v3

    move-object v3, v2

    nop

    .line 668
    .end local v2    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .restart local v6    # "$i$a$-let-DragGestureNode$processDragCancel$2":I
    :cond_2
    iput-object v4, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 669
    nop

    .line 666
    .end local v6    # "$i$a$-let-DragGestureNode$processDragCancel$2":I
    nop

    .line 670
    :cond_3
    new-instance v2, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    sget-object v5, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v7, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 671
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processDragStart(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 647
    iget v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .local v2, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .local v3, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local v3    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .end local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :pswitch_1
    move-object p1, p0

    .restart local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    const/4 v3, 0x0

    .local v3, "$i$a$-let-DragGestureNode$processDragStart$2":I
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .local v4, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "$i$a$-let-DragGestureNode$processDragStart$2":I
    .end local v4    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .end local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    move-object v4, p1

    .line 648
    .restart local v4    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_2

    .local p1, "oldInteraction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v5, 0x0

    .line 649
    .local v5, "$i$a$-let-DragGestureNode$processDragStart$2":I
    iget-object v6, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_2

    new-instance v7, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v7, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v6, v7, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "oldInteraction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne p1, v2, :cond_1

    .line 647
    .end local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    return-object v2

    .line 649
    .restart local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :cond_1
    move-object p1, v3

    move v3, v5

    .end local v5    # "$i$a$-let-DragGestureNode$processDragStart$2":I
    .local v3, "$i$a$-let-DragGestureNode$processDragStart$2":I
    .local p1, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :goto_1
    move-object v3, p1

    nop

    .line 648
    .end local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :cond_2
    move-object p1, v3

    move-object v3, v4

    .line 651
    .end local v4    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .local v3, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
    .restart local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    new-instance v4, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {v4}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 652
    .local v4, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    iget-object v5, p1, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    invoke-interface {v5, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    .line 647
    .end local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    return-object v2

    .line 652
    .restart local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :cond_3
    move-object v2, v4

    .end local v4    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .restart local v2    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :goto_2
    move-object v4, v2

    .line 653
    .end local v2    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .restart local v4    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    :cond_4
    iput-object v4, p1, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 654
    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStarted-k-4lQ0M(J)V

    .line 655
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processDragStop(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 657
    iget v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    const/4 v2, 0x0

    .local v2, "$i$a$-let-DragGestureNode$processDragStop$2":I
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .local v3, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    .end local v3    # "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    .end local p1    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 658
    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .local p1, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    iget-object v4, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v4, :cond_3

    .local v4, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v5, 0x0

    .line 659
    .local v5, "$i$a$-let-DragGestureNode$processDragStop$2":I
    iget-object v6, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v6, :cond_2

    new-instance v7, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v7, v4}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    invoke-interface {v6, v7, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    if-ne v4, v2, :cond_1

    .line 657
    .end local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    return-object v2

    .line 659
    .restart local v3    # "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :cond_1
    move-object v2, v3

    move-object v3, p1

    move-object p1, v2

    move v2, v5

    .end local v5    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    .restart local v2    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    .local v3, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    .local p1, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    :goto_1
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    move v5, v2

    nop

    .line 660
    .end local v2    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    .local v3, "this":Landroidx/compose/foundation/gestures/DragGestureNode;
    .restart local v5    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    .local p1, "event":Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 661
    nop

    .line 658
    .end local v5    # "$i$a$-let-DragGestureNode$processDragStop$2":I
    nop

    .line 662
    :cond_3
    invoke-virtual {v3, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 663
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processDraggingState(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;)V
    .locals 17
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 979
    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object/from16 v2, p2

    if-eq v2, v1, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->getPointerId-J3iCeTQ()J

    move-result-wide v3

    .line 982
    .local v3, "pointer":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1202
    .local v5, "$i$f$fastFirstOrNull":I
    move-object v6, v1

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1203
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_2

    .line 1204
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1205
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1202
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v15, 0x0

    .line 982
    .local v15, "$i$a$-fastFirstOrNull-DragGestureNode$processDraggingState$dragEvent$1":I
    move-object/from16 v16, v11

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .local v16, "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    invoke-static {v10, v11, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v10

    .line 1202
    .end local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "$i$a$-fastFirstOrNull-DragGestureNode$processDraggingState$dragEvent$1":I
    if-eqz v10, :cond_1

    goto :goto_1

    .line 1205
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_1
    nop

    .line 1203
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1207
    .end local v8    # "index$iv$iv":I
    :cond_2
    nop

    .line 1208
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 982
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v12, :cond_3

    return-void

    .line 983
    .local v12, "dragEvent":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_3
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 984
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1209
    .restart local v5    # "$i$f$fastFirstOrNull":I
    move-object v6, v1

    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1210
    .restart local v7    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2
    if-ge v8, v9, :cond_5

    .line 1211
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1212
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1209
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v15, 0x0

    .line 984
    .local v15, "$i$a$-fastFirstOrNull-DragGestureNode$processDraggingState$otherDown$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v14

    .line 1209
    .end local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "$i$a$-fastFirstOrNull-DragGestureNode$processDraggingState$otherDown$1":I
    if-eqz v14, :cond_4

    move-object v10, v11

    goto :goto_3

    .line 1212
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_4
    nop

    .line 1210
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1214
    .end local v8    # "index$iv$iv":I
    :cond_5
    nop

    .line 1215
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 984
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_3
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 985
    .local v1, "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-nez v1, :cond_7

    .line 987
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 988
    invoke-direct {v0, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragStopped(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    goto :goto_4

    .line 990
    :cond_6
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragCancelled()V

    .line 992
    :goto_4
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    move-object/from16 v7, p3

    goto :goto_6

    .line 994
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v5

    move-object/from16 v7, p3

    invoke-virtual {v7, v5, v6}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->setPointerId-0FcD4WY(J)V

    .end local v1    # "otherDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    goto :goto_6

    .line 997
    :cond_8
    move-object/from16 v7, p3

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 998
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragCancelled()V

    goto :goto_6

    .line 1000
    :cond_9
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v5

    .line 1006
    .local v5, "positionChange":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v1

    .line 1007
    .local v1, "motionChange":F
    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_b

    .line 1008
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v8

    .line 1009
    .local v8, "positionChange":J
    invoke-direct {v0, v12, v8, v9}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 1010
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1014
    .end local v1    # "motionChange":F
    .end local v5    # "positionChange":J
    .end local v8    # "positionChange":J
    :cond_b
    :goto_6
    return-void
.end method

.method private final processInitialDownState(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;)V
    .locals 10
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 787
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 788
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->isChangedToDown$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 790
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 792
    .local v2, "firstDown":Landroidx/compose/ui/input/pointer/PointerInputChange;
    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->getAwaitTouchSlop()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 793
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 794
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startDragImmediately()Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    sget-object v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_0

    .line 797
    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_0

    .line 800
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->getAwaitTouchSlop()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    move-result-object v0

    .line 792
    :goto_0
    nop

    .line 791
    nop

    .line 804
    .local v0, "awaitTouchSlop":Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->setAwaitTouchSlop(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;)V

    .line 806
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v3, :cond_4

    .line 808
    sget-object v3, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v0, v3, :cond_4

    .line 809
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 813
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->setConsumedOnInitial(Z)V

    .line 817
    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v1, :cond_6

    .line 823
    sget-object v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v0, v1, :cond_5

    .line 824
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJZILjava/lang/Object;)V

    goto :goto_1

    .line 825
    :cond_5
    move-object v1, p0

    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->getConsumedOnInitial()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 826
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-direct {p0, v2, v2, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 827
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 828
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToDraggingState-0FcD4WY(J)V

    goto :goto_1

    .line 817
    :cond_6
    move-object v1, p0

    .line 831
    :cond_7
    :goto_1
    return-void
.end method

.method private final processRawPointerEvent(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 2
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 720
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    if-eqz v0, :cond_4

    .line 719
    .local v0, "state":Landroidx/compose/foundation/gestures/DragDetectionState;
    nop

    .line 722
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processInitialDownState(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;)V

    goto :goto_0

    .line 723
    :cond_0
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processAwaitTouchSlop(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;)V

    goto :goto_0

    .line 724
    :cond_1
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    if-eqz v1, :cond_2

    .line 725
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processAwaitGesturePickup(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;)V

    goto :goto_0

    .line 726
    :cond_2
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->processDraggingState(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;)V

    .line 728
    .end local v0    # "state":Landroidx/compose/foundation/gestures/DragDetectionState;
    :goto_0
    return-void

    .line 719
    .restart local v0    # "state":Landroidx/compose/foundation/gestures/DragDetectionState;
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 1165
    .end local v0    # "state":Landroidx/compose/foundation/gestures/DragDetectionState;
    :cond_4
    const/4 v0, 0x0

    .line 720
    .local v0, "$i$a$-requireNotNull-DragGestureNode$processRawPointerEvent$state$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-DragGestureNode$processRawPointerEvent$state$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "currentDragState should not be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireChannel()Lkotlinx/coroutines/channels/Channel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    if-eqz v0, :cond_0

    return-object v0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, "$i$a$-requireNotNull-DragGestureNode$requireChannel$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-DragGestureNode$requireChannel$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Events channel not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireTouchSlopDetector()Landroidx/compose/foundation/gestures/TouchSlopDetector;
    .locals 2

    .line 480
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v0, :cond_0

    return-object v0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 480
    .local v0, "$i$a$-requireNotNull-DragGestureNode$requireTouchSlopDetector$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-DragGestureNode$requireTouchSlopDetector$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Touch slop detector not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 2

    .line 474
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-eqz v0, :cond_0

    return-object v0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 474
    .local v0, "$i$a$-requireNotNull-DragGestureNode$requireVelocityTracker$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-DragGestureNode$requireVelocityTracker$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Velocity Tracker not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final resetDragDetectionState()V
    .locals 1

    .line 731
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 732
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragCancelled()V

    .line 733
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 734
    return-void
.end method

.method private final sendDragCancelled()V
    .locals 2

    .line 1066
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    return-void
.end method

.method private final sendDragEvent-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 6
    .param p1, "change"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-dragAmount$0"    # J

    .line 1041
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    .line 1043
    .local v0, "currentPositionOnScreen":J
    nop

    .line 1044
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 1048
    .local v2, "delta":J
    iget-wide v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 1050
    .end local v2    # "delta":J
    :cond_0
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 1051
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v2

    iget-wide v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    invoke-static {v2, p1, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange-0AR0LA0(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 1052
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p2, p3, v4, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    return-void
.end method

.method private final sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 6
    .param p1, "down"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "slopTriggerChange"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-overSlopOffset$0"    # J

    .line 1021
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 1022
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 1023
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 1027
    .local v0, "dragStartedOffset":J
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 1028
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerType;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerType;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1030
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    if-nez v2, :cond_1

    .line 1031
    const v2, 0x7fffffff

    const/4 v4, 0x6

    invoke-static {v2, v3, v3, v4, v3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 1033
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    .line 1035
    :cond_2
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 1036
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    invoke-direct {v4, v0, v1, v3}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :cond_3
    return-void
.end method

.method private final sendDragStopped(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 9
    .param p1, "change"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1056
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 1057
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v0

    .line 1059
    .local v0, "maximumVelocity":F
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v1

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v1

    .line 1058
    nop

    .line 1060
    .local v1, "velocity":J
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 1061
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v8, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iput-boolean v8, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 1063
    return-void
.end method

.method private final startListeningForEvents()V
    .locals 8

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 486
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 487
    const v0, 0x7fffffff

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 519
    return-void
.end method

.method public static synthetic update$default(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZILjava/lang/Object;)V
    .locals 0

    .line 680
    if-nez p7, :cond_5

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 681
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 680
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 682
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 680
    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 683
    iget-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 680
    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 684
    iget-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 680
    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 685
    const/4 p5, 0x0

    move p7, p5

    goto :goto_0

    .line 680
    :cond_4
    move p7, p5

    :goto_0
    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Landroidx/compose/foundation/gestures/DragGestureNode;->update(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: update"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final disposeInteractionSource()V
    .locals 4

    .line 674
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    .local v0, "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    const/4 v1, 0x0

    .line 675
    .local v1, "$i$a$-let-DragGestureNode$disposeInteractionSource$1":I
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_0

    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v2, v3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 676
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 677
    nop

    .line 674
    .end local v0    # "interaction":Landroidx/compose/foundation/interaction/DragInteraction$Start;
    .end local v1    # "$i$a$-let-DragGestureNode$disposeInteractionSource$1":I
    nop

    .line 678
    :cond_1
    return-void
.end method

.method public abstract drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final getCanDrag()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final getEnabled()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    return v0
.end method

.method protected final getInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 398
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method

.method public final isListeningForEvents$foundation()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    return v0
.end method

.method public final isListeningForPointerInputEvents$foundation()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    return v0
.end method

.method public onCancelIndirectPointerInput()V
    .locals 1

    .line 560
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->resetDragDetectionState()V

    .line 561
    :cond_0
    return-void
.end method

.method public onCancelPointerInput()V
    .locals 1

    .line 641
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onCancelPointerInput()V

    .line 642
    :cond_0
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNonSuspendingPointerInputInDraggableEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->resetDragDetectionState()V

    .line 644
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 645
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 525
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    .line 526
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 527
    return-void
.end method

.method public final onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V
    .locals 1
    .param p1, "event"    # Landroidx/compose/foundation/gestures/DragEvent;

    .line 1070
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 1072
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    .line 1074
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    return-void
.end method

.method public abstract onDragStarted-k-4lQ0M(J)V
.end method

.method public abstract onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
.end method

.method public onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 1
    .param p1, "event"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 551
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 555
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->processIndirectPointerInputEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 557
    :cond_1
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 2
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 536
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNonSuspendingPointerInputInDraggableEnabled:Z

    .line 543
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 536
    if-eqz v0, :cond_1

    .line 537
    if-eqz v1, :cond_3

    .line 539
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getAwaitDownState()Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/DragDetectionState;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 540
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->processRawPointerEvent(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    goto :goto_0

    .line 543
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-nez v0, :cond_2

    .line 544
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->initializePointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 546
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 548
    :cond_3
    :goto_0
    return-void
.end method

.method public final setListeningForEvents$foundation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 407
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    return-void
.end method

.method public final setListeningForPointerInputEvents$foundation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 408
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    return-void
.end method

.method public final setOrientationLock(Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 385
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public abstract startDragImmediately()Z
.end method

.method public final update(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 4
    .param p1, "canDrag"    # Lkotlin/jvm/functions/Function1;
    .param p2, "enabled"    # Z
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "orientationLock"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p5, "shouldResetPointerInputHandling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z)V"
        }
    .end annotation

    .line 687
    move v0, p5

    .line 689
    .local v0, "resetPointerInputHandling":Z
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 690
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    if-eq v1, p2, :cond_2

    .line 691
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 692
    if-nez p2, :cond_1

    .line 693
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    .line 694
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v1, :cond_0

    .line 1165
    .local v1, "it":Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    const/4 v2, 0x0

    .line 694
    .local v2, "$i$a$-let-DragGestureNode$update$1":I
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 695
    .end local v1    # "it":Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
    .end local v2    # "$i$a$-let-DragGestureNode$update$1":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 696
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 698
    :cond_1
    const/4 v0, 0x1

    .line 700
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 701
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource()V

    .line 702
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 705
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, p4, :cond_4

    .line 706
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 707
    const/4 v0, 0x1

    .line 710
    :cond_4
    if-eqz v0, :cond_7

    .line 711
    sget-boolean v1, Landroidx/compose/foundation/ComposeFoundationFlags;->isNonSuspendingPointerInputInDraggableEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    if-eqz v1, :cond_5

    .line 712
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->resetDragDetectionState()V

    .line 713
    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->resetDragDetectionState()V

    .line 714
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    .line 716
    :cond_7
    return-void
.end method
