.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;
.super Ljava/lang/Object;
.source "IndirectPointerInputDragCycleDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;,
        Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndirectPointerInputDragCycleDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,784:1\n1#2:785\n88#3:786\n35#3,5:787\n89#3:792\n118#3:793\n35#3,5:794\n119#3:799\n118#3:800\n35#3,5:801\n119#3:806\n118#3:807\n35#3,5:808\n119#3:813\n88#3:815\n35#3,5:816\n89#3:821\n103#3:822\n35#3,5:823\n104#3:828\n118#3:829\n35#3,5:830\n119#3:835\n118#3:836\n35#3,5:837\n119#3:842\n273#4:814\n*S KotlinDebug\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector\n*L\n172#1:786\n172#1:787,5\n172#1:792\n234#1:793\n234#1:794,5\n234#1:799\n243#1:800\n243#1:801,5\n243#1:806\n265#1:807\n265#1:808,5\n265#1:813\n363#1:815\n363#1:816,5\n363#1:821\n364#1:822\n364#1:823,5\n364#1:828\n405#1:829\n405#1:830,5\n405#1:835\n407#1:836\n407#1:837,5\n407#1:842\n294#1:814\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0001\u0018\u00002\u00020\u0001:\u0001YB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010*\u001a\u00020$H\u0002J\u0008\u0010+\u001a\u00020\u001fH\u0002J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u00020-J3\u00103\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u00020!2\u0008\u0008\u0002\u00109\u001a\u00020:H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020-2\u0006\u00106\u001a\u000207H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0008\u0010@\u001a\u00020-H\u0002J\'\u0010A\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u0010#\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ \u0010D\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010E\u001a\u00020\tH\u0002J \u0010F\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010E\u001a\u00020\u0013H\u0002J \u0010G\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010E\u001a\u00020\u0018H\u0002J \u0010H\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010E\u001a\u00020\u000eH\u0002J1\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u0002052\u0006\u0010K\u001a\u0002052\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ)\u0010Q\u001a\u00020-2\u0006\u0010R\u001a\u0002052\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010S\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008T\u0010UJ\u001f\u0010V\u001a\u00020-2\u0006\u0010R\u001a\u0002052\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0002\u00a2\u0006\u0002\u0008WJ\u0008\u0010X\u001a\u00020-H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\"\u00a8\u0006Z"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;",
        "",
        "node",
        "Landroidx/compose/foundation/gestures/DragGestureNode;",
        "<init>",
        "(Landroidx/compose/foundation/gestures/DragGestureNode;)V",
        "getNode",
        "()Landroidx/compose/foundation/gestures/DragGestureNode;",
        "_awaitDownState",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;",
        "awaitDownState",
        "getAwaitDownState",
        "()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;",
        "_draggingState",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;",
        "draggingState",
        "getDraggingState",
        "()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;",
        "_awaitTouchSlopState",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;",
        "awaitTouchSlopState",
        "getAwaitTouchSlopState",
        "()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;",
        "_awaitGesturePickupState",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;",
        "awaitGesturePickupState",
        "getAwaitGesturePickupState",
        "()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;",
        "currentDragState",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "previousPositionOnScreen",
        "Landroidx/compose/ui/geometry/Offset;",
        "J",
        "touchSlopDetector",
        "Landroidx/compose/foundation/gestures/TouchSlopDetector;",
        "touchSmooth",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;",
        "offsetSmoother",
        "Landroidx/compose/foundation/gestures/OffsetSmoother;",
        "nodeOffset",
        "requireTouchSlopDetector",
        "requireVelocityTracker",
        "processIndirectPointerInputEvent",
        "",
        "indirectPointerInputEvent",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "resetDragDetectionState",
        "moveToAwaitTouchSlopState",
        "initialDown",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "initialTouchSlopPositionChange",
        "verifyConsumptionInFinalPass",
        "",
        "moveToAwaitTouchSlopState-aWI9W7U",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZ)V",
        "moveToDraggingState",
        "moveToDraggingState-0FcD4WY",
        "(J)V",
        "moveToAwaitDownState",
        "moveToAwaitGesturePickupState",
        "moveToAwaitGesturePickupState-rnUCldI",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V",
        "processInitialDownState",
        "state",
        "processAwaitTouchSlop",
        "processAwaitGesturePickup",
        "processDraggingState",
        "sendDragStart",
        "down",
        "slopTriggerChange",
        "primaryDirectionalMotionAxis",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;",
        "overSlopOffset",
        "sendDragStart-3f7A7Is",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V",
        "sendDragEvent",
        "change",
        "dragAmount",
        "sendDragEvent-Eu1f8Dk",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V",
        "sendDragStopped",
        "sendDragStopped-k92h6UU",
        "sendDragCancelled",
        "DragDetectionState",
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
.field private _awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

