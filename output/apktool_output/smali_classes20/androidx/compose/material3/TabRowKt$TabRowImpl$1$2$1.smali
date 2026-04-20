.class final Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1;
.super Ljava/lang/Object;
.source "TabRow.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$TabRowImpl$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1355:1\n256#2,3:1356\n33#2,4:1359\n259#2,2:1363\n38#2:1365\n261#2:1366\n151#2,3:1371\n33#2,4:1374\n154#2,2:1378\n38#2:1380\n156#2:1381\n151#2,3:1382\n33#2,4:1385\n154#2,2:1389\n38#2:1391\n156#2:1392\n151#2,3:1393\n33#2,4:1396\n154#2,2:1400\n38#2:1402\n156#2:1403\n86#3:1367\n56#3:1368\n86#3:1370\n148#4:1369\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1\n*L\n628#1:1356,3\n628#1:1359,4\n628#1:1363,2\n628#1:1365\n628#1:1366\n646#1:1371,3\n646#1:1374,4\n646#1:1378,2\n646#1:1380\n646#1:1381\n658#1:1382,3\n658#1:1385,4\n658#1:1389,2\n658#1:1391\n658#1:1392\n661#1:1393,3\n661#1:1396,4\n661#1:1400,2\n661#1:1402\n661#1:1403\n637#1:1367\n637#1:1368\n641#1:1370\n639#1:1369\n*E\n"
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
.field final synthetic $scope:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 33
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

    .line 620
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    .local v7, "tabMeasurables":Ljava/util/List;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/List;

    .local v8, "dividerMeasurables":Ljava/util/List;
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 621
    .local v9, "indicatorMeasurables":Ljava/util/List;
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 622
    .local v1, "tabRowWidth":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 623
    .local v10, "tabCount":I
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v15, v3

    .line 624
    .local v15, "tabWidth":Lkotlin/jvm/internal/Ref$IntRef;
    if-lez v10, :cond_0

    .line 625
    div-int v3, v1, v10

    iput v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 628
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "initial$iv":Ljava/lang/Object;
    move-object v4, v7

    .local v4, "$this$fastFold$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1356
    .local v5, "$i$f$fastFold":I
    nop

    .line 1357
    const/4 v6, 0x0

    .local v6, "accumulator$iv":Ljava/lang/Object;
    move-object v6, v3

    .line 1358
    move-object v11, v4

    .local v11, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 1359
    .local v12, "$i$f$fastForEach":I
    nop

    .line 1360
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    :goto_0
    if-ge v13, v14, :cond_1

    .line 1361
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1362
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "e$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1363
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "curr":Landroidx/compose/ui/layout/Measurable;
    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/Number;

    move/from16 p2, v1

    .end local v1    # "tabRowWidth":I
    .local p2, "tabRowWidth":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "max":I
    const/16 v20, 0x0

    .line 629
    .local v20, "$i$a$-fastFold-TabRowKt$TabRowImpl$1$2$1$tabRowHeight$1":I
    move-object/from16 v21, v3

    .end local v3    # "initial$iv":Ljava/lang/Object;
    .local v21, "initial$iv":Ljava/lang/Object;
    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, v3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v1    # "max":I
    .end local v2    # "curr":Landroidx/compose/ui/layout/Measurable;
    .end local v20    # "$i$a$-fastFold-TabRowKt$TabRowImpl$1$2$1$tabRowHeight$1":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1363
    move-object v6, v1

    .line 1364
    nop

    .line 1362
    .end local v17    # "e$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 1360
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move-object/from16 v3, v21

    const/4 v2, 0x0

    goto :goto_0

    .end local v21    # "initial$iv":Ljava/lang/Object;
    .end local p2    # "tabRowWidth":I
    .local v1, "tabRowWidth":I
    .restart local v3    # "initial$iv":Ljava/lang/Object;
    :cond_1
    move/from16 p2, v1

    move-object/from16 v21, v3

    .line 1365
    .end local v1    # "tabRowWidth":I
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .end local v13    # "index$iv$iv":I
    .restart local v21    # "initial$iv":Ljava/lang/Object;
    .restart local p2    # "tabRowWidth":I
    nop

    .line 1366
    .end local v11    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    nop

    .line 628
    .end local v4    # "$this$fastFold$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFold":I
    .end local v6    # "accumulator$iv":Ljava/lang/Object;
    .end local v21    # "initial$iv":Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 627
    move/from16 v2, v16

    .line 632
    .local v2, "tabRowHeight":I
    move-object/from16 v11, p0

    iget-object v1, v11, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    .line 633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_2

    move v5, v4

    .local v5, "index":I
    const/4 v6, 0x0

    .line 636
    .local v6, "$i$a$-List-TabRowKt$TabRowImpl$1$2$1$1":I
    nop

    .line 635
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v12, v2}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v12

    iget v13, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 636
    invoke-interface {v0, v12}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v12

    .line 634
    nop

    .line 637
    .local v12, "contentWidth":F
    invoke-static {}, Landroidx/compose/material3/TabKt;->getHorizontalTextPadding()F

    move-result v13

    .local v13, "arg0$iv":F
    const/4 v14, 0x2

    .local v14, "other$iv":I
    const/16 v16, 0x0

    .line 1367
    .local v16, "$i$f$times-u2uoSUM":I
    move/from16 v17, v2

    .end local v2    # "tabRowHeight":I
    .local v17, "tabRowHeight":I
    int-to-float v2, v14

    mul-float/2addr v2, v13

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 637
    .end local v13    # "arg0$iv":F
    .end local v14    # "other$iv":I
    .end local v16    # "$i$f$times-u2uoSUM":I
    nop

    .local v2, "other$iv":F
    const/4 v13, 0x0

    .line 1368
    .local v13, "$i$f$minus-5rwHm24":I
    sub-float v14, v12, v2

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 637
    .end local v2    # "other$iv":F
    .end local v13    # "$i$f$minus-5rwHm24":I
    nop

    .line 639
    .end local v12    # "contentWidth":F
    .local v2, "contentWidth":F
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v12

    const/16 v13, 0x18

    .local v13, "$this$dp$iv":I
    const/4 v14, 0x0

    .line 1369
    .local v14, "$i$f$getDp":I
    move/from16 v16, v2

    .end local v2    # "contentWidth":F
    .local v16, "contentWidth":F
    int-to-float v2, v13

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .end local v13    # "$this$dp$iv":I
    .end local v14    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    .line 639
    invoke-static {v12, v2}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v2

    .line 641
    .local v2, "indicatorWidth":F
    new-instance v12, Landroidx/compose/material3/TabPosition;

    iget v13, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v0, v13}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v13

    .local v13, "arg0$iv":F
    const/4 v14, 0x0

    .line 1370
    .local v14, "$i$f$times-u2uoSUM":I
    move/from16 v18, v4

    int-to-float v4, v5

    mul-float/2addr v4, v13

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 641
    .end local v13    # "arg0$iv":F
    .end local v14    # "$i$f$times-u2uoSUM":I
    iget v13, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v0, v13}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v12, v4, v13, v2, v14}, Landroidx/compose/material3/TabPosition;-><init>(FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 633
    .end local v2    # "indicatorWidth":F
    .end local v5    # "index":I
    .end local v6    # "$i$a$-List-TabRowKt$TabRowImpl$1$2$1$1":I
    .end local v16    # "contentWidth":F
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v18, 0x1

    move/from16 v2, v17

    goto :goto_1

    .end local v17    # "tabRowHeight":I
    .local v2, "tabRowHeight":I
    :cond_2
    move/from16 v17, v2

    .end local v2    # "tabRowHeight":I
    .restart local v17    # "tabRowHeight":I
    check-cast v3, Ljava/util/List;

    .line 632
    invoke-virtual {v1, v3}, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;->setTabPositions(Ljava/util/List;)V

    .line 646
    move-object v12, v7

    .local v12, "$this$fastMap$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 1371
    .local v13, "$i$f$fastMap":I
    nop

    .line 1372
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v1

    .line 1373
    .local v14, "target$iv":Ljava/util/ArrayList;
    move-object v1, v12

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1374
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1375
    const/4 v2, 0x0

    .local v2, "index$iv$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1376
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1377
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 1378
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v4, v14

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v5, v19

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .local v5, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 647
    .local v21, "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$tabPlaceables$1":I
    nop

    .line 648
    nop

    .line 649
    move v6, v3

    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 650
    move-object/from16 v22, v4

    iget v4, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 651
    nop

    .line 652
    nop

    .line 648
    move/from16 v23, v6

    move/from16 v6, v17

    move-object/from16 v24, v7

    move-object/from16 v0, v22

    move/from16 v22, v2

    move-object v7, v5

    move/from16 v5, v17

    move-object/from16 v17, v1

    move-wide/from16 v1, p3

    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "index$iv$iv":I
    .local v5, "tabRowHeight":I
    .local v7, "it":Landroidx/compose/ui/layout/Measurable;
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v22, "index$iv$iv":I
    .local v24, "tabMeasurables":Ljava/util/List;
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v3

    .line 647
    move v2, v5

    .end local v5    # "tabRowHeight":I
    .local v2, "tabRowHeight":I
    invoke-interface {v7, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 1378
    .end local v7    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$tabPlaceables$1":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1379
    nop

    .line 1377
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1375
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v1, v17

    move/from16 v3, v23

    move-object/from16 v7, v24

    move/from16 v17, v2

    move v2, v0

    move-object/from16 v0, p1

    .end local v22    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    goto :goto_2

    .end local v0    # "index$iv$iv":I
    .end local v24    # "tabMeasurables":Ljava/util/List;
    .restart local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v2, "index$iv$iv":I
    .local v7, "tabMeasurables":Ljava/util/List;
    .local v17, "tabRowHeight":I
    :cond_3
    move/from16 v22, v2

    move-object/from16 v24, v7

    move/from16 v2, v17

    move-object/from16 v17, v1

    .line 1380
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "tabMeasurables":Ljava/util/List;
    .local v2, "tabRowHeight":I
    .local v17, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v24    # "tabMeasurables":Ljava/util/List;
    nop

    .line 1381
    .end local v16    # "$i$f$fastForEach":I
    .end local v17    # "$this$fastForEach$iv$iv":Ljava/util/List;
    move-object v12, v14

    check-cast v12, Ljava/util/List;

    .line 646
    .end local v12    # "$this$fastMap$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastMap":I
    .end local v14    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 645
    nop

    .line 658
    .local v12, "tabPlaceables":Ljava/util/List;
    move-object v0, v8

    .local v0, "$this$fastMap$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1382
    .local v1, "$i$f$fastMap":I
    nop

    .line 1383
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1384
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v0

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1385
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1386
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_4

    .line 1387
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1388
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1389
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v17, v0

    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .local v17, "$this$fastMap$iv":Ljava/util/List;
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move/from16 v18, v1

    .end local v1    # "$i$f$fastMap":I
    .local v18, "$i$f$fastMap":I
    move-object v1, v14

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .local v1, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v19, 0x0

    .line 658
    .local v19, "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$dividerPlaceables$1":I
    const/16 v31, 0xb

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v25, p3

    move/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "tabRowHeight":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .local v20, "tabRowHeight":I
    .local v21, "target$iv":Ljava/util/ArrayList;
    invoke-static/range {v25 .. v32}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 1389
    .end local v1    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v19    # "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$dividerPlaceables$1":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1390
    nop

    .line 1388
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1386
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_3

    .end local v17    # "$this$fastMap$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastMap":I
    .end local v20    # "tabRowHeight":I
    .end local v21    # "target$iv":Ljava/util/ArrayList;
    .restart local v0    # "$this$fastMap$iv":Ljava/util/List;
    .local v1, "$i$f$fastMap":I
    .restart local v2    # "tabRowHeight":I
    .restart local v3    # "target$iv":Ljava/util/ArrayList;
    :cond_4
    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    .line 1391
    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMap":I
    .end local v2    # "tabRowHeight":I
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v6    # "index$iv$iv":I
    .restart local v17    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastMap":I
    .restart local v20    # "tabRowHeight":I
    .restart local v21    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 1392
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    move-object/from16 v13, v21

    check-cast v13, Ljava/util/List;

    .line 658
    .end local v17    # "$this$fastMap$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastMap":I
    .end local v21    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 657
    nop

    .line 661
    .local v13, "dividerPlaceables":Ljava/util/List;
    move-object v0, v9

    .restart local v0    # "$this$fastMap$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1393
    .local v7, "$i$f$fastMap":I
    nop

    .line 1394
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v1

    .line 1395
    .local v14, "target$iv":Ljava/util/ArrayList;
    move-object v1, v0

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1396
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1397
    const/4 v2, 0x0

    .local v2, "index$iv$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_5

    .line 1398
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 1399
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1400
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v4, v14

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v5, v18

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .local v5, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v21, 0x0

    .line 662
    .local v21, "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$indicatorPlaceables$1":I
    nop

    .line 663
    nop

    .line 664
    move v6, v3

    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 665
    move-object/from16 v22, v4

    iget v4, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 666
    nop

    .line 667
    nop

    .line 663
    move-object/from16 v23, v5

    .end local v5    # "it":Landroidx/compose/ui/layout/Measurable;
    .local v23, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v5, 0x0

    move-object/from16 v25, v0

    move/from16 v26, v7

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    move/from16 v23, v2

    move/from16 v22, v6

    move/from16 v6, v20

    move-object/from16 v20, v1

    move-wide/from16 v1, p3

    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "index$iv$iv":I
    .local v6, "tabRowHeight":I
    .local v7, "it":Landroidx/compose/ui/layout/Measurable;
    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v23, "index$iv$iv":I
    .local v25, "$this$fastMap$iv":Ljava/util/List;
    .local v26, "$i$f$fastMap":I
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v3

    .line 662
    move v2, v6

    .end local v6    # "tabRowHeight":I
    .local v2, "tabRowHeight":I
    invoke-interface {v7, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 1400
    .end local v7    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v21    # "$i$a$-fastMap-TabRowKt$TabRowImpl$1$2$1$indicatorPlaceables$1":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1401
    nop

    .line 1399
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 1397
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v23, 0x1

    move-object/from16 v1, v20

    move/from16 v3, v22

    move/from16 v7, v26

    move/from16 v20, v2

    move v2, v0

    move-object/from16 v0, v25

    .end local v23    # "index$iv$iv":I
    .local v0, "index$iv$iv":I
    goto :goto_4

    .end local v25    # "$this$fastMap$iv":Ljava/util/List;
    .end local v26    # "$i$f$fastMap":I
    .local v0, "$this$fastMap$iv":Ljava/util/List;
    .restart local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v2, "index$iv$iv":I
    .local v7, "$i$f$fastMap":I
    .local v20, "tabRowHeight":I
    :cond_5
    move-object/from16 v25, v0

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v20, v1

    .line 1402
    .end local v0    # "$this$fastMap$iv":Ljava/util/List;
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v2, "tabRowHeight":I
    .local v20, "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v25    # "$this$fastMap$iv":Ljava/util/List;
    nop

    .line 1403
    .end local v16    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv$iv":Ljava/util/List;
    check-cast v14, Ljava/util/List;

    .line 661
    .end local v7    # "$i$f$fastMap":I
    .end local v14    # "target$iv":Ljava/util/ArrayList;
    .end local v25    # "$this$fastMap$iv":Ljava/util/List;
    nop

    .line 660
    nop

    .line 672
    .local v14, "indicatorPlaceables":Ljava/util/List;
    new-instance v11, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$2;

    move/from16 v16, v2

    .end local v2    # "tabRowHeight":I
    .local v16, "tabRowHeight":I
    invoke-direct/range {v11 .. v16}, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$2;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;I)V

    .end local v16    # "tabRowHeight":I
    .restart local v2    # "tabRowHeight":I
    move-object v4, v11

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .end local p2    # "tabRowWidth":I
    .local v1, "tabRowWidth":I
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3
.end method
