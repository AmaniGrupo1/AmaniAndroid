.class public final Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState$prefetchScope$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,742:1\n613#2,7:743\n59#3:750\n54#3:752\n90#4:751\n85#4:753\n*S KotlinDebug\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState$prefetchScope$1\n*L\n333#1:743,7\n344#1:750\n346#1:752\n344#1:751\n346#1:753\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0019\u0010\u0006\u001a\u0015\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u00a2\u0006\u0002\u0008\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/compose/foundation/lazy/LazyListState$prefetchScope$1",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchScope;",
        "schedulePrefetch",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "index",
        "",
        "onPrefetchFinished",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final schedulePrefetch$lambda$1(Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lkotlin/Unit;
    .locals 14
    .param p0, "$onPrefetchFinished"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$index"    # I
    .param p2, "$lastMeasureResult"    # Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .param p3, "$this$schedulePrecompositionAndPremeasure"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    .line 339
    move-object/from16 v0, p3

    if-eqz p0, :cond_2

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "mainAxisItemSize":I
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getPlaceablesCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    move v4, v3

    .local v4, "it":I
    const/4 v5, 0x0

    .line 342
    .local v5, "$i$a$-repeat-LazyListState$prefetchScope$1$schedulePrefetch$1$1":I
    nop

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v7, :cond_0

    .line 344
    invoke-interface {v0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getSize-YEO4UFw(I)J

    move-result-wide v6

    .local v6, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v8, 0x0

    .line 750
    .local v8, "$i$f$getHeight-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 751
    .local v11, "$i$f$unpackInt2":I
    const-wide v12, 0xffffffffL

    and-long/2addr v12, v9

    long-to-int v9, v12

    .line 750
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackInt2":I
    nop

    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v8    # "$i$f$getHeight-impl":I
    goto :goto_1

    .line 346
    :cond_0
    invoke-interface {v0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getSize-YEO4UFw(I)J

    move-result-wide v6

    .restart local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v8, 0x0

    .line 752
    .local v8, "$i$f$getWidth-impl":I
    move-wide v9, v6

    .restart local v9    # "value$iv$iv":J
    const/4 v11, 0x0

    .line 753
    .local v11, "$i$f$unpackInt1":I
    const/16 v12, 0x20

    shr-long v12, v9, v12

    long-to-int v9, v12

    .line 752
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackInt1":I
    nop

    .line 342
    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v8    # "$i$f$getWidth-impl":I
    :goto_1
    add-int/2addr v1, v9

    .line 348
    nop

    .line 341
    .end local v4    # "it":I
    .end local v5    # "$i$a$-repeat-LazyListState$prefetchScope$1$schedulePrefetch$1$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_1
    nop

    .line 351
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;

    invoke-direct {v2, p1, v1}, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;-><init>(II)V

    .line 350
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v1    # "mainAxisItemSize":I
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method


# virtual methods
.method public schedulePrefetch(ILkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 8
    .param p1, "index"    # I
    .param p2, "onPrefetchFinished"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;"
        }
    .end annotation

    .line 333
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v1, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v2, 0x0

    .line 743
    .local v2, "$i$f$withoutReadObservation":I
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    .line 744
    .local v3, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 745
    .local v4, "observer$iv":Lkotlin/jvm/functions/Function1;
    :goto_0
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    .line 746
    .local v5, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 747
    const/4 v6, 0x0

    .line 333
    .local v6, "$i$a$-withoutReadObservation-LazyListState$prefetchScope$1$schedulePrefetch$lastMeasureResult$1":I
    :try_start_0
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListState;->access$getLayoutInfoState$p(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    .end local v6    # "$i$a$-withoutReadObservation-LazyListState$prefetchScope$1$schedulePrefetch$lastMeasureResult$1":I
    nop

    .line 749
    invoke-virtual {v1, v3, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 747
    nop

    .line 333
    .end local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v2    # "$i$f$withoutReadObservation":I
    .end local v3    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 334
    .local v0, "lastMeasureResult":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v2

    .line 335
    nop

    .line 336
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getChildConstraints-msEJaDk()J

    move-result-wide v4

    .line 337
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {v1}, Landroidx/compose/foundation/lazy/LazyListState;->access$getExecuteRequestsInHighPriorityMode$p(Landroidx/compose/foundation/lazy/LazyListState;)Z

    move-result v6

    .line 334
    new-instance v7, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2, p1, v0}, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    move v3, p1

    .end local p1    # "index":I
    .local v3, "index":I
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-_EkL_-Y$foundation(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p1

    move v6, v3

    .end local v3    # "index":I
    .local v6, "index":I
    return-object p1

    .line 749
    .end local v0    # "lastMeasureResult":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .end local v6    # "index":I
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v2    # "$i$f$withoutReadObservation":I
    .local v3, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "index":I
    :catchall_0
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v1, v3, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p1
.end method
