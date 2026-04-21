.class public final synthetic Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;"
    method = "updateSelectionBoundary$lambda$2"
    proto = "(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/selection/SelectableInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field public final synthetic f$4:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iput p2, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/text/selection/SelectionLayout;

    iput-object p5, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget v1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/text/selection/SelectionLayout;

    iget-object v4, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/Lazy;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->updateSelectionBoundary$lambda$2(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    return-object v0
.end method
