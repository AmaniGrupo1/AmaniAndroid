.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;
.super Ljava/lang/Object;
.source "TabRow.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1355:1\n256#2,3:1356\n33#2,4:1359\n259#2,2:1363\n38#2:1365\n261#2:1366\n151#2,3:1367\n33#2,4:1370\n154#2,2:1374\n38#2:1376\n156#2:1377\n151#2,3:1382\n33#2,4:1385\n154#2,2:1389\n38#2:1391\n156#2:1392\n151#2,3:1393\n33#2,4:1396\n154#2,2:1400\n38#2:1402\n156#2:1403\n86#3:1378\n56#3:1379\n50#3:1381\n148#4:1380\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1\n*L\n764#1:1356,3\n764#1:1359,4\n764#1:1363,2\n764#1:1365\n764#1:1366\n776#1:1367,3\n776#1:1370,4\n776#1:1374,2\n776#1:1376\n776#1:1377\n793#1:1382,3\n793#1:1385,4\n793#1:1389,2\n793#1:1391\n793#1:1392\n804#1:1393,3\n804#1:1396,4\n804#1:1400,2\n804#1:1402\n804#1:1403\n784#1:1378\n784#1:1379\n787#1:1381\n784#1:1380\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "<name for destructuring parameter 0>",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $edgePadding:F

.field final synthetic $scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I


