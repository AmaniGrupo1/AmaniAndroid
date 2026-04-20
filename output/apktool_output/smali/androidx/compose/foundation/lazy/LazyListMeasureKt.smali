.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,615:1\n97#2,4:616\n97#2,4:620\n97#2,4:631\n51#2,4:664\n97#2,4:668\n109#2,5:672\n109#2,5:677\n54#3:624\n59#3:626\n54#3:645\n59#3:647\n85#4:625\n90#4:627\n85#4:646\n90#4:648\n26#5:628\n26#5:629\n26#5:630\n35#6,5:635\n35#6,5:640\n35#6,5:649\n35#6,5:654\n53#6,5:659\n35#6,5:682\n35#6,5:687\n35#6,5:692\n35#6,5:697\n35#6,5:702\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n78#1:616,4\n79#1:620,4\n286#1:631,4\n541#1:664,4\n548#1:668,4\n559#1:672,5\n567#1:677,5\n104#1:624\n105#1:626\n384#1:645\n386#1:647\n104#1:625\n105#1:627\n384#1:646\n386#1:648\n139#1:628\n268#1:629\n269#1:630\n320#1:635,5\n333#1:640,5\n389#1:649,5\n485#1:654,5\n512#1:659,5\n594#1:682,5\n601#1:687,5\n607#1:692,5\n430#1:697,5\n432#1:702,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u000c\u001a\u0092\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u00032\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001e2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2/\u0010)\u001a+\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020-0+\u00a2\u0006\u0002\u0008.\u0012\u0004\u0012\u00020/0*H\u0000\u00a2\u0006\u0004\u00080\u00101\u001aB\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001e2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001b042\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00032\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001eH\u0002\u001a4\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u00106\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00032\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001eH\u0002\u001a\u008c\u0001\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001b042\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001e2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001e2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u0010;\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u00032\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0002\u00a8\u0006@"
    }
    d2 = {
        "measureLazyList",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "itemsCount",
        "",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenItems",
        "firstVisibleItemIndex",
        "firstVisibleItemScrollOffset",
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
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "beyondBoundsItemCount",
        "pinnedItems",
        "",
        "hasLookaheadOccurred",
        "isLookingAhead",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "stickyItemsPlacement",
        "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyList-_s_dbAc",
        "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "createItemsAfterList",
        "visibleItems",
        "",
        "createItemsBeforeList",
        "currentFirstItemIndex",
        "calculateItemsOffsets",
        "items",
        "extraItemsBefore",
        "extraItemsAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "itemsScrollOffset",
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
.method public static synthetic $r8$lambda$dLkBv7cEgU65-uGpB68MEAxzMfs(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList__s_dbAc$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 19
    .param p0, "items"    # Ljava/util/List;
    .param p1, "extraItemsBefore"    # Ljava/util/List;
    .param p2, "extraItemsAfter"    # Ljava/util/List;
    .param p3, "layoutWidth"    # I
    .param p4, "layoutHeight"    # I
    .param p5, "finalMainAxisOffset"    # I
    .param p6, "maxOffset"    # I
    .param p7, "itemsScrollOffset"    # I
    .param p8, "isVertical"    # Z
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p11, "reverseLayout"    # Z
    .param p12, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 538
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

    .line 539
    .local v7, "mainAxisLayoutSize":I
    move/from16 v4, p6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v11, p5

    if-ge v11, v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v12, v5

    .line 540
    .local v12, "hasSpareSpace":Z
    if-eqz v12, :cond_4

    .line 541
    if-nez p7, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v6

    .local v5, "value$iv":Z
    :goto_2
    const/4 v9, 0x0

    .line 664
    .local v9, "$i$f$checkPrecondition":I
    if-nez v5, :cond_3

    .line 665
    const/4 v10, 0x0

    .line 541
    .local v10, "$i$a$-checkPrecondition-LazyListMeasureKt$calculateItemsOffsets$1":I
    nop

    .line 665
    .end local v10    # "$i$a$-checkPrecondition-LazyListMeasureKt$calculateItemsOffsets$1":I
    const-string/jumbo v10, "non-zero itemsScrollOffset"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 667
    :cond_3
    nop

    .line 545
    .end local v5    # "value$iv":Z
    .end local v9    # "$i$f$checkPrecondition":I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    move-object v13, v5

    .line 547
    .local v13, "positionedItems":Ljava/util/ArrayList;
    if-eqz v12, :cond_f

    .line 548
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v8, v6

    .local v8, "value$iv":Z
    :goto_3
    const/4 v5, 0x0

    .line 668
    .local v5, "$i$f$requirePrecondition":I
    if-nez v8, :cond_6

    .line 669
    const/4 v9, 0x0

    .line 549
    .local v9, "$i$a$-requirePrecondition-LazyListMeasureKt$calculateItemsOffsets$2":I
    nop

    .line 669
    .end local v9    # "$i$a$-requirePrecondition-LazyListMeasureKt$calculateItemsOffsets$2":I
    const-string/jumbo v9, "no extra items"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 671
    :cond_6
    nop

    .line 552
    .end local v5    # "$i$f$requirePrecondition":I
    .end local v8    # "value$iv":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 555
    .local v14, "itemsCount":I
    new-array v8, v14, [I

    :goto_4
    if-ge v6, v14, :cond_7

    invoke-static {v6, v3, v14}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v5

    aput v5, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 556
    .local v8, "sizes":[I
    :cond_7
    new-array v10, v14, [I

    .line 557
    .local v10, "offsets":[I
    if-eqz p8, :cond_9

    .line 559
    move-object/from16 v5, p9

    .local v5, "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 672
    .local v6, "$i$f$requirePreconditionNotNull":I
    if-eqz v5, :cond_8

    .line 676
    nop

    .line 558
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    nop

    .local v5, "$this$calculateItemsOffsets_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v6, 0x0

    .line 563
    .local v6, "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$4":I
    move-object/from16 v9, p12

    invoke-interface {v5, v9, v7, v8, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 564
    nop

    .line 558
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v6    # "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$4":I
    goto :goto_5

    .line 673
    .local v5, "value$iv":Ljava/lang/Object;
    .local v6, "$i$f$requirePreconditionNotNull":I
    :cond_8
    move-object/from16 v9, p12

    const/4 v15, 0x0

    .line 560
    .local v15, "$i$a$-requirePreconditionNotNull-LazyListMeasureKt$calculateItemsOffsets$3":I
    nop

    .line 673
    .end local v15    # "$i$a$-requirePreconditionNotNull-LazyListMeasureKt$calculateItemsOffsets$3":I
    const-string/jumbo v15, "null verticalArrangement when isVertical == true"

    invoke-static {v15}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v15, Lkotlin/KotlinNothingValueException;

    invoke-direct {v15}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v15

    .line 567
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    :cond_9
    move-object/from16 v9, p12

    move-object/from16 v5, p10

    .restart local v5    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 677
    .restart local v6    # "$i$f$requirePreconditionNotNull":I
    if-eqz v5, :cond_e

    .line 681
    nop

    .line 566
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    nop

    .local v5, "$this$calculateItemsOffsets_u24lambda_u245":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v15, 0x0

    .line 572
    .local v15, "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$6":I
    sget-object v9, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v6, p12

    invoke-interface/range {v5 .. v10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 573
    nop

    .line 566
    .end local v5    # "$this$calculateItemsOffsets_u24lambda_u245":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v15    # "$i$a$-with-LazyListMeasureKt$calculateItemsOffsets$6":I
    nop

    .line 577
    :goto_5
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/IntProgression;

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v5}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v5

    .line 576
    :goto_6
    nop

    .line 578
    .local v5, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    .local v6, "index":I
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v15

    if-lez v15, :cond_b

    if-le v6, v9, :cond_c

    :cond_b
    if-gez v15, :cond_13

    if-gt v9, v6, :cond_13

    .line 579
    :cond_c
    :goto_7
    aget v16, v10, v6

    .line 581
    .local v16, "absoluteOffset":I
    invoke-static {v6, v3, v14}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 583
    .local v4, "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-eqz v3, :cond_d

    .line 585
    sub-int v17, v7, v16

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v18

    sub-int v17, v17, v18

    goto :goto_8

    .line 587
    :cond_d
    move/from16 v17, v16

    .line 583
    :goto_8
    nop

    .line 582
    move/from16 v18, v17

    .line 589
    .local v18, "relativeOffset":I
    move/from16 v0, v18

    .end local v18    # "relativeOffset":I
    .local v0, "relativeOffset":I
    invoke-virtual {v4, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 590
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "relativeOffset":I
    .end local v4    # "item":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v16    # "absoluteOffset":I
    if-eq v6, v9, :cond_13

    add-int/2addr v6, v15

    move-object/from16 v0, p0

    move/from16 v4, p6

    goto :goto_7

    .line 678
    .local v5, "value$iv":Ljava/lang/Object;
    .local v6, "$i$f$requirePreconditionNotNull":I
    :cond_e
    const/4 v0, 0x0

    .line 568
    .local v0, "$i$a$-requirePreconditionNotNull-LazyListMeasureKt$calculateItemsOffsets$5":I
    nop

    .line 678
    .end local v0    # "$i$a$-requirePreconditionNotNull-LazyListMeasureKt$calculateItemsOffsets$5":I
    const-string/jumbo v0, "null horizontalArrangement when isVertical == false"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 593
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$requirePreconditionNotNull":I
    .end local v8    # "sizes":[I
    .end local v10    # "offsets":[I
    .end local v14    # "itemsCount":I
    :cond_f
    const/4 v0, 0x0

    .local v0, "currentMainAxis":I
    move/from16 v0, p7

    .line 594
    move-object/from16 v4, p1

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 682
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_9
    if-ge v6, v8, :cond_10

    .line 683
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 684
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v10, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v14, 0x0

    .line 595
    .local v14, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$7":I
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v15

    sub-int/2addr v0, v15

    .line 596
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 597
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    nop

    .line 684
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v14    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$7":I
    nop

    .line 682
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 686
    .end local v6    # "index$iv":I
    :cond_10
    nop

    .line 600
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move/from16 v0, p7

    .line 601
    move-object/from16 v4, p0

    .restart local v4    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 687
    .restart local v5    # "$i$f$fastForEach":I
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_a
    if-ge v6, v8, :cond_11

    .line 688
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 689
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v14, 0x0

    .line 602
    .local v14, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$8":I
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 603
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v15

    add-int/2addr v0, v15

    .line 605
    nop

    .line 689
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v14    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$8":I
    nop

    .line 687
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 691
    .end local v6    # "index$iv":I
    :cond_11
    nop

    .line 607
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object/from16 v4, p2

    .restart local v4    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 692
    .restart local v5    # "$i$f$fastForEach":I
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_b
    if-ge v6, v8, :cond_12

    .line 693
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 694
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v14, 0x0

    .line 608
    .local v14, "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$9":I
    invoke-virtual {v10, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 609
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v15

    add-int/2addr v0, v15

    .line 611
    nop

    .line 694
    .end local v10    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v14    # "$i$a$-fastForEach-LazyListMeasureKt$calculateItemsOffsets$9":I
    nop

    .line 692
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 696
    .end local v6    # "index$iv":I
    :cond_12
    nop

    .line 613
    .end local v0    # "currentMainAxis":I
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    :cond_13
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculateItemsOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "itemsCount"    # I

    .line 553
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "visibleItems"    # Ljava/util/List;
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "itemsCount"    # I
    .param p3, "beyondBoundsItemCount"    # I
    .param p4, "pinnedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "list":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "end":I
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    .line 472
    add-int v2, v1, p3

    add-int/lit8 v3, p2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 474
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    if-gt v2, v1, :cond_1

    move v3, v2

    .line 475
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 476
    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_3

    move-object v2, v0

    .local v2, "it":Ljava/util/List;
    const/4 v3, 0x0

    .line 481
    .local v3, "$i$a$-let-LazyListMeasureKt$createItemsAfterList$1":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 482
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    .line 484
    :cond_2
    nop

    .line 480
    .end local v2    # "it":Ljava/util/List;
    .end local v3    # "$i$a$-let-LazyListMeasureKt$createItemsAfterList$1":I
    nop

    .line 485
    :cond_3
    move-object/from16 v2, p4

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 654
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_1
    if-ge v4, v11, :cond_6

    .line 655
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 656
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v5, v12

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "index":I
    const/4 v13, 0x0

    .line 486
    .local v13, "$i$a$-fastForEach-LazyListMeasureKt$createItemsAfterList$2":I
    if-le v6, v1, :cond_5

    .line 487
    if-nez v0, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 488
    :cond_4
    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_5
    nop

    .line 656
    .end local v6    # "index":I
    .end local v13    # "$i$a$-fastForEach-LazyListMeasureKt$createItemsAfterList$2":I
    nop

    .line 654
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 658
    .end local v4    # "index$iv":I
    :cond_6
    nop

    .line 492
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "currentFirstItemIndex"    # I
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "beyondBoundsItemCount"    # I
    .param p3, "pinnedItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "list":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "start":I
    move v1, p0

    .line 505
    const/4 v2, 0x0

    sub-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 507
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    if-gt v1, v2, :cond_1

    move v3, v2

    .line 508
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 509
    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 512
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v2, p3

    .local v2, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 659
    .local v3, "$i$f$fastForEachReversed":I
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    :cond_2
    move v11, v4

    .local v11, "index$iv":I
    add-int/lit8 v4, v4, -0x1

    .line 660
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 661
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v5, v12

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "index":I
    const/4 v13, 0x0

    .line 513
    .local v13, "$i$a$-fastForEachReversed-LazyListMeasureKt$createItemsBeforeList$1":I
    if-ge v6, v1, :cond_4

    .line 514
    if-nez v0, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 515
    :cond_3
    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4
    nop

    .line 661
    .end local v6    # "index":I
    .end local v13    # "$i$a$-fastForEachReversed-LazyListMeasureKt$createItemsBeforeList$1":I
    nop

    .line 659
    .end local v12    # "item$iv":Ljava/lang/Object;
    if-gez v4, :cond_2

    .line 663
    .end local v11    # "index$iv":I
    :cond_5
    nop

    .line 519
    .end local v2    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachReversed":I
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public static final measureLazyList-_s_dbAc(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 58
    .param p0, "itemsCount"    # I
    .param p1, "measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p2, "mainAxisAvailableSize"    # I
    .param p3, "beforeContentPadding"    # I
    .param p4, "afterContentPadding"    # I
    .param p5, "spaceBetweenItems"    # I
    .param p6, "firstVisibleItemIndex"    # I
    .param p7, "firstVisibleItemScrollOffset"    # I
    .param p8, "scrollToBeConsumed"    # F
    .param p9, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .param p11, "isVertical"    # Z
    .param p12, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p13, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p14, "reverseLayout"    # Z
    .param p15, "density"    # Landroidx/compose/ui/unit/Density;
    .param p16, "itemAnimator"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .param p17, "beyondBoundsItemCount"    # I
    .param p18, "pinnedItems"    # Ljava/util/List;
    .param p19, "hasLookaheadOccurred"    # Z
    .param p20, "isLookingAhead"    # Z
    .param p21, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p22, "$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p23, "graphicsContext"    # Landroidx/compose/ui/graphics/GraphicsContext;
    .param p24, "stickyItemsPlacement"    # Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;
    .param p25, "layout"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
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
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    .line 78
    move/from16 v15, p0

    move/from16 v6, p3

    move-wide/from16 v10, p9

    move/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p25

    const/4 v7, 0x0

    const/16 v31, 0x1

    if-ltz v6, :cond_0

    move/from16 v0, v31

    goto :goto_0

    :cond_0
    move v0, v7

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 617
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$1":I
    nop

    .line 617
    .end local v2    # "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$1":I
    const-string/jumbo v2, "invalid beforeContentPadding"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 619
    :cond_1
    nop

    .line 79
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    if-ltz p4, :cond_2

    move/from16 v0, v31

    goto :goto_1

    :cond_2
    move v0, v7

    .restart local v0    # "value$iv":Z
    :goto_1
    const/4 v1, 0x0

    .line 620
    .restart local v1    # "$i$f$requirePrecondition":I
    if-nez v0, :cond_3

    .line 621
    const/4 v2, 0x0

    .line 79
    .local v2, "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$2":I
    nop

    .line 621
    .end local v2    # "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$2":I
    const-string/jumbo v2, "invalid afterContentPadding"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 623
    :cond_3
    nop

    .line 81
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    const/16 v32, 0x20

    if-gtz v15, :cond_7

    .line 83
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v18

    .line 84
    .local v18, "layoutWidth":I
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v19

    .line 87
    .local v19, "layoutHeight":I
    nop

    .line 88
    nop

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v21

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    move-object/from16 v22, p1

    check-cast v22, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    .line 92
    nop

    .line 94
    nop

    .line 93
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 85
    const/16 v17, 0x0

    const/16 v25, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v23, p11

    move-object/from16 v16, p16

    move/from16 v26, p19

    move/from16 v24, p20

    move-object/from16 v29, p21

    move-object/from16 v30, p23

    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 101
    if-nez p20, :cond_5

    .line 102
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    .line 103
    .local v0, "disappearingItemsSize":J
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 104
    move-wide v2, v0

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 624
    .local v4, "$i$f$getWidth-impl":I
    move-wide/from16 v16, v2

    .local v16, "value$iv$iv":J
    const/4 v5, 0x0

    .line 625
    .local v5, "$i$f$unpackInt1":I
    const-wide v46, 0xffffffffL

    shr-long v8, v16, v32

    long-to-int v5, v8

    .line 624
    .end local v5    # "$i$f$unpackInt1":I
    .end local v16    # "value$iv$iv":J
    nop

    .line 104
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    invoke-static {v10, v11, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v18

    .line 105
    nop

    .restart local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 626
    .local v4, "$i$f$getHeight-impl":I
    move-wide v7, v2

    .local v7, "value$iv$iv":J
    const/4 v5, 0x0

    .line 627
    .local v5, "$i$f$unpackInt2":I
    move-wide/from16 v16, v0

    .end local v0    # "disappearingItemsSize":J
    .local v16, "disappearingItemsSize":J
    and-long v0, v7, v46

    long-to-int v0, v0

    .line 626
    .end local v5    # "$i$f$unpackInt2":I
    .end local v7    # "value$iv$iv":J
    nop

    .line 105
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getHeight-impl":I
    invoke-static {v10, v11, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v19

    goto :goto_2

    .line 103
    .end local v16    # "disappearingItemsSize":J
    .restart local v0    # "disappearingItemsSize":J
    :cond_4
    move-wide/from16 v16, v0

    .line 113
    .end local v0    # "disappearingItemsSize":J
    :cond_5
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v14, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v38, v0

    check-cast v38, Landroidx/compose/ui/layout/MeasureResult;

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v45

    .line 116
    neg-int v0, v6

    .line 117
    add-int v47, p2, p4

    .line 120
    if-eqz p11, :cond_6

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3

    :cond_6
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_3
    move-object/from16 v50, v1

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v43

    .line 108
    new-instance v33, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 108
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v48, 0x0

    const/16 v53, 0x0

    move/from16 v51, p4

    move/from16 v52, p5

    move/from16 v49, p14

    move-object/from16 v42, p15

    move-object/from16 v41, p21

    move/from16 v46, v0

    invoke-direct/range {v33 .. v53}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v33

    .line 129
    .end local v18    # "layoutWidth":I
    .end local v19    # "layoutHeight":I
    :cond_7
    const-wide v46, 0xffffffffL

    move/from16 v0, p6

    .line 130
    .local v0, "currentFirstItemIndex":I
    move/from16 v1, p7

    .line 131
    .local v1, "currentFirstItemScrollOffset":I
    if-lt v0, v15, :cond_8

    .line 134
    add-int/lit8 v0, v15, -0x1

    .line 135
    const/4 v1, 0x0

    .line 139
    :cond_8
    move/from16 v2, p8

    .local v2, "$this$fastRoundToInt$iv":F
    const/4 v3, 0x0

    .line 628
    .local v3, "$i$f$fastRoundToInt":I
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 139
    .end local v2    # "$this$fastRoundToInt$iv":F
    .end local v3    # "$i$f$fastRoundToInt":I
    nop

    .line 143
    .local v2, "scrollDelta":I
    sub-int/2addr v1, v2

    .line 146
    if-nez v0, :cond_9

    if-gez v1, :cond_9

    .line 147
    add-int/2addr v2, v1

    .line 148
    const/4 v1, 0x0

    move v8, v2

    goto :goto_4

    .line 152
    :cond_9
    move v8, v2

    .end local v2    # "scrollDelta":I
    .local v8, "scrollDelta":I
    :goto_4
    new-instance v2, Lkotlin/collections/ArrayDeque;

    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v9, v2

    .line 155
    .local v9, "visibleItems":Lkotlin/collections/ArrayDeque;
    neg-int v2, v6

    if-gez p5, :cond_a

    move/from16 v3, p5

    goto :goto_5

    :cond_a
    move v3, v7

    :goto_5
    add-int/2addr v2, v3

    .line 156
    .local v2, "minOffset":I
    move/from16 v39, p2

    .line 161
    .local v39, "maxOffset":I
    add-int/2addr v1, v2

    .line 164
    const/4 v3, 0x0

    .line 169
    .local v3, "maxCrossAxis":I
    const/16 v16, 0x0

    move/from16 v17, v0

    .line 174
    .end local v0    # "currentFirstItemIndex":I
    .local v16, "remeasureNeeded":Z
    .local v17, "currentFirstItemIndex":I
    :goto_6
    if-gez v1, :cond_b

    if-lez v17, :cond_b

    .line 175
    move v0, v1

    .end local v1    # "currentFirstItemScrollOffset":I
    .local v0, "currentFirstItemScrollOffset":I
    add-int/lit8 v1, v17, -0x1

    .line 176
    .local v1, "previous":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "minOffset":I
    .end local v3    # "maxCrossAxis":I
    .local v18, "minOffset":I
    .local v19, "maxCrossAxis":I
    const-wide/16 v2, 0x0

    move/from16 v54, v0

    move/from16 v56, v18

    move/from16 v55, v19

    move/from16 v57, v39

    move-object/from16 v0, p1

    .end local v0    # "currentFirstItemScrollOffset":I
    .end local v18    # "minOffset":I
    .end local v19    # "maxCrossAxis":I
    .end local v39    # "maxOffset":I
    .local v54, "currentFirstItemScrollOffset":I
    .local v55, "maxCrossAxis":I
    .local v56, "minOffset":I
    .local v57, "maxOffset":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    .line 177
    .local v2, "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    invoke-virtual {v9, v7, v2}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 178
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    move/from16 v3, v55

    .end local v55    # "maxCrossAxis":I
    .restart local v3    # "maxCrossAxis":I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 179
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    move/from16 v4, v54

    .end local v54    # "currentFirstItemScrollOffset":I
    .local v4, "currentFirstItemScrollOffset":I
    add-int/2addr v0, v4

    .line 180
    .end local v4    # "currentFirstItemScrollOffset":I
    .restart local v0    # "currentFirstItemScrollOffset":I
    move/from16 v17, v1

    move v1, v0

    move/from16 v2, v56

    .end local v1    # "previous":I
    .end local v2    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    goto :goto_6

    .line 174
    .end local v0    # "currentFirstItemScrollOffset":I
    .end local v56    # "minOffset":I
    .end local v57    # "maxOffset":I
    .local v1, "currentFirstItemScrollOffset":I
    .local v2, "minOffset":I
    .restart local v39    # "maxOffset":I
    :cond_b
    move v4, v1

    move/from16 v56, v2

    move/from16 v57, v39

    .line 185
    .end local v1    # "currentFirstItemScrollOffset":I
    .end local v2    # "minOffset":I
    .end local v39    # "maxOffset":I
    .restart local v4    # "currentFirstItemScrollOffset":I
    .restart local v56    # "minOffset":I
    .restart local v57    # "maxOffset":I
    move/from16 v0, v56

    .end local v56    # "minOffset":I
    .local v0, "minOffset":I
    if-ge v4, v0, :cond_c

    .line 186
    sub-int v2, v0, v4

    .line 187
    .local v2, "notConsumedScrollDelta":I
    move v1, v0

    .line 188
    .end local v4    # "currentFirstItemScrollOffset":I
    .restart local v1    # "currentFirstItemScrollOffset":I
    sub-int/2addr v8, v2

    goto :goto_7

    .line 185
    .end local v1    # "currentFirstItemScrollOffset":I
    .end local v2    # "notConsumedScrollDelta":I
    .restart local v4    # "currentFirstItemScrollOffset":I
    :cond_c
    move v1, v4

    .line 192
    .end local v4    # "currentFirstItemScrollOffset":I
    .restart local v1    # "currentFirstItemScrollOffset":I
    :goto_7
    sub-int/2addr v1, v0

    .line 194
    move/from16 v2, v17

    .line 195
    .local v2, "index":I
    move/from16 v39, v57

    .end local v57    # "maxOffset":I
    .restart local v39    # "maxOffset":I
    add-int v4, v39, p4

    invoke-static {v4, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 196
    .local v4, "maxMainAxis":I
    neg-int v5, v1

    .line 199
    .local v5, "currentMainAxisOffset":I
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 200
    .local v7, "indexInVisibleItems":I
    :goto_8
    move/from16 v18, v0

    .end local v0    # "minOffset":I
    .restart local v18    # "minOffset":I
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ge v7, v0, :cond_e

    .line 201
    if-lt v5, v4, :cond_d

    .line 203
    invoke-virtual {v9, v7}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    .end local v16    # "remeasureNeeded":Z
    .local v0, "remeasureNeeded":Z
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v16, v0

    goto :goto_9

    .line 206
    .end local v0    # "remeasureNeeded":Z
    .restart local v16    # "remeasureNeeded":Z
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 207
    invoke-virtual {v9, v7}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v5, v0

    .line 208
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "indexInVisibleItems":I
    .local v0, "indexInVisibleItems":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v7, v0

    .end local v0    # "indexInVisibleItems":I
    .restart local v7    # "indexInVisibleItems":I
    :goto_9
    move/from16 v0, v18

    goto :goto_8

    .line 200
    :cond_e
    move v0, v5

    move/from16 v49, v16

    move/from16 v16, v1

    move v1, v2

    .line 216
    .end local v2    # "index":I
    .end local v5    # "currentMainAxisOffset":I
    .local v0, "currentMainAxisOffset":I
    .local v1, "index":I
    .local v16, "currentFirstItemScrollOffset":I
    .local v49, "remeasureNeeded":Z
    :goto_a
    if-ge v1, v15, :cond_12

    .line 217
    if-lt v0, v4, :cond_10

    .line 218
    if-lez v0, :cond_10

    .line 219
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    move v11, v1

    move/from16 v51, v4

    move/from16 v50, v7

    move/from16 v14, v18

    move/from16 v10, v39

    move v7, v0

    move/from16 v18, v8

    move v8, v3

    goto/16 :goto_d

    .line 221
    :cond_10
    :goto_b
    move v2, v4

    .end local v4    # "maxMainAxis":I
    .local v2, "maxMainAxis":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "maxMainAxis":I
    .end local v3    # "maxCrossAxis":I
    .local v19, "maxMainAxis":I
    .local v20, "maxCrossAxis":I
    const-wide/16 v2, 0x0

    move/from16 v50, v7

    move/from16 v14, v18

    move/from16 v51, v19

    move/from16 v10, v39

    move v7, v0

    move/from16 v18, v8

    move/from16 v8, v20

    move-object/from16 v0, p1

    .end local v0    # "currentMainAxisOffset":I
    .end local v19    # "maxMainAxis":I
    .end local v20    # "maxCrossAxis":I
    .end local v39    # "maxOffset":I
    .local v7, "currentMainAxisOffset":I
    .local v8, "maxCrossAxis":I
    .local v10, "maxOffset":I
    .local v14, "minOffset":I
    .local v18, "scrollDelta":I
    .local v50, "indexInVisibleItems":I
    .local v51, "maxMainAxis":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    .line 222
    move v11, v1

    .end local v1    # "index":I
    .local v2, "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v11, "index":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v0, v7

    .line 224
    .end local v7    # "currentMainAxisOffset":I
    .restart local v0    # "currentMainAxisOffset":I
    if-gt v0, v14, :cond_11

    add-int/lit8 v1, v15, -0x1

    if-eq v11, v1, :cond_11

    .line 226
    add-int/lit8 v1, v11, 0x1

    .line 227
    .end local v17    # "currentFirstItemIndex":I
    .local v1, "currentFirstItemIndex":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    sub-int v16, v16, v3

    .line 228
    const/4 v3, 0x1

    .end local v49    # "remeasureNeeded":Z
    .local v3, "remeasureNeeded":Z
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v17, v1

    move/from16 v49, v3

    move v3, v8

    goto :goto_c

    .line 230
    .end local v1    # "currentFirstItemIndex":I
    .end local v3    # "remeasureNeeded":Z
    .restart local v17    # "currentFirstItemIndex":I
    .restart local v49    # "remeasureNeeded":Z
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 231
    .end local v8    # "maxCrossAxis":I
    .local v1, "maxCrossAxis":I
    invoke-virtual {v9, v2}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move v3, v1

    .line 234
    .end local v1    # "maxCrossAxis":I
    .local v3, "maxCrossAxis":I
    :goto_c
    add-int/lit8 v1, v11, 0x1

    move/from16 v39, v10

    move/from16 v8, v18

    move/from16 v7, v50

    move/from16 v4, v51

    move-wide/from16 v10, p9

    move/from16 v18, v14

    move-object/from16 v14, p25

    .end local v11    # "index":I
    .local v1, "index":I
    goto :goto_a

    .line 216
    .end local v2    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v10    # "maxOffset":I
    .end local v14    # "minOffset":I
    .end local v50    # "indexInVisibleItems":I
    .end local v51    # "maxMainAxis":I
    .restart local v4    # "maxMainAxis":I
    .local v7, "indexInVisibleItems":I
    .local v8, "scrollDelta":I
    .local v18, "minOffset":I
    .restart local v39    # "maxOffset":I
    :cond_12
    move v11, v1

    move/from16 v51, v4

    move/from16 v50, v7

    move/from16 v14, v18

    move/from16 v10, v39

    move v7, v0

    move/from16 v18, v8

    move v8, v3

    .line 237
    .end local v0    # "currentMainAxisOffset":I
    .end local v1    # "index":I
    .end local v3    # "maxCrossAxis":I
    .end local v4    # "maxMainAxis":I
    .end local v39    # "maxOffset":I
    .local v7, "currentMainAxisOffset":I
    .local v8, "maxCrossAxis":I
    .restart local v10    # "maxOffset":I
    .restart local v11    # "index":I
    .restart local v14    # "minOffset":I
    .local v18, "scrollDelta":I
    .restart local v50    # "indexInVisibleItems":I
    .restart local v51    # "maxMainAxis":I
    :goto_d
    move/from16 v0, v18

    .line 240
    .local v0, "preScrollBackScrollDelta":I
    if-ge v7, v10, :cond_15

    .line 241
    sub-int v39, v10, v7

    .line 242
    .local v39, "toScrollBack":I
    sub-int v16, v16, v39

    .line 243
    add-int v7, v7, v39

    move/from16 v1, v16

    .line 245
    .end local v16    # "currentFirstItemScrollOffset":I
    .local v1, "currentFirstItemScrollOffset":I
    :goto_e
    if-ge v1, v6, :cond_13

    if-lez v17, :cond_13

    .line 247
    move/from16 v16, v1

    .end local v1    # "currentFirstItemScrollOffset":I
    .restart local v16    # "currentFirstItemScrollOffset":I
    add-int/lit8 v1, v17, -0x1

    .line 248
    .local v1, "previousIndex":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move/from16 v57, v10

    move v10, v0

    move-object/from16 v0, p1

    .end local v0    # "preScrollBackScrollDelta":I
    .local v10, "preScrollBackScrollDelta":I
    .restart local v57    # "maxOffset":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    .line 249
    .restart local v2    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 251
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v4

    add-int v4, v16, v4

    .line 252
    .end local v16    # "currentFirstItemScrollOffset":I
    .local v4, "currentFirstItemScrollOffset":I
    move/from16 v17, v1

    move v1, v4

    move v0, v10

    move/from16 v10, v57

    .end local v1    # "previousIndex":I
    .end local v2    # "measuredItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    goto :goto_e

    .line 245
    .end local v4    # "currentFirstItemScrollOffset":I
    .end local v57    # "maxOffset":I
    .restart local v0    # "preScrollBackScrollDelta":I
    .local v1, "currentFirstItemScrollOffset":I
    .local v10, "maxOffset":I
    :cond_13
    move/from16 v16, v1

    move/from16 v57, v10

    const/4 v3, 0x0

    move v10, v0

    move-object/from16 v0, p1

    .line 254
    .end local v0    # "preScrollBackScrollDelta":I
    .end local v1    # "currentFirstItemScrollOffset":I
    .local v10, "preScrollBackScrollDelta":I
    .restart local v16    # "currentFirstItemScrollOffset":I
    .restart local v57    # "maxOffset":I
    add-int v1, v18, v39

    .line 255
    .end local v18    # "scrollDelta":I
    .local v1, "scrollDelta":I
    if-gez v16, :cond_14

    .line 256
    add-int v1, v1, v16

    .line 257
    add-int v2, v7, v16

    .line 258
    .end local v7    # "currentMainAxisOffset":I
    .local v2, "currentMainAxisOffset":I
    const/16 v16, 0x0

    move/from16 v38, v2

    move/from16 v2, v16

    move/from16 v4, v17

    goto :goto_f

    .line 255
    .end local v2    # "currentMainAxisOffset":I
    .restart local v7    # "currentMainAxisOffset":I
    :cond_14
    move/from16 v38, v7

    move/from16 v2, v16

    move/from16 v4, v17

    goto :goto_f

    .line 240
    .end local v1    # "scrollDelta":I
    .end local v39    # "toScrollBack":I
    .end local v57    # "maxOffset":I
    .restart local v0    # "preScrollBackScrollDelta":I
    .local v10, "maxOffset":I
    .restart local v18    # "scrollDelta":I
    :cond_15
    move/from16 v57, v10

    const/4 v3, 0x0

    move v10, v0

    move-object/from16 v0, p1

    .end local v0    # "preScrollBackScrollDelta":I
    .local v10, "preScrollBackScrollDelta":I
    .restart local v57    # "maxOffset":I
    move/from16 v38, v7

    move/from16 v2, v16

    move/from16 v4, v17

    move/from16 v1, v18

    .line 267
    .end local v7    # "currentMainAxisOffset":I
    .end local v16    # "currentFirstItemScrollOffset":I
    .end local v17    # "currentFirstItemIndex":I
    .end local v18    # "scrollDelta":I
    .restart local v1    # "scrollDelta":I
    .local v2, "currentFirstItemScrollOffset":I
    .local v4, "currentFirstItemIndex":I
    .local v38, "currentMainAxisOffset":I
    :goto_f
    nop

    .line 268
    move/from16 v5, p8

    .local v5, "$this$fastRoundToInt$iv":F
    const/4 v7, 0x0

    .line 629
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 268
    .end local v5    # "$this$fastRoundToInt$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    invoke-static {v5}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v5

    invoke-static {v1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v7

    if-ne v5, v7, :cond_16

    .line 269
    move/from16 v5, p8

    .restart local v5    # "$this$fastRoundToInt$iv":F
    const/4 v7, 0x0

    .line 630
    .restart local v7    # "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 269
    .end local v5    # "$this$fastRoundToInt$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v5, v7, :cond_16

    .line 271
    int-to-float v5, v1

    goto :goto_10

    .line 273
    :cond_16
    move/from16 v5, p8

    .line 267
    :goto_10
    nop

    .line 266
    nop

    .line 276
    .local v5, "consumedScroll":F
    sub-float v48, p8, v5

    .line 281
    .local v48, "unconsumedScroll":F
    const/4 v7, 0x0

    if-eqz p20, :cond_17

    if-le v1, v10, :cond_17

    cmpg-float v16, v48, v7

    if-gtz v16, :cond_17

    .line 282
    sub-int v7, v1, v10

    int-to-float v7, v7

    add-float v7, v7, v48

    goto :goto_11

    .line 283
    :cond_17
    nop

    .line 281
    :goto_11
    nop

    .line 280
    move/from16 v52, v7

    .line 286
    .local v52, "scrollBackAmount":F
    if-ltz v2, :cond_18

    move/from16 v7, v31

    goto :goto_12

    :cond_18
    move v7, v3

    .local v7, "value$iv":Z
    :goto_12
    const/16 v16, 0x0

    .line 631
    .local v16, "$i$f$requirePrecondition":I
    if-nez v7, :cond_19

    .line 632
    const/16 v17, 0x0

    .line 287
    .local v17, "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$4":I
    nop

    .line 632
    .end local v17    # "$i$a$-requirePrecondition-LazyListMeasureKt$measureLazyList$4":I
    const-string/jumbo v17, "negative currentFirstItemScrollOffset"

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 634
    :cond_19
    nop

    .line 289
    .end local v7    # "value$iv":Z
    .end local v16    # "$i$f$requirePrecondition":I
    neg-int v7, v2

    .line 290
    .local v7, "visibleItemsScrollOffset":I
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 294
    .local v16, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    if-gtz v6, :cond_1b

    if-gez p5, :cond_1a

    goto :goto_13

    :cond_1a
    move/from16 v54, v1

    move/from16 v27, v2

    move-object/from16 v1, v16

    goto :goto_17

    .line 295
    :cond_1b
    :goto_13
    const/16 v17, 0x0

    .local v17, "i":I
    move-object/from16 v18, v9

    check-cast v18, Ljava/util/Collection;

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v54, v1

    move/from16 v1, v17

    .end local v17    # "i":I
    .local v1, "i":I
    .local v54, "scrollDelta":I
    :goto_14
    if-ge v1, v3, :cond_1f

    .line 296
    invoke-virtual {v9, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    .line 297
    .local v3, "size":I
    nop

    .line 298
    if-eqz v2, :cond_1e

    .line 299
    if-gt v3, v2, :cond_1d

    .line 300
    move-object/from16 v17, v9

    check-cast v17, Ljava/util/List;

    move/from16 v19, v2

    .end local v2    # "currentFirstItemScrollOffset":I
    .local v19, "currentFirstItemScrollOffset":I
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 302
    sub-int v2, v19, v3

    .line 303
    .end local v19    # "currentFirstItemScrollOffset":I
    .restart local v2    # "currentFirstItemScrollOffset":I
    move/from16 v17, v1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    add-int/lit8 v1, v17, 0x1

    invoke-virtual {v9, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 295
    .end local v3    # "size":I
    add-int/lit8 v1, v17, 0x1

    move/from16 v3, v18

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_14

    .line 300
    .end local v2    # "currentFirstItemScrollOffset":I
    .restart local v3    # "size":I
    .restart local v19    # "currentFirstItemScrollOffset":I
    :cond_1c
    move/from16 v17, v1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    goto :goto_15

    .line 299
    .end local v17    # "i":I
    .end local v19    # "currentFirstItemScrollOffset":I
    .restart local v1    # "i":I
    .restart local v2    # "currentFirstItemScrollOffset":I
    :cond_1d
    move/from16 v17, v1

    move/from16 v19, v2

    .end local v1    # "i":I
    .end local v2    # "currentFirstItemScrollOffset":I
    .restart local v17    # "i":I
    .restart local v19    # "currentFirstItemScrollOffset":I
    goto :goto_15

    .line 298
    .end local v17    # "i":I
    .end local v19    # "currentFirstItemScrollOffset":I
    .restart local v1    # "i":I
    .restart local v2    # "currentFirstItemScrollOffset":I
    :cond_1e
    move/from16 v17, v1

    move/from16 v19, v2

    .line 305
    .end local v1    # "i":I
    .end local v2    # "currentFirstItemScrollOffset":I
    .restart local v17    # "i":I
    .restart local v19    # "currentFirstItemScrollOffset":I
    :goto_15
    goto :goto_16

    .line 295
    .end local v3    # "size":I
    .end local v17    # "i":I
    .end local v19    # "currentFirstItemScrollOffset":I
    .restart local v1    # "i":I
    .restart local v2    # "currentFirstItemScrollOffset":I
    :cond_1f
    move/from16 v17, v1

    move/from16 v19, v2

    .line 313
    .end local v1    # "i":I
    .end local v2    # "currentFirstItemScrollOffset":I
    .restart local v19    # "currentFirstItemScrollOffset":I
    :goto_16
    move/from16 v27, v19

    move-object/from16 v1, v16

    .end local v16    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v19    # "currentFirstItemScrollOffset":I
    .local v1, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v27, "currentFirstItemScrollOffset":I
    :goto_17
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 312
    invoke-static {v4, v0, v12, v13}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v34

    .line 311
    nop

    .line 320
    .local v34, "extraItemsBefore":Ljava/util/List;
    move-object/from16 v2, v34

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 635
    .local v3, "$i$f$fastForEach":I
    const/16 v16, 0x0

    .local v16, "index$iv":I
    move-object/from16 v17, v2

    check-cast v17, Ljava/util/Collection;

    move/from16 v18, v3

    .end local v3    # "$i$f$fastForEach":I
    .local v18, "$i$f$fastForEach":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v3

    move/from16 v55, v4

    move/from16 v4, v16

    .end local v16    # "index$iv":I
    .local v4, "index$iv":I
    .local v55, "currentFirstItemIndex":I
    :goto_18
    if-ge v4, v3, :cond_20

    .line 636
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 637
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v17, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v19, 0x0

    .line 320
    .local v19, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$5":I
    move-object/from16 v20, v2

    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 637
    .end local v17    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v19    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$5":I
    nop

    .line 635
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    goto :goto_18

    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_20
    move-object/from16 v20, v2

    .line 639
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 325
    .end local v18    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v2, v9

    check-cast v2, Ljava/util/List;

    .line 326
    nop

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 324
    invoke-static {v2, v0, v15, v12, v13}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;

    move-result-object v35

    .line 323
    nop

    .line 333
    .local v35, "extraItemsAfter":Ljava/util/List;
    move-object/from16 v2, v35

    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 640
    .restart local v3    # "$i$f$fastForEach":I
    const/4 v4, 0x0

    .restart local v4    # "index$iv":I
    move-object/from16 v16, v2

    check-cast v16, Ljava/util/Collection;

    move/from16 v17, v3

    .end local v3    # "$i$f$fastForEach":I
    .local v17, "$i$f$fastForEach":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_19
    if-ge v4, v3, :cond_21

    .line 641
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 642
    .restart local v16    # "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v18, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v19, 0x0

    .line 333
    .local v19, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$6":I
    move-object/from16 v20, v2

    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 642
    .end local v18    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v19    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$6":I
    nop

    .line 640
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    goto :goto_19

    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_21
    move-object/from16 v20, v2

    .line 644
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 336
    .end local v17    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 337
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 338
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    move/from16 v2, v31

    goto :goto_1a

    :cond_22
    const/4 v2, 0x0

    .line 335
    :goto_1a
    move/from16 v56, v2

    .line 341
    .local v56, "noExtraItems":Z
    if-eqz p11, :cond_23

    move v2, v8

    goto :goto_1b

    :cond_23
    move/from16 v2, v38

    :goto_1b
    move-wide/from16 v3, p9

    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v18

    .line 340
    nop

    .line 343
    .local v18, "layoutWidth":I
    if-eqz p11, :cond_24

    move/from16 v2, v38

    goto :goto_1c

    :cond_24
    move v2, v8

    :goto_1c
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v19

    .line 342
    nop

    .line 347
    .local v19, "layoutHeight":I
    move-object/from16 v33, v9

    check-cast v33, Ljava/util/List;

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 346
    move/from16 v41, p11

    move-object/from16 v42, p12

    move-object/from16 v43, p13

    move/from16 v44, p14

    move-object/from16 v45, p15

    move/from16 v40, v7

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v39, v57

    .end local v7    # "visibleItemsScrollOffset":I
    .end local v18    # "layoutWidth":I
    .end local v19    # "layoutHeight":I
    .end local v57    # "maxOffset":I
    .local v36, "layoutWidth":I
    .local v37, "layoutHeight":I
    .local v39, "maxOffset":I
    .local v40, "visibleItemsScrollOffset":I
    invoke-static/range {v33 .. v45}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v20

    .line 345
    .end local v36    # "layoutWidth":I
    .end local v37    # "layoutHeight":I
    .restart local v18    # "layoutWidth":I
    .restart local v19    # "layoutHeight":I
    nop

    .line 363
    .local v20, "positionedItems":Ljava/util/List;
    float-to-int v2, v5

    .line 364
    nop

    .line 365
    nop

    .line 367
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v21

    .line 374
    nop

    .line 375
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
    move-object/from16 v22, v0

    check-cast v22, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    .line 369
    nop

    .line 371
    nop

    .line 370
    nop

    .line 372
    nop

    .line 374
    nop

    .line 375
    nop

    .line 373
    nop

    .line 376
    nop

    .line 362
    const/16 v25, 0x1

    move/from16 v23, p11

    move-object/from16 v16, p16

    move/from16 v26, p19

    move/from16 v24, p20

    move-object/from16 v29, p21

    move-object/from16 v30, p23

    move/from16 v17, v2

    move/from16 v28, v38

    .end local v38    # "currentMainAxisOffset":I
    .local v28, "currentMainAxisOffset":I
    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 379
    move/from16 v16, v10

    move/from16 v2, v18

    move/from16 v7, v19

    move/from16 v10, v24

    move/from16 v12, v28

    .end local v10    # "preScrollBackScrollDelta":I
    .end local v18    # "layoutWidth":I
    .end local v19    # "layoutHeight":I
    .end local v28    # "currentMainAxisOffset":I
    .local v2, "layoutWidth":I
    .local v7, "layoutHeight":I
    .local v12, "currentMainAxisOffset":I
    .local v16, "preScrollBackScrollDelta":I
    if-nez v10, :cond_2a

    .line 380
    move/from16 v17, v5

    .end local v5    # "consumedScroll":F
    .local v17, "consumedScroll":F
    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v5

    .line 381
    .local v5, "disappearingItemsSize":J
    sget-object v18, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move/from16 v21, v8

    move-object/from16 v19, v9

    .end local v8    # "maxCrossAxis":I
    .end local v9    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .local v19, "visibleItems":Lkotlin/collections/ArrayDeque;
    .local v21, "maxCrossAxis":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_29

    .line 382
    if-eqz p11, :cond_25

    move/from16 v18, v7

    goto :goto_1d

    :cond_25
    move/from16 v18, v2

    :goto_1d
    move/from16 v8, v18

    .line 384
    .local v8, "oldMainAxisSize":I
    move-wide/from16 v22, v5

    .local v22, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 645
    .local v9, "$i$f$getWidth-impl":I
    move-wide/from16 v24, v22

    .local v24, "value$iv$iv":J
    const/16 v18, 0x0

    .line 646
    .local v18, "$i$f$unpackInt1":I
    move-wide/from16 v28, v5

    .end local v5    # "disappearingItemsSize":J
    .local v28, "disappearingItemsSize":J
    shr-long v5, v24, v32

    long-to-int v5, v5

    .line 645
    .end local v18    # "$i$f$unpackInt1":I
    .end local v24    # "value$iv$iv":J
    nop

    .line 384
    .end local v9    # "$i$f$getWidth-impl":I
    .end local v22    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v5

    .line 383
    move/from16 v18, v5

    .line 386
    .end local v2    # "layoutWidth":I
    .local v18, "layoutWidth":I
    move-wide/from16 v5, v28

    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 647
    .local v2, "$i$f$getHeight-impl":I
    move-wide/from16 v22, v5

    .local v22, "value$iv$iv":J
    const/4 v9, 0x0

    .line 648
    .local v9, "$i$f$unpackInt2":I
    move-object/from16 v24, v1

    move/from16 v25, v2

    .end local v1    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v2    # "$i$f$getHeight-impl":I
    .local v24, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v25, "$i$f$getHeight-impl":I
    and-long v1, v22, v46

    long-to-int v1, v1

    .line 647
    .end local v9    # "$i$f$unpackInt2":I
    .end local v22    # "value$iv$iv":J
    nop

    .line 386
    .end local v5    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v25    # "$i$f$getHeight-impl":I
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 385
    nop

    .line 387
    .end local v7    # "layoutHeight":I
    .local v1, "layoutHeight":I
    if-eqz p11, :cond_26

    move v2, v1

    goto :goto_1e

    :cond_26
    move/from16 v2, v18

    .line 388
    .local v2, "newMainAxisSize":I
    :goto_1e
    if-eq v2, v8, :cond_28

    .line 389
    move-object/from16 v5, v20

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 649
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_1f
    if-ge v7, v9, :cond_27

    .line 650
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 651
    .local v22, "item$iv":Ljava/lang/Object;
    move/from16 v23, v1

    .end local v1    # "layoutHeight":I
    .local v23, "layoutHeight":I
    move-object/from16 v1, v22

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v1, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/16 v25, 0x0

    .line 389
    .local v25, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$7":I
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->updateMainAxisLayoutSize(I)V

    .line 651
    .end local v1    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v25    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$7":I
    nop

    .line 649
    .end local v22    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v23

    goto :goto_1f

    .end local v23    # "layoutHeight":I
    .local v1, "layoutHeight":I
    :cond_27
    move/from16 v23, v1

    .line 653
    .end local v1    # "layoutHeight":I
    .end local v7    # "index$iv":I
    .restart local v23    # "layoutHeight":I
    goto :goto_20

    .line 388
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v23    # "layoutHeight":I
    .restart local v1    # "layoutHeight":I
    :cond_28
    move/from16 v23, v1

    .line 396
    .end local v1    # "layoutHeight":I
    .end local v2    # "newMainAxisSize":I
    .end local v8    # "oldMainAxisSize":I
    .end local v28    # "disappearingItemsSize":J
    .restart local v23    # "layoutHeight":I
    :goto_20
    move/from16 v7, v18

    move/from16 v8, v23

    goto :goto_22

    .line 381
    .end local v18    # "layoutWidth":I
    .end local v23    # "layoutHeight":I
    .end local v24    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v1, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v2, "layoutWidth":I
    .local v5, "disappearingItemsSize":J
    .local v7, "layoutHeight":I
    :cond_29
    move-object/from16 v24, v1

    move-wide/from16 v28, v5

    .end local v1    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v5    # "disappearingItemsSize":J
    .restart local v24    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .restart local v28    # "disappearingItemsSize":J
    goto :goto_21

    .line 379
    .end local v17    # "consumedScroll":F
    .end local v19    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .end local v21    # "maxCrossAxis":I
    .end local v24    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v28    # "disappearingItemsSize":J
    .restart local v1    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v5, "consumedScroll":F
    .local v8, "maxCrossAxis":I
    .local v9, "visibleItems":Lkotlin/collections/ArrayDeque;
    :cond_2a
    move-object/from16 v24, v1

    move/from16 v17, v5

    move/from16 v21, v8

    move-object/from16 v19, v9

    .line 396
    .end local v1    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v5    # "consumedScroll":F
    .end local v8    # "maxCrossAxis":I
    .end local v9    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .restart local v17    # "consumedScroll":F
    .restart local v19    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .restart local v21    # "maxCrossAxis":I
    .restart local v24    # "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    :goto_21
    move v8, v7

    move v7, v2

    .line 397
    .end local v2    # "layoutWidth":I
    .local v7, "layoutWidth":I
    .local v8, "layoutHeight":I
    :goto_22
    invoke-virtual/range {v19 .. v19}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    goto :goto_23

    :cond_2b
    const/4 v1, 0x0

    .line 398
    :goto_23
    invoke-virtual/range {v19 .. v19}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    goto :goto_24

    :cond_2c
    const/4 v2, 0x0

    .line 399
    :goto_24
    nop

    .line 400
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getHeaderIndexes()Landroidx/collection/IntList;

    move-result-object v4

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 396
    new-instance v9, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;)V

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v0, p24

    move-object/from16 v3, v20

    move/from16 v22, v21

    move/from16 v13, v39

    const/16 v53, 0x0

    move-object/from16 v21, v19

    .end local v19    # "visibleItems":Lkotlin/collections/ArrayDeque;
    .end local v20    # "positionedItems":Ljava/util/List;
    .end local v39    # "maxOffset":I
    .local v3, "positionedItems":Ljava/util/List;
    .local v13, "maxOffset":I
    .local v21, "visibleItems":Lkotlin/collections/ArrayDeque;
    .local v22, "maxCrossAxis":I
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/List;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v1

    .line 395
    move-object v2, v3

    move v0, v5

    move/from16 v23, v7

    move/from16 v25, v8

    .line 410
    .end local v3    # "positionedItems":Ljava/util/List;
    .end local v7    # "layoutWidth":I
    .end local v8    # "layoutHeight":I
    .local v1, "stickingItems":Ljava/util/List;
    .local v2, "positionedItems":Ljava/util/List;
    .local v23, "layoutWidth":I
    .local v25, "layoutHeight":I
    const/4 v3, 0x0

    if-eqz v56, :cond_2e

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_25

    :cond_2d
    move-object v4, v3

    goto :goto_25

    .line 411
    :cond_2e
    invoke-virtual/range {v21 .. v21}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_25

    :cond_2f
    move-object v4, v3

    .line 410
    :goto_25
    nop

    .line 409
    move-object/from16 v26, v4

    .line 413
    .local v26, "firstVisibleIndex":Ljava/lang/Integer;
    if-eqz v56, :cond_30

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_26

    .line 414
    :cond_30
    invoke-virtual/range {v21 .. v21}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 413
    :cond_31
    :goto_26
    nop

    .line 412
    move-object/from16 v28, v3

    .line 417
    .local v28, "lastVisibleIndex":Ljava/lang/Integer;
    nop

    .line 418
    nop

    .line 419
    if-lt v11, v15, :cond_33

    if-le v12, v13, :cond_32

    goto :goto_27

    :cond_32
    move/from16 v3, v53

    goto :goto_28

    :cond_33
    :goto_27
    move/from16 v3, v31

    .line 422
    :goto_28
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda3;

    move-object/from16 v7, p22

    invoke-direct {v6, v7, v2, v1, v10}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v8, p25

    invoke-interface {v8, v4, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 441
    if-eqz v26, :cond_34

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_29

    :cond_34
    move/from16 v4, v53

    .line 442
    :goto_29
    if-eqz v28, :cond_35

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2a

    :cond_35
    move/from16 v6, v53

    .line 443
    :goto_2a
    nop

    .line 444
    nop

    .line 440
    invoke-static {v4, v6, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 446
    move/from16 v39, v13

    .end local v13    # "maxOffset":I
    .restart local v39    # "maxOffset":I
    neg-int v13, v0

    .line 447
    move/from16 v18, v14

    .end local v14    # "minOffset":I
    .local v18, "minOffset":I
    add-int v14, v39, p4

    .line 450
    if-eqz p11, :cond_36

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2b

    :cond_36
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 453
    :goto_2b
    nop

    .line 456
    move v9, v11

    .end local v11    # "index":I
    .local v9, "index":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    .line 416
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 422
    nop

    .line 438
    nop

    .line 453
    nop

    .line 454
    nop

    .line 455
    nop

    .line 456
    nop

    .line 440
    nop

    .line 446
    nop

    .line 447
    nop

    .line 448
    nop

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 416
    const/16 v20, 0x0

    move/from16 v19, p5

    move-object/from16 v8, p21

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    move/from16 v38, v12

    move/from16 v29, v16

    move-object/from16 v1, v24

    move/from16 v2, v27

    move/from16 v7, v49

    move/from16 v16, p14

    move-object v12, v4

    move/from16 v27, v9

    move/from16 v4, v17

    move/from16 v24, v18

    move/from16 v18, p4

    move-object/from16 v9, p15

    move-object/from16 v17, v6

    move/from16 v6, v52

    .end local v9    # "index":I
    .end local v12    # "currentMainAxisOffset":I
    .end local v16    # "preScrollBackScrollDelta":I
    .end local v17    # "consumedScroll":F
    .end local v18    # "minOffset":I
    .end local v49    # "remeasureNeeded":Z
    .end local v52    # "scrollBackAmount":F
    .local v1, "firstItem":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .local v2, "currentFirstItemScrollOffset":I
    .local v4, "consumedScroll":F
    .local v6, "scrollBackAmount":F
    .local v7, "remeasureNeeded":Z
    .local v24, "minOffset":I
    .local v27, "index":I
    .local v29, "preScrollBackScrollDelta":I
    .local v30, "positionedItems":Ljava/util/List;
    .local v31, "stickingItems":Ljava/util/List;
    .restart local v38    # "currentMainAxisOffset":I
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v17, v4

    .end local v4    # "consumedScroll":F
    .restart local v17    # "consumedScroll":F
    return-object v0
.end method

.method static final measureLazyList__s_dbAc$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 113
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final measureLazyList__s_dbAc$lambda$7(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 6
    .param p0, "$measuredItemProvider"    # Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .param p1, "it"    # I

    .line 406
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    .end local p0    # "$measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .end local p1    # "it":I
    .local v0, "$measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
    .local v1, "it":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method static final measureLazyList__s_dbAc$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$positionedItems"    # Ljava/util/List;
    .param p2, "$stickingItems"    # Ljava/util/List;
    .param p3, "$isLookingAhead"    # Z
    .param p4, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 428
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lkotlin/jvm/functions/Function1;)V

    .line 436
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 437
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final measureLazyList__s_dbAc$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$positionedItems"    # Ljava/util/List;
    .param p1, "$stickingItems"    # Ljava/util/List;
    .param p2, "$isLookingAhead"    # Z
    .param p3, "$this$withMotionFrameOfReferencePlacement"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 430
    move-object v0, p0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 697
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 698
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 699
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .local v5, "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v6, 0x0

    .line 430
    .local v6, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$8$1$1":I
    invoke-virtual {v5, p3, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    .line 699
    .end local v5    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v6    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$8$1$1":I
    nop

    .line 697
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 432
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    move-object v0, p1

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 702
    .restart local v1    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .restart local v2    # "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    .line 703
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 704
    .restart local v4    # "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .restart local v5    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    const/4 v6, 0x0

    .line 432
    .local v6, "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$8$1$2":I
    invoke-virtual {v5, p3, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    .line 704
    .end local v5    # "it":Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .end local v6    # "$i$a$-fastForEach-LazyListMeasureKt$measureLazyList$8$1$2":I
    nop

    .line 702
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 433
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
