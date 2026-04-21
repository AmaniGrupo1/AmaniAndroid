.class public final synthetic Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;"
    method = "measure_3p2s80s$lambda$0"
    proto = "(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
