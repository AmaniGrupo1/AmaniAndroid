.class public final synthetic Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;"
    method = "invoke$lambda$4"
    proto = "(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/gestures/DragGestureNode;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$2:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/util/VelocityTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/foundation/gestures/DragGestureNode;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;->invoke$lambda$4(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
