.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "LazyGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,640:1\n472#1,3:660\n475#1,16:666\n492#1:683\n472#1,3:684\n475#1:690\n476#1,15:699\n492#1:715\n97#2,4:641\n97#2,4:645\n97#2,4:656\n51#2,4:739\n97#2,4:751\n109#2,5:755\n109#2,5:760\n54#3:649\n59#3:651\n54#3:716\n59#3:718\n85#4:650\n90#4:652\n85#4:717\n90#4:719\n26#5:653\n26#5:654\n26#5:655\n35#6,3:663\n39#6:682\n35#6,3:687\n103#6:691\n35#6,3:692\n39#6:697\n104#6:698\n39#6:714\n35#6,5:720\n35#6,5:725\n103#6:731\n35#6,3:732\n39#6:737\n104#6:738\n134#6,2:743\n35#6,5:745\n136#6:750\n53#6,5:765\n35#6,5:770\n35#6,5:775\n35#6,5:780\n35#6,5:785\n12574#7,2:695\n12574#7,2:735\n1#8:730\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n*L\n292#1:660,3\n292#1:666,16\n292#1:683\n310#1:684,3\n310#1:690\n310#1:699,15\n310#1:715\n83#1:641,4\n84#1:645,4\n285#1:656,4\n567#1:739,4\n573#1:751,4\n580#1:755,5\n585#1:760,5\n108#1:649\n109#1:651\n395#1:716\n397#1:718\n108#1:650\n109#1:652\n395#1:717\n397#1:719\n139#1:653\n267#1:654\n268#1:655\n292#1:663,3\n292#1:682\n310#1:687,3\n317#1:691\n317#1:692,3\n317#1:697\n317#1:698\n310#1:714\n400#1:720,5\n474#1:725,5\n535#1:731\n535#1:732,3\n535#1:737\n535#1:738\n570#1:743,2\n570#1:745,5\n570#1:750\n613#1:765,5\n620#1:770,5\n625#1:775,5\n440#1:780,5\n441#1:785,5\n318#1:695,2\n535#1:735,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u00fc\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u00032\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030 2\u0006\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u00132\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*23\u0010+\u001a/\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0011000 0,2!\u00101\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020\u00030,2\u0008\u00103\u001a\u0004\u0018\u0001042/\u00105\u001a+\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002080,\u00a2\u0006\u0002\u00089\u0012\u0004\u0012\u00020:06H\u0000\u00a2\u0006\u0004\u0008;\u0010<\u001aA\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u001d0 2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030 2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130,H\u0082\u0008\u001aF\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0 2\u0006\u0010A\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00132\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020@0 2\u0008\u0010C\u001a\u0004\u0018\u00010$H\u0002\u001a\u008c\u0001\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u001d0E2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020@0 2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u001d0 2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u001d0 2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\u00032\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a+\u0010N\u001a\u000208\"\u0004\u0008\u0000\u0010O*\u0008\u0012\u0004\u0012\u0002HO0E2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u0002HO0QH\u0002\u00a2\u0006\u0002\u0010R\u00a8\u0006S"
    }
    d2 = {
        "measureLazyGrid",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "itemsCount",
        "",
        "measuredLineProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenLines",
        "firstVisibleLineIndex",
        "firstVisibleLineScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "isVertical",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "itemAnimator",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "slotsPerLine",
        "pinnedItems",
        "",
        "isInLookaheadScope",
        "isLookingAhead",
        "approachLayoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "prefetchInfoRetriever",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "Lkotlin/Pair;",
        "lineIndexProvider",
        "itemIndex",
        "stickyItemsScrollBehavior",
        "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyGrid-t1x4au0",
        "(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "calculateExtraItems",
        "filter",
        "linesRetainedForLookahead",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "lastVisibleItemIndex",
        "visibleLines",
        "lastApproachLayoutInfo",
        "calculateItemsOffsets",
        "",
        "lines",
        "itemsBefore",
        "itemsAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "firstLineScrollOffset",
        "addAllFromArray",
        "T",
        "arr",
        "",
        "(Ljava/util/List;[Ljava/lang/Object;)V",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$MYA-mBtLpdP12KFjW6wO0ZW4tVQ(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid_t1x4au0$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "$this$addAllFromArray"    # Ljava/util/List;
    .param p1, "arr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 636
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 637
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method private static final calculateExtraItems(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 16
    .param p0, "pinnedItems"    # Ljava/util/List;
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p2, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .param p3, "filter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 472
    .local v1, "$i$f$calculateExtraItems":I
    const/4 v2, 0x0

    .line 474
    .local v2, "items":Ljava/lang/Object;
    move-object/from16 v3, p0

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 725
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 726
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 727
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v10

    .local v10, "index":I
    const/4 v8, 0x0

    .line 475
    .local v8, "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v15, p3

    invoke-interface {v15, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 476
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v12

    .line 477
    .local v12, "span":I
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v13

    .line 479
    .local v13, "constraints":J
    nop

    .line 480
    nop

    .line 482
    nop

    .line 483
    nop

    .line 481
    nop

    .line 479
    const/4 v11, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v11

    .line 478
    nop

    .line 485
    .local v11, "measuredItem":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v2, :cond_0

    .line 486
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v9

    check-cast v2, Ljava/util/List;

    .line 488
    :cond_0
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v11    # "measuredItem":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v12    # "span":I
    .end local v13    # "constraints":J
    :cond_1
    nop

    .line 727
    .end local v8    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1":I
    .end local v10    # "index":I
    nop

    .line 725
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v15, p3

    .line 729
    .end local v5    # "index$iv":I
    nop

    .line 492
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    return-object v3
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 22
    .param p0, "lines"    # Ljava/util/List;
    .param p1, "itemsBefore"    # Ljava/util/List;
    .param p2, "itemsAfter"    # Ljava/util/List;
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "finalMainAxisOffset"    # I
    .param p6, "maxOffset"    # I
    .param p7, "firstLineScrollOffset"    # I
    .param p8, "isVertical"    # Z
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p11, "reverseLayout"    # Z
    .param p12, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p11

    if-eqz p8, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v7, v4

    .line 565
    .local v7, "mainAxisLayoutSize":I
    move/from16 v4, p6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v11, p5

    if-ge v11, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v12, v5

    .line 566
    .local v12, "hasSpareSpace":Z
    if-eqz v12, :cond_4

    .line 567
    if-nez p7, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .local v5, "value$iv":Z
    :goto_2
    const/4 v9, 0x0

    .line 739
    .local v9, "$i$f$checkPrecondition":I
    if-nez v5, :cond_3

    .line 740
    const/4 v10, 0x0

    .line 567
    .local v10, "$i$a$-checkPrecondition-LazyGridMeasureKt$calculateItemsOffsets$1":I
    nop

    .line 740
    .end local v10    # "$i$a$-checkPrecondition-LazyGridMeasureKt$calculateItemsOffsets$1":I
    const-string/jumbo v10, "non-zero firstLineScrollOffset"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 742
    :cond_3
    nop

    .line 570
    .end local v5    # "value$iv":Z
    .end local v9    # "$i$f$checkPrecondition":I
    :cond_4
    move-object/from16 v5, p0

    .local v5, "$this$fastSumBy$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 743
    .local v9, "$i$f$fastSumBy":I
    const/4 v10, 0x0

    .line 744
    .local v10, "sum$iv":I
    move-object v13, v5

    .local v13, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 745
    .local v14, "$i$f$fastForEach":I
    const/4 v15, 0x0

    .local v15, "index$iv$iv":I
    move-object/from16 v16, v13

    check-cast v16, Ljava/util/Collection;

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_3
    if-ge v15, v8, :cond_5

    .line 746
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 747
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    .local v18, "element$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 744
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastSumBy$1$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v20, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/16 v21, 0x0

    .line 570
    .local v21, "$i$a$-fastSumBy-LazyGridMeasureKt$calculateItemsOffsets$positionedItems$1":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v6

    array-length v6, v6

    .line 744
    .end local v20    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v21    # "$i$a$-fastSumBy-LazyGridMeasureKt$calculateItemsOffsets$positionedItems$1":I
    add-int/2addr v10, v6

    .line 747
    .end local v18    # "element$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastSumBy$1$iv":I
    nop

    .line 745
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 749
    .end local v15    # "index$iv$iv":I
    :cond_5
    nop

    .line 750
    .end local v13    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEach":I
    nop

    .line 570
    .end local v5    # "$this$fastSumBy$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastSumBy":I
    .end local v10    # "sum$iv":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v5

    .line 572
    .local v13, "positionedItems":Ljava/util/ArrayList;
    if-eqz v12, :cond_11

    .line 573
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .local v8, "value$iv":Z
    :goto_4
    const/4 v5, 0x0

    .line 751
    .local v5, "$i$f$requirePrecondition":I
    if-nez v8, :cond_7

    .line 752
    const/4 v6, 0x0

    .line 573
    .local v6, "$i$a$-requirePrecondition-LazyGridMeasureKt$calculateItemsOffsets$2":I
    nop

    .line 752
    .end local v6    # "$i$a$-requirePrecondition-LazyGridMeasureKt$calculateItemsOffsets$2":I
    const-string/jumbo v6, "no items"

    invoke-static {v6}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 754
    :cond_7
    nop

    .line 574
    .end local v5    # "$i$f$requirePrecondition":I
    .end local v8    # "value$iv":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 577
    .local v14, "linesCount":I
    new-array v8, v14, [I

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v14, :cond_8

    invoke-static {v6, v3, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v5

    aput v5, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 578
    .local v8, "sizes":[I
    :cond_8
    new-array v10, v14, [I

    .line 579
    .local v10, "offsets":[I
    if-eqz p8, :cond_a

    .line 580
    move-object/from16 v5, p9

    .local v5, "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 755
    .local v6, "$i$f$requirePreconditionNotNull":I
    if-eqz v5, :cond_9

    .line 759
    nop

    .line 580
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    nop

    .local v5, "$this$calculateItemsOffsets_u24lambda_u244":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v6, 0x0

    .line 581
    .local v6, "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v9, p12

    invoke-interface {v5, v9, v7, v8, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 582
    nop

    .line 580
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u244":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v6    # "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$4":I
    goto :goto_6

    .line 756
    .local v5, "value$iv":Ljava/lang/Object;
    .local v6, "$i$f$requirePreconditionNotNull":I
    :cond_9
    move-object/from16 v9, p12

    const/4 v15, 0x0

    .line 580
    .local v15, "$i$a$-requirePreconditionNotNull-LazyGridMeasureKt$calculateItemsOffsets$3":I
    nop

    .line 756
    .end local v15    # "$i$a$-requirePreconditionNotNull-LazyGridMeasureKt$calculateItemsOffsets$3":I
    const-string/jumbo v15, "null verticalArrangement"

    invoke-static {v15}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v15, Lkotlin/KotlinNothingValueException;

    invoke-direct {v15}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v15

    .line 585
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    :cond_a
    move-object/from16 v9, p12

    move-object/from16 v5, p10

    .restart local v5    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 760
    .restart local v6    # "$i$f$requirePreconditionNotNull":I
    if-eqz v5, :cond_10

    .line 764
    nop

    .line 584
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    nop

    .local v5, "$this$calculateItemsOffsets_u24lambda_u246":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v15, 0x0

    .line 588
    .local v15, "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$6":I
    sget-object v9, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v6, p12

    invoke-interface/range {v5 .. v10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 589
    nop

    .line 584
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u246":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v15    # "$i$a$-with-LazyGridMeasureKt$calculateItemsOffsets$6":I
    nop

    .line 593
    :goto_6
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/IntProgression;

    if-eqz v3, :cond_b

    invoke-static {v5}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v5

    .line 592
    :cond_b
    nop

    .line 595
    .local v5, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    .local v6, "index":I
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v15

    if-lez v15, :cond_c

    if-le v6, v9, :cond_d

    :cond_c
    if-gez v15, :cond_f

    if-gt v9, v6, :cond_f

    .line 596
    :cond_d
    :goto_7
    aget v16, v10, v6

    .line 598
    .local v16, "absoluteOffset":I
    invoke-static {v6, v3, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 600
    .local v4, "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    if-eqz v3, :cond_e

    .line 602
    sub-int v17, v7, v16

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v18

    sub-int v17, v17, v18

    goto :goto_8

    .line 604
    :cond_e
    move/from16 v17, v16

    .line 600
    :goto_8
    nop

    .line 599
    move/from16 v18, v17

    .line 606
    .local v18, "relativeOffset":I
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 607
    move-object/from16 v17, v5

    move/from16 v3, v18

    .end local v5    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .end local v18    # "relativeOffset":I
    .local v3, "relativeOffset":I
    .local v17, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v4, v3, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v5

    .line 606
    invoke-static {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    .line 595
    .end local v3    # "relativeOffset":I
    .end local v4    # "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v16    # "absoluteOffset":I
    if-eq v6, v9, :cond_16

    add-int/2addr v6, v15

    move-object/from16 v0, p0

    move/from16 v4, p6

    move/from16 v3, p11

    move-object/from16 v5, v17

    goto :goto_7

    .end local v17    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .restart local v5    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    :cond_f
    move-object/from16 v17, v5

    .end local v5    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .restart local v17    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    goto/16 :goto_b

    .line 761
    .end local v17    # "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    .local v5, "value$iv":Ljava/lang/Object;
    .local v6, "$i$f$requirePreconditionNotNull":I
    :cond_10
    const/4 v0, 0x0

    .line 585
    .local v0, "$i$a$-requirePreconditionNotNull-LazyGridMeasureKt$calculateItemsOffsets$5":I
    nop

    .line 761
    .end local v0    # "$i$a$-requirePreconditionNotNull-LazyGridMeasureKt$calculateItemsOffsets$5":I
    const-string/jumbo v0, "null horizontalArrangement"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 611
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    .end local v8    # "sizes":[I
    .end local v10    # "offsets":[I
    .end local v14    # "linesCount":I
    :cond_11
    const/4 v0, 0x0

    .local v0, "currentMainAxis":I
    move/from16 v0, p7

    .line 613
    move-object/from16 v3, p1

    .local v3, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 765
    .local v4, "$i$f$fastForEachReversed":I
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_13

    :cond_12
    move v6, v5

    .local v6, "index$iv":I
    add-int/lit8 v5, v5, -0x1

    .line 766
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 767
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v9, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v10, 0x0

    .line 614
    .local v10, "$i$a$-fastForEachReversed-LazyGridMeasureKt$calculateItemsOffsets$7":I
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v14

    sub-int/2addr v0, v14

    .line 615
    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 616
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    nop

    .line 767
    .end local v9    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v10    # "$i$a$-fastForEachReversed-LazyGridMeasureKt$calculateItemsOffsets$7":I
    nop

    .line 765
    .end local v8    # "item$iv":Ljava/lang/Object;
    if-gez v5, :cond_12

    .line 769
    .end local v6    # "index$iv":I
    :cond_13
    nop

    .line 619
    .end local v3    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEachReversed":I
    move/from16 v0, p7

    .line 620
    move-object/from16 v3, p0

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 770
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_9
    if-ge v5, v6, :cond_14

    .line 771
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 772
    .restart local v8    # "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v9, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/4 v10, 0x0

    .line 621
    .local v10, "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$8":I
    move-object v14, v13

    check-cast v14, Ljava/util/List;

    invoke-virtual {v9, v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v14

    add-int/2addr v0, v14

    .line 623
    nop

    .line 772
    .end local v9    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v10    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$8":I
    nop

    .line 770
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 774
    .end local v5    # "index$iv":I
    :cond_14
    nop

    .line 625
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object/from16 v3, p2

    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 775
    .restart local v4    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .restart local v5    # "index$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_a
    if-ge v5, v6, :cond_15

    .line 776
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 777
    .restart local v8    # "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v9, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v10, 0x0

    .line 626
    .local v10, "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$9":I
    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    .line 627
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v15

    add-int/2addr v0, v15

    .line 629
    nop

    .line 777
    .end local v9    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v10    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateItemsOffsets$9":I
    nop

    .line 775
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 779
    .end local v5    # "index$iv":I
    :cond_15
    nop

    .line 631
    .end local v0    # "currentMainAxis":I
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    :cond_16
    :goto_b
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculateItemsOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "linesCount"    # I

    .line 575
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private static final linesRetainedForLookahead(IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;ZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)Ljava/util/List;
    .locals 25
    .param p0, "lastVisibleItemIndex"    # I
    .param p1, "itemsCount"    # I
    .param p2, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .param p3, "isLookingAhead"    # Z
    .param p4, "visibleLines"    # Ljava/util/List;
    .param p5, "lastApproachLayoutInfo"    # Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;"
        }
    .end annotation

    .line 508
    move/from16 v0, p0

    const/4 v1, 0x0

    .line 510
    .local v1, "list":Ljava/util/List;
    if-eqz p3, :cond_10

    .line 512
    nop

    .line 513
    if-eqz p5, :cond_f

    invoke-interface/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 518
    invoke-interface/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$linesRetainedForLookahead_u24lambda_u240":Ljava/util/List;
    const/4 v3, 0x0

    .line 519
    .local v3, "$i$a$-run-LazyGridMeasureKt$linesRetainedForLookahead$firstItem$1":I
    const/4 v4, 0x0

    .line 520
    .local v4, "found":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    const/4 v7, -0x1

    if-ge v7, v5, :cond_2

    .line 521
    nop

    .line 522
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v7

    if-le v7, v0, :cond_1

    .line 523
    if-eqz v5, :cond_0

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v7

    if-gt v7, v0, :cond_1

    .line 525
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 526
    goto :goto_1

    .line 520
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 529
    .end local v5    # "i":I
    :cond_2
    :goto_1
    nop

    .line 518
    .end local v2    # "$this$linesRetainedForLookahead_u24lambda_u240":Ljava/util/List;
    .end local v3    # "$i$a$-run-LazyGridMeasureKt$linesRetainedForLookahead$firstItem$1":I
    .end local v4    # "found":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    nop

    .line 517
    nop

    .line 531
    .local v4, "firstItem":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    invoke-interface/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 532
    .local v2, "lastVisibleItem":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v3, :cond_3

    .line 730
    .local v3, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/4 v7, 0x0

    .line 532
    .local v7, "$i$a$-let-LazyGridMeasureKt$linesRetainedForLookahead$lineIndex$1":I
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getIndex()I

    move-result v8

    add-int/2addr v8, v6

    .end local v3    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v7    # "$i$a$-let-LazyGridMeasureKt$linesRetainedForLookahead$lineIndex$1":I
    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 533
    .local v8, "lineIndex":I
    :goto_2
    if-eqz v4, :cond_e

    .line 534
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v3

    .local v3, "i":I
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v7

    add-int/lit8 v9, p1, -0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v3, v7, :cond_d

    .line 535
    :goto_3
    if-eqz v1, :cond_9

    move-object v9, v1

    .local v9, "$this$fastAny$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 731
    .local v10, "$i$f$fastAny":I
    move-object v11, v9

    .local v11, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 732
    .local v12, "$i$f$fastForEach":I
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    move-object v14, v11

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    :goto_4
    if-ge v13, v14, :cond_8

    .line 733
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 734
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 731
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v18, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/16 v19, 0x0

    .line 535
    .local v19, "$i$a$-fastAny-LazyGridMeasureKt$linesRetainedForLookahead$1":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v5

    .local v5, "$this$any$iv":[Ljava/lang/Object;
    const/16 v20, 0x0

    .line 735
    .local v20, "$i$f$any":I
    array-length v6, v5

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_6

    aget-object v21, v5, v0

    .local v21, "element$iv":Ljava/lang/Object;
    move-object/from16 v22, v21

    .local v22, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v23, 0x0

    .line 535
    .local v23, "$i$a$-any-LazyGridMeasureKt$linesRetainedForLookahead$1$1":I
    move/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    .line 735
    .end local v22    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v23    # "$i$a$-any-LazyGridMeasureKt$linesRetainedForLookahead$1$1":I
    :goto_6
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_7

    .end local v21    # "element$iv":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v0, v24, 0x1

    goto :goto_5

    .line 736
    :cond_6
    const/4 v0, 0x0

    .line 535
    .end local v5    # "$this$any$iv":[Ljava/lang/Object;
    .end local v20    # "$i$f$any":I
    :goto_7
    nop

    .line 731
    .end local v18    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v19    # "$i$a$-fastAny-LazyGridMeasureKt$linesRetainedForLookahead$1":I
    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    .line 734
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_7
    nop

    .line 732
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    move/from16 v0, p0

    goto :goto_4

    .line 737
    .end local v13    # "index$iv$iv":I
    :cond_8
    nop

    .line 738
    .end local v11    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 535
    .end local v9    # "$this$fastAny$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastAny":I
    :goto_8
    const/4 v5, 0x1

    if-ne v0, v5, :cond_a

    move v0, v5

    goto :goto_9

    :cond_9
    move v5, v6

    :cond_a
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    .line 536
    if-nez v1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 537
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v6

    .line 538
    .local v6, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    add-int/lit8 v8, v8, 0x1

    .line 539
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 535
    .end local v6    # "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :cond_c
    move-object/from16 v0, p2

    .line 534
    :goto_a
    if-eq v3, v7, :cond_11

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p0

    move v6, v5

    goto :goto_3

    :cond_d
    move-object/from16 v0, p2

    goto :goto_b

    .line 533
    .end local v3    # "i":I
    :cond_e
    move-object/from16 v0, p2

    goto :goto_b

    .line 513
    .end local v2    # "lastVisibleItem":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .end local v4    # "firstItem":Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .end local v8    # "lineIndex":I
    :cond_f
    move-object/from16 v0, p2

    goto :goto_b

    .line 510
    :cond_10
    move-object/from16 v0, p2

    .line 545
    :cond_11
    :goto_b
    if-nez v1, :cond_12

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_c

    :cond_12
    move-object v2, v1

    :goto_c
    return-object v2
.end method

.method public static final measureLazyGrid-t1x4au0(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 65
    .param p0, "itemsCount"    # I
    .param p1, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .param p2, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p3, "mainAxisAvailableSize"    # I
    .param p4, "beforeContentPadding"    # I
    .param p5, "afterContentPadding"    # I
    .param p6, "spaceBetweenLines"    # I
    .param p7, "firstVisibleLineIndex"    # I
    .param p8, "firstVisibleLineScrollOffset"    # I
    .param p9, "scrollToBeConsumed"    # F
    .param p10, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .param p12, "isVertical"    # Z
    .param p13, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p14, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p15, "reverseLayout"    # Z
    .param p16, "density"    # Landroidx/compose/ui/unit/Density;
    .param p17, "itemAnimator"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .param p18, "slotsPerLine"    # I
    .param p19, "pinnedItems"    # Ljava/util/List;
    .param p20, "isInLookaheadScope"    # Z
    .param p21, "isLookingAhead"    # Z
    .param p22, "approachLayoutInfo"    # Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .param p23, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p24, "$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p25, "graphicsContext"    # Landroidx/compose/ui/graphics/GraphicsContext;
    .param p26, "prefetchInfoRetriever"    # Lkotlin/jvm/functions/Function1;
    .param p27, "lineIndexProvider"    # Lkotlin/jvm/functions/Function1;
    .param p28, "stickyItemsScrollBehavior"    # Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;
    .param p29, "layout"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    .line 83
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v12, p4

    move-wide/from16 v7, p10

    move-object/from16 v9, p29

    const/4 v10, 0x0

    const/16 v28, 0x1

    if-ltz v12, :cond_0

    move/from16 v0, v28

    goto :goto_0

    :cond_0
    move v0, v10

    .local v0, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 641
    .local v3, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 642
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$1":I
    nop

    .line 642
    .end local v4    # "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$1":I
    const-string/jumbo v4, "negative beforeContentPadding"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 644
    :cond_1
    nop

    .line 84
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    if-ltz p5, :cond_2

    move/from16 v0, v28

    goto :goto_1

    :cond_2
    move v0, v10

    .restart local v0    # "value$iv":Z
    :goto_1
    const/4 v3, 0x0

    .line 645
    .restart local v3    # "$i$f$requirePrecondition":I
    if-nez v0, :cond_3

    .line 646
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$2":I
    nop

    .line 646
    .end local v4    # "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$2":I
    const-string/jumbo v4, "negative afterContentPadding"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 648
    :cond_3
    nop

    .line 85
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    const-wide v29, 0xffffffffL

    const/16 v11, 0x20

    if-gtz v1, :cond_7

    .line 87
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v15

    .line 88
    .local v15, "layoutWidth":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v16

    .line 91
    .local v16, "layoutHeight":I
    nop

    .line 92
    nop

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 94
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v18

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    move-object/from16 v19, v6

    check-cast v19, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    .line 96
    nop

    .line 98
    nop

    .line 97
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 89
    const/4 v14, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v20, p12

    move-object/from16 v13, p17

    move/from16 v22, p18

    move/from16 v23, p20

    move/from16 v21, p21

    move-object/from16 v26, p23

    move-object/from16 v27, p25

    invoke-virtual/range {v13 .. v27}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 105
    if-nez p21, :cond_5

    .line 106
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v3

    .line 107
    .local v3, "disappearingItemsSize":J
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    move-wide v13, v3

    .local v13, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v0, 0x0

    .line 649
    .local v0, "$i$f$getWidth-impl":I
    move-wide/from16 v17, v13

    .local v17, "value$iv$iv":J
    const/4 v5, 0x0

    .line 650
    .local v5, "$i$f$unpackInt1":I
    shr-long v10, v17, v11

    long-to-int v5, v10

    .line 649
    .end local v5    # "$i$f$unpackInt1":I
    .end local v17    # "value$iv$iv":J
    nop

    .line 108
    .end local v0    # "$i$f$getWidth-impl":I
    .end local v13    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    invoke-static {v7, v8, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v15

    .line 109
    move-wide v10, v3

    .local v10, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v0, 0x0

    .line 651
    .local v0, "$i$f$getHeight-impl":I
    move-wide v13, v10

    .local v13, "value$iv$iv":J
    const/4 v5, 0x0

    .line 652
    .local v5, "$i$f$unpackInt2":I
    move-wide/from16 v17, v3

    .end local v3    # "disappearingItemsSize":J
    .local v17, "disappearingItemsSize":J
    and-long v3, v13, v29

    long-to-int v3, v3

    .line 651
    .end local v5    # "$i$f$unpackInt2":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 109
    .end local v0    # "$i$f$getHeight-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    invoke-static {v7, v8, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v16

    goto :goto_2

    .line 107
    .end local v17    # "disappearingItemsSize":J
    .restart local v3    # "disappearingItemsSize":J
    :cond_4
    move-wide/from16 v17, v3

    .line 117
    .end local v3    # "disappearingItemsSize":J
    :cond_5
    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v9, v0, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroidx/compose/ui/layout/MeasureResult;

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v44

    .line 120
    neg-int v0, v12

    .line 121
    add-int v46, p3, p5

    .line 124
    if-eqz p12, :cond_6

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3

    :cond_6
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_3
    move-object/from16 v49, v3

    .line 112
    new-instance v31, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 127
    nop

    .line 130
    nop

    .line 128
    nop

    .line 129
    nop

    .line 131
    nop

    .line 132
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 112
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v47, 0x0

    move/from16 v50, p5

    move/from16 v51, p6

    move/from16 v48, p15

    move-object/from16 v40, p16

    move/from16 v41, p18

    move-object/from16 v39, p23

    move-object/from16 v42, p26

    move-object/from16 v43, p27

    move/from16 v45, v0

    invoke-direct/range {v31 .. v51}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v31

    .line 135
    .end local v15    # "layoutWidth":I
    .end local v16    # "layoutHeight":I
    :cond_7
    move/from16 v0, p7

    .line 136
    .local v0, "currentFirstLineIndex":I
    move/from16 v3, p8

    .line 139
    .local v3, "currentFirstLineScrollOffset":I
    move/from16 v4, p9

    .local v4, "$this$fastRoundToInt$iv":F
    const/4 v5, 0x0

    .line 653
    .local v5, "$i$f$fastRoundToInt":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 139
    .end local v4    # "$this$fastRoundToInt$iv":F
    .end local v5    # "$i$f$fastRoundToInt":I
    nop

    .line 143
    .local v4, "scrollDelta":I
    sub-int/2addr v3, v4

    .line 146
    if-nez v0, :cond_8

    if-gez v3, :cond_8

    .line 147
    add-int/2addr v4, v3

    .line 148
    const/4 v3, 0x0

    .line 152
    :cond_8
    new-instance v5, Lkotlin/collections/ArrayDeque;

    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v13, v5

    .line 155
    .local v13, "visibleLines":Lkotlin/collections/ArrayDeque;
    neg-int v5, v12

    if-gez p6, :cond_9

    move/from16 v14, p6

    goto :goto_4

    :cond_9
    move v14, v10

    :goto_4
    add-int/2addr v14, v5

    .line 156
    .local v14, "minOffset":I
    move/from16 v15, p3

    .line 161
    .local v15, "maxOffset":I
    add-int/2addr v3, v14

    .line 166
    :goto_5
    if-gez v3, :cond_a

    if-lez v0, :cond_a

    .line 167
    add-int/lit8 v5, v0, -0x1

    .line 168
    .local v5, "previous":I
    move/from16 v44, v11

    invoke-virtual {v2, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v11

    .line 169
    .local v11, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-virtual {v13, v10, v11}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 170
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v16

    add-int v3, v3, v16

    .line 171
    move v0, v5

    move/from16 v11, v44

    .end local v5    # "previous":I
    .end local v11    # "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    goto :goto_5

    .line 166
    :cond_a
    move/from16 v44, v11

    .line 176
    if-ge v3, v14, :cond_b

    .line 177
    sub-int v5, v14, v3

    .line 178
    .local v5, "notConsumedScrollDelta":I
    move v3, v14

    .line 179
    sub-int/2addr v4, v5

    .line 183
    .end local v5    # "notConsumedScrollDelta":I
    :cond_b
    sub-int/2addr v3, v14

    .line 185
    move v5, v0

    .line 186
    .local v5, "index":I
    add-int v11, v15, p5

    invoke-static {v11, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 187
    .local v11, "maxMainAxis":I
    neg-int v10, v3

    .line 192
    .local v10, "currentMainAxisOffset":I
    const/16 v16, 0x0

    .line 195
    .local v16, "remeasureNeeded":Z
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 196
    .local v9, "indexInVisibleLines":I
    :goto_6
    move/from16 v17, v0

    .end local v0    # "currentFirstLineIndex":I
    .local v17, "currentFirstLineIndex":I
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ge v9, v0, :cond_d

    .line 197
    if-lt v10, v11, :cond_c

    .line 199
    invoke-virtual {v13, v9}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    .end local v16    # "remeasureNeeded":Z
    .local v0, "remeasureNeeded":Z
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v16, v0

    goto :goto_7

    .line 202
    .end local v0    # "remeasureNeeded":Z
    .restart local v16    # "remeasureNeeded":Z
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 203
    invoke-virtual {v13, v9}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v10, v0

    .line 204
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "indexInVisibleLines":I
    .local v0, "indexInVisibleLines":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v9, v0

    .end local v0    # "indexInVisibleLines":I
    .restart local v9    # "indexInVisibleLines":I
    :goto_7
    move/from16 v0, v17

    goto :goto_6

    .line 196
    :cond_d
    move v0, v10

    move v10, v5

    move v5, v0

    move/from16 v46, v16

    move/from16 v0, v17

    .line 212
    .end local v16    # "remeasureNeeded":Z
    .end local v17    # "currentFirstLineIndex":I
    .local v0, "currentFirstLineIndex":I
    .local v5, "currentMainAxisOffset":I
    .local v10, "index":I
    .local v46, "remeasureNeeded":Z
    :goto_8
    if-ge v10, v1, :cond_13

    .line 213
    if-lt v5, v11, :cond_f

    .line 214
    if-lez v5, :cond_f

    .line 215
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v16, v0

    move/from16 v17, v3

    goto :goto_b

    .line 217
    :cond_f
    :goto_9
    move/from16 v16, v0

    .end local v0    # "currentFirstLineIndex":I
    .local v16, "currentFirstLineIndex":I
    invoke-virtual {v2, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v0

    .line 218
    .local v0, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 219
    move/from16 v17, v3

    goto :goto_b

    .line 222
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v17

    add-int v5, v5, v17

    .line 223
    nop

    .line 224
    if-gt v5, v14, :cond_11

    .line 225
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v1

    move/from16 v17, v3

    .end local v3    # "currentFirstLineScrollOffset":I
    .local v17, "currentFirstLineScrollOffset":I
    add-int/lit8 v3, p0, -0x1

    if-eq v1, v3, :cond_12

    .line 228
    add-int/lit8 v1, v10, 0x1

    .line 229
    .end local v16    # "currentFirstLineIndex":I
    .local v1, "currentFirstLineIndex":I
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v3

    sub-int v3, v17, v3

    .line 230
    .end local v17    # "currentFirstLineScrollOffset":I
    .restart local v3    # "currentFirstLineScrollOffset":I
    const/16 v16, 0x1

    .end local v46    # "remeasureNeeded":Z
    .local v16, "remeasureNeeded":Z
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v16

    move/from16 v16, v1

    goto :goto_a

    .line 224
    .end local v1    # "currentFirstLineIndex":I
    .local v16, "currentFirstLineIndex":I
    .restart local v46    # "remeasureNeeded":Z
    :cond_11
    move/from16 v17, v3

    .line 232
    .end local v3    # "currentFirstLineScrollOffset":I
    .restart local v17    # "currentFirstLineScrollOffset":I
    :cond_12
    invoke-virtual {v13, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move/from16 v3, v17

    .line 234
    .end local v17    # "currentFirstLineScrollOffset":I
    .restart local v3    # "currentFirstLineScrollOffset":I
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p0

    move/from16 v0, v16

    goto :goto_8

    .line 212
    .end local v16    # "currentFirstLineIndex":I
    .local v0, "currentFirstLineIndex":I
    :cond_13
    move/from16 v16, v0

    move/from16 v17, v3

    .line 237
    .end local v0    # "currentFirstLineIndex":I
    .end local v3    # "currentFirstLineScrollOffset":I
    .restart local v16    # "currentFirstLineIndex":I
    .restart local v17    # "currentFirstLineScrollOffset":I
    :goto_b
    move v0, v4

    .line 240
    .local v0, "preScrollBackScrollDelta":I
    if-ge v5, v15, :cond_16

    .line 241
    sub-int v1, v15, v5

    .line 242
    .local v1, "toScrollBack":I
    sub-int v3, v17, v1

    .line 243
    .end local v17    # "currentFirstLineScrollOffset":I
    .restart local v3    # "currentFirstLineScrollOffset":I
    add-int/2addr v5, v1

    .line 245
    :goto_c
    if-ge v3, v12, :cond_14

    if-lez v16, :cond_14

    .line 247
    move/from16 v18, v1

    .end local v1    # "toScrollBack":I
    .local v18, "toScrollBack":I
    add-int/lit8 v1, v16, -0x1

    .line 248
    .local v1, "previousIndex":I
    move/from16 v17, v3

    .end local v3    # "currentFirstLineScrollOffset":I
    .restart local v17    # "currentFirstLineScrollOffset":I
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v3

    .line 249
    .local v3, "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "previousIndex":I
    .local v19, "previousIndex":I
    invoke-virtual {v13, v1, v3}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v1

    add-int v1, v17, v1

    .line 251
    .end local v17    # "currentFirstLineScrollOffset":I
    .local v1, "currentFirstLineScrollOffset":I
    move/from16 v16, v19

    move v3, v1

    move/from16 v1, v18

    .end local v3    # "measuredLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v19    # "previousIndex":I
    goto :goto_c

    .line 245
    .end local v18    # "toScrollBack":I
    .local v1, "toScrollBack":I
    .local v3, "currentFirstLineScrollOffset":I
    :cond_14
    move/from16 v18, v1

    move/from16 v17, v3

    .line 253
    .end local v1    # "toScrollBack":I
    .end local v3    # "currentFirstLineScrollOffset":I
    .restart local v17    # "currentFirstLineScrollOffset":I
    .restart local v18    # "toScrollBack":I
    add-int v4, v4, v18

    .line 254
    if-gez v17, :cond_15

    .line 255
    add-int v4, v4, v17

    .line 256
    add-int v5, v5, v17

    .line 257
    const/4 v3, 0x0

    move v1, v3

    move v3, v4

    move/from16 v36, v5

    move/from16 v47, v16

    .end local v17    # "currentFirstLineScrollOffset":I
    .restart local v3    # "currentFirstLineScrollOffset":I
    goto :goto_d

    .line 254
    .end local v3    # "currentFirstLineScrollOffset":I
    .restart local v17    # "currentFirstLineScrollOffset":I
    :cond_15
    move v3, v4

    move/from16 v36, v5

    move/from16 v47, v16

    move/from16 v1, v17

    goto :goto_d

    .line 240
    .end local v18    # "toScrollBack":I
    :cond_16
    move v3, v4

    move/from16 v36, v5

    move/from16 v47, v16

    move/from16 v1, v17

    .line 266
    .end local v4    # "scrollDelta":I
    .end local v5    # "currentMainAxisOffset":I
    .end local v16    # "currentFirstLineIndex":I
    .end local v17    # "currentFirstLineScrollOffset":I
    .local v1, "currentFirstLineScrollOffset":I
    .local v3, "scrollDelta":I
    .local v36, "currentMainAxisOffset":I
    .local v47, "currentFirstLineIndex":I
    :goto_d
    nop

    .line 267
    move/from16 v4, p9

    .local v4, "$this$fastRoundToInt$iv":F
    const/4 v5, 0x0

    .line 654
    .local v5, "$i$f$fastRoundToInt":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 267
    .end local v4    # "$this$fastRoundToInt$iv":F
    .end local v5    # "$i$f$fastRoundToInt":I
    invoke-static {v4}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v4

    invoke-static {v3}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v5

    if-ne v4, v5, :cond_17

    .line 268
    move/from16 v4, p9

    .restart local v4    # "$this$fastRoundToInt$iv":F
    const/4 v5, 0x0

    .line 655
    .restart local v5    # "$i$f$fastRoundToInt":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 268
    .end local v4    # "$this$fastRoundToInt$iv":F
    .end local v5    # "$i$f$fastRoundToInt":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_17

    .line 270
    int-to-float v4, v3

    goto :goto_e

    .line 272
    :cond_17
    move/from16 v4, p9

    .line 266
    :goto_e
    nop

    .line 265
    nop

    .line 275
    .local v4, "consumedScroll":F
    sub-float v48, p9, v4

    .line 280
    .local v48, "unconsumedScroll":F
    const/4 v5, 0x0

    if-eqz p21, :cond_18

    if-le v3, v0, :cond_18

    cmpg-float v16, v48, v5

    if-gtz v16, :cond_18

    .line 281
    sub-int v5, v3, v0

    int-to-float v5, v5

    add-float v5, v5, v48

    goto :goto_f

    .line 282
    :cond_18
    nop

    .line 280
    :goto_f
    nop

    .line 279
    move/from16 v49, v5

    .line 285
    .local v49, "scrollBackAmount":F
    if-ltz v1, :cond_19

    move/from16 v5, v28

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    .local v5, "value$iv":Z
    :goto_10
    const/16 v16, 0x0

    .line 656
    .local v16, "$i$f$requirePrecondition":I
    if-nez v5, :cond_1a

    .line 657
    const/16 v17, 0x0

    .line 285
    .local v17, "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$4":I
    nop

    .line 657
    .end local v17    # "$i$a$-requirePrecondition-LazyGridMeasureKt$measureLazyGrid$4":I
    const-string/jumbo v17, "negative initial offset"

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 659
    :cond_1a
    nop

    .line 286
    .end local v5    # "value$iv":Z
    .end local v16    # "$i$f$requirePrecondition":I
    neg-int v5, v1

    .line 287
    .local v5, "visibleLinesScrollOffset":I
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 289
    .local v16, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v17

    if-eqz v17, :cond_1b

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v17

    goto :goto_11

    :cond_1b
    const/16 v17, 0x0

    :goto_11
    move/from16 v50, v17

    .line 290
    .local v50, "firstItemIndex":I
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v17

    if-eqz v17, :cond_1c

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v17

    goto :goto_12

    :cond_1c
    const/16 v17, 0x0

    .line 293
    .local v17, "lastItemIndex":I
    :goto_12
    nop

    .line 294
    nop

    .line 295
    nop

    .line 292
    move-object/from16 v18, p19

    .local v18, "pinnedItems$iv":Ljava/util/List;
    move-object/from16 v19, p2

    .local v19, "measuredItemProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    move-object/from16 v25, p1

    .local v25, "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    const/16 v26, 0x0

    .line 660
    .local v26, "$i$f$calculateExtraItems":I
    const/16 v20, 0x0

    .line 662
    .local v20, "items$iv":Ljava/lang/Object;
    move-object/from16 v27, v18

    .local v27, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v31, 0x0

    .line 663
    .local v31, "$i$f$fastForEach":I
    const/16 v21, 0x0

    .local v21, "index$iv$iv":I
    move-object/from16 v22, v27

    check-cast v22, Ljava/util/Collection;

    move/from16 v32, v0

    .end local v0    # "preScrollBackScrollDelta":I
    .local v32, "preScrollBackScrollDelta":I
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v34, v1

    move-object/from16 v33, v20

    move/from16 v1, v21

    .end local v20    # "items$iv":Ljava/lang/Object;
    .end local v21    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local v33, "items$iv":Ljava/lang/Object;
    .local v34, "currentFirstLineScrollOffset":I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 664
    move/from16 v35, v0

    move-object/from16 v0, v27

    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 665
    .local v27, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v27

    check-cast v20, Ljava/lang/Number;

    move-object/from16 v37, v0

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v37, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "index$iv":I
    const/16 v38, 0x0

    .line 666
    .local v38, "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    move/from16 v20, v0

    .local v20, "it":I
    const/16 v21, 0x0

    .line 296
    .local v21, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$1":I
    if-ltz v20, :cond_1d

    move/from16 v39, v1

    move/from16 v51, v9

    move/from16 v1, v20

    move/from16 v9, v50

    .end local v20    # "it":I
    .end local v50    # "firstItemIndex":I
    .local v1, "it":I
    .local v9, "firstItemIndex":I
    .local v39, "index$iv$iv":I
    .local v51, "indexInVisibleLines":I
    if-ge v1, v9, :cond_1e

    move/from16 v1, v28

    goto :goto_14

    .end local v39    # "index$iv$iv":I
    .end local v51    # "indexInVisibleLines":I
    .local v1, "index$iv$iv":I
    .local v9, "indexInVisibleLines":I
    .restart local v20    # "it":I
    .restart local v50    # "firstItemIndex":I
    :cond_1d
    move/from16 v39, v1

    move/from16 v51, v9

    move/from16 v1, v20

    move/from16 v9, v50

    .end local v20    # "it":I
    .end local v50    # "firstItemIndex":I
    .local v1, "it":I
    .local v9, "firstItemIndex":I
    .restart local v39    # "index$iv$iv":I
    .restart local v51    # "indexInVisibleLines":I
    :cond_1e
    const/4 v1, 0x0

    .line 666
    .end local v1    # "it":I
    .end local v21    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsBefore$1":I
    :goto_14
    if-eqz v1, :cond_20

    .line 667
    move-object/from16 v1, v25

    .end local v25    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .local v1, "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v2

    .line 668
    .local v2, "span$iv":I
    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "index$iv":I
    .local v20, "index$iv":I
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v23

    .line 670
    .local v23, "constraints$iv":J
    nop

    .line 671
    nop

    .line 673
    nop

    .line 674
    nop

    .line 672
    nop

    .line 670
    const/16 v21, 0x0

    move/from16 v22, v2

    .end local v2    # "span$iv":I
    .local v22, "span$iv":I
    invoke-virtual/range {v19 .. v24}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    .line 669
    nop

    .line 676
    .local v0, "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v33, :cond_1f

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v2

    check-cast v33, Ljava/util/List;

    move-object/from16 v2, v33

    goto :goto_15

    .line 676
    :cond_1f
    move-object/from16 v2, v33

    .line 679
    .end local v33    # "items$iv":Ljava/lang/Object;
    .local v2, "items$iv":Ljava/lang/Object;
    :goto_15
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v33, v2

    goto :goto_16

    .line 666
    .end local v1    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .end local v2    # "items$iv":Ljava/lang/Object;
    .end local v20    # "index$iv":I
    .end local v22    # "span$iv":I
    .end local v23    # "constraints$iv":J
    .local v0, "index$iv":I
    .restart local v25    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .restart local v33    # "items$iv":Ljava/lang/Object;
    :cond_20
    move/from16 v20, v0

    move-object/from16 v1, v25

    .line 681
    .end local v0    # "index$iv":I
    .end local v25    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .restart local v1    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .restart local v20    # "index$iv":I
    :goto_16
    nop

    .line 665
    .end local v20    # "index$iv":I
    .end local v38    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    nop

    .line 663
    .end local v27    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v39, 0x1

    move-object/from16 v2, p1

    move-object/from16 v25, v1

    move/from16 v50, v9

    move-object/from16 v27, v37

    move/from16 v9, v51

    move v1, v0

    move/from16 v0, v35

    .end local v39    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    goto :goto_13

    .end local v0    # "index$iv$iv":I
    .end local v37    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v51    # "indexInVisibleLines":I
    .local v1, "index$iv$iv":I
    .local v9, "indexInVisibleLines":I
    .restart local v25    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .local v27, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v50    # "firstItemIndex":I
    :cond_21
    move/from16 v39, v1

    move/from16 v51, v9

    move-object/from16 v1, v25

    move-object/from16 v37, v27

    move/from16 v9, v50

    .line 682
    .end local v25    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .end local v27    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v50    # "firstItemIndex":I
    .local v1, "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .local v9, "firstItemIndex":I
    .restart local v37    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v51    # "indexInVisibleLines":I
    nop

    .line 683
    .end local v31    # "$i$f$fastForEach":I
    .end local v37    # "$this$fastForEach$iv$iv":Ljava/util/List;
    if-nez v33, :cond_22

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v33, v0

    .line 292
    .end local v1    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .end local v18    # "pinnedItems$iv":Ljava/util/List;
    .end local v19    # "measuredItemProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .end local v26    # "$i$f$calculateExtraItems":I
    .end local v33    # "items$iv":Ljava/lang/Object;
    :cond_22
    nop

    .line 291
    nop

    .line 301
    .local v33, "extraItemsBefore":Ljava/util/List;
    nop

    .line 302
    nop

    .line 303
    nop

    .line 304
    nop

    .line 305
    move v0, v4

    .end local v4    # "consumedScroll":F
    .local v0, "consumedScroll":F
    move-object v4, v13

    check-cast v4, Ljava/util/List;

    .line 306
    nop

    .line 300
    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v52, v3

    move/from16 v38, v5

    move/from16 v53, v9

    move/from16 v54, v10

    move/from16 v50, v32

    move/from16 v10, v36

    move/from16 v3, p21

    move-object/from16 v5, p22

    move v9, v0

    move/from16 v0, v17

    .end local v3    # "scrollDelta":I
    .end local v5    # "visibleLinesScrollOffset":I
    .end local v17    # "lastItemIndex":I
    .end local v32    # "preScrollBackScrollDelta":I
    .end local v36    # "currentMainAxisOffset":I
    .local v0, "lastItemIndex":I
    .local v9, "consumedScroll":F
    .local v10, "currentMainAxisOffset":I
    .local v38, "visibleLinesScrollOffset":I
    .local v50, "preScrollBackScrollDelta":I
    .local v52, "scrollDelta":I
    .local v53, "firstItemIndex":I
    .local v54, "index":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->linesRetainedForLookahead(IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;ZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)Ljava/util/List;

    move-result-object v4

    .line 299
    move-object/from16 v64, v2

    move v2, v0

    move-object/from16 v0, v64

    .end local v0    # "lastItemIndex":I
    .local v2, "lastItemIndex":I
    move-object/from16 v55, v4

    .line 311
    .local v55, "linesRetainedForLookahead":Ljava/util/List;
    nop

    .line 312
    nop

    .line 313
    nop

    .line 310
    move-object/from16 v3, p19

    .local v3, "pinnedItems$iv":Ljava/util/List;
    move-object/from16 v4, p1

    .local v4, "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    move-object/from16 v17, p2

    .local v17, "measuredItemProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    const/4 v5, 0x0

    .line 684
    .local v5, "$i$f$calculateExtraItems":I
    const/16 v18, 0x0

    .line 686
    .local v18, "items$iv":Ljava/lang/Object;
    move-object/from16 v23, v3

    .local v23, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v24, 0x0

    .line 687
    .local v24, "$i$f$fastForEach":I
    const/16 v19, 0x0

    .local v19, "index$iv$iv":I
    move-object/from16 v20, v23

    check-cast v20, Ljava/util/Collection;

    move/from16 v56, v2

    .end local v2    # "lastItemIndex":I
    .local v56, "lastItemIndex":I
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v2

    move-object/from16 v26, v3

    move-object/from16 v25, v18

    move/from16 v3, v19

    .end local v18    # "items$iv":Ljava/lang/Object;
    .end local v19    # "index$iv$iv":I
    .local v3, "index$iv$iv":I
    .local v25, "items$iv":Ljava/lang/Object;
    .local v26, "pinnedItems$iv":Ljava/util/List;
    :goto_17
    if-ge v3, v2, :cond_2d

    .line 688
    move/from16 v27, v2

    move-object/from16 v2, v23

    .end local v23    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 689
    .local v23, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v23

    check-cast v18, Ljava/lang/Number;

    move-object/from16 v31, v2

    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v31, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index$iv":I
    const/16 v32, 0x0

    .line 690
    .local v32, "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    move/from16 v18, v2

    .local v18, "it":I
    const/16 v19, 0x0

    .line 315
    .local v19, "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1":I
    move/from16 v35, v3

    .end local v3    # "index$iv$iv":I
    .local v35, "index$iv$iv":I
    add-int/lit8 v3, v56, 0x1

    move/from16 v36, v5

    move/from16 v5, v18

    .end local v18    # "it":I
    .local v5, "it":I
    .local v36, "$i$f$calculateExtraItems":I
    if-gt v3, v5, :cond_23

    if-ge v5, v1, :cond_23

    move/from16 v3, v28

    goto :goto_18

    :cond_23
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_2a

    .line 316
    if-eqz p21, :cond_29

    .line 317
    move-object/from16 v3, v55

    .local v3, "$this$fastAny$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 691
    .local v18, "$i$f$fastAny":I
    move-object/from16 v20, v3

    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 692
    .local v21, "$i$f$fastForEach":I
    const/16 v22, 0x0

    .local v22, "index$iv$iv":I
    move-object/from16 v37, v20

    check-cast v37, Ljava/util/Collection;

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->size()I

    move-result v1

    move-object/from16 v37, v3

    move/from16 v3, v22

    .end local v22    # "index$iv$iv":I
    .local v3, "index$iv$iv":I
    .local v37, "$this$fastAny$iv":Ljava/util/List;
    :goto_19
    if-ge v3, v1, :cond_28

    .line 693
    move/from16 v22, v1

    move-object/from16 v1, v20

    .end local v20    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 694
    .local v20, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v39, v20

    .local v39, "it$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 691
    .local v40, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v41, v39

    check-cast v41, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .local v41, "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    const/16 v42, 0x0

    .line 318
    .local v42, "$i$a$-fastAny-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1$1":I
    move-object/from16 v43, v1

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v43, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    .local v1, "$this$any$iv":[Ljava/lang/Object;
    const/16 v57, 0x0

    .line 695
    .local v57, "$i$f$any":I
    move/from16 v58, v3

    .end local v3    # "index$iv$iv":I
    .local v58, "index$iv$iv":I
    array-length v3, v1

    move-object/from16 v59, v1

    const/4 v1, 0x0

    .end local v1    # "$this$any$iv":[Ljava/lang/Object;
    .local v59, "$this$any$iv":[Ljava/lang/Object;
    :goto_1a
    if-ge v1, v3, :cond_26

    aget-object v60, v59, v1

    .local v60, "element$iv":Ljava/lang/Object;
    move-object/from16 v61, v60

    .local v61, "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v62, 0x0

    .line 318
    .local v62, "$i$a$-any-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1$1$1":I
    move/from16 v63, v1

    invoke-virtual/range {v61 .. v61}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v1

    if-ne v1, v5, :cond_24

    move/from16 v1, v28

    goto :goto_1b

    :cond_24
    const/4 v1, 0x0

    .line 695
    .end local v61    # "item":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v62    # "$i$a$-any-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1$1$1":I
    :goto_1b
    if-eqz v1, :cond_25

    move/from16 v1, v28

    goto :goto_1c

    .end local v60    # "element$iv":Ljava/lang/Object;
    :cond_25
    add-int/lit8 v1, v63, 0x1

    goto :goto_1a

    .line 696
    :cond_26
    const/4 v1, 0x0

    .line 318
    .end local v57    # "$i$f$any":I
    .end local v59    # "$this$any$iv":[Ljava/lang/Object;
    :goto_1c
    nop

    .line 691
    .end local v41    # "line":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v42    # "$i$a$-fastAny-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1$1":I
    if-eqz v1, :cond_27

    move/from16 v1, v28

    goto :goto_1d

    .line 694
    .end local v39    # "it$iv":Ljava/lang/Object;
    .end local v40    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_27
    nop

    .line 692
    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v58, 0x1

    move/from16 v1, v22

    move-object/from16 v20, v43

    .end local v58    # "index$iv$iv":I
    .restart local v3    # "index$iv$iv":I
    goto :goto_19

    .end local v43    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_28
    move/from16 v58, v3

    move-object/from16 v43, v20

    .line 697
    .end local v3    # "index$iv$iv":I
    .end local v20    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v43    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 698
    .end local v21    # "$i$f$fastForEach":I
    .end local v43    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 317
    .end local v18    # "$i$f$fastAny":I
    .end local v37    # "$this$fastAny$iv":Ljava/util/List;
    :goto_1d
    if-nez v1, :cond_2a

    :cond_29
    move/from16 v1, v28

    goto :goto_1e

    :cond_2a
    const/4 v1, 0x0

    .line 319
    :goto_1e
    nop

    .line 690
    .end local v5    # "it":I
    .end local v19    # "$i$a$-calculateExtraItems-LazyGridMeasureKt$measureLazyGrid$extraItemsAfter$1":I
    if-eqz v1, :cond_2c

    .line 699
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v1

    .line 700
    .local v1, "span$iv":I
    const/4 v3, 0x0

    invoke-virtual {v4, v3, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v21

    .line 702
    .local v21, "constraints$iv":J
    nop

    .line 703
    nop

    .line 705
    nop

    .line 706
    nop

    .line 704
    nop

    .line 702
    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v18, v2

    .end local v1    # "span$iv":I
    .end local v2    # "index$iv":I
    .local v18, "index$iv":I
    .local v20, "span$iv":I
    invoke-virtual/range {v17 .. v22}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    .line 701
    nop

    .line 708
    .local v1, "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    if-nez v25, :cond_2b

    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v2

    check-cast v25, Ljava/util/List;

    move-object/from16 v2, v25

    goto :goto_1f

    .line 708
    :cond_2b
    move-object/from16 v2, v25

    .line 711
    .end local v25    # "items$iv":Ljava/lang/Object;
    .local v2, "items$iv":Ljava/lang/Object;
    :goto_1f
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v2

    goto :goto_20

    .line 690
    .end local v1    # "measuredItem$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v18    # "index$iv":I
    .end local v20    # "span$iv":I
    .end local v21    # "constraints$iv":J
    .local v2, "index$iv":I
    .restart local v25    # "items$iv":Ljava/lang/Object;
    :cond_2c
    move/from16 v18, v2

    const/4 v3, 0x0

    .line 713
    .end local v2    # "index$iv":I
    .restart local v18    # "index$iv":I
    :goto_20
    nop

    .line 689
    .end local v18    # "index$iv":I
    .end local v32    # "$i$a$-fastForEach-LazyGridMeasureKt$calculateExtraItems$1$iv":I
    nop

    .line 687
    .end local v23    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v35, 0x1

    move v3, v1

    move/from16 v2, v27

    move-object/from16 v23, v31

    move/from16 v5, v36

    move/from16 v1, p0

    .end local v35    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    goto/16 :goto_17

    .end local v1    # "index$iv$iv":I
    .end local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v36    # "$i$f$calculateExtraItems":I
    .restart local v3    # "index$iv$iv":I
    .local v5, "$i$f$calculateExtraItems":I
    .local v23, "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_2d
    move/from16 v35, v3

    move/from16 v36, v5

    move-object/from16 v31, v23

    const/4 v3, 0x0

    .line 714
    .end local v3    # "index$iv$iv":I
    .end local v5    # "$i$f$calculateExtraItems":I
    .end local v23    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v36    # "$i$f$calculateExtraItems":I
    nop

    .line 715
    .end local v24    # "$i$f$fastForEach":I
    .end local v31    # "$this$fastForEach$iv$iv":Ljava/util/List;
    if-nez v25, :cond_2e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v25, v1

    .line 310
    .end local v4    # "measuredLineProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .end local v17    # "measuredItemProvider$iv":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .end local v25    # "items$iv":Ljava/lang/Object;
    .end local v26    # "pinnedItems$iv":Ljava/util/List;
    .end local v36    # "$i$f$calculateExtraItems":I
    :cond_2e
    nop

    .line 309
    nop

    .line 325
    .local v25, "extraItemsAfter":Ljava/util/List;
    if-gtz v12, :cond_30

    if-gez p6, :cond_2f

    goto :goto_21

    :cond_2f
    move/from16 v2, v34

    move-object/from16 v1, v16

    goto :goto_23

    .line 326
    :cond_30
    :goto_21
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, v13

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v4, v34

    .end local v34    # "currentFirstLineScrollOffset":I
    .local v4, "currentFirstLineScrollOffset":I
    :goto_22
    if-ge v1, v2, :cond_32

    .line 327
    invoke-virtual {v13, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    .line 328
    .local v5, "size":I
    nop

    .line 329
    if-eqz v4, :cond_31

    .line 330
    if-gt v5, v4, :cond_31

    .line 331
    move-object/from16 v17, v13

    check-cast v17, Ljava/util/List;

    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-eq v1, v3, :cond_31

    .line 333
    sub-int/2addr v4, v5

    .line 334
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v13, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 326
    .end local v5    # "size":I
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_22

    .line 336
    .restart local v5    # "size":I
    :cond_31
    nop

    .line 342
    .end local v1    # "i":I
    .end local v5    # "size":I
    :cond_32
    move v2, v4

    move-object/from16 v1, v16

    .end local v4    # "currentFirstLineScrollOffset":I
    .end local v16    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v1, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v2, "currentFirstLineScrollOffset":I
    :goto_23
    if-eqz p12, :cond_33

    .line 343
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    move/from16 v34, v3

    goto :goto_24

    .line 345
    :cond_33
    invoke-static {v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v3

    move/from16 v34, v3

    .line 342
    :goto_24
    nop

    .line 341
    nop

    .line 348
    .local v34, "layoutWidth":I
    if-eqz p12, :cond_34

    .line 349
    invoke-static {v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v3

    move/from16 v35, v3

    goto :goto_25

    .line 351
    :cond_34
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    move/from16 v35, v3

    .line 348
    :goto_25
    nop

    .line 347
    nop

    .line 357
    .local v35, "layoutHeight":I
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    move-object v3, v13

    check-cast v3, Ljava/util/List;

    move-object/from16 v31, v3

    goto :goto_26

    .line 358
    :cond_35
    move-object v3, v13

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v4, v55

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v31, v3

    .line 359
    :goto_26
    nop

    .line 360
    nop

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 355
    move/from16 v39, p12

    move-object/from16 v40, p13

    move-object/from16 v41, p14

    move/from16 v42, p15

    move-object/from16 v43, p16

    move/from16 v36, v10

    move/from16 v37, v15

    move-object/from16 v32, v33

    move-object/from16 v33, v25

    .end local v10    # "currentMainAxisOffset":I
    .end local v15    # "maxOffset":I
    .end local v25    # "extraItemsAfter":Ljava/util/List;
    .local v32, "extraItemsBefore":Ljava/util/List;
    .local v33, "extraItemsAfter":Ljava/util/List;
    .local v36, "currentMainAxisOffset":I
    .local v37, "maxOffset":I
    invoke-static/range {v31 .. v43}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    .line 354
    move/from16 v3, v37

    .line 374
    .end local v37    # "maxOffset":I
    .local v3, "maxOffset":I
    .local v10, "positionedItems":Ljava/util/List;
    move v5, v14

    .end local v14    # "minOffset":I
    .local v5, "minOffset":I
    float-to-int v14, v9

    .line 375
    nop

    .line 376
    nop

    .line 378
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v18

    .line 384
    nop

    .line 385
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 379
    move-object/from16 v19, v6

    check-cast v19, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    .line 380
    nop

    .line 382
    nop

    .line 381
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    nop

    .line 387
    nop

    .line 373
    move/from16 v20, p12

    move/from16 v22, p18

    move/from16 v23, p20

    move/from16 v21, p21

    move-object/from16 v26, p23

    move-object/from16 v27, p25

    move/from16 v24, v2

    move-object/from16 v17, v10

    move-object/from16 v31, v13

    move/from16 v15, v34

    move/from16 v16, v35

    move/from16 v25, v36

    move-object/from16 v13, p17

    move/from16 v34, v5

    .end local v2    # "currentFirstLineScrollOffset":I
    .end local v5    # "minOffset":I
    .end local v10    # "positionedItems":Ljava/util/List;
    .end local v13    # "visibleLines":Lkotlin/collections/ArrayDeque;
    .end local v35    # "layoutHeight":I
    .end local v36    # "currentMainAxisOffset":I
    .local v15, "layoutWidth":I
    .local v16, "layoutHeight":I
    .local v17, "positionedItems":Ljava/util/List;
    .local v24, "currentFirstLineScrollOffset":I
    .local v25, "currentMainAxisOffset":I
    .local v31, "visibleLines":Lkotlin/collections/ArrayDeque;
    .local v34, "minOffset":I
    invoke-virtual/range {v13 .. v27}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 390
    move/from16 v2, v16

    move/from16 v4, v21

    move/from16 v5, v25

    .end local v16    # "layoutHeight":I
    .end local v17    # "positionedItems":Ljava/util/List;
    .end local v25    # "currentMainAxisOffset":I
    .local v2, "layoutHeight":I
    .local v5, "currentMainAxisOffset":I
    .restart local v10    # "positionedItems":Ljava/util/List;
    if-nez v4, :cond_3b

    .line 391
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v13

    .line 392
    .local v13, "disappearingItemsSize":J
    sget-object v16, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move/from16 v17, v9

    move-object/from16 v18, v10

    .end local v9    # "consumedScroll":F
    .end local v10    # "positionedItems":Ljava/util/List;
    .local v17, "consumedScroll":F
    .local v18, "positionedItems":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v9

    invoke-static {v13, v14, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 393
    if-eqz p12, :cond_36

    move v9, v2

    goto :goto_27

    :cond_36
    move v9, v15

    .line 395
    .local v9, "oldMainAxisSize":I
    :goto_27
    move-wide/from16 v19, v13

    .local v19, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v10, 0x0

    .line 716
    .local v10, "$i$f$getWidth-impl":I
    move-wide/from16 v21, v19

    .local v21, "value$iv$iv":J
    const/16 v16, 0x0

    .line 717
    .local v16, "$i$f$unpackInt1":I
    move/from16 v25, v10

    move/from16 v23, v11

    .end local v10    # "$i$f$getWidth-impl":I
    .end local v11    # "maxMainAxis":I
    .local v23, "maxMainAxis":I
    .local v25, "$i$f$getWidth-impl":I
    shr-long v10, v21, v44

    long-to-int v10, v10

    .line 716
    .end local v16    # "$i$f$unpackInt1":I
    .end local v21    # "value$iv$iv":J
    nop

    .line 395
    .end local v19    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v25    # "$i$f$getWidth-impl":I
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v10

    .line 394
    nop

    .line 397
    .end local v15    # "layoutWidth":I
    .local v10, "layoutWidth":I
    move-wide v15, v13

    .local v15, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 718
    .local v11, "$i$f$getHeight-impl":I
    move-wide/from16 v19, v15

    .local v19, "value$iv$iv":J
    const/16 v21, 0x0

    .line 719
    .local v21, "$i$f$unpackInt2":I
    move/from16 v22, v10

    move/from16 v25, v11

    .end local v10    # "layoutWidth":I
    .end local v11    # "$i$f$getHeight-impl":I
    .local v22, "layoutWidth":I
    .local v25, "$i$f$getHeight-impl":I
    and-long v10, v19, v29

    long-to-int v10, v10

    .line 718
    .end local v19    # "value$iv$iv":J
    .end local v21    # "$i$f$unpackInt2":I
    nop

    .line 397
    .end local v15    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v25    # "$i$f$getHeight-impl":I
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v10

    .line 396
    move/from16 v35, v10

    .line 398
    .end local v2    # "layoutHeight":I
    .restart local v35    # "layoutHeight":I
    if-eqz p12, :cond_37

    move/from16 v2, v35

    goto :goto_28

    :cond_37
    move/from16 v2, v22

    .line 399
    .local v2, "newMainAxisSize":I
    :goto_28
    if-eq v2, v9, :cond_39

    .line 400
    move-object/from16 v10, v18

    .local v10, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 720
    .local v11, "$i$f$fastForEach":I
    const/4 v15, 0x0

    .local v15, "index$iv":I
    move-object/from16 v16, v10

    check-cast v16, Ljava/util/Collection;

    move-object/from16 v19, v1

    .end local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v19, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_29
    if-ge v15, v1, :cond_38

    .line 721
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 722
    .local v16, "item$iv":Ljava/lang/Object;
    move/from16 v20, v1

    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v1, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/16 v21, 0x0

    .line 400
    .local v21, "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$5":I
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->updateMainAxisLayoutSize(I)V

    .line 722
    .end local v1    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v21    # "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$5":I
    nop

    .line 720
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v20

    goto :goto_29

    .line 724
    .end local v15    # "index$iv":I
    :cond_38
    goto :goto_2a

    .line 399
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    .end local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v1, "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :cond_39
    move-object/from16 v19, v1

    .line 407
    .end local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v2    # "newMainAxisSize":I
    .end local v9    # "oldMainAxisSize":I
    .end local v13    # "disappearingItemsSize":J
    .restart local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :goto_2a
    move/from16 v14, v22

    move/from16 v15, v35

    goto :goto_2c

    .line 392
    .end local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v22    # "layoutWidth":I
    .end local v23    # "maxMainAxis":I
    .end local v35    # "layoutHeight":I
    .restart local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v2, "layoutHeight":I
    .local v11, "maxMainAxis":I
    .restart local v13    # "disappearingItemsSize":J
    .local v15, "layoutWidth":I
    :cond_3a
    move-object/from16 v19, v1

    move/from16 v23, v11

    .end local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v11    # "maxMainAxis":I
    .restart local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .restart local v23    # "maxMainAxis":I
    goto :goto_2b

    .line 390
    .end local v13    # "disappearingItemsSize":J
    .end local v17    # "consumedScroll":F
    .end local v18    # "positionedItems":Ljava/util/List;
    .end local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v23    # "maxMainAxis":I
    .restart local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v9, "consumedScroll":F
    .local v10, "positionedItems":Ljava/util/List;
    .restart local v11    # "maxMainAxis":I
    :cond_3b
    move-object/from16 v19, v1

    move/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v23, v11

    .line 407
    .end local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v9    # "consumedScroll":F
    .end local v10    # "positionedItems":Ljava/util/List;
    .end local v11    # "maxMainAxis":I
    .restart local v17    # "consumedScroll":F
    .restart local v18    # "positionedItems":Ljava/util/List;
    .restart local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .restart local v23    # "maxMainAxis":I
    :goto_2b
    move v14, v15

    move v15, v2

    .line 408
    .end local v2    # "layoutHeight":I
    .local v14, "layoutWidth":I
    .local v15, "layoutHeight":I
    :goto_2c
    nop

    .line 409
    nop

    .line 410
    nop

    .line 411
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getHeaderIndices()Landroidx/collection/IntList;

    move-result-object v11

    .line 412
    nop

    .line 413
    nop

    .line 414
    nop

    .line 415
    nop

    .line 407
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;)V

    move/from16 v13, p5

    move-object/from16 v7, p28

    move-object/from16 v16, v1

    move-object/from16 v10, v18

    move/from16 v8, v53

    move/from16 v9, v56

    const/16 v45, 0x0

    move-object/from16 v1, p29

    .end local v18    # "positionedItems":Ljava/util/List;
    .end local v53    # "firstItemIndex":I
    .end local v56    # "lastItemIndex":I
    .local v8, "firstItemIndex":I
    .local v9, "lastItemIndex":I
    .restart local v10    # "positionedItems":Ljava/util/List;
    invoke-static/range {v7 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/List;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 406
    move v7, v12

    move/from16 v22, v14

    move/from16 v35, v15

    .line 428
    .end local v14    # "layoutWidth":I
    .end local v15    # "layoutHeight":I
    .local v2, "stickingItems":Ljava/util/List;
    .restart local v22    # "layoutWidth":I
    .restart local v35    # "layoutHeight":I
    nop

    .line 429
    nop

    .line 430
    add-int/lit8 v11, p0, -0x1

    if-ne v9, v11, :cond_3d

    if-le v5, v3, :cond_3c

    goto :goto_2d

    :cond_3c
    move/from16 v28, v45

    .line 433
    :cond_3d
    :goto_2d
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda3;

    move-object/from16 v14, p24

    invoke-direct {v13, v14, v10, v2, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v1, v11, v12, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/MeasureResult;

    .line 447
    neg-int v14, v7

    .line 448
    add-int v15, p3, p5

    .line 450
    invoke-static {v8, v9, v10, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 453
    if-eqz p12, :cond_3e

    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2e

    :cond_3e
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2e
    move-object/from16 v18, v12

    .line 456
    nop

    .line 427
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 428
    nop

    .line 429
    nop

    .line 430
    nop

    .line 431
    nop

    .line 433
    nop

    .line 446
    nop

    .line 456
    nop

    .line 459
    nop

    .line 457
    nop

    .line 458
    nop

    .line 460
    nop

    .line 461
    nop

    .line 450
    nop

    .line 447
    nop

    .line 448
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 454
    nop

    .line 455
    nop

    .line 427
    move/from16 v1, v24

    move-object/from16 v24, v2

    move v2, v1

    move/from16 v16, p0

    move/from16 v20, p6

    move-object/from16 v12, p27

    move/from16 v37, v3

    move/from16 v36, v5

    move/from16 v53, v8

    move/from16 v56, v9

    move-object/from16 v21, v10

    move-object v5, v11

    move/from16 v4, v17

    move-object/from16 v1, v19

    move/from16 v3, v28

    move/from16 v7, v46

    move/from16 v6, v49

    move/from16 v19, p5

    move/from16 v17, p15

    move-object/from16 v9, p16

    move/from16 v10, p18

    move-object/from16 v8, p23

    move-object/from16 v11, p26

    .end local v3    # "maxOffset":I
    .end local v5    # "currentMainAxisOffset":I
    .end local v8    # "firstItemIndex":I
    .end local v9    # "lastItemIndex":I
    .end local v10    # "positionedItems":Ljava/util/List;
    .end local v17    # "consumedScroll":F
    .end local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v46    # "remeasureNeeded":Z
    .end local v49    # "scrollBackAmount":F
    .restart local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .local v2, "currentFirstLineScrollOffset":I
    .local v4, "consumedScroll":F
    .local v6, "scrollBackAmount":F
    .local v7, "remeasureNeeded":Z
    .local v21, "positionedItems":Ljava/util/List;
    .local v24, "stickingItems":Ljava/util/List;
    .restart local v36    # "currentMainAxisOffset":I
    .restart local v37    # "maxOffset":I
    .restart local v53    # "firstItemIndex":I
    .restart local v56    # "lastItemIndex":I
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    move-object/from16 v19, v1

    move/from16 v17, v4

    .end local v1    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .end local v4    # "consumedScroll":F
    .restart local v17    # "consumedScroll":F
    .restart local v19    # "firstLine":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    return-object v0
.end method

.method static final measureLazyGrid_t1x4au0$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final measureLazyGrid_t1x4au0$lambda$7(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 6
    .param p0, "$measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .param p1, "$measuredItemProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .param p2, "it"    # I

    .line 417
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v3

    .line 418
    .local v3, "span":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v4

    .line 419
    .local v4, "childConstraints":J
    nop

    .line 420
    nop

    .line 422
    nop

    .line 423
    nop

    .line 421
    nop

    .line 419
    const/4 v2, 0x0

    move-object v0, p1

    move v1, p2

    .end local p1    # "$measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .end local p2    # "it":I
    .local v0, "$measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
    .local v1, "it":I
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p1

    .line 424
    return-object p1
.end method

.method static final measureLazyGrid_t1x4au0$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$positionedItems"    # Ljava/util/List;
    .param p2, "$stickingItems"    # Ljava/util/List;
    .param p3, "$isLookingAhead"    # Z
    .param p4, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 439
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lkotlin/jvm/functions/Function1;)V

    .line 444
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 445
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final measureLazyGrid_t1x4au0$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$positionedItems"    # Ljava/util/List;
    .param p1, "$stickingItems"    # Ljava/util/List;
    .param p2, "$isLookingAhead"    # Z
    .param p3, "$this$withMotionFrameOfReferencePlacement"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 440
    move-object v0, p0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 780
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 781
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 782
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .local v5, "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v6, 0x0

    .line 440
    .local v6, "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$6$1$1":I
    invoke-virtual {v5, p3, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    .line 782
    .end local v5    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v6    # "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$6$1$1":I
    nop

    .line 780
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 441
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    move-object v0, p1

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 785
    .restart local v1    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .restart local v2    # "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    .line 786
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 787
    .restart local v4    # "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .restart local v5    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    const/4 v6, 0x0

    .line 441
    .local v6, "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$6$1$2":I
    invoke-virtual {v5, p3, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    .line 787
    .end local v5    # "it":Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .end local v6    # "$i$a$-fastForEach-LazyGridMeasureKt$measureLazyGrid$6$1$2":I
    nop

    .line 785
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 789
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 442
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
