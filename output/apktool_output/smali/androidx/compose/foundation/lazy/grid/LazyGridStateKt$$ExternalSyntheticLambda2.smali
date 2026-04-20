.class public final synthetic Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;"
    method = "rememberLazyGridState$lambda$2$0"
    proto = "(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/foundation/lazy/grid/LazyGridState;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->$r8$lambda$TpLE_bjko8ZHnFp57NnN2I3cJf8(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v0

    return-object v0
.end method
