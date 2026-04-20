.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;
.super Ljava/lang/Object;
.source "LazyGridState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,758:1\n613#2,5:759\n619#2:769\n35#3,5:764\n59#4:770\n54#4:772\n90#5:771\n85#5:773\n*S KotlinDebug\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1\n*L\n343#1:759,5\n343#1:769\n354#1:764,5\n365#1:770\n367#1:772\n365#1:771\n367#1:773\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J1\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0019\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a2\u0006\u0002\u0008\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;",
        "scheduleLinePrefetch",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "lineIndex",
        "",
        "onPrefetchFinished",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;",
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
.field final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public static synthetic $r8$lambda$wOP6u3EicKuBF4bFcPsZHTXLaHg(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->scheduleLinePrefetch$lambda$0$0$0$0(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final scheduleLinePrefetch$lambda$0$0$0$0(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lkotlin/Unit;
    .locals 19
    .param p0, "$itemSizes"    # Ljava/util/List;
    .param p1, "$completedCount"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p2, "$itemsInLineInfo"    # Ljava/util/List;
    .param p3, "$onPrefetchFinished"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$lineIndex"    # I
    .param p5, "$measureResult"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .param p6, "$this$schedulePrecompositionAndPremeasure"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    .line 362
    .local v4, "itemMainAxisItemSize":I
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getPlaceablesCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 363
    .local v8, "$i$a$-repeat-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1$1$1$1":I
    nop

    .line 364
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v9

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v9, v10, :cond_0

    .line 365
    invoke-interface {v3, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getSize-YEO4UFw(I)J

    move-result-wide v9

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 770
    .local v11, "$i$f$getHeight-impl":I
    move-wide v12, v9

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 771
    .local v14, "$i$f$unpackInt2":I
    const-wide v15, 0xffffffffL

    move/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "itemMainAxisItemSize":I
    .local v18, "itemMainAxisItemSize":I
    and-long v4, v12, v15

    long-to-int v4, v4

    .line 770
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt2":I
    nop

    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v11    # "$i$f$getHeight-impl":I
    goto :goto_1

    .line 367
    .end local v18    # "itemMainAxisItemSize":I
    .restart local v4    # "itemMainAxisItemSize":I
    :cond_0
    move/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "itemMainAxisItemSize":I
    .restart local v18    # "itemMainAxisItemSize":I
    invoke-interface {v3, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getSize-YEO4UFw(I)J

    move-result-wide v4

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 772
    .local v9, "$i$f$getWidth-impl":I
    move-wide v10, v4

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 773
    .local v12, "$i$f$unpackInt1":I
    const/16 v13, 0x20

    shr-long v13, v10, v13

    long-to-int v10, v13

    .line 772
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackInt1":I
    move v4, v10

    .line 363
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v9    # "$i$f$getWidth-impl":I
    :goto_1
    add-int v4, v18, v4

    .line 369
    .end local v18    # "itemMainAxisItemSize":I
    .local v4, "itemMainAxisItemSize":I
    nop

    .line 362
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1$1$1$1":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    goto :goto_0

    .line 371
    :cond_1
    move/from16 v18, v4

    .end local v4    # "itemMainAxisItemSize":I
    .restart local v18    # "itemMainAxisItemSize":I
    if-eqz v0, :cond_2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    iget v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 374
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 375
    nop

    .line 376
    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;

    .line 377
    nop

    .line 378
    nop

    .line 376
    move/from16 v5, p4

    invoke-direct {v4, v5, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;-><init>(ILjava/util/List;)V

    .line 375
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 374
    :cond_3
    move/from16 v5, p4

    goto :goto_2

    .line 383
    :cond_4
    move/from16 v5, p4

    iget v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 385
    :goto_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4
.end method


# virtual methods
.method public scheduleLinePrefetch(I)Ljava/util/List;
    .locals 1
    .param p1, "lineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->scheduleLinePrefetch(ILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public scheduleLinePrefetch(ILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 31
    .param p1, "lineIndex"    # I
    .param p2, "onPrefetchFinished"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 341
    .local v1, "prefetchHandles":Ljava/util/List;
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 340
    :goto_0
    move-object v4, v2

    .line 343
    .local v4, "itemSizes":Ljava/util/List;
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    move-object/from16 v10, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v11, v10, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v12, 0x0

    .line 759
    .local v12, "$i$f$withoutReadObservation":I
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v13

    .line 760
    .local v13, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :cond_1
    move-object v14, v0

    .line 761
    .local v14, "observer$iv":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v15

    .line 762
    .local v15, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 763
    const/4 v0, 0x0

    .line 345
    .local v0, "$i$a$-withoutReadObservation-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1":I
    :try_start_0
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getHasLookaheadOccurred$foundation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getApproachLayoutInfo$foundation()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v3

    goto :goto_1

    .line 348
    :cond_2
    invoke-static {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->access$getLayoutInfoState$p(Landroidx/compose/foundation/lazy/grid/LazyGridState;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 345
    :goto_1
    nop

    .line 344
    move-object/from16 v16, v3

    .line 351
    .local v16, "layoutInfo":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    if-eqz v16, :cond_4

    move-object/from16 v9, v16

    .local v9, "measureResult":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    const/16 v17, 0x0

    .line 352
    .local v17, "$i$a$-let-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1":I
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .local v5, "completedCount":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v3, 0x1

    iput v3, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 353
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getPrefetchInfoRetriever()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    .line 354
    .local v6, "itemsInLineInfo":Ljava/util/List;
    move-object v3, v6

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 764
    .local v18, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_3

    .line 765
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 766
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Lkotlin/Pair;

    .local v20, "lineInfo":Lkotlin/Pair;
    const/16 v21, 0x0

    .line 355
    .local v21, "$i$a$-fastForEach-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1$1":I
    nop

    .line 356
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v22

    .line 357
    invoke-virtual/range {v20 .. v20}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v23

    .line 358
    invoke-virtual/range {v20 .. v20}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v24

    .line 359
    invoke-static {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->access$getExecuteRequestsInHighPriorityMode$p(Landroidx/compose/foundation/lazy/grid/LazyGridState;)Z

    move-result v26

    .line 356
    new-instance v27, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1$$ExternalSyntheticLambda0;

    move-object/from16 v28, v3

    move/from16 v30, v7

    move/from16 v29, v8

    move-object/from16 v3, v27

    move/from16 v8, p1

    move-object/from16 v7, p2

    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "index$iv":I
    .local v28, "$this$fastForEach$iv":Ljava/util/List;
    .local v30, "index$iv":I
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    move-object/from16 v27, v3

    invoke-virtual/range {v22 .. v27}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-_EkL_-Y$foundation(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v3

    .line 355
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    nop

    .line 766
    .end local v20    # "lineInfo":Lkotlin/Pair;
    .end local v21    # "$i$a$-fastForEach-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1$1":I
    nop

    .line 764
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v30, 0x1

    move-object/from16 v3, v28

    move/from16 v8, v29

    .end local v30    # "index$iv":I
    .restart local v7    # "index$iv":I
    goto :goto_2

    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_3
    move-object/from16 v28, v3

    move/from16 v30, v7

    .line 768
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "index$iv":I
    .restart local v28    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 388
    .end local v18    # "$i$f$fastForEach":I
    .end local v28    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 351
    .end local v5    # "completedCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "itemsInLineInfo":Ljava/util/List;
    .end local v9    # "measureResult":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .end local v17    # "$i$a$-let-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_4
    nop

    .line 763
    .end local v0    # "$i$a$-withoutReadObservation-LazyGridState$prefetchScope$1$scheduleLinePrefetch$1":I
    .end local v16    # "layoutInfo":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    nop

    .line 769
    invoke-virtual {v2, v13, v15, v14}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 763
    nop

    .line 390
    .end local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v12    # "$i$f$withoutReadObservation":I
    .end local v13    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v14    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v15    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    return-object v1

    .line 769
    .restart local v2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v12    # "$i$f$withoutReadObservation":I
    .restart local v13    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v14    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v15    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v13, v15, v14}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method
