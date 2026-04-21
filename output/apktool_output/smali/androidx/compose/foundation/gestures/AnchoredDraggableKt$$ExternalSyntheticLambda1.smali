.class public final synthetic Landroidx/compose/foundation/gestures/AnchoredDraggableKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/gestures/AnchoredDraggableKt;"
    method = "animateTo$lambda$0$1"
    proto = "(Landroidx/compose/foundation/gestures/AnchoredDragScope;Lkotlin/jvm/internal/Ref$FloatRef;FF)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/gestures/AnchoredDragScope;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDragScope;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->$r8$lambda$vOgvEmqqqo_wlVSeWVZGoKzaYNM(Landroidx/compose/foundation/gestures/AnchoredDragScope;Lkotlin/jvm/internal/Ref$FloatRef;FF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