.field private _awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

.field private _awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

.field private _draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

.field private currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

.field private final node:Landroidx/compose/foundation/gestures/DragGestureNode;

.field private nodeOffset:J

.field private final offsetSmoother:Landroidx/compose/foundation/gestures/OffsetSmoother;

.field private previousPositionOnScreen:J

.field private touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

.field private final touchSmooth:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

.field private velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 70
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 72
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 73
    new-instance v0, Landroidx/compose/foundation/gestures/OffsetSmoother;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/OffsetSmoother;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 84
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 46
    return-void
.end method

.method private final getAwaitDownState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    .locals 4

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;-><init>(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 785
    .local v1, "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitDownState$1":I
    iput-object v1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .end local v1    # "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    .end local v2    # "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitDownState$1":I
    :cond_0
    return-object v0
.end method

.method private final getAwaitGesturePickupState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    .locals 8

    .line 65
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    if-nez v0, :cond_0

    .line 66
    new-instance v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;-><init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    .line 785
    .local v0, "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitGesturePickupState$1":I
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .end local v0    # "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    .end local v2    # "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitGesturePickupState$1":I
    :cond_0
    return-object v0
.end method

.method private final getAwaitTouchSlopState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    .locals 8

    .line 59
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    if-nez v0, :cond_0

    .line 60
    new-instance v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;-><init>(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    .line 785
    .local v0, "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitTouchSlopState$1":I
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .end local v0    # "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    .end local v2    # "$i$a$-also-IndirectPointerInputDragCycleDetector$awaitTouchSlopState$1":I
    :cond_0
    return-object v0
.end method

.method private final getDraggingState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
    .locals 5

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 785
    .local v1, "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-also-IndirectPointerInputDragCycleDetector$draggingState$1":I
    iput-object v1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .end local v1    # "it":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
    .end local v2    # "$i$a$-also-IndirectPointerInputDragCycleDetector$draggingState$1":I
    :cond_0
    return-object v0
.end method

.method private final moveToAwaitDownState()V
    .locals 4

    .line 145
    nop

    .line 146
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->getAwaitDownState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitDownState_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitDownState$1":I
    sget-object v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->setAwaitTouchSlop(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;)V

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->setConsumedOnInitial(Z)V

    .line 149
    nop

    .line 146
    .end local v1    # "$this$moveToAwaitDownState_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;
    .end local v2    # "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitDownState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 145
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 150
    return-void
.end method

.method private final moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 9
    .param p1, "initialDown"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J
    .param p4, "touchSlopDetector"    # Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 157
    nop

    .line 158
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->getAwaitGesturePickupState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    const/4 v2, 0x0

    .line 159
    .local v2, "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitGesturePickupState$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->setInitialDown(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 160
    invoke-virtual {v1, p2, p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->setPointerId-0FcD4WY(J)V

    .line 161
    nop

    .line 785
    move-object v3, p4

    .local v3, "it":Landroidx/compose/foundation/gestures/TouchSlopDetector;
    const/4 v4, 0x0

    .line 161
    .local v4, "$i$a$-also-IndirectPointerInputDragCycleDetector$moveToAwaitGesturePickupState$1$1":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v3, v7, v8, v5, v6}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->reset-k-4lQ0M$default(Landroidx/compose/foundation/gestures/TouchSlopDetector;JILjava/lang/Object;)V

    .end local v3    # "it":Landroidx/compose/foundation/gestures/TouchSlopDetector;
    .end local v4    # "$i$a$-also-IndirectPointerInputDragCycleDetector$moveToAwaitGesturePickupState$1$1":I
    invoke-virtual {v1, p4}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->setTouchSlopDetector(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 162
    nop

    .line 158
    .end local v1    # "$this$moveToAwaitGesturePickupState_rnUCldI_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;
    .end local v2    # "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitGesturePickupState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 157
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 163
    return-void
.end method

.method private final moveToAwaitTouchSlopState-aWI9W7U(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZ)V
    .locals 10
    .param p1, "initialDown"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J
    .param p4, "$v$c$androidx-compose-ui-geometry-Offset$-initialTouchSlopPositionChange$0"    # J
    .param p6, "verifyConsumptionInFinalPass"    # Z

    .line 126
    nop

    .line 127
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->getAwaitTouchSlopState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitTouchSlopState$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setInitialDown(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 129
    invoke-virtual {v1, p2, p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .line 130
    iget-object v3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-nez v3, :cond_0

    .line 131
    new-instance v4, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->setOrientation(Landroidx/compose/foundation/gestures/Orientation;)V

    .line 134
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p4, p5}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->reset-k-4lQ0M(J)V

    .line 136
    :cond_2
    :goto_0
    move/from16 v3, p6

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .line 137
    nop

    .line 127
    .end local v1    # "$this$moveToAwaitTouchSlopState_aWI9W7U_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;
    .end local v2    # "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToAwaitTouchSlopState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 126
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 138
    return-void
.end method

.method static synthetic moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZILjava/lang/Object;)V
    .locals 7

    .line 120
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 123
    sget-object p4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p4

    move-wide v4, p4

    goto :goto_0

    .line 120
    :cond_0
    move-wide v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x8

    if-eqz p4, :cond_1

    .line 124
    const/4 p6, 0x0

    move v6, p6

    goto :goto_1

    .line 120
    :cond_1
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZ)V

    return-void
.end method

.method private final moveToDraggingState-0FcD4WY(J)V
    .locals 3
    .param p1, "$v$c$androidx-compose-ui-input-pointer-PointerId$-pointerId$0"    # J

    .line 141
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->getDraggingState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    move-result-object v0

    .line 785
    move-object v1, v0

    .local v1, "$this$moveToDraggingState_0FcD4WY_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToDraggingState$1":I
    invoke-virtual {v1, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->setPointerId-0FcD4WY(J)V

    .end local v1    # "$this$moveToDraggingState_0FcD4WY_u24lambda_u240":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;
    .end local v2    # "$i$a$-apply-IndirectPointerInputDragCycleDetector$moveToDraggingState$1":I
    check-cast v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 142
    return-void
.end method

.method private final processAwaitGesturePickup(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;)V
    .locals 16
    .param p1, "indirectPointerInputEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 362
    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object/from16 v9, p2

    if-eq v9, v1, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAll$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 815
    .local v2, "$i$f$fastAll":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 816
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

    .line 817
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 818
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 815
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v13, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v14, 0x0

    .line 363
    .local v14, "$i$a$-fastAll-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$hasUnconsumedDrag$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v15

    .line 815
    .end local v13    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v14    # "$i$a$-fastAll-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$hasUnconsumedDrag$1":I
    if-eqz v15, :cond_1

    move v1, v7

    goto :goto_1

    .line 818
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_1
    nop

    .line 816
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 820
    .end local v5    # "index$iv$iv":I
    :cond_2
    nop

    .line 821
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v1, v8

    .line 363
    .end local v1    # "$this$fastAll$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAll":I
    :goto_1
    move v10, v1

    .line 364
    .local v10, "hasUnconsumedDrag":Z
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 822
    .local v2, "$i$f$fastAny":I
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 823
    .restart local v4    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_4

    .line 824
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 825
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 822
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v15, 0x0

    .line 364
    .local v15, "$i$a$-fastAny-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$hasDownPointers$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v14

    .line 822
    .end local v14    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v15    # "$i$a$-fastAny-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$hasDownPointers$1":I
    if-eqz v14, :cond_3

    move v7, v8

    goto :goto_3

    .line 825
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_3
    nop

    .line 823
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 827
    .end local v5    # "index$iv$iv":I
    :cond_4
    nop

    .line 828
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    nop

    .line 364
    .end local v1    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_3
    move v11, v7

    .line 366
    .local v11, "hasDownPointers":Z
    if-eqz v11, :cond_7

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 368
    :cond_5
    if-eqz v10, :cond_8

    .line 372
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 375
    iget-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v2

    .line 376
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v3

    .line 374
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v1

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 379
    iget-object v4, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v4

    .line 380
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v5

    .line 378
    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v3

    .line 372
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v4

    .line 371
    nop

    .line 386
    .local v4, "initialPositionChange":J
    nop

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->getPointerId-J3iCeTQ()J

    move-result-wide v2

    .line 391
    nop

    .line 386
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZILjava/lang/Object;)V

    goto :goto_5

    .line 387
    :cond_6
    const/4 v0, 0x0

    .line 388
    .local v0, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$1":I
    nop

    .line 387
    .end local v0    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitGesturePickup$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AwaitGesturePickup.initialDown was not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    .end local v4    # "initialPositionChange":J
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 394
    :cond_8
    :goto_5
    return-void
.end method

.method private final processAwaitTouchSlop(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;)V
    .locals 20
    .param p1, "indirectPointerInputEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v6, v1, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 793
    .local v2, "$i$f$fastFirstOrNull":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 794
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v5, v8, :cond_2

    .line 795
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 796
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 793
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v13, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v14, 0x0

    .line 234
    .local v14, "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$eventFromPointerId$1":I
    move-object/from16 v16, v10

    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .local v16, "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v13}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v9

    move-object/from16 v17, v1

    move/from16 v18, v2

    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .local v17, "$this$fastFirstOrNull$iv":Ljava/util/List;
    .local v18, "$i$f$fastFirstOrNull":I
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v1

    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v1

    .line 793
    .end local v13    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v14    # "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$eventFromPointerId$1":I
    if-eqz v1, :cond_1

    goto :goto_1

    .line 796
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_1
    nop

    .line 794
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_0

    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v2    # "$i$f$fastFirstOrNull":I
    :cond_2
    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 798
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    .end local v5    # "index$iv$iv":I
    .restart local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastFirstOrNull":I
    nop

    .line 799
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 234
    .end local v17    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 233
    nop

    .line 242
    .local v11, "eventFromPointerId":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    if-nez v11, :cond_6

    .line 243
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 800
    .restart local v2    # "$i$f$fastFirstOrNull":I
    move-object v3, v1

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 801
    .restart local v4    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_2
    if-ge v5, v8, :cond_4

    .line 802
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 803
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 800
    .restart local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .restart local v13    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v14, 0x0

    .line 243
    .local v14, "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$dragEvent$otherDown$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v13

    .line 800
    .end local v13    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v14    # "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$dragEvent$otherDown$1":I
    if-eqz v13, :cond_3

    goto :goto_3

    .line 803
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_3
    nop

    .line 801
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 805
    .end local v5    # "index$iv$iv":I
    :cond_4
    nop

    .line 806
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 243
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_3
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 244
    .local v1, "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    if-nez v1, :cond_5

    .line 246
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 247
    return-void

    .line 250
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .line 252
    move-object v2, v1

    .end local v1    # "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    goto :goto_4

    .line 254
    :cond_6
    move-object v2, v11

    .line 242
    :goto_4
    nop

    .line 241
    nop

    .line 261
    .local v2, "dragEvent":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const-string v8, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const/4 v9, 0x0

    const-string v10, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v6, v1, :cond_10

    .line 262
    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 263
    invoke-static {v2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 265
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 807
    .local v3, "$i$f$fastFirstOrNull":I
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 808
    .local v5, "$i$f$fastForEach":I
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    move-object v13, v4

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    :goto_5
    if-ge v12, v13, :cond_8

    .line 809
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 810
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v14

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 807
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/16 v19, 0x0

    .line 265
    .local v19, "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$otherDown$1":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v18

    .line 807
    .end local v18    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v19    # "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$otherDown$1":I
    if-eqz v18, :cond_7

    move-object/from16 v15, v16

    goto :goto_6

    .line 810
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_7
    nop

    .line 808
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 812
    .end local v12    # "index$iv$iv":I
    :cond_8
    nop

    .line 813
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    const/4 v15, 0x0

    .line 265
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFirstOrNull":I
    :goto_6
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 266
    .local v1, "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    if-nez v1, :cond_9

    .line 268
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    goto/16 :goto_8

    .line 271
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setPointerId-0FcD4WY(J)V

    .end local v1    # "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    goto/16 :goto_8

    .line 276
    :cond_a
    iget-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v1

    .line 275
    move/from16 v17, v1

    .line 280
    .local v17, "touchSlop":F
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireTouchSlopDetector()Landroidx/compose/foundation/gestures/TouchSlopDetector;

    move-result-object v12

    .line 282
    nop

    .line 283
    iget-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    .line 284
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v3

    .line 282
    invoke-static {v2, v1, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v13

    .line 286
    nop

    .line 287
    iget-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    .line 288
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v3

    .line 286
    invoke-static {v2, v1, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$primaryAxisPreviousPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v15

    .line 290
    nop

    .line 281
    invoke-virtual/range {v12 .. v17}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->addPositions-akrDWew(JJF)J

    move-result-wide v4

    .line 279
    nop

    .line 294
    .local v4, "postSlopOffset":J
    move-wide v12, v4

    .local v12, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v1, 0x0

    .line 814
    .local v1, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v14, 0x7fffffff7fffffffL

    and-long/2addr v14, v12

    const-wide v18, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v14, v18

    const/4 v14, 0x1

    if-eqz v3, :cond_b

    move v1, v14

    goto :goto_7

    :cond_b
    move v1, v9

    .line 294
    .end local v1    # "$i$f$isSpecified-k-4lQ0M":I
    .end local v12    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    :goto_7
    if-eqz v1, :cond_c

    .line 295
    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    .line 296
    nop

    .line 297
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 298
    nop

    .line 299
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v3

    .line 300
    nop

    .line 296
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 302
    nop

    .line 303
    nop

    .line 304
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v1

    .line 305
    nop

    .line 302
    invoke-direct {v0, v2, v1, v4, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 307
    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v12

    invoke-direct {v0, v12, v13}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToDraggingState-0FcD4WY(J)V

    goto :goto_8

    .line 309
    :cond_c
    invoke-virtual {v7, v14}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .end local v4    # "postSlopOffset":J
    .end local v17    # "touchSlop":F
    goto :goto_8

    .line 316
    :cond_d
    nop

    .line 317
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 320
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v3

    .line 321
    iget-object v5, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v5, :cond_e

    .line 316
    invoke-direct {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_8

    .line 321
    :cond_e
    const/4 v1, 0x0

    .line 322
    .local v1, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$2":I
    nop

    .line 321
    .end local v1    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_f
    const/4 v1, 0x0

    .line 318
    .local v1, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$1":I
    nop

    .line 317
    .end local v1    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_10
    :goto_8
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v6, v1, :cond_14

    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getVerifyConsumptionInFinalPass()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 334
    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 338
    nop

    .line 339
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getInitialDown()Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 342
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->getPointerId-J3iCeTQ()J

    move-result-wide v3

    .line 343
    iget-object v5, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v5, :cond_11

    .line 338
    invoke-direct {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_9

    .line 343
    :cond_11
    const/4 v1, 0x0

    .line 344
    .local v1, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$4":I
    nop

    .line 343
    .end local v1    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_12
    const/4 v1, 0x0

    .line 340
    .local v1, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$3":I
    nop

    .line 339
    .end local v1    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processAwaitTouchSlop$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_13
    invoke-virtual {v7, v9}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->setVerifyConsumptionInFinalPass(Z)V

    .line 351
    :cond_14
    :goto_9
    return-void
.end method

.method private final processDraggingState(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;)V
    .locals 17
    .param p1, "indirectPointerInputEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 401
    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object/from16 v2, p2

    if-eq v2, v1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->getPointerId-J3iCeTQ()J

    move-result-wide v3

    .line 405
    .local v3, "pointer":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 829
    .local v5, "$i$f$fastFirstOrNull":I
    move-object v6, v1

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 830
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_2

    .line 831
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 832
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 829
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v14, v12

    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v15, 0x0

    .line 405
    .local v15, "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processDraggingState$dragEvent$1":I
    move-object/from16 v16, v11

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .local v16, "item$iv$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    invoke-static {v10, v11, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v10

    .line 829
    .end local v14    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v15    # "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processDraggingState$dragEvent$1":I
    if-eqz v10, :cond_1

    goto :goto_1

    .line 832
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_1
    nop

    .line 830
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 834
    .end local v8    # "index$iv$iv":I
    :cond_2
    nop

    .line 835
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v12, 0x0

    .line 405
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v12, :cond_3

    return-void

    .line 404
    :cond_3
    nop

    .line 406
    .local v12, "dragEvent":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    invoke-static {v12}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 407
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 836
    .restart local v5    # "$i$f$fastFirstOrNull":I
    move-object v6, v1

    .restart local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 837
    .restart local v7    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_2
    if-ge v8, v9, :cond_5

    .line 838
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 839
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 836
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .restart local v14    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v15, 0x0

    .line 407
    .local v15, "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processDraggingState$otherDown$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v14

    .line 836
    .end local v14    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v15    # "$i$a$-fastFirstOrNull-IndirectPointerInputDragCycleDetector$processDraggingState$otherDown$1":I
    if-eqz v14, :cond_4

    move-object v10, v11

    goto :goto_3

    .line 839
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_4
    nop

    .line 837
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 841
    .end local v8    # "index$iv$iv":I
    :cond_5
    nop

    .line 842
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v10, 0x0

    .line 407
    .end local v1    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFirstOrNull":I
    :goto_3
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 408
    .local v1, "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    if-nez v1, :cond_7

    .line 410
    invoke-virtual {v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v12}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 411
    nop

    .line 412
    nop

    .line 413
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v5

    .line 411
    invoke-direct {v0, v12, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStopped-k92h6UU(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)V

    goto :goto_4

    .line 416
    :cond_6
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragCancelled()V

    .line 418
    :goto_4
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    move-object/from16 v7, p3

    goto :goto_6

    .line 420
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v5

    move-object/from16 v7, p3

    invoke-virtual {v7, v5, v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->setPointerId-0FcD4WY(J)V

    .end local v1    # "otherDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    goto :goto_6

    .line 423
    :cond_8
    move-object/from16 v7, p3

    invoke-virtual {v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 424
    invoke-direct {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragCancelled()V

    goto :goto_6

    .line 427
    :cond_9
    nop

    .line 428
    iget-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    .line 429
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v5

    invoke-static {v5}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v5

    .line 427
    invoke-static {v12, v1, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$positionChangeIgnoreConsumed-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v5

    .line 426
    nop

    .line 436
    .local v5, "positionChange":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v1

    .line 437
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

    .line 439
    nop

    .line 440
    iget-object v8, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v8}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v8

    .line 441
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v9

    invoke-static {v9}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v9

    .line 439
    invoke-static {v12, v8, v9}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$positionChange-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v8

    .line 438
    nop

    .line 443
    .local v8, "positionChange":J
    nop

    .line 444
    nop

    .line 445
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v10

    invoke-static {v10}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v10

    .line 446
    nop

    .line 443
    invoke-direct {v0, v12, v10, v8, v9}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 448
    invoke-virtual {v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    .line 452
    .end local v1    # "motionChange":F
    .end local v5    # "positionChange":J
    .end local v8    # "positionChange":J
    :cond_b
    :goto_6
    return-void
.end method

.method private final processInitialDownState(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;)V
    .locals 15
    .param p1, "indirectPointerInputEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "state"    # Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 171
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAll$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 786
    .local v2, "$i$f$fastAll":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 787
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 788
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 789
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v8

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 786
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v13, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v14, 0x0

    .line 172
    .local v14, "$i$a$-fastAll-IndirectPointerInputDragCycleDetector$processInitialDownState$1":I
    invoke-static {v13}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v13

    .line 786
    .end local v13    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v14    # "$i$a$-fastAll-IndirectPointerInputDragCycleDetector$processInitialDownState$1":I
    if-nez v13, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 789
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_1
    nop

    .line 787
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 791
    .end local v5    # "index$iv$iv":I
    :cond_2
    nop

    .line 792
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v6, v7

    .line 172
    .end local v1    # "$this$fastAll$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAll":I
    :goto_1
    if-nez v6, :cond_3

    return-void

    .line 174
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 176
    .local v1, "firstDown":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    invoke-virtual {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->getAwaitTouchSlop()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->ordinal()I

    move-result v2

    aget v2, v3, v2

    .line 177
    if-ne v2, v7, :cond_5

    .line 178
    iget-object v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->startDragImmediately()Z

    move-result v2

    if-nez v2, :cond_4

    .line 179
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_2

    .line 181
    :cond_4
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->getAwaitTouchSlop()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    move-result-object v2

    .line 176
    :goto_2
    nop

    .line 175
    move-object v11, v2

    .line 188
    .local v11, "awaitTouchSlop":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;
    invoke-virtual {v10, v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->setAwaitTouchSlop(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;)V

    .line 190
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v9, v2, :cond_6

    .line 192
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v11, v2, :cond_6

    .line 193
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->consume()V

    .line 197
    invoke-virtual {v10, v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->setConsumedOnInitial(Z)V

    .line 201
    :cond_6
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v9, v2, :cond_8

    .line 207
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v11, v2, :cond_7

    .line 208
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJZILjava/lang/Object;)V

    goto :goto_3

    .line 209
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->getConsumedOnInitial()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v3

    .line 214
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    .line 210
    move-object v2, v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 216
    nop

    .line 217
    nop

    .line 218
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getPrimaryDirectionalMotionAxis-nZO2Niw()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->box-impl(I)Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    move-result-object v2

    .line 219
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    .line 216
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 221
    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToDraggingState-0FcD4WY(J)V

    .line 224
    :cond_8
    :goto_3
    return-void
.end method

.method private final requireTouchSlopDetector()Landroidx/compose/foundation/gestures/TouchSlopDetector;
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v0, :cond_0

    return-object v0

    .line 785
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$requireTouchSlopDetector$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$requireTouchSlopDetector$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Touch slop detector not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 2

    .line 90
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-eqz v0, :cond_0

    return-object v0

    .line 785
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$requireVelocityTracker$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$requireVelocityTracker$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Velocity Tracker not initialized."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final sendDragCancelled()V
    .locals 2

    .line 534
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 535
    return-void
.end method

.method private final sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 10
    .param p1, "change"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-dragAmount$0"    # J

    .line 490
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    .line 492
    .local v0, "currentPositionOnScreen":J
    nop

    .line 493
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 497
    .local v2, "delta":J
    iget-wide v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 499
    .end local v2    # "delta":J
    :cond_0
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 501
    iget-object v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p4, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 502
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v3

    .line 504
    nop

    .line 505
    iget-object v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v5

    .line 506
    nop

    .line 507
    iget-object v7, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 508
    iget-wide v8, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 503
    move-object v4, p1

    move-object v6, p2

    .end local p1    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local p2    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .local v4, "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .local v6, "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V

    .line 510
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance p2, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Landroidx/compose/foundation/gestures/OffsetSmoother;

    invoke-virtual {v2, p3, p4}, Landroidx/compose/foundation/gestures/OffsetSmoother;->smoothEventPosition-MK-Hz9U(J)J

    move-result-wide v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p2, v2, v3, v5, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    goto :goto_0

    .line 501
    .end local v4    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v6    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .restart local p1    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .restart local p2    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    :cond_1
    move-object v4, p1

    move-object v6, p2

    .line 512
    .end local p1    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local p2    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .restart local v4    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .restart local v6    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    :goto_0
    return-void
.end method

.method private final sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 9
    .param p1, "down"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "slopTriggerChange"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p3, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .param p4, "$v$c$androidx-compose-ui-geometry-Offset$-overSlopOffset$0"    # J

    .line 460
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 461
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 462
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v2

    .line 464
    nop

    .line 465
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v4

    .line 466
    nop

    .line 467
    iget-object v6, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 468
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 463
    move-object v3, p1

    move-object v5, p3

    .end local p1    # "down":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local p3    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .local v3, "down":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .local v5, "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V

    .line 471
    nop

    .line 472
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p1

    .line 473
    nop

    .line 471
    invoke-static {p2, p1, v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    .line 474
    nop

    .line 471
    invoke-static {v0, v1, p4, p5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 470
    nop

    .line 478
    .local v0, "dragStartedOffset":J
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getCanDrag()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    sget-object p3, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result p3

    invoke-static {p3}, Landroidx/compose/ui/input/pointer/PointerType;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerType;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 480
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    const/4 v2, 0x0

    invoke-direct {p3, v0, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Landroidx/compose/foundation/gestures/DragEvent;

    invoke-virtual {p1, p3}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 482
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Landroidx/compose/foundation/gestures/OffsetSmoother;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/OffsetSmoother;->reset()V

    .line 483
    return-void
.end method

.method private final sendDragStopped-k92h6UU(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)V
    .locals 9
    .param p1, "change"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 518
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    .line 520
    nop

    .line 521
    iget-object v1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->getOrientationLock()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v2

    .line 522
    nop

    .line 523
    iget-object v4, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 524
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 519
    move-object v1, p1

    move-object v3, p2

    .end local p1    # "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local p2    # "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .local v1, "change":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .local v3, "primaryDirectionalMotionAxis":Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->access$addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V

    .line 526
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast p1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {p1, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {p1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result p1

    .line 528
    .local p1, "maximumVelocity":F
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object p2

    invoke-static {p1, p1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v4

    .line 527
    nop

    .line 529
    .local v4, "velocity":J
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 530
    iget-object p2, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v4, v5}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    move-result-wide v6

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v2, v8}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    invoke-virtual {p2, v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 531
    return-void
.end method


# virtual methods
.method public final getNode()Landroidx/compose/foundation/gestures/DragGestureNode;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    return-object v0
.end method

.method public final processIndirectPointerInputEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 2
    .param p1, "indirectPointerInputEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 97
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->getAwaitDownState()Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 100
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    if-eqz v0, :cond_5

    .line 99
    .local v0, "state":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
    nop

    .line 102
    instance-of v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->processInitialDownState(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    if-eqz v1, :cond_2

    .line 105
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->processAwaitTouchSlop(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;)V

    goto :goto_0

    .line 106
    :cond_2
    instance-of v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    if-eqz v1, :cond_3

    .line 107
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->processAwaitGesturePickup(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;)V

    goto :goto_0

    .line 108
    :cond_3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    if-eqz v1, :cond_4

    .line 109
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->processDraggingState(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;)V

    .line 111
    .end local v0    # "state":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
    :goto_0
    return-void

    .line 99
    .restart local v0    # "state":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
    :cond_4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 785
    .end local v0    # "state":Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;
    :cond_5
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processIndirectPointerInputEvent$state$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-IndirectPointerInputDragCycleDetector$processIndirectPointerInputEvent$state$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "currentDragState should not be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resetDragDetectionState()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 115
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragCancelled()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 117
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Landroidx/compose/foundation/gestures/OffsetSmoother;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/OffsetSmoother;->reset()V

    .line 118
    return-void
.end method
