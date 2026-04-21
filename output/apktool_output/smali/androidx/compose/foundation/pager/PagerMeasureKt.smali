.class public final Landroidx/compose/foundation/pager/PagerMeasureKt;
.super Ljava/lang/Object;
.source "PagerMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n720#1,4:733\n720#1,4:737\n720#1,4:741\n720#1,4:745\n720#1,4:749\n720#1,4:753\n720#1,4:795\n97#2,4:725\n97#2,4:729\n97#2,4:757\n51#2,4:822\n97#2,4:826\n35#3,5:761\n35#3,5:766\n231#3,2:771\n35#3,5:773\n233#3:778\n231#3,2:779\n35#3,5:781\n233#3:786\n231#3,2:787\n35#3,5:789\n233#3:794\n35#3,5:799\n35#3,5:804\n169#3,12:809\n35#3,5:830\n35#3,5:835\n35#3,5:840\n35#3,5:845\n1#4:821\n*S KotlinDebug\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n*L\n76#1:733,4\n145#1:737,4\n166#1:741,4\n188#1:745,4\n227#1:749,4\n252#1:753,4\n467#1:795,4\n70#1:725,4\n71#1:729,4\n310#1:757,4\n648#1:822,4\n656#1:826,4\n358#1:761,5\n384#1:766,5\n421#1:771,2\n421#1:773,5\n421#1:778\n428#1:779,2\n428#1:781,5\n428#1:786\n432#1:787,2\n432#1:789,5\n432#1:794\n529#1:799,5\n554#1:804,5\n573#1:809,12\n694#1:830,5\n701#1:835,5\n707#1:840,5\n485#1:845,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u008a\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2/\u0010%\u001a+\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0\'\u00a2\u0006\u0002\u0008*\u0012\u0004\u0012\u00020+0&2\u0012\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u001c0-H\u0000\u00a2\u0006\u0004\u0008/\u00100\u001aH\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u0006\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002020\'H\u0002\u001a@\u00106\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u0006\u00107\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002020\'H\u0002\u001aH\u00108\u001a\u0004\u0018\u0001022\u0006\u00109\u001a\u00020\u00042\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a{\u00105\u001a\u000202*\u00020\u00022\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010>\u001a\u00020?2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00042\u0012\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u001c0-H\u0002\u00a2\u0006\u0004\u0008@\u0010A\u001a\u008c\u0001\u0010B\u001a\u0008\u0012\u0004\u0012\u0002020C*\u00020\u00022\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u0002020\u001c2\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0002\u001a\u0017\u0010O\u001a\u00020)2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020R0QH\u0082\u0008\"\u000e\u0010L\u001a\u00020MX\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010N\u001a\u00020MX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006S"
    }
    d2 = {
        "measurePager",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "pageCount",
        "",
        "pagerItemProvider",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenPages",
        "currentPage",
        "currentPageOffset",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "reverseLayout",
        "",
        "visualPageOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "pageAvailableSize",
        "beyondViewportPageCount",
        "pinnedPages",
        "",
        "snapPosition",
        "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "placeablesCache",
        "Landroidx/collection/MutableIntObjectMap;",
        "Landroidx/compose/ui/layout/Placeable;",
        "measurePager-7L1iB3k",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function3;Landroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "createPagesAfterList",
        "Landroidx/compose/foundation/pager/MeasuredPage;",
        "currentLastPage",
        "pagesCount",
        "getAndMeasure",
        "createPagesBeforeList",
        "currentFirstPage",
        "calculateNewCurrentPage",
        "viewportSize",
        "visiblePagesInfo",
        "itemSize",
        "index",
        "childConstraints",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getAndMeasure-G5IdpRk",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;",
        "calculatePagesOffsets",
        "",
        "pages",
        "extraPagesBefore",
        "extraPagesAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "pagesScrollOffset",
        "MinPageOffset",
        "",
        "MaxPageOffset",
        "debugLog",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
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


# static fields
.field public static final MaxPageOffset:F = 0.5f

.field public static final MinPageOffset:F = -0.5f


# direct methods
.method public static synthetic $r8$lambda$m3KsSl9MwnWbzOK9G6LUi6sW_gM(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerMeasureKt;->measurePager_7L1iB3k$lambda$18$0(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateNewCurrentPage(ILjava/util/List;IIILandroidx/compose/foundation/gestures/snapping/SnapPosition;I)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 18
    .param p0, "viewportSize"    # I
    .param p1, "visiblePagesInfo"    # Ljava/util/List;
    .param p2, "beforeContentPadding"    # I
    .param p3, "afterContentPadding"    # I
    .param p4, "itemSize"    # I
    .param p5, "snapPosition"    # Landroidx/compose/foundation/gestures/snapping/SnapPosition;
    .param p6, "pageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;III",
            "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
            "I)",
            "Landroidx/compose/foundation/pager/MeasuredPage;"
        }
    .end annotation

    .line 573
    move-object/from16 v0, p1

    .local v0, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 809
    .local v1, "$i$f$fastMaxBy":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 810
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 811
    .local v2, "maxElem$iv":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v3, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v4, 0x0

    .line 574
    .local v4, "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 576
    nop

    .line 577
    nop

    .line 578
    nop

    .line 579
    nop

    .line 580
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v9

    .line 581
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v10

    .line 582
    nop

    .line 583
    nop

    .line 575
    move/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v5 .. v12}, Landroidx/compose/foundation/gestures/snapping/SnapPositionKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition;I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 574
    neg-float v5, v5

    .line 585
    nop

    .line 811
    .end local v3    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v4    # "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 812
    .local v5, "maxValue$iv":F
    const/4 v3, 0x1

    .local v3, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 813
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 814
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v7, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v8, 0x0

    .line 574
    .local v8, "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 576
    nop

    .line 577
    nop

    .line 578
    nop

    .line 579
    nop

    .line 580
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v14

    .line 581
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v15

    .line 582
    nop

    .line 583
    nop

    .line 575
    move/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-static/range {v10 .. v17}, Landroidx/compose/foundation/gestures/snapping/SnapPositionKt;->calculateDistanceToDesiredSnapPosition(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition;I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 574
    neg-float v9, v9

    .line 585
    nop

    .line 814
    .end local v7    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v8    # "$i$a$-fastMaxBy-PagerMeasureKt$calculateNewCurrentPage$1":I
    nop

    .line 815
    .local v9, "v$iv":F
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gez v7, :cond_1

    .line 816
    move-object v2, v6

    .line 817
    move v5, v9

    .line 812
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v9    # "v$iv":F
    :cond_1
    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    .end local v3    # "i$iv":I
    :cond_2
    nop

    .end local v0    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMaxBy":I
    .end local v2    # "maxElem$iv":Ljava/lang/Object;
    .end local v5    # "maxValue$iv":F
    :goto_1
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 573
    return-object v2
.end method

.method private static final calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;
    .locals 22
    .param p0, "$this$calculatePagesOffsets"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "pages"    # Ljava/util/List;
    .param p2, "extraPagesBefore"    # Ljava/util/List;
    .param p3, "extraPagesAfter"    # Ljava/util/List;
    .param p4, "layoutWidth"    # I
    .param p5, "layoutHeight"    # I
    .param p6, "finalMainAxisOffset"    # I
    .param p7, "maxOffset"    # I
    .param p8, "pagesScrollOffset"    # I
    .param p9, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p10, "reverseLayout"    # Z
    .param p11, "density"    # Landroidx/compose/ui/unit/Density;
    .param p12, "spaceBetweenPages"    # I
    .param p13, "pageAvailableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;IIIII",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "II)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 644
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p12

    add-int v6, p13, v5

    .line 645
    .local v6, "pageSizeWithSpacing":I
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v7, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    move v10, v7

    .line 646
    .local v10, "mainAxisLayoutSize":I
    move/from16 v7, p7

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v14, p6

    if-ge v14, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move v15, v8

    .line 647
    .local v15, "hasSpareSpace":Z
    if-eqz v15, :cond_4

    .line 648
    if-nez v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .local v8, "value$iv":Z
    :goto_2
    const/4 v12, 0x0

    .line 822
    .local v12, "$i$f$checkPrecondition":I
    if-nez v8, :cond_3

    .line 823
    const/4 v13, 0x0

    .line 649
    .local v13, "$i$a$-checkPrecondition-PagerMeasureKt$calculatePagesOffsets$1":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "non-zero pagesScrollOffset="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 823
    .end local v13    # "$i$a$-checkPrecondition-PagerMeasureKt$calculatePagesOffsets$1":I
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 825
    :cond_3
    nop

    .line 653
    .end local v8    # "value$iv":Z
    .end local v12    # "$i$f$checkPrecondition":I
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v9, v11

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v9, v11

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 652
    nop

    .line 655
    .local v8, "positionedPages":Ljava/util/ArrayList;
    if-eqz v15, :cond_e

    .line 656
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .local v11, "value$iv":Z
    :goto_3
    const/4 v9, 0x0

    .line 826
    .local v9, "$i$f$requirePrecondition":I
    if-nez v11, :cond_6

    .line 827
    const/4 v12, 0x0

    .line 657
    .local v12, "$i$a$-requirePrecondition-PagerMeasureKt$calculatePagesOffsets$2":I
    nop

    .line 827
    .end local v12    # "$i$a$-requirePrecondition-PagerMeasureKt$calculatePagesOffsets$2":I
    const-string/jumbo v12, "No extra pages"

    invoke-static {v12}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 829
    :cond_6
    nop

    .line 660
    .end local v9    # "$i$f$requirePrecondition":I
    .end local v11    # "value$iv":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 663
    .local v9, "pagesCount":I
    new-array v11, v9, [I

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_7

    aput p13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 664
    .local v11, "sizes":[I
    :cond_7
    new-array v13, v9, [I

    .line 666
    .local v13, "offsets":[I
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement$Absolute;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

    move-object/from16 v2, p0

    move/from16 v16, v6

    .end local v6    # "pageSizeWithSpacing":I
    .local v16, "pageSizeWithSpacing":I
    invoke-interface {v2, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(I)F

    move-result v6

    invoke-virtual {v12, v6}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    .line 667
    .local v6, "arrangement":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v12, :cond_8

    .line 668
    move-object v12, v6

    .line 821
    .local v12, "$this$calculatePagesOffsets_u24lambda_u242":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    const/16 v17, 0x0

    .line 668
    .local v17, "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$3":I
    move-object/from16 v2, p11

    invoke-interface {v12, v2, v10, v11, v13}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    move-object v2, v8

    move v3, v9

    .end local v12    # "$this$calculatePagesOffsets_u24lambda_u242":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .end local v17    # "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$3":I
    goto :goto_5

    .line 670
    :cond_8
    move-object/from16 v2, p11

    move-object v12, v8

    .end local v8    # "positionedPages":Ljava/util/ArrayList;
    .local v12, "positionedPages":Ljava/util/ArrayList;
    move-object v8, v6

    .local v8, "$this$calculatePagesOffsets_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    const/16 v17, 0x0

    .line 672
    .local v17, "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$4":I
    move-object/from16 v18, v12

    .end local v12    # "positionedPages":Ljava/util/ArrayList;
    .local v18, "positionedPages":Ljava/util/ArrayList;
    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move v3, v9

    move-object v9, v2

    move-object/from16 v2, v18

    .end local v9    # "pagesCount":I
    .end local v18    # "positionedPages":Ljava/util/ArrayList;
    .local v2, "positionedPages":Ljava/util/ArrayList;
    .local v3, "pagesCount":I
    invoke-interface/range {v8 .. v13}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 673
    nop

    .line 670
    .end local v8    # "$this$calculatePagesOffsets_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .end local v17    # "$i$a$-with-PagerMeasureKt$calculatePagesOffsets$4":I
    nop

    .line 677
    :goto_5
    invoke-static {v13}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v8

    .line 676
    :goto_6
    nop

    .line 678
    .local v8, "reverseAwareOffsetIndices":Lkotlin/ranges/IntProgression;
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v9

    .local v9, "index":I
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v12

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v17

    if-lez v17, :cond_a

    if-le v9, v12, :cond_b

    :cond_a
    if-gez v17, :cond_d

    if-gt v12, v9, :cond_d

    .line 679
    :cond_b
    :goto_7
    aget v18, v13, v9

    .line 681
    .local v18, "absoluteOffset":I
    invoke-static {v9, v4, v3}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets$reverseAware(IZI)I

    move-result v5

    move/from16 v19, v3

    move-object/from16 v3, p1

    .end local v3    # "pagesCount":I
    .local v19, "pagesCount":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 683
    .local v5, "page":Landroidx/compose/foundation/pager/MeasuredPage;
    if-eqz v4, :cond_c

    .line 685
    sub-int v20, v10, v18

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/MeasuredPage;->getSize()I

    move-result v21

    sub-int v20, v20, v21

    goto :goto_8

    .line 687
    :cond_c
    move/from16 v20, v18

    .line 683
    :goto_8
    nop

    .line 682
    move/from16 v21, v20

    .line 689
    .local v21, "relativeOffset":I
    move/from16 v3, v21

    .end local v21    # "relativeOffset":I
    .local v3, "relativeOffset":I
    invoke-virtual {v5, v3, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 690
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v3    # "relativeOffset":I
    .end local v5    # "page":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v18    # "absoluteOffset":I
    if-eq v9, v12, :cond_12

    add-int v9, v9, v17

    move/from16 v5, p12

    move/from16 v3, v19

    goto :goto_7

    .end local v19    # "pagesCount":I
    .local v3, "pagesCount":I
    :cond_d
    move/from16 v19, v3

    .end local v3    # "pagesCount":I
    .restart local v19    # "pagesCount":I
    goto/16 :goto_c

    .line 693
    .end local v2    # "positionedPages":Ljava/util/ArrayList;
    .end local v9    # "index":I
    .end local v11    # "sizes":[I
    .end local v13    # "offsets":[I
    .end local v16    # "pageSizeWithSpacing":I
    .end local v19    # "pagesCount":I
    .local v6, "pageSizeWithSpacing":I
    .local v8, "positionedPages":Ljava/util/ArrayList;
    :cond_e
    move/from16 v16, v6

    move-object v2, v8

    .end local v6    # "pageSizeWithSpacing":I
    .end local v8    # "positionedPages":Ljava/util/ArrayList;
    .restart local v2    # "positionedPages":Ljava/util/ArrayList;
    .restart local v16    # "pageSizeWithSpacing":I
    const/4 v3, 0x0

    .local v3, "currentMainAxis":I
    move/from16 v3, p8

    .line 694
    move-object/from16 v5, p2

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 830
    .local v6, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_9
    if-ge v8, v9, :cond_f

    .line 831
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 832
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v12, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 695
    .local v13, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$5":I
    sub-int v3, v3, v16

    .line 696
    invoke-virtual {v12, v3, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 697
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    nop

    .line 832
    .end local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v13    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$5":I
    nop

    .line 830
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 834
    .end local v8    # "index$iv":I
    :cond_f
    nop

    .line 700
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move/from16 v3, p8

    .line 701
    move-object/from16 v5, p1

    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 835
    .restart local v6    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_a
    if-ge v8, v9, :cond_10

    .line 836
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 837
    .restart local v11    # "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/pager/MeasuredPage;

    .restart local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 702
    .local v13, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$6":I
    invoke-virtual {v12, v3, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 703
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    add-int v3, v3, v16

    .line 705
    nop

    .line 837
    .end local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v13    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$6":I
    nop

    .line 835
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 839
    .end local v8    # "index$iv":I
    :cond_10
    nop

    .line 707
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object/from16 v5, p3

    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 840
    .restart local v6    # "$i$f$fastForEach":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv":I
    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_b
    if-ge v8, v9, :cond_11

    .line 841
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 842
    .restart local v11    # "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/pager/MeasuredPage;

    .restart local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 708
    .local v13, "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$7":I
    invoke-virtual {v12, v3, v0, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 709
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    add-int v3, v3, v16

    .line 711
    nop

    .line 842
    .end local v12    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v13    # "$i$a$-fastForEach-PagerMeasureKt$calculatePagesOffsets$7":I
    nop

    .line 840
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 844
    .end local v8    # "index$iv":I
    :cond_11
    nop

    .line 713
    .end local v3    # "currentMainAxis":I
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    :cond_12
    :goto_c
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    return-object v3
.end method

.method private static final calculatePagesOffsets$reverseAware(IZI)I
    .locals 1
    .param p0, "$this$calculatePagesOffsets_u24reverseAware"    # I
    .param p1, "$reverseLayout"    # Z
    .param p2, "pagesCount"    # I

    .line 661
    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    sub-int v0, p2, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private static final createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 15
    .param p0, "currentLastPage"    # I
    .param p1, "pagesCount"    # I
    .param p2, "beyondViewportPageCount"    # I
    .param p3, "pinnedPages"    # Ljava/util/List;
    .param p4, "getAndMeasure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 520
    move/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 522
    .local v2, "list":Ljava/lang/Object;
    sub-int v3, v0, p0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v5, p2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, p0

    .line 524
    .local v3, "end":I
    add-int/lit8 v6, p0, 0x1

    .local v6, "i":I
    if-gt v6, v3, :cond_1

    .line 525
    :goto_0
    if-nez v2, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    check-cast v2, Ljava/util/List;

    .line 526
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    if-eq v6, v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    .end local v6    # "i":I
    :cond_1
    move-object/from16 v6, p3

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 799
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_1
    if-ge v8, v9, :cond_5

    .line 800
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 801
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .local v11, "pageIndex":I
    const/4 v12, 0x0

    .line 530
    .local v12, "$i$a$-fastForEach-PagerMeasureKt$createPagesAfterList$1":I
    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x0

    if-gt v13, v11, :cond_2

    if-ge v11, v0, :cond_2

    move v14, v4

    :cond_2
    if-eqz v14, :cond_4

    .line 531
    if-nez v2, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v13

    check-cast v2, Ljava/util/List;

    .line 532
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_4
    nop

    .line 801
    .end local v11    # "pageIndex":I
    .end local v12    # "$i$a$-fastForEach-PagerMeasureKt$createPagesAfterList$1":I
    nop

    .line 799
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 803
    .end local v8    # "index$iv":I
    :cond_5
    nop

    .line 536
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    return-object v4
.end method

.method private static final createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 10
    .param p0, "currentFirstPage"    # I
    .param p1, "beyondViewportPageCount"    # I
    .param p2, "pinnedPages"    # Ljava/util/List;
    .param p3, "getAndMeasure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, "list":Ljava/lang/Object;
    const/4 v1, 0x0

    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 549
    .local v1, "start":I
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    if-gt v1, v2, :cond_1

    .line 550
    :goto_0
    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 551
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 554
    .end local v2    # "i":I
    :cond_1
    move-object v2, p2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 804
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    .line 805
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 806
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "pageIndex":I
    const/4 v8, 0x0

    .line 555
    .local v8, "$i$a$-fastForEach-PagerMeasureKt$createPagesBeforeList$1":I
    if-ge v7, v1, :cond_3

    .line 556
    if-nez v0, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 557
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_3
    nop

    .line 806
    .end local v7    # "pageIndex":I
    .end local v8    # "$i$a$-fastForEach-PagerMeasureKt$createPagesBeforeList$1":I
    nop

    .line 804
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 808
    .end local v4    # "index$iv":I
    :cond_4
    nop

    .line 561
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "generateMsg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 720
    .local v0, "$i$f$debugLog":I
    nop

    .line 723
    return-void
.end method

.method private static final getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 16
    .param p0, "$this$getAndMeasure_u2dG5IdpRk"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "index"    # I
    .param p2, "$v$c$androidx-compose-ui-unit-Constraints$-childConstraints$0"    # J
    .param p4, "pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p5, "$v$c$androidx-compose-ui-unit-IntOffset$-visualPageOffset$0"    # J
    .param p7, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p8, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p9, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p10, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p11, "reverseLayout"    # Z
    .param p12, "pageAvailableSize"    # I
    .param p13, "placeablesCache"    # Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "IJ",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            "J",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "ZI",
            "Landroidx/collection/MutableIntObjectMap<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;)",
            "Landroidx/compose/foundation/pager/MeasuredPage;"
        }
    .end annotation

    .line 603
    move/from16 v1, p1

    move-object/from16 v13, p13

    move-object/from16 v14, p4

    invoke-virtual {v14, v1}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v6

    .line 604
    .local v6, "key":Ljava/lang/Object;
    invoke-virtual {v13, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    .line 606
    .local v15, "cachedPlaceables":Ljava/util/List;
    if-eqz v15, :cond_0

    .line 607
    move-wide/from16 v9, p2

    move-object v3, v15

    goto :goto_1

    .line 609
    :cond_0
    invoke-interface/range {p0 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->compose(I)Ljava/util/List;

    move-result-object v0

    .line 610
    .local v0, "measurables":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 821
    move v5, v4

    .local v5, "i":I
    const/4 v7, 0x0

    .line 610
    .local v7, "$i$a$-List-PagerMeasureKt$getAndMeasure$placeable$1":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    move-wide/from16 v9, p2

    invoke-interface {v8, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    .end local v5    # "i":I
    .end local v7    # "$i$a$-List-PagerMeasureKt$getAndMeasure$placeable$1":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v9, p2

    check-cast v3, Ljava/util/List;

    .line 611
    move-object v2, v3

    .line 821
    .local v2, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 611
    .local v4, "$i$a$-also-PagerMeasureKt$getAndMeasure$placeable$2":I
    invoke-virtual {v13, v1, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 606
    .end local v0    # "measurables":Ljava/util/List;
    .end local v2    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-also-PagerMeasureKt$getAndMeasure$placeable$2":I
    :goto_1
    nop

    .line 605
    nop

    .line 614
    .local v3, "placeable":Ljava/util/List;
    new-instance v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 615
    nop

    .line 622
    nop

    .line 616
    nop

    .line 617
    nop

    .line 624
    nop

    .line 623
    nop

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 621
    nop

    .line 614
    const/4 v12, 0x0

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v2, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/MeasuredPage;-><init>(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final measurePager-7L1iB3k(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function3;Landroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 51
    .param p0, "$this$measurePager_u2d7L1iB3k"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "pageCount"    # I
    .param p2, "pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p3, "mainAxisAvailableSize"    # I
    .param p4, "beforeContentPadding"    # I
    .param p5, "afterContentPadding"    # I
    .param p6, "spaceBetweenPages"    # I
    .param p7, "currentPage"    # I
    .param p8, "currentPageOffset"    # I
    .param p9, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .param p11, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p12, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p13, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p14, "reverseLayout"    # Z
    .param p15, "$v$c$androidx-compose-ui-unit-IntOffset$-visualPageOffset$0"    # J
    .param p17, "pageAvailableSize"    # I
    .param p18, "beyondViewportPageCount"    # I
    .param p19, "pinnedPages"    # Ljava/util/List;
    .param p20, "snapPosition"    # Landroidx/compose/foundation/gestures/snapping/SnapPosition;
    .param p21, "$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p22, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p23, "density"    # Landroidx/compose/ui/unit/Density;
    .param p24, "layout"    # Lkotlin/jvm/functions/Function3;
    .param p25, "placeablesCache"    # Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "I",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            "IIIIIIJ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "ZJII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/unit/Density;",
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
            ">;",
            "Landroidx/collection/MutableIntObjectMap<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;)",
            "Landroidx/compose/foundation/pager/PagerMeasureResult;"
        }
    .end annotation

    .line 70
    move/from16 v6, p1

    move/from16 v2, p4

    move-object/from16 v14, p11

    move-object/from16 v0, p19

    move-object/from16 v1, p24

    const/4 v3, 0x0

    const/16 v23, 0x1

    if-ltz v2, :cond_0

    move/from16 v4, v23

    goto :goto_0

    :cond_0
    move v4, v3

    .local v4, "value$iv":Z
    :goto_0
    const/4 v5, 0x0

    .line 725
    .local v5, "$i$f$requirePrecondition":I
    if-nez v4, :cond_1

    .line 726
    const/4 v9, 0x0

    .line 70
    .local v9, "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$1":I
    nop

    .line 726
    .end local v9    # "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$1":I
    const-string/jumbo v9, "negative beforeContentPadding"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 728
    :cond_1
    nop

    .line 71
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$requirePrecondition":I
    if-ltz p5, :cond_2

    move/from16 v4, v23

    goto :goto_1

    :cond_2
    move v4, v3

    .restart local v4    # "value$iv":Z
    :goto_1
    const/4 v5, 0x0

    .line 729
    .restart local v5    # "$i$f$requirePrecondition":I
    if-nez v4, :cond_3

    .line 730
    const/4 v9, 0x0

    .line 71
    .local v9, "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$2":I
    nop

    .line 730
    .end local v9    # "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$2":I
    const-string/jumbo v9, "negative afterContentPadding"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 732
    :cond_3
    nop

    .line 72
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$requirePrecondition":I
    add-int v4, p17, p6

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 74
    .local v4, "pageSizeWithSpacing":I
    move/from16 v5, p18

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v18

    .line 76
    .local v18, "coercedBeyondViewportPageCount":I
    const/4 v9, 0x0

    .line 733
    .local v9, "$i$f$debugLog":I
    nop

    .line 736
    nop

    .line 84
    .end local v9    # "$i$f$debugLog":I
    nop

    .line 86
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v9, :cond_4

    .line 87
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    move/from16 v25, v9

    goto :goto_2

    .line 89
    :cond_4
    move/from16 v25, p17

    .line 84
    :goto_2
    nop

    .line 92
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v14, v9, :cond_5

    .line 93
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    move/from16 v27, v9

    goto :goto_3

    .line 95
    :cond_5
    move/from16 v27, p17

    .line 84
    :goto_3
    const/16 v28, 0x5

    const/16 v29, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v29}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v11

    .line 83
    nop

    .line 99
    .local v11, "childConstraints":J
    if-gtz v6, :cond_6

    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 106
    neg-int v15, v2

    .line 107
    add-int v16, p3, p5

    .line 108
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v3, v9, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroidx/compose/ui/layout/MeasureResult;

    .line 100
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 111
    nop

    .line 112
    nop

    .line 109
    nop

    .line 114
    nop

    .line 115
    nop

    .line 110
    nop

    .line 113
    nop

    .line 116
    nop

    .line 108
    nop

    .line 117
    nop

    .line 100
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 100
    const/high16 v33, 0x60000

    const/16 v34, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v13, p5

    move-object/from16 v24, p20

    move-object/from16 v29, p22

    move-object/from16 v30, p23

    move-wide/from16 v31, v11

    move/from16 v12, p6

    move/from16 v11, p17

    .end local v11    # "childConstraints":J
    .local v31, "childConstraints":J
    invoke-direct/range {v9 .. v34}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide/from16 v11, v31

    .line 99
    .end local v31    # "childConstraints":J
    .restart local v11    # "childConstraints":J
    return-object v9

    .line 123
    :cond_6
    const/4 v9, 0x0

    .local v9, "firstVisiblePage":I
    move/from16 v9, p7

    .line 124
    move/from16 v10, p8

    move/from16 v34, v9

    move/from16 v35, v10

    .line 128
    .end local v9    # "firstVisiblePage":I
    .local v34, "firstVisiblePage":I
    .local v35, "firstVisiblePageOffset":I
    :goto_4
    if-lez v34, :cond_7

    if-lez v35, :cond_7

    .line 129
    add-int/lit8 v34, v34, -0x1

    .line 130
    sub-int v35, v35, v4

    goto :goto_4

    .line 134
    :cond_7
    mul-int/lit8 v36, v35, -0x1

    .line 136
    .local v36, "firstVisiblePageScrollOffset":I
    move/from16 v9, v34

    .line 137
    .local v9, "currentFirstPage":I
    const/4 v10, 0x0

    .local v10, "currentFirstPageScrollOffset":I
    move/from16 v10, v36

    .line 138
    if-lt v9, v6, :cond_8

    .line 141
    add-int/lit8 v9, v6, -0x1

    .line 142
    const/4 v10, 0x0

    .line 145
    :cond_8
    const/4 v13, 0x0

    .line 737
    .local v13, "$i$f$debugLog":I
    nop

    .line 740
    nop

    .line 152
    .end local v13    # "$i$f$debugLog":I
    new-instance v13, Lkotlin/collections/ArrayDeque;

    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 155
    .local v13, "visiblePages":Lkotlin/collections/ArrayDeque;
    neg-int v14, v2

    if-gez p6, :cond_9

    move/from16 v15, p6

    goto :goto_5

    :cond_9
    move v15, v3

    :goto_5
    add-int/2addr v14, v15

    .line 156
    .local v14, "minOffset":I
    move/from16 v16, p3

    .line 161
    .local v16, "maxOffset":I
    add-int/2addr v10, v14

    .line 164
    const/4 v15, 0x0

    .line 166
    .local v15, "maxCrossAxis":I
    const/16 v17, 0x0

    .line 741
    .local v17, "$i$f$debugLog":I
    nop

    .line 744
    move/from16 v24, v9

    .line 171
    .end local v9    # "currentFirstPage":I
    .end local v17    # "$i$f$debugLog":I
    .local v24, "currentFirstPage":I
    :goto_6
    if-gez v10, :cond_a

    if-lez v24, :cond_a

    .line 172
    move v9, v10

    .end local v10    # "currentFirstPageScrollOffset":I
    .local v9, "currentFirstPageScrollOffset":I
    add-int/lit8 v10, v24, -0x1

    .line 174
    .local v10, "previous":I
    nop

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v19

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 174
    move-object/from16 v17, p13

    move/from16 v20, p14

    move/from16 v21, p17

    move-object/from16 v22, p25

    move/from16 v37, v9

    move-object v1, v13

    move/from16 v40, v14

    move/from16 v38, v15

    move/from16 v41, v16

    move/from16 v39, v18

    move-object/from16 v9, p0

    move-object/from16 v13, p2

    move-object/from16 v16, p11

    move-object/from16 v18, p12

    move-wide/from16 v14, p15

    .end local v9    # "currentFirstPageScrollOffset":I
    .end local v13    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v14    # "minOffset":I
    .end local v15    # "maxCrossAxis":I
    .end local v16    # "maxOffset":I
    .end local v18    # "coercedBeyondViewportPageCount":I
    .local v1, "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v37, "currentFirstPageScrollOffset":I
    .local v38, "maxCrossAxis":I
    .local v39, "coercedBeyondViewportPageCount":I
    .local v40, "minOffset":I
    .local v41, "maxOffset":I
    invoke-static/range {v9 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v19

    .line 173
    move-object/from16 v9, v19

    .line 188
    .local v9, "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 745
    .local v13, "$i$f$debugLog":I
    nop

    .line 748
    nop

    .line 190
    .end local v13    # "$i$f$debugLog":I
    invoke-virtual {v1, v3, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v13

    move/from16 v15, v38

    .end local v38    # "maxCrossAxis":I
    .restart local v15    # "maxCrossAxis":I
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 192
    move/from16 v13, v37

    .end local v37    # "currentFirstPageScrollOffset":I
    .local v13, "currentFirstPageScrollOffset":I
    add-int/2addr v13, v4

    .line 193
    move/from16 v24, v10

    move v10, v13

    move/from16 v18, v39

    move/from16 v14, v40

    move/from16 v16, v41

    move-object v13, v1

    move-object/from16 v1, p24

    .end local v9    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v10    # "previous":I
    goto :goto_6

    .line 171
    .end local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .end local v39    # "coercedBeyondViewportPageCount":I
    .end local v40    # "minOffset":I
    .end local v41    # "maxOffset":I
    .local v10, "currentFirstPageScrollOffset":I
    .local v13, "visiblePages":Lkotlin/collections/ArrayDeque;
    .restart local v14    # "minOffset":I
    .restart local v16    # "maxOffset":I
    .restart local v18    # "coercedBeyondViewportPageCount":I
    :cond_a
    move-object v1, v13

    move/from16 v40, v14

    move/from16 v41, v16

    move/from16 v39, v18

    move v13, v10

    .line 196
    .end local v10    # "currentFirstPageScrollOffset":I
    .end local v14    # "minOffset":I
    .end local v16    # "maxOffset":I
    .end local v18    # "coercedBeyondViewportPageCount":I
    .restart local v1    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v13, "currentFirstPageScrollOffset":I
    .restart local v39    # "coercedBeyondViewportPageCount":I
    .restart local v40    # "minOffset":I
    .restart local v41    # "maxOffset":I
    move/from16 v9, v40

    .end local v40    # "minOffset":I
    .local v9, "minOffset":I
    if-ge v13, v9, :cond_b

    .line 197
    move v10, v9

    .end local v13    # "currentFirstPageScrollOffset":I
    .restart local v10    # "currentFirstPageScrollOffset":I
    goto :goto_7

    .line 196
    .end local v10    # "currentFirstPageScrollOffset":I
    .restart local v13    # "currentFirstPageScrollOffset":I
    :cond_b
    move v10, v13

    .line 201
    .end local v13    # "currentFirstPageScrollOffset":I
    .restart local v10    # "currentFirstPageScrollOffset":I
    :goto_7
    sub-int/2addr v10, v9

    .line 203
    const/4 v13, 0x0

    .local v13, "index":I
    move/from16 v13, v24

    .line 204
    add-int v14, v41, p5

    invoke-static {v14, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    .line 205
    .local v14, "maxMainAxis":I
    neg-int v3, v10

    .line 210
    .local v3, "currentMainAxisOffset":I
    const/16 v16, 0x0

    .line 213
    .local v16, "remeasureNeeded":Z
    const/16 v17, 0x0

    move/from16 v26, v4

    move/from16 v4, v17

    .line 215
    .local v4, "indexInVisibleItems":I
    .local v26, "pageSizeWithSpacing":I
    :goto_8
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 216
    if-lt v3, v14, :cond_c

    .line 218
    invoke-virtual {v1, v4}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 219
    const/4 v5, 0x1

    .end local v16    # "remeasureNeeded":Z
    .local v5, "remeasureNeeded":Z
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v16, v5

    goto :goto_9

    .line 221
    .end local v5    # "remeasureNeeded":Z
    .restart local v16    # "remeasureNeeded":Z
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 222
    add-int v3, v3, v26

    .line 223
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "indexInVisibleItems":I
    .local v5, "indexInVisibleItems":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v4, v5

    .end local v5    # "indexInVisibleItems":I
    .restart local v4    # "indexInVisibleItems":I
    :goto_9
    move/from16 v5, p18

    goto :goto_8

    .line 227
    :cond_d
    const/4 v5, 0x0

    .line 749
    .local v5, "$i$f$debugLog":I
    nop

    .line 752
    move v5, v10

    move v10, v13

    move/from16 v27, v26

    move/from16 v26, v16

    .line 232
    .end local v13    # "index":I
    .end local v16    # "remeasureNeeded":Z
    .local v5, "currentFirstPageScrollOffset":I
    .local v10, "index":I
    .local v26, "remeasureNeeded":Z
    .local v27, "pageSizeWithSpacing":I
    :goto_a
    if-ge v10, v6, :cond_12

    .line 233
    if-lt v3, v14, :cond_f

    .line 234
    if-lez v3, :cond_f

    .line 235
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v28, v4

    move/from16 v29, v5

    move v5, v9

    move v9, v10

    move v8, v14

    move v4, v15

    move/from16 v7, v41

    goto/16 :goto_e

    .line 238
    :cond_f
    :goto_b
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v19

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 238
    move-object/from16 v13, p2

    move-object/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v17, p13

    move/from16 v20, p14

    move/from16 v21, p17

    move-object/from16 v22, p25

    move/from16 v28, v4

    move/from16 v29, v5

    move v5, v9

    move v8, v14

    move v4, v15

    move/from16 v7, v41

    move-object/from16 v9, p0

    move-wide/from16 v14, p15

    .end local v9    # "minOffset":I
    .end local v14    # "maxMainAxis":I
    .end local v15    # "maxCrossAxis":I
    .end local v41    # "maxOffset":I
    .local v4, "maxCrossAxis":I
    .local v5, "minOffset":I
    .local v7, "maxOffset":I
    .local v8, "maxMainAxis":I
    .local v28, "indexInVisibleItems":I
    .local v29, "currentFirstPageScrollOffset":I
    invoke-static/range {v9 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v19

    .line 237
    move v9, v10

    .end local v10    # "index":I
    .local v9, "index":I
    move-object/from16 v10, v19

    .line 252
    .local v10, "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    .line 753
    .local v13, "$i$f$debugLog":I
    nop

    .line 756
    nop

    .line 255
    .end local v13    # "$i$f$debugLog":I
    nop

    .line 256
    add-int/lit8 v13, v6, -0x1

    if-ne v9, v13, :cond_10

    .line 257
    move/from16 v13, p17

    goto :goto_c

    .line 259
    :cond_10
    move/from16 v13, v27

    .line 255
    :goto_c
    add-int/2addr v3, v13

    .line 262
    if-gt v3, v5, :cond_11

    add-int/lit8 v13, v6, -0x1

    if-eq v9, v13, :cond_11

    .line 264
    add-int/lit8 v13, v9, 0x1

    .line 265
    .end local v24    # "currentFirstPage":I
    .local v13, "currentFirstPage":I
    sub-int v14, v29, v27

    .line 266
    .end local v29    # "currentFirstPageScrollOffset":I
    .local v14, "currentFirstPageScrollOffset":I
    const/4 v15, 0x1

    .end local v26    # "remeasureNeeded":Z
    .local v15, "remeasureNeeded":Z
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v24, v13

    move/from16 v29, v14

    move/from16 v26, v15

    move v15, v4

    goto :goto_d

    .line 268
    .end local v13    # "currentFirstPage":I
    .end local v14    # "currentFirstPageScrollOffset":I
    .end local v15    # "remeasureNeeded":Z
    .restart local v24    # "currentFirstPage":I
    .restart local v26    # "remeasureNeeded":Z
    .restart local v29    # "currentFirstPageScrollOffset":I
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v13

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 269
    invoke-virtual {v1, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move v15, v4

    .line 272
    .end local v4    # "maxCrossAxis":I
    .local v15, "maxCrossAxis":I
    :goto_d
    add-int/lit8 v10, v9, 0x1

    move v9, v5

    move/from16 v41, v7

    move v14, v8

    move/from16 v4, v28

    move/from16 v5, v29

    .end local v9    # "index":I
    .local v10, "index":I
    goto/16 :goto_a

    .line 232
    .end local v7    # "maxOffset":I
    .end local v8    # "maxMainAxis":I
    .end local v28    # "indexInVisibleItems":I
    .end local v29    # "currentFirstPageScrollOffset":I
    .local v4, "indexInVisibleItems":I
    .local v5, "currentFirstPageScrollOffset":I
    .local v9, "minOffset":I
    .local v14, "maxMainAxis":I
    .restart local v41    # "maxOffset":I
    :cond_12
    move/from16 v28, v4

    move/from16 v29, v5

    move v5, v9

    move v9, v10

    move v8, v14

    move v4, v15

    move/from16 v7, v41

    .line 277
    .end local v10    # "index":I
    .end local v14    # "maxMainAxis":I
    .end local v15    # "maxCrossAxis":I
    .end local v41    # "maxOffset":I
    .local v4, "maxCrossAxis":I
    .local v5, "minOffset":I
    .restart local v7    # "maxOffset":I
    .restart local v8    # "maxMainAxis":I
    .local v9, "index":I
    .restart local v28    # "indexInVisibleItems":I
    .restart local v29    # "currentFirstPageScrollOffset":I
    :goto_e
    if-ge v3, v7, :cond_14

    .line 278
    sub-int v30, v7, v3

    .line 279
    .local v30, "toScrollBack":I
    sub-int v10, v29, v30

    .line 280
    .end local v29    # "currentFirstPageScrollOffset":I
    .local v10, "currentFirstPageScrollOffset":I
    add-int v3, v3, v30

    move v15, v4

    move v4, v10

    .line 281
    .end local v10    # "currentFirstPageScrollOffset":I
    .local v4, "currentFirstPageScrollOffset":I
    .restart local v15    # "maxCrossAxis":I
    :goto_f
    if-ge v4, v2, :cond_13

    if-lez v24, :cond_13

    .line 282
    add-int/lit8 v10, v24, -0x1

    .line 284
    .local v10, "previousIndex":I
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v19

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 284
    move-object/from16 v13, p2

    move-object/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v17, p13

    move/from16 v20, p14

    move/from16 v21, p17

    move-object/from16 v22, p25

    move/from16 v41, v7

    move v7, v9

    move v2, v15

    move-object/from16 v9, p0

    move-wide/from16 v14, p15

    .end local v9    # "index":I
    .end local v15    # "maxCrossAxis":I
    .local v2, "maxCrossAxis":I
    .local v7, "index":I
    .restart local v41    # "maxOffset":I
    invoke-static/range {v9 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v19

    .line 283
    move-object/from16 v9, v19

    .line 297
    .local v9, "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 298
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 299
    .end local v2    # "maxCrossAxis":I
    .restart local v15    # "maxCrossAxis":I
    add-int v4, v4, v27

    .line 300
    move/from16 v24, v10

    move/from16 v2, p4

    move v9, v7

    move/from16 v7, v41

    .end local v9    # "measuredPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v10    # "previousIndex":I
    goto :goto_f

    .line 281
    .end local v41    # "maxOffset":I
    .local v7, "maxOffset":I
    .local v9, "index":I
    :cond_13
    move/from16 v41, v7

    move v7, v9

    move v2, v15

    const/4 v13, 0x0

    .line 303
    .end local v9    # "index":I
    .end local v15    # "maxCrossAxis":I
    .restart local v2    # "maxCrossAxis":I
    .local v7, "index":I
    .restart local v41    # "maxOffset":I
    if-gez v4, :cond_15

    .line 304
    add-int/2addr v3, v4

    .line 305
    const/4 v4, 0x0

    goto :goto_10

    .line 277
    .end local v2    # "maxCrossAxis":I
    .end local v30    # "toScrollBack":I
    .end local v41    # "maxOffset":I
    .local v4, "maxCrossAxis":I
    .local v7, "maxOffset":I
    .restart local v9    # "index":I
    .restart local v29    # "currentFirstPageScrollOffset":I
    :cond_14
    move/from16 v41, v7

    move v7, v9

    const/4 v13, 0x0

    .end local v9    # "index":I
    .local v7, "index":I
    .restart local v41    # "maxOffset":I
    move v2, v4

    move/from16 v4, v29

    .line 310
    .end local v29    # "currentFirstPageScrollOffset":I
    .restart local v2    # "maxCrossAxis":I
    .local v4, "currentFirstPageScrollOffset":I
    :cond_15
    :goto_10
    if-ltz v4, :cond_16

    move/from16 v9, v23

    goto :goto_11

    :cond_16
    move v9, v13

    .local v9, "value$iv":Z
    :goto_11
    const/4 v10, 0x0

    .line 757
    .local v10, "$i$f$requirePrecondition":I
    if-nez v9, :cond_17

    .line 758
    const/4 v14, 0x0

    .line 311
    .local v14, "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$10":I
    nop

    .line 758
    .end local v14    # "$i$a$-requirePrecondition-PagerMeasureKt$measurePager$10":I
    const-string/jumbo v14, "invalid currentFirstPageScrollOffset"

    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 760
    :cond_17
    nop

    .line 313
    .end local v9    # "value$iv":Z
    .end local v10    # "$i$f$requirePrecondition":I
    neg-int v9, v4

    .line 315
    .local v9, "visiblePagesScrollOffset":I
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 319
    .local v10, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    if-gtz p4, :cond_19

    if-gez p6, :cond_18

    goto :goto_12

    :cond_18
    move/from16 v22, v2

    move/from16 v29, v4

    move-object v2, v10

    goto :goto_16

    .line 320
    :cond_19
    :goto_12
    const/4 v14, 0x0

    .local v14, "i":I
    move-object v15, v1

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    :goto_13
    if-ge v14, v15, :cond_1d

    .line 321
    move/from16 v16, v27

    .line 322
    .local v16, "size":I
    nop

    .line 323
    if-eqz v4, :cond_1b

    .line 324
    move/from16 v13, v16

    .end local v16    # "size":I
    .local v13, "size":I
    if-gt v13, v4, :cond_1a

    .line 325
    move-object/from16 v16, v1

    check-cast v16, Ljava/util/List;

    move/from16 v22, v2

    .end local v2    # "maxCrossAxis":I
    .local v22, "maxCrossAxis":I
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-eq v14, v2, :cond_1c

    .line 327
    sub-int/2addr v4, v13

    .line 328
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 320
    .end local v13    # "size":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v22

    const/4 v13, 0x0

    goto :goto_13

    .line 324
    .end local v22    # "maxCrossAxis":I
    .restart local v2    # "maxCrossAxis":I
    .restart local v13    # "size":I
    :cond_1a
    move/from16 v22, v2

    .end local v2    # "maxCrossAxis":I
    .restart local v22    # "maxCrossAxis":I
    goto :goto_14

    .line 323
    .end local v13    # "size":I
    .end local v22    # "maxCrossAxis":I
    .restart local v2    # "maxCrossAxis":I
    .restart local v16    # "size":I
    :cond_1b
    move/from16 v22, v2

    move/from16 v13, v16

    .line 330
    .end local v2    # "maxCrossAxis":I
    .end local v16    # "size":I
    .restart local v13    # "size":I
    .restart local v22    # "maxCrossAxis":I
    :cond_1c
    :goto_14
    goto :goto_15

    .line 320
    .end local v13    # "size":I
    .end local v22    # "maxCrossAxis":I
    .restart local v2    # "maxCrossAxis":I
    :cond_1d
    move/from16 v22, v2

    .line 338
    .end local v2    # "maxCrossAxis":I
    .end local v14    # "i":I
    .restart local v22    # "maxCrossAxis":I
    :goto_15
    move/from16 v29, v4

    move-object v2, v10

    .end local v4    # "currentFirstPageScrollOffset":I
    .end local v10    # "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v2, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .restart local v29    # "currentFirstPageScrollOffset":I
    :goto_16
    nop

    .line 339
    nop

    .line 340
    nop

    .line 337
    move/from16 v17, v9

    .end local v9    # "visiblePagesScrollOffset":I
    .local v17, "visiblePagesScrollOffset":I
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;

    move-object/from16 v10, p0

    move-object/from16 v13, p2

    move-object/from16 v16, p11

    move-object/from16 v18, p12

    move/from16 v19, p14

    move-wide/from16 v14, p15

    move/from16 v20, p17

    move-object/from16 v21, p25

    move/from16 v37, v8

    move/from16 v4, v17

    move/from16 v8, v24

    const/16 v25, 0x0

    move-object/from16 v17, p13

    .end local v17    # "visiblePagesScrollOffset":I
    .end local v24    # "currentFirstPage":I
    .local v4, "visiblePagesScrollOffset":I
    .local v8, "currentFirstPage":I
    .local v37, "maxMainAxis":I
    invoke-direct/range {v9 .. v21}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZILandroidx/collection/MutableIntObjectMap;)V

    move-object v10, v9

    move/from16 v9, v39

    .end local v39    # "coercedBeyondViewportPageCount":I
    .local v9, "coercedBeyondViewportPageCount":I
    invoke-static {v8, v9, v0, v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v10

    .line 336
    move-object/from16 v24, v10

    .line 358
    .local v24, "extraPagesBefore":Ljava/util/List;
    nop

    .local v10, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 761
    .local v13, "$i$f$fastForEach":I
    const/4 v14, 0x0

    .local v14, "index$iv":I
    move-object v15, v10

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    move-object/from16 v30, v1

    move v1, v14

    move/from16 v14, v22

    .end local v22    # "maxCrossAxis":I
    .local v1, "index$iv":I
    .local v14, "maxCrossAxis":I
    .local v30, "visiblePages":Lkotlin/collections/ArrayDeque;
    :goto_17
    if-ge v1, v15, :cond_1e

    .line 762
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 763
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v17, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v18, 0x0

    .line 358
    .local v18, "$i$a$-fastForEach-PagerMeasureKt$measurePager$11":I
    move/from16 v19, v1

    .end local v1    # "index$iv":I
    .local v19, "index$iv":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 763
    .end local v17    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v18    # "$i$a$-fastForEach-PagerMeasureKt$measurePager$11":I
    nop

    .line 761
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "index$iv":I
    .restart local v1    # "index$iv":I
    goto :goto_17

    :cond_1e
    move/from16 v19, v1

    .line 765
    .end local v1    # "index$iv":I
    nop

    .line 363
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    .line 364
    nop

    .line 365
    nop

    .line 366
    nop

    .line 362
    move/from16 v18, v9

    .end local v9    # "coercedBeyondViewportPageCount":I
    .local v18, "coercedBeyondViewportPageCount":I
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda2;

    move-object/from16 v10, p0

    move-object/from16 v13, p2

    move-object/from16 v16, p11

    move-object/from16 v17, p13

    move/from16 v19, p14

    move/from16 v20, p17

    move-object/from16 v21, p25

    move/from16 v38, v8

    move/from16 v22, v14

    move/from16 v8, v18

    move-object/from16 v18, p12

    move-wide/from16 v14, p15

    .end local v14    # "maxCrossAxis":I
    .end local v18    # "coercedBeyondViewportPageCount":I
    .local v8, "coercedBeyondViewportPageCount":I
    .restart local v22    # "maxCrossAxis":I
    .local v38, "currentFirstPage":I
    invoke-direct/range {v9 .. v21}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZILandroidx/collection/MutableIntObjectMap;)V

    move-wide/from16 v31, v11

    move-object/from16 v14, v16

    .end local v11    # "childConstraints":J
    .restart local v31    # "childConstraints":J
    invoke-static {v1, v6, v8, v0, v9}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v12

    .line 361
    nop

    .line 384
    .local v12, "extraPagesAfter":Ljava/util/List;
    move-object v1, v12

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 766
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv":I
    move-object v11, v1

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move/from16 v13, v22

    .end local v22    # "maxCrossAxis":I
    .local v13, "maxCrossAxis":I
    :goto_18
    if-ge v10, v11, :cond_1f

    .line 767
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 768
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v16, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v17, 0x0

    .line 384
    .local v17, "$i$a$-fastForEach-PagerMeasureKt$measurePager$12":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 768
    .end local v16    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v17    # "$i$a$-fastForEach-PagerMeasureKt$measurePager$12":I
    nop

    .line 766
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p19

    goto :goto_18

    .line 770
    .end local v10    # "index$iv":I
    :cond_1f
    nop

    .line 387
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 388
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 389
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    move/from16 v0, v23

    goto :goto_19

    :cond_20
    move/from16 v0, v25

    .line 386
    :goto_19
    move/from16 v39, v0

    .line 392
    .local v39, "noExtraPages":Z
    nop

    .line 393
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v0, :cond_21

    move v0, v13

    goto :goto_1a

    :cond_21
    move v0, v3

    .line 392
    :goto_1a
    move-wide/from16 v9, p9

    invoke-static {v9, v10, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 391
    nop

    .line 397
    .local v0, "layoutWidth":I
    nop

    .line 398
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v1, :cond_22

    move v1, v3

    goto :goto_1b

    :cond_22
    move v1, v13

    .line 397
    :goto_1b
    invoke-static {v9, v10, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 396
    nop

    .line 402
    .local v1, "layoutHeight":I
    nop

    .line 403
    move-object/from16 v10, v30

    check-cast v10, Ljava/util/List;

    .line 404
    nop

    .line 405
    nop

    .line 406
    nop

    .line 407
    nop

    .line 408
    nop

    .line 409
    nop

    .line 410
    nop

    .line 411
    nop

    .line 412
    nop

    .line 413
    move-object/from16 v20, p0

    check-cast v20, Landroidx/compose/ui/unit/Density;

    .line 415
    nop

    .line 414
    nop

    .line 402
    move-object/from16 v9, p0

    move/from16 v21, p6

    move/from16 v19, p14

    move/from16 v22, p17

    move v15, v3

    move/from16 v17, v4

    move/from16 v40, v13

    move-object/from16 v18, v14

    move-object/from16 v11, v24

    move/from16 v16, v41

    move v13, v0

    move v14, v1

    .end local v0    # "layoutWidth":I
    .end local v1    # "layoutHeight":I
    .end local v3    # "currentMainAxisOffset":I
    .end local v4    # "visiblePagesScrollOffset":I
    .end local v24    # "extraPagesBefore":Ljava/util/List;
    .end local v41    # "maxOffset":I
    .local v11, "extraPagesBefore":Ljava/util/List;
    .local v13, "layoutWidth":I
    .local v14, "layoutHeight":I
    .local v15, "currentMainAxisOffset":I
    .local v16, "maxOffset":I
    .local v17, "visiblePagesScrollOffset":I
    .local v40, "maxCrossAxis":I
    invoke-static/range {v9 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;

    move-result-object v0

    .line 401
    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move/from16 v44, v13

    move/from16 v45, v14

    move v10, v15

    move/from16 v9, v16

    move/from16 v41, v17

    .end local v11    # "extraPagesBefore":Ljava/util/List;
    .end local v12    # "extraPagesAfter":Ljava/util/List;
    .end local v13    # "layoutWidth":I
    .end local v14    # "layoutHeight":I
    .end local v15    # "currentMainAxisOffset":I
    .end local v16    # "maxOffset":I
    .end local v17    # "visiblePagesScrollOffset":I
    .local v9, "maxOffset":I
    .local v10, "currentMainAxisOffset":I
    .local v41, "visiblePagesScrollOffset":I
    .local v42, "extraPagesBefore":Ljava/util/List;
    .local v43, "extraPagesAfter":Ljava/util/List;
    .local v44, "layoutWidth":I
    .local v45, "layoutHeight":I
    move-object v11, v0

    .line 419
    .local v11, "positionedPages":Ljava/util/List;
    if-eqz v39, :cond_23

    move-object v1, v11

    goto/16 :goto_1f

    .line 421
    :cond_23
    move-object v0, v11

    .local v0, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 771
    .local v1, "$i$f$fastFilter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 772
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 773
    .local v12, "$i$f$fastForEach":I
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    move-object v14, v4

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    :goto_1c
    if-ge v13, v14, :cond_26

    .line 774
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 775
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 772
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v18, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v19, 0x0

    .line 422
    .local v19, "$i$a$-fastFilter-PagerMeasureKt$measurePager$visiblePagesInfo$1":I
    move-object/from16 v20, v0

    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v20, "$this$fastFilter$iv":Ljava/util/List;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v22, v1

    .end local v1    # "$i$f$fastFilter":I
    .local v22, "$i$f$fastFilter":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    if-lt v0, v1, :cond_24

    .line 423
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    if-gt v0, v1, :cond_24

    move/from16 v0, v23

    goto :goto_1d

    :cond_24
    move/from16 v0, v25

    .line 772
    .end local v18    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v19    # "$i$a$-fastFilter-PagerMeasureKt$measurePager$visiblePagesInfo$1":I
    :goto_1d
    if-eqz v0, :cond_25

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, v16

    .end local v16    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v16    # "it$iv":Ljava/lang/Object;
    :cond_25
    move-object/from16 v1, v16

    .line 775
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    :goto_1e
    nop

    .line 773
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    goto :goto_1c

    .end local v20    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastFilter":I
    .restart local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v1, "$i$f$fastFilter":I
    :cond_26
    move-object/from16 v20, v0

    move/from16 v22, v1

    .line 777
    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFilter":I
    .end local v13    # "index$iv$iv":I
    .restart local v20    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v22    # "$i$f$fastFilter":I
    nop

    .line 778
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 419
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v20    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastFilter":I
    :goto_1f
    nop

    .line 418
    nop

    .line 427
    .local v1, "visiblePagesInfo":Ljava/util/List;
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v24, v1

    goto :goto_23

    .line 428
    :cond_27
    move-object v0, v11

    .restart local v0    # "$this$fastFilter$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 779
    .local v3, "$i$f$fastFilter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 780
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v12, v0

    .local v12, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 781
    .local v13, "$i$f$fastForEach":I
    const/4 v14, 0x0

    .local v14, "index$iv$iv":I
    move-object v15, v12

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    :goto_20
    if-ge v14, v15, :cond_2a

    .line 782
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 783
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 780
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v19, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v20, 0x0

    .line 428
    .local v20, "$i$a$-fastFilter-PagerMeasureKt$measurePager$positionedPagesBefore$1":I
    move-object/from16 v21, v0

    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v21, "$this$fastFilter$iv":Ljava/util/List;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/foundation/pager/MeasuredPage;

    move-object/from16 v24, v1

    .end local v1    # "visiblePagesInfo":Ljava/util/List;
    .local v24, "visiblePagesInfo":Ljava/util/List;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    if-ge v0, v1, :cond_28

    move/from16 v0, v23

    goto :goto_21

    :cond_28
    move/from16 v0, v25

    .line 780
    .end local v19    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v20    # "$i$a$-fastFilter-PagerMeasureKt$measurePager$positionedPagesBefore$1":I
    :goto_21
    if-eqz v0, :cond_29

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, v17

    .end local v17    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v17    # "it$iv":Ljava/lang/Object;
    :cond_29
    move-object/from16 v1, v17

    .line 783
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    :goto_22
    nop

    .line 781
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    goto :goto_20

    .end local v21    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v24    # "visiblePagesInfo":Ljava/util/List;
    .restart local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v1, "visiblePagesInfo":Ljava/util/List;
    :cond_2a
    move-object/from16 v21, v0

    move-object/from16 v24, v1

    .line 785
    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v1    # "visiblePagesInfo":Ljava/util/List;
    .end local v14    # "index$iv$iv":I
    .restart local v21    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v24    # "visiblePagesInfo":Ljava/util/List;
    nop

    .line 786
    .end local v12    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 427
    .end local v3    # "$i$f$fastFilter":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    .end local v21    # "$this$fastFilter$iv":Ljava/util/List;
    :goto_23
    nop

    .line 426
    move-object v12, v0

    .line 431
    .local v12, "positionedPagesBefore":Ljava/util/List;
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_27

    .line 432
    :cond_2b
    move-object v0, v11

    .restart local v0    # "$this$fastFilter$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 787
    .local v1, "$i$f$fastFilter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 788
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 789
    .restart local v13    # "$i$f$fastForEach":I
    const/4 v14, 0x0

    .restart local v14    # "index$iv$iv":I
    move-object v15, v4

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    :goto_24
    if-ge v14, v15, :cond_2e

    .line 790
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 791
    .restart local v16    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .restart local v17    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 788
    .restart local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    move-object/from16 v19, v17

    check-cast v19, Landroidx/compose/foundation/pager/MeasuredPage;

    .restart local v19    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/16 v20, 0x0

    .line 432
    .local v20, "$i$a$-fastFilter-PagerMeasureKt$measurePager$positionedPagesAfter$1":I
    move-object/from16 v21, v0

    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v21    # "$this$fastFilter$iv":Ljava/util/List;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v33, v1

    .end local v1    # "$i$f$fastFilter":I
    .local v33, "$i$f$fastFilter":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_2c

    move/from16 v0, v23

    goto :goto_25

    :cond_2c
    move/from16 v0, v25

    .line 788
    .end local v19    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v20    # "$i$a$-fastFilter-PagerMeasureKt$measurePager$positionedPagesAfter$1":I
    :goto_25
    if-eqz v0, :cond_2d

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, v17

    .end local v17    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v17    # "it$iv":Ljava/lang/Object;
    :cond_2d
    move-object/from16 v1, v17

    .line 791
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFilter$1$iv":I
    :goto_26
    nop

    .line 789
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    goto :goto_24

    .end local v21    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v33    # "$i$f$fastFilter":I
    .restart local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .local v1, "$i$f$fastFilter":I
    :cond_2e
    move-object/from16 v21, v0

    move/from16 v33, v1

    .line 793
    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFilter":I
    .end local v14    # "index$iv$iv":I
    .restart local v21    # "$this$fastFilter$iv":Ljava/util/List;
    .restart local v33    # "$i$f$fastFilter":I
    nop

    .line 794
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 431
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v21    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v33    # "$i$f$fastFilter":I
    :goto_27
    nop

    .line 430
    move-object v13, v0

    .line 434
    .local v13, "positionedPagesAfter":Ljava/util/List;
    add-int v0, p3, p4

    add-int v0, v0, p5

    .line 438
    .local v0, "layoutSize":I
    nop

    .line 439
    nop

    .line 440
    nop

    .line 441
    nop

    .line 442
    nop

    .line 443
    nop

    .line 444
    nop

    .line 437
    move/from16 v3, p5

    move/from16 v4, p17

    move-object/from16 v14, p24

    move-object/from16 v19, v2

    move/from16 v47, v5

    move-object/from16 v1, v24

    move/from16 v15, v27

    move/from16 v48, v28

    move-object/from16 v46, v30

    move/from16 v2, p4

    move-object/from16 v5, p20

    .end local v2    # "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v5    # "minOffset":I
    .end local v24    # "visiblePagesInfo":Ljava/util/List;
    .end local v27    # "pageSizeWithSpacing":I
    .end local v28    # "indexInVisibleItems":I
    .end local v30    # "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v1, "visiblePagesInfo":Ljava/util/List;
    .local v15, "pageSizeWithSpacing":I
    .local v19, "firstPage":Landroidx/compose/foundation/pager/MeasuredPage;
    .local v46, "visiblePages":Lkotlin/collections/ArrayDeque;
    .local v47, "minOffset":I
    .local v48, "indexInVisibleItems":I
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculateNewCurrentPage(ILjava/util/List;IIILandroidx/compose/foundation/gestures/snapping/SnapPosition;I)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v20

    .line 436
    .end local v1    # "visiblePagesInfo":Ljava/util/List;
    .restart local v24    # "visiblePagesInfo":Ljava/util/List;
    nop

    .line 448
    .local v20, "newCurrentPage":Landroidx/compose/foundation/pager/MeasuredPage;
    nop

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    if-eqz v20, :cond_2f

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v3

    move v5, v3

    goto :goto_28

    :cond_2f
    move/from16 v5, v25

    .line 454
    :goto_28
    nop

    .line 448
    move/from16 v6, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v2, p17

    move v1, v0

    move-object/from16 v0, p20

    .end local v0    # "layoutSize":I
    .local v1, "layoutSize":I
    invoke-interface/range {v0 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapPosition;->position(IIIIII)I

    move-result v5

    .line 447
    move v0, v1

    move v2, v3

    .line 457
    .end local v1    # "layoutSize":I
    .restart local v0    # "layoutSize":I
    .local v5, "snapOffset":I
    if-eqz v20, :cond_30

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v3

    goto :goto_29

    :cond_30
    move/from16 v3, v25

    .line 460
    .local v3, "currentPagePositionOffset":I
    :goto_29
    if-nez v15, :cond_31

    .line 461
    const/4 v1, 0x0

    move/from16 v49, v0

    move/from16 v21, v1

    goto :goto_2a

    .line 463
    :cond_31
    sub-int v1, v5, v3

    int-to-float v1, v1

    int-to-float v4, v15

    div-float/2addr v1, v4

    .line 464
    const/high16 v4, -0x41000000    # -0.5f

    move/from16 v49, v0

    .end local v0    # "layoutSize":I
    .local v49, "layoutSize":I
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v1, v4, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    move/from16 v21, v1

    .line 460
    :goto_2a
    nop

    .line 459
    nop

    .line 467
    .local v21, "currentPageOffsetFraction":F
    const/4 v0, 0x0

    .line 795
    .local v0, "$i$f$debugLog":I
    nop

    .line 798
    nop

    .line 475
    .end local v0    # "$i$f$debugLog":I
    nop

    .line 476
    nop

    .line 478
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;

    move/from16 v50, v3

    move-object/from16 v3, p21

    .end local v3    # "currentPagePositionOffset":I
    .local v50, "currentPagePositionOffset":I
    invoke-direct {v4, v3, v11}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    invoke-interface {v14, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    .line 490
    move/from16 v27, v15

    .end local v15    # "pageSizeWithSpacing":I
    .restart local v27    # "pageSizeWithSpacing":I
    neg-int v15, v2

    .line 491
    add-int v16, v9, p5

    .line 499
    if-lt v7, v6, :cond_33

    if-le v10, v9, :cond_32

    goto :goto_2b

    :cond_32
    move/from16 v23, v25

    .line 503
    :cond_33
    :goto_2b
    nop

    .line 474
    move v1, v9

    .end local v9    # "maxOffset":I
    .local v1, "maxOffset":I
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 492
    nop

    .line 495
    nop

    .line 496
    nop

    .line 497
    nop

    .line 494
    nop

    .line 490
    nop

    .line 491
    nop

    .line 493
    nop

    .line 498
    nop

    .line 475
    nop

    .line 500
    nop

    .line 501
    nop

    .line 476
    nop

    .line 499
    nop

    .line 502
    nop

    .line 478
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 474
    const/16 v33, 0x0

    move-object/from16 v14, p11

    move/from16 v17, p14

    move-object/from16 v30, p23

    move-object/from16 v25, v0

    move/from16 v18, v8

    move v4, v10

    move-object v8, v11

    move-object/from16 v28, v13

    move-object/from16 v10, v24

    move/from16 v0, v27

    move/from16 v22, v29

    move/from16 v13, p5

    move/from16 v11, p17

    move-object/from16 v24, p20

    move-object/from16 v29, p22

    move-object/from16 v27, v12

    move/from16 v12, p6

    .end local v11    # "positionedPages":Ljava/util/List;
    .end local v12    # "positionedPagesBefore":Ljava/util/List;
    .end local v13    # "positionedPagesAfter":Ljava/util/List;
    .end local v24    # "visiblePagesInfo":Ljava/util/List;
    .end local v29    # "currentFirstPageScrollOffset":I
    .local v0, "pageSizeWithSpacing":I
    .local v4, "currentMainAxisOffset":I
    .local v8, "positionedPages":Ljava/util/List;
    .local v10, "visiblePagesInfo":Ljava/util/List;
    .local v18, "coercedBeyondViewportPageCount":I
    .local v22, "currentFirstPageScrollOffset":I
    .local v27, "positionedPagesBefore":Ljava/util/List;
    .local v28, "positionedPagesAfter":Ljava/util/List;
    invoke-direct/range {v9 .. v33}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v24, v10

    move-wide/from16 v11, v31

    .end local v10    # "visiblePagesInfo":Ljava/util/List;
    .end local v31    # "childConstraints":J
    .local v11, "childConstraints":J
    .restart local v24    # "visiblePagesInfo":Ljava/util/List;
    return-object v9
.end method

.method static final measurePager_7L1iB3k$lambda$10(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZILandroidx/collection/MutableIntObjectMap;I)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 14
    .param p0, "$this_measurePager"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "$childConstraints"    # J
    .param p3, "$pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p4, "$$v$c$androidx-compose-ui-unit-IntOffset$-visualPageOffset$0"    # J
    .param p6, "$orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p7, "$horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p8, "$verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p9, "$reverseLayout"    # Z
    .param p10, "$pageAvailableSize"    # I
    .param p11, "$placeablesCache"    # Landroidx/collection/MutableIntObjectMap;
    .param p12, "it"    # I

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 342
    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v1, p12

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    .line 354
    return-object v10
.end method

.method static final measurePager_7L1iB3k$lambda$12(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZILandroidx/collection/MutableIntObjectMap;I)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 14
    .param p0, "$this_measurePager"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "$childConstraints"    # J
    .param p3, "$pagerItemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p4, "$$v$c$androidx-compose-ui-unit-IntOffset$-visualPageOffset$0"    # J
    .param p6, "$orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p7, "$horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p8, "$verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p9, "$reverseLayout"    # Z
    .param p10, "$pageAvailableSize"    # I
    .param p11, "$placeablesCache"    # Landroidx/collection/MutableIntObjectMap;
    .param p12, "it"    # I

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    .line 377
    nop

    .line 378
    nop

    .line 379
    nop

    .line 368
    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v1, p12

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-G5IdpRk(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    .line 380
    return-object v10
.end method

.method static final measurePager_7L1iB3k$lambda$18(Landroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$$v$c$androidx-compose-foundation-lazy-layout-ObservableScopeInvalidator$-placementScopeInvalidator$0"    # Landroidx/compose/runtime/MutableState;
    .param p1, "$positionedPages"    # Ljava/util/List;
    .param p2, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 484
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lkotlin/jvm/functions/Function1;)V

    .line 488
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 489
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final measurePager_7L1iB3k$lambda$18$0(Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$positionedPages"    # Ljava/util/List;
    .param p1, "$this$withMotionFrameOfReferencePlacement"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 485
    move-object v0, p0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 845
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 846
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 847
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .local v5, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v6, 0x0

    .line 485
    .local v6, "$i$a$-fastForEach-PagerMeasureKt$measurePager$14$1$1":I
    invoke-virtual {v5, p1}, Landroidx/compose/foundation/pager/MeasuredPage;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 847
    .end local v5    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v6    # "$i$a$-fastForEach-PagerMeasureKt$measurePager$14$1$1":I
    nop

    .line 845
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 849
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 486
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final measurePager_7L1iB3k$lambda$3(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 108
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
