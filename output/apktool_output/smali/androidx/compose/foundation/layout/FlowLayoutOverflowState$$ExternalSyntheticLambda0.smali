.class public final synthetic Landroidx/compose/foundation/layout/FlowLayoutOverflowState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;"
    method = "setOverflowMeasurables__hBUhpc$lambda$2$0"
    proto = "(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final synthetic f$1:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->$r8$lambda$VUtDCuPB218Uj3oOp5nD-CrJgyk(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
