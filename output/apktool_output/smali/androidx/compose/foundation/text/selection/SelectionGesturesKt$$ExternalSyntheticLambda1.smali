.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/selection/SelectionGesturesKt;"
    method = "mouseSelection$lambda$2"
    proto = "(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

.field public final synthetic f$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v0, v1, v2, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->mouseSelection$lambda$2(Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
