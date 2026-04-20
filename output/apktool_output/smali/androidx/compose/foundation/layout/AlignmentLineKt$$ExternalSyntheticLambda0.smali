.class public final synthetic Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/layout/AlignmentLineKt;"
    method = "alignmentLineOffsetMeasure_tjqqzMA$lambda$1"
    proto = "(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/layout/AlignmentLine;

.field public final synthetic f$1:F

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/AlignmentLine;

    iput p2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/AlignmentLine;

    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/Placeable;

    iget v6, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$$ExternalSyntheticLambda0;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/layout/AlignmentLineKt;->alignmentLineOffsetMeasure_tjqqzMA$lambda$1(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
