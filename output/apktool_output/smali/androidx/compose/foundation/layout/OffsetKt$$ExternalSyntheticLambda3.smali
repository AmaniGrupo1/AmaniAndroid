.class public final synthetic Landroidx/compose/foundation/layout/OffsetKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/layout/OffsetKt;"
    method = "offset_VpY3zN4$lambda$0"
    proto = "(FFLandroidx/compose/ui/platform/InspectorInfo;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/OffsetKt$$ExternalSyntheticLambda3;->f$0:F

    iput p2, p0, Landroidx/compose/foundation/layout/OffsetKt$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Landroidx/compose/foundation/layout/OffsetKt$$ExternalSyntheticLambda3;->f$0:F

    iget v1, p0, Landroidx/compose/foundation/layout/OffsetKt$$ExternalSyntheticLambda3;->f$1:F

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/OffsetKt;->offset_VpY3zN4$lambda$0(FFLandroidx/compose/ui/platform/InspectorInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