# direct methods
.method constructor <init>(FLandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;ILandroidx/compose/material3/ScrollableTabData;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

    iput p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 36
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/List;

    .local v13, "tabMeasurables":Ljava/util/List;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/util/List;

    .local v14, "dividerMeasurables":Ljava/util/List;
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    .line 760
    .local v15, "indicatorMeasurables":Ljava/util/List;
    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    .line 761
    .local v9, "padding":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .line 762
    .local v2, "tabCount":I
    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v18

    .line 764
    .local v18, "minTabWidth":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "initial$iv":Ljava/lang/Object;
    move-object v5, v13

    .local v5, "$this$fastFold$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1356
    .local v6, "$i$f$fastFold":I
    nop

    .line 1357
    const/4 v7, 0x0

    .local v7, "accumulator$iv":Ljava/lang/Object;
    move-object v7, v4

    .line 1358
    move-object v8, v5

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1359
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1360
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_0

    .line 1361
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1362
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "e$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1363
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .local v3, "measurable":Landroidx/compose/ui/layout/Measurable;
    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/Number;

    move-object/from16 p2, v4

    .end local v4    # "initial$iv":Ljava/lang/Object;
    .local p2, "initial$iv":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v4

    .local v4, "curr":I
    const/16 v20, 0x0

    .line 765
    .local v20, "$i$a$-fastFold-TabRowKt$ScrollableTabRowImpl$1$2$1$layoutHeight$1":I
    move-object/from16 v21, v5

    .end local v5    # "$this$fastFold$iv":Ljava/util/List;
    .local v21, "$this$fastFold$iv":Ljava/util/List;
    const v5, 0x7fffffff

    invoke-interface {v3, v5}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .end local v3    # "measurable":Landroidx/compose/ui/layout/Measurable;
    .end local v4    # "curr":I
    .end local v20    # "$i$a$-fastFold-TabRowKt$ScrollableTabRowImpl$1$2$1$layoutHeight$1":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1363
    move-object v7, v3

    .line 1364
    nop

    .line 1362
    .end local v17    # "e$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 1360
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, v21

    const/4 v3, 0x0

    goto :goto_0

    .end local v21    # "$this$fastFold$iv":Ljava/util/List;
    .end local p2    # "initial$iv":Ljava/lang/Object;
    .local v4, "initial$iv":Ljava/lang/Object;
    .restart local v5    # "$this$fastFold$iv":Ljava/util/List;
    :cond_0
    move-object/from16 p2, v4

    move-object/from16 v21, v5

    .line 1365
    .end local v4    # "initial$iv":Ljava/lang/Object;
    .end local v5    # "$this$fastFold$iv":Ljava/util/List;
    .end local v11    # "index$iv$iv":I
    .restart local v21    # "$this$fastFold$iv":Ljava/util/List;
    .restart local p2    # "initial$iv":Ljava/lang/Object;
    nop

    .line 1366
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    nop

    .line 764
    .end local v6    # "$i$f$fastFold":I
    .end local v7    # "accumulator$iv":Ljava/lang/Object;
    .end local v21    # "$this$fastFold$iv":Ljava/util/List;
    .end local p2    # "initial$iv":Ljava/lang/Object;
    move-object v3, v7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 763
    nop

    .line 767
    .local v12, "layoutHeight":I
    const/4 v3, 0x0

    .local v3, "layoutWidth":I
    mul-int/lit8 v3, v9, 0x2

    .line 769
    nop

    .line 770
    nop

    .line 769
    nop

    .line 771
    nop

    .line 772
    nop

    .line 769
    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v19, 0x0

    move/from16 v21, v12

    move-wide/from16 v16, p3

    move/from16 v20, v12

    .end local v12    # "layoutHeight":I
    .local v20, "layoutHeight":I
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v4

    .line 768
    .end local v20    # "layoutHeight":I
    .restart local v12    # "layoutHeight":I
    move-wide v10, v4

    .line 775
    .local v10, "tabConstraints":J
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .local v4, "left":Lkotlin/jvm/internal/Ref$FloatRef;
    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iput v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 776
    move-object v5, v13

    .local v5, "$this$fastMap$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1367
    .local v6, "$i$f$fastMap":I
    nop

    .line 1368
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1369
    .local v7, "target$iv":Ljava/util/ArrayList;
    move-object v8, v5

    .restart local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1370
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1371
    const/16 v17, 0x0

    move/from16 p2, v3

    .end local v3    # "layoutWidth":I
    .local v17, "index$iv$iv":I
    .local p2, "layoutWidth":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v19, v5

    move/from16 v5, v17

    .end local v17    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    .local v19, "$this$fastMap$iv":Ljava/util/List;
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1372
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1373
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    .local v20, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1374
    .local v21, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v22, v3

    move-object v3, v7

    check-cast v3, Ljava/util/Collection;

    move/from16 v23, v5

    .end local v5    # "index$iv$iv":I
    .local v23, "index$iv$iv":I
    move-object/from16 v5, v20

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .local v5, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v25, 0x0

    .line 776
    .local v25, "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$tabPlaceables$1":I
    invoke-interface {v5, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    .line 1374
    .end local v5    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v25    # "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$tabPlaceables$1":I
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1375
    nop

    .line 1373
    .end local v20    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1371
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v23, 0x1

    move/from16 v3, v22

    .end local v23    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    goto :goto_1

    :cond_1
    move/from16 v23, v5

    .line 1376
    .end local v5    # "index$iv$iv":I
    nop

    .line 1377
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$fastForEach":I
    move-object v3, v7

    check-cast v3, Ljava/util/List;

    .line 776
    .end local v6    # "$i$f$fastMap":I
    .end local v7    # "target$iv":Ljava/util/ArrayList;
    .end local v19    # "$this$fastMap$iv":Ljava/util/List;
    nop

    .line 779
    .local v3, "tabPlaceables":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v27, p2

    const/4 v6, 0x0

    .end local p2    # "layoutWidth":I
    .local v27, "layoutWidth":I
    :goto_2
    if-ge v6, v2, :cond_2

    move v7, v6

    .local v7, "index":I
    const/4 v8, 0x0

    .line 781
    .local v8, "$i$a$-List-TabRowKt$ScrollableTabRowImpl$1$2$1$positions$1":I
    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v16

    move/from16 p2, v2

    .end local v2    # "tabCount":I
    .local p2, "tabCount":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v17, v3

    .end local v3    # "tabPlaceables":Ljava/util/List;
    .local v17, "tabPlaceables":Ljava/util/List;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 780
    nop

    .line 782
    .local v2, "tabWidth":F
    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    add-int v27, v27, v3

    .line 784
    invoke-static {}, Landroidx/compose/material3/TabKt;->getHorizontalTextPadding()F

    move-result v3

    move/from16 v16, v3

    .local v16, "arg0$iv":F
    const/4 v3, 0x2

    .local v3, "other$iv":I
    const/16 v19, 0x0

    .line 1378
    .local v19, "$i$f$times-u2uoSUM":I
    move/from16 v20, v6

    int-to-float v6, v3

    mul-float v6, v6, v16

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 784
    .end local v3    # "other$iv":I
    .end local v16    # "arg0$iv":F
    .end local v19    # "$i$f$times-u2uoSUM":I
    nop

    .local v3, "other$iv":F
    const/4 v6, 0x0

    .line 1379
    .local v6, "$i$f$minus-5rwHm24":I
    sub-float v16, v2, v3

    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .end local v3    # "other$iv":F
    .end local v6    # "$i$f$minus-5rwHm24":I
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    .line 784
    const/16 v6, 0x18

    .local v6, "$this$dp$iv":I
    const/16 v16, 0x0

    .line 1380
    .local v16, "$i$f$getDp":I
    move/from16 v19, v7

    .end local v7    # "index":I
    .local v19, "index":I
    int-to-float v7, v6

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .end local v6    # "$this$dp$iv":I
    .end local v16    # "$i$f$getDp":I
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v6

    .line 784
    invoke-static {v3, v6}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v3

    .line 786
    .local v3, "contentWidth":F
    new-instance v6, Landroidx/compose/material3/TabPosition;

    iget v7, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move/from16 v16, v8

    .end local v8    # "$i$a$-List-TabRowKt$ScrollableTabRowImpl$1$2$1$positions$1":I
    .local v16, "$i$a$-List-TabRowKt$ScrollableTabRowImpl$1$2$1$positions$1":I
    const/4 v8, 0x0

    invoke-direct {v6, v7, v2, v3, v8}, Landroidx/compose/material3/TabPosition;-><init>(FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 785
    nop

    .line 787
    .local v6, "tabPosition":Landroidx/compose/material3/TabPosition;
    iget v7, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .local v7, "arg0$iv":F
    const/4 v8, 0x0

    .line 1381
    .local v8, "$i$f$plus-5rwHm24":I
    add-float v21, v7, v2

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 787
    .end local v7    # "arg0$iv":F
    .end local v8    # "$i$f$plus-5rwHm24":I
    iput v7, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 788
    nop

    .line 779
    .end local v2    # "tabWidth":F
    .end local v3    # "contentWidth":F
    .end local v6    # "tabPosition":Landroidx/compose/material3/TabPosition;
    .end local v16    # "$i$a$-List-TabRowKt$ScrollableTabRowImpl$1$2$1$positions$1":I
    .end local v19    # "index":I
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v20, 0x1

    move/from16 v2, p2

    move-object/from16 v3, v17

    goto/16 :goto_2

    .end local v17    # "tabPlaceables":Ljava/util/List;
    .end local p2    # "tabCount":I
    .local v2, "tabCount":I
    .local v3, "tabPlaceables":Ljava/util/List;
    :cond_2
    move/from16 p2, v2

    move-object/from16 v17, v3

    .end local v2    # "tabCount":I
    .end local v3    # "tabPlaceables":Ljava/util/List;
    .restart local v17    # "tabPlaceables":Ljava/util/List;
    .restart local p2    # "tabCount":I
    check-cast v5, Ljava/util/List;

    .line 778
    move-object v2, v5

    .line 790
    .local v2, "positions":Ljava/util/List;
    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

    invoke-virtual {v3, v2}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;->setTabPositions(Ljava/util/List;)V

    .line 793
    move-object v3, v14

    .local v3, "$this$fastMap$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1382
    .local v5, "$i$f$fastMap":I
    nop

    .line 1383
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1384
    .local v6, "target$iv":Ljava/util/ArrayList;
    move-object v7, v3

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1385
    .local v8, "$i$f$fastForEach":I
    nop

    .line 1386
    const/16 v16, 0x0

    move-object/from16 v19, v3

    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .local v16, "index$iv$iv":I
    .local v19, "$this$fastMap$iv":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v20, v4

    move/from16 v4, v16

    .end local v16    # "index$iv$iv":I
    .local v4, "index$iv$iv":I
    .local v20, "left":Lkotlin/jvm/internal/Ref$FloatRef;
    :goto_3
    if-ge v4, v3, :cond_3

    .line 1387
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1388
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v16

    .local v21, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 1389
    .local v22, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v23, v3

    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    move/from16 v24, v4

    .end local v4    # "index$iv$iv":I
    .local v24, "index$iv$iv":I
    move-object/from16 v4, v21

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .local v4, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v33, 0x0

    .line 794
    .local v33, "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$dividerPlaceables$1":I
    nop

    .line 795
    nop

    .line 797
    nop

    .line 798
    nop

    .line 796
    nop

    .line 795
    const/16 v31, 0x8

    const/16 v32, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v28, v27

    move-wide/from16 v25, p3

    move/from16 v34, v5

    move-object/from16 v35, v6

    .end local v5    # "$i$f$fastMap":I
    .end local v6    # "target$iv":Ljava/util/ArrayList;
    .local v34, "$i$f$fastMap":I
    .local v35, "target$iv":Ljava/util/ArrayList;
    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v5

    .line 794
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 1389
    .end local v4    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v33    # "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$dividerPlaceables$1":I
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1390
    nop

    .line 1388
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1386
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v24, 0x1

    move/from16 v3, v23

    move/from16 v5, v34

    move-object/from16 v6, v35

    .end local v24    # "index$iv$iv":I
    .local v4, "index$iv$iv":I
    goto :goto_3

    .end local v34    # "$i$f$fastMap":I
    .end local v35    # "target$iv":Ljava/util/ArrayList;
    .restart local v5    # "$i$f$fastMap":I
    .restart local v6    # "target$iv":Ljava/util/ArrayList;
    :cond_3
    move/from16 v24, v4

    move/from16 v34, v5

    move-object/from16 v35, v6

    .line 1391
    .end local v4    # "index$iv$iv":I
    .end local v5    # "$i$f$fastMap":I
    .end local v6    # "target$iv":Ljava/util/ArrayList;
    .restart local v34    # "$i$f$fastMap":I
    .restart local v35    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 1392
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    move-object/from16 v5, v35

    check-cast v5, Ljava/util/List;

    .line 793
    .end local v19    # "$this$fastMap$iv":Ljava/util/List;
    .end local v34    # "$i$f$fastMap":I
    .end local v35    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 792
    move-object/from16 v16, v5

    .line 804
    .local v16, "dividerPlaceables":Ljava/util/List;
    iget v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    move-object/from16 v19, v15

    .restart local v19    # "$this$fastMap$iv":Ljava/util/List;
    const/16 v21, 0x0

    .line 1393
    .local v21, "$i$f$fastMap":I
    nop

    .line 1394
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v22, v4

    .line 1395
    .local v22, "target$iv":Ljava/util/ArrayList;
    move-object/from16 v4, v19

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v23, 0x0

    .line 1396
    .local v23, "$i$f$fastForEach":I
    nop

    .line 1397
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_4
    if-ge v5, v6, :cond_4

    .line 1398
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 1399
    .local v24, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    .local v25, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 1400
    .local v26, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v7, v22

    check-cast v7, Ljava/util/Collection;

    move-object/from16 v8, v25

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .local v8, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v28, 0x0

    .line 805
    .local v28, "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$indicatorPlaceables$1":I
    nop

    .line 806
    nop

    .line 807
    nop

    .line 808
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroidx/compose/material3/TabPosition;

    move-object/from16 v30, v2

    .end local v2    # "positions":Ljava/util/List;
    .local v30, "positions":Ljava/util/List;
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 809
    nop

    .line 810
    nop

    .line 806
    move/from16 v29, v5

    .end local v5    # "index$iv$iv":I
    .local v29, "index$iv$iv":I
    const/4 v5, 0x0

    move-object/from16 v31, v7

    const/4 v7, 0x0

    move-object/from16 v32, v20

    move-object/from16 v1, v31

    move-object/from16 v20, v4

    move/from16 v31, v29

    move/from16 v29, v6

    move v6, v2

    move-object v2, v8

    move v8, v12

    move v12, v3

    move-wide/from16 v3, p3

    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "layoutHeight":I
    .end local v29    # "index$iv$iv":I
    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    .local v8, "layoutHeight":I
    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v31, "index$iv$iv":I
    .local v32, "left":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v5

    .line 805
    move v3, v8

    .end local v8    # "layoutHeight":I
    .local v3, "layoutHeight":I
    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 1400
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v28    # "$i$a$-fastMap-TabRowKt$ScrollableTabRowImpl$1$2$1$indicatorPlaceables$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1401
    nop

    .line 1399
    .end local v25    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1397
    .end local v24    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v31, 0x1

    move v1, v12

    move v12, v3

    move v3, v1

    move-object/from16 v1, p1

    move-object/from16 v4, v20

    move/from16 v6, v29

    move-object/from16 v2, v30

    move-object/from16 v20, v32

    .end local v31    # "index$iv$iv":I
    .restart local v5    # "index$iv$iv":I
    goto :goto_4

    .end local v3    # "layoutHeight":I
    .end local v30    # "positions":Ljava/util/List;
    .end local v32    # "left":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v2, "positions":Ljava/util/List;
    .restart local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v12    # "layoutHeight":I
    .local v20, "left":Lkotlin/jvm/internal/Ref$FloatRef;
    :cond_4
    move-object/from16 v30, v2

    move/from16 v31, v5

    move-object/from16 v32, v20

    move-object/from16 v20, v4

    .line 1402
    .end local v2    # "positions":Ljava/util/List;
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "index$iv$iv":I
    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v30    # "positions":Ljava/util/List;
    .restart local v32    # "left":Lkotlin/jvm/internal/Ref$FloatRef;
    nop

    .line 1403
    .end local v20    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v23    # "$i$f$fastForEach":I
    move-object/from16 v6, v22

    check-cast v6, Ljava/util/List;

    .line 804
    .end local v19    # "$this$fastMap$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastMap":I
    .end local v22    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 803
    nop

    .line 815
    .local v6, "indicatorPlaceables":Ljava/util/List;
    new-instance v1, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;

    iget v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iget-object v7, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    move-wide v4, v10

    .end local v10    # "tabConstraints":J
    .local v4, "tabConstraints":J
    iget v11, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    move-object/from16 v8, p1

    move-wide/from16 v19, v4

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v10, v30

    move-object/from16 v2, v32

    move/from16 v16, p2

    .end local v17    # "tabPlaceables":Ljava/util/List;
    .end local v30    # "positions":Ljava/util/List;
    .end local v32    # "left":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p2    # "tabCount":I
    .local v2, "left":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v4, "tabPlaceables":Ljava/util/List;
    .local v5, "dividerPlaceables":Ljava/util/List;
    .local v10, "positions":Ljava/util/List;
    .local v16, "tabCount":I
    .local v19, "tabConstraints":J
    invoke-direct/range {v1 .. v12}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;FLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/ScrollableTabData;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/List;II)V

    move-object v8, v5

    move-object v10, v6

    .end local v2    # "left":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v4    # "tabPlaceables":Ljava/util/List;
    .end local v5    # "dividerPlaceables":Ljava/util/List;
    .end local v6    # "indicatorPlaceables":Ljava/util/List;
    .local v8, "dividerPlaceables":Ljava/util/List;
    .local v10, "indicatorPlaceables":Ljava/util/List;
    .restart local v17    # "tabPlaceables":Ljava/util/List;
    .restart local v30    # "positions":Ljava/util/List;
    .restart local v32    # "left":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v3, v12

    move/from16 v2, v27

    .end local v12    # "layoutHeight":I
    .end local v27    # "layoutWidth":I
    .local v2, "layoutWidth":I
    .restart local v3    # "layoutHeight":I
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    .end local v2    # "layoutWidth":I
    .end local v3    # "layoutHeight":I
    .restart local v12    # "layoutHeight":I
    .restart local v27    # "layoutWidth":I
    return-object v4
.end method
