.class public final synthetic Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/pager/PagerMeasureKt;"
    method = "measurePager_7L1iB3k$lambda$18"
    proto = "(Landroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/pager/PagerMeasureKt;->measurePager_7L1iB3k$lambda$18(Landroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
