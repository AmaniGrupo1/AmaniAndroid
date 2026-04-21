.class public final synthetic Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;"
    method = "LazyLayout$lambda$1$2$0"
    proto = "(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final synthetic f$1:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

.field public final synthetic f$2:Landroidx/compose/ui/layout/SubcomposeLayoutState;

.field public final synthetic f$3:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->$r8$lambda$nAm-ve6PXT8Mp14swbWq987wENs(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
