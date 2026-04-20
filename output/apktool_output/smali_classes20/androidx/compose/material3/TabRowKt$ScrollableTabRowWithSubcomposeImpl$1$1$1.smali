.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,1355:1\n256#2,3:1356\n33#2,4:1359\n259#2,2:1363\n38#2:1365\n261#2:1366\n33#2,4:1367\n38#2:1373\n256#2,3:1374\n33#2,4:1377\n259#2,2:1381\n38#2:1383\n261#2:1384\n86#3:1371\n56#3:1372\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1\n*L\n1035#1:1356,3\n1035#1:1359,4\n1035#1:1363,2\n1035#1:1365\n1035#1:1366\n1048#1:1367,4\n1048#1:1373\n1058#1:1374,3\n1058#1:1377,4\n1058#1:1381,2\n1058#1:1383\n1058#1:1384\n1052#1:1371\n1052#1:1372\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ScrollableTabData;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iput p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$selectedTabIndex:I

    iput-object p6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 1028
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 27
    .param p1, "$this$SubcomposeLayout"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p2, "constraints"    # J

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v1

    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    .line 1030
    .local v7, "minTabWidth":I
    iget v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$edgePadding:F

    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 1032
    .local v2, "padding":I
    sget-object v1, Landroidx/compose/material3/TabSlots;->Tabs:Landroidx/compose/material3/TabSlots;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$tabs:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v1, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v14

    .line 1035
    .local v14, "tabMeasurables":Ljava/util/List;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "initial$iv":Ljava/lang/Object;
    move-object v3, v14

    .local v3, "$this$fastFold$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1356
    .local v5, "$i$f$fastFold":I
    nop

    .line 1357
    const/4 v6, 0x0

    .local v6, "accumulator$iv":Ljava/lang/Object;
    move-object v6, v1

    .line 1358
    move-object v8, v3

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1359
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1360
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_0

    .line 1361
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1362
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "e$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1363
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object/from16 v16, v1

    .end local v1    # "initial$iv":Ljava/lang/Object;
    .local v16, "initial$iv":Ljava/lang/Object;
    move-object v1, v13

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .local v1, "measurable":Landroidx/compose/ui/layout/Measurable;
    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v17

    .local v17, "curr":I
    move/from16 v18, v17

    .end local v17    # "curr":I
    .local v18, "curr":I
    const/16 v17, 0x0

    .line 1036
    .local v17, "$i$a$-fastFold-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$layoutHeight$1":I
    move/from16 v19, v2

    .end local v2    # "padding":I
    .local v19, "padding":I
    const v2, 0x7fffffff

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v2

    move-object/from16 v20, v1

    move/from16 v1, v18

    .end local v18    # "curr":I
    .local v1, "curr":I
    .local v20, "measurable":Landroidx/compose/ui/layout/Measurable;
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v1    # "curr":I
    .end local v17    # "$i$a$-fastFold-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$layoutHeight$1":I
    .end local v20    # "measurable":Landroidx/compose/ui/layout/Measurable;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1363
    move-object v6, v1

    .line 1364
    nop

    .line 1362
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 1360
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v19

    goto :goto_0

    .end local v16    # "initial$iv":Ljava/lang/Object;
    .end local v19    # "padding":I
    .local v1, "initial$iv":Ljava/lang/Object;
    .restart local v2    # "padding":I
    :cond_0
    move-object/from16 v16, v1

    move/from16 v19, v2

    .line 1365
    .end local v1    # "initial$iv":Ljava/lang/Object;
    .end local v2    # "padding":I
    .end local v10    # "index$iv$iv":I
    .restart local v16    # "initial$iv":Ljava/lang/Object;
    .restart local v19    # "padding":I
    nop

    .line 1366
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    nop

    .line 1035
    .end local v3    # "$this$fastFold$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFold":I
    .end local v6    # "accumulator$iv":Ljava/lang/Object;
    .end local v16    # "initial$iv":Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1034
    nop

    .line 1040
    .local v12, "layoutHeight":I
    nop

    .line 1041
    nop

    .line 1040
    nop

    .line 1042
    nop

    .line 1043
    nop

    .line 1040
    const/4 v11, 0x2

    move/from16 v22, v12

    .end local v12    # "layoutHeight":I
    .local v22, "layoutHeight":I
    const/4 v12, 0x0

    const/4 v8, 0x0

    move/from16 v10, v22

    move-wide/from16 v5, p2

    move/from16 v9, v22

    .end local v22    # "layoutHeight":I
    .local v9, "layoutHeight":I
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 1039
    move v15, v7

    .line 1046
    .end local v7    # "minTabWidth":I
    .end local v9    # "layoutHeight":I
    .local v1, "tabConstraints":J
    .local v15, "minTabWidth":I
    .restart local v22    # "layoutHeight":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 1047
    .local v3, "tabPlaceables":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    .line 1048
    .local v8, "tabContentWidths":Ljava/util/List;
    move-object v5, v14

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1367
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1368
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_1
    if-ge v7, v9, :cond_1

    .line 1369
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1370
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .local v11, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v12, 0x0

    .line 1049
    .local v12, "$i$a$-fastForEach-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$1":I
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    .line 1051
    .local v13, "placeable":Landroidx/compose/ui/layout/Placeable;
    move-wide/from16 v16, v1

    .end local v1    # "tabConstraints":J
    .local v16, "tabConstraints":J
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-interface {v11, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->toDp-u2uoSUM(I)F

    move-result v1

    .line 1050
    nop

    .line 1052
    .local v1, "contentWidth":F
    invoke-static {}, Landroidx/compose/material3/TabKt;->getHorizontalTextPadding()F

    move-result v2

    move/from16 v18, v1

    .end local v1    # "contentWidth":F
    .local v2, "arg0$iv":F
    .local v18, "contentWidth":F
    const/4 v1, 0x2

    .local v1, "other$iv":I
    const/16 v20, 0x0

    .line 1371
    .local v20, "$i$f$times-u2uoSUM":I
    move/from16 v21, v2

    .end local v2    # "arg0$iv":F
    .local v21, "arg0$iv":F
    int-to-float v2, v1

    mul-float v2, v2, v21

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1052
    .end local v1    # "other$iv":I
    .end local v20    # "$i$f$times-u2uoSUM":I
    .end local v21    # "arg0$iv":F
    nop

    .local v1, "other$iv":F
    const/4 v2, 0x0

    .line 1372
    .local v2, "$i$f$minus-5rwHm24":I
    sub-float v20, v18, v1

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1052
    .end local v1    # "other$iv":F
    .end local v2    # "$i$f$minus-5rwHm24":I
    nop

    .line 1053
    .end local v18    # "contentWidth":F
    .local v1, "contentWidth":F
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    nop

    .line 1370
    .end local v1    # "contentWidth":F
    .end local v11    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v12    # "$i$a$-fastForEach-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$1":I
    .end local v13    # "placeable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 1368
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v16

    goto :goto_1

    .end local v16    # "tabConstraints":J
    .local v1, "tabConstraints":J
    :cond_1
    move-wide/from16 v16, v1

    .line 1373
    .end local v1    # "tabConstraints":J
    .end local v7    # "index$iv":I
    .restart local v16    # "tabConstraints":J
    nop

    .line 1058
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    mul-int/lit8 v2, v19, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "initial$iv":Ljava/lang/Object;
    move-object v2, v3

    .local v2, "$this$fastFold$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1374
    .local v5, "$i$f$fastFold":I
    nop

    .line 1375
    const/4 v6, 0x0

    .local v6, "accumulator$iv":Ljava/lang/Object;
    move-object v6, v1

    .line 1376
    move-object v7, v2

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1377
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1378
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_2
    if-ge v10, v11, :cond_2

    .line 1379
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1380
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "e$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1381
    .local v18, "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    move-object/from16 v20, v13

    check-cast v20, Landroidx/compose/ui/layout/Placeable;

    .local v20, "measurable":Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v21, v6

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v21

    .local v21, "curr":I
    const/16 v23, 0x0

    .line 1059
    .local v23, "$i$a$-fastFold-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$layoutWidth$1":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v24

    add-int v21, v21, v24

    .end local v20    # "measurable":Landroidx/compose/ui/layout/Placeable;
    .end local v21    # "curr":I
    .end local v23    # "$i$a$-fastFold-TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$layoutWidth$1":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 1381
    move-object/from16 v6, v20

    .line 1382
    nop

    .line 1380
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-fastForEach-ListUtilsKt$fastFold$2$iv":I
    nop

    .line 1378
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1383
    .end local v10    # "index$iv$iv":I
    :cond_2
    nop

    .line 1384
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    nop

    .line 1058
    .end local v1    # "initial$iv":Ljava/lang/Object;
    .end local v2    # "$this$fastFold$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastFold":I
    .end local v6    # "accumulator$iv":Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v21

    .line 1057
    nop

    .line 1063
    .local v21, "layoutWidth":I
    move-object/from16 v20, v4

    check-cast v20, Landroidx/compose/ui/layout/MeasureScope;

    new-instance v1, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$2;

    iget-object v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iget v7, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$selectedTabIndex:I

    iget-object v13, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1;->$indicator:Lkotlin/jvm/functions/Function3;

    move-wide/from16 v9, p2

    move/from16 v2, v19

    move/from16 v11, v21

    move/from16 v12, v22

    .end local v19    # "padding":I
    .end local v21    # "layoutWidth":I
    .end local v22    # "layoutHeight":I
    .local v2, "padding":I
    .local v11, "layoutWidth":I
    .local v12, "layoutHeight":I
    invoke-direct/range {v1 .. v13}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$2;-><init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScrollableTabData;ILjava/util/List;JIILkotlin/jvm/functions/Function3;)V

    .end local v11    # "layoutWidth":I
    .end local v12    # "layoutHeight":I
    .restart local v21    # "layoutWidth":I
    .restart local v22    # "layoutHeight":I
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function1;

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
