.class final Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;
.super Ljava/lang/Object;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureNode;->initializePointerInputNode()Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/gestures/DragGestureNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final invoke$lambda$0(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "$suspendingPointerInputVelocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p2, "down"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p3, "slopTriggerChange"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p4, "postSlopOffset"    # Landroidx/compose/ui/geometry/Offset;

    .line 577
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$setNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;J)V

    .line 578
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->getCanDrag()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerType;->box-impl(I)Landroidx/compose/ui/input/pointer/PointerType;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents$foundation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$startListeningForEvents(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 580
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 581
    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    .line 585
    .local v0, "dragStartedOffset":J
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 587
    .end local v0    # "dragStartedOffset":J
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final invoke$lambda$1(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;
    .locals 9
    .param p0, "$suspendingPointerInputVelocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "$this_SuspendingPointerInputModifierNode"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p3, "upEvent"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 590
    invoke-static {p0, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 591
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v0

    .line 593
    .local v0, "maximumVelocity":F
    nop

    .line 594
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v1

    .line 593
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v1

    .line 592
    nop

    .line 596
    .local v1, "velocity":J
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 597
    invoke-static {p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 598
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 597
    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 600
    :cond_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method

.method static final invoke$lambda$2(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 602
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final invoke$lambda$3(Landroidx/compose/foundation/gestures/DragGestureNode;)Z
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 604
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startDragImmediately()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static final invoke$lambda$4(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;
    .locals 8
    .param p0, "this$0"    # Landroidx/compose/foundation/gestures/DragGestureNode;
    .param p1, "$previousPositionOnScreen"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "$suspendingPointerInputVelocityTracker"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p3, "change"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p4, "delta"    # Landroidx/compose/ui/geometry/Offset;

    .line 608
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    .line 610
    .local v0, "currentPositionOnScreen":J
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 612
    .local v2, "delta":J
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$setNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;J)V

    .line 614
    .end local v2    # "delta":J
    :cond_0
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 615
    nop

    .line 616
    nop

    .line 617
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getNodeOffset$p(Landroidx/compose/foundation/gestures/DragGestureNode;)J

    move-result-wide v2

    .line 615
    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange-0AR0LA0(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 619
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    .line 620
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "$this$SuspendingPointerInputModifierNode"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 568
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 569
    .local v0, "suspendingPointerInputVelocityTracker":Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v1, "previousPositionOnScreen":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 570
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/util/VelocityTracker;)V

    move-object v7, v3

    .line 589
    .local v7, "onDragStart":Lkotlin/jvm/functions/Function3;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v8, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, p1, v2}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 602
    .local v8, "onDragEnd":Lkotlin/jvm/functions/Function1;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v9, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 604
    .local v9, "onDragCancel":Lkotlin/jvm/functions/Function0;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v10, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda3;

    invoke-direct {v10, v2}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 606
    .local v10, "shouldAwaitTouchSlop":Lkotlin/jvm/functions/Function0;
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    new-instance v11, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;

    invoke-direct {v11, v2, v1, v0}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/util/VelocityTracker;)V

    .line 622
    .local v11, "onDrag":Lkotlin/jvm/functions/Function2;
    new-instance v4, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->this$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    const/4 v12, 0x0

    move-object v5, p1

    .end local p1    # "$this$SuspendingPointerInputModifierNode":Landroidx/compose/ui/input/pointer/PointerInputScope;
    .local v5, "$this$SuspendingPointerInputModifierNode":Landroidx/compose/ui/input/pointer/PointerInputScope;
    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 637
    return-object p1
.end method
