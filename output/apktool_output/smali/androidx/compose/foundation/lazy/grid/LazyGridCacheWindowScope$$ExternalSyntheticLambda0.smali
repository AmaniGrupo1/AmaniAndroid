.class public final synthetic Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;"
    method = "schedulePrefetch$lambda$0"
    proto = "(Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->schedulePrefetch$lambda$0(Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
