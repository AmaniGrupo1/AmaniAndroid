.class public final synthetic Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/lazy/LazyListStateKt;"
    method = "rememberLazyListState$lambda$3$0"
    proto = "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListStateKt;->$r8$lambda$PNNtKPuLDTP1steNVY3dDdrnOPs(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v0

    return-object v0
.end method
