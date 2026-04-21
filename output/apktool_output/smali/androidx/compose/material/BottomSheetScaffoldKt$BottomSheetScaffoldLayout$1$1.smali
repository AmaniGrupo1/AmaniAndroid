.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-HJHHjMs(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,625:1\n151#2,3:626\n33#2,4:629\n154#2,2:633\n38#2:635\n156#2:636\n151#2,3:637\n33#2,4:640\n154#2,2:644\n38#2:646\n156#2:647\n171#2,13:648\n151#2,3:661\n33#2,4:664\n154#2,2:668\n38#2:670\n156#2:671\n151#2,3:672\n33#2,4:675\n154#2,2:679\n38#2:681\n156#2:682\n171#2,13:683\n171#2,13:696\n151#2,3:709\n33#2,4:712\n154#2,2:716\n38#2:718\n156#2:719\n171#2,13:720\n171#2,13:733\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1\n*L\n521#1:626,3\n521#1:629,4\n521#1:633,2\n521#1:635\n521#1:636\n523#1:637,3\n523#1:640,4\n523#1:644,2\n523#1:646\n523#1:647\n524#1:648,13\n527#1:661,3\n527#1:664,4\n527#1:668,2\n527#1:670\n527#1:671\n529#1:672,3\n529#1:675,4\n529#1:679,2\n529#1:681\n529#1:682\n530#1:683,13\n531#1:696,13\n533#1:709,3\n533#1:712,4\n533#1:716,2\n533#1:718\n533#1:719\n534#1:720,13\n535#1:733,13\n*E\n"
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
.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $sheetOffset:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetPeekHeight:F

.field final synthetic $sheetState:Landroidx/compose/material/BottomSheetState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;IFLandroidx/compose/material/BottomSheetState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;IF",
            "Landroidx/compose/material/BottomSheetState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetOffset:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButtonPosition:I

    iput p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetPeekHeight:F

    iput-object p4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 35
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

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 511
    nop

    .line 510
    .local v3, "topBarMeasurables":Ljava/util/List;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 512
    nop

    .line 510
    .local v4, "bodyMeasurables":Ljava/util/List;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 513
    nop

    .line 510
    .local v5, "sheetMeasurables":Ljava/util/List;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 514
    nop

    .line 510
    .local v6, "fabMeasurables":Ljava/util/List;
    const/4 v7, 0x4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 515
    nop

    .line 517
    .local v1, "snackbarHostMeasurables":Ljava/util/List;
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v11

    .line 518
    .local v11, "layoutWidth":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v18

    .line 519
    .local v18, "layoutHeight":I
    const/16 v25, 0xa

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v19, p3

    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v7

    .line 521
    .local v7, "looseConstraints":J
    move-object v9, v5

    .local v9, "$this$fastMap$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 626
    .local v10, "$i$f$fastMap":I
    nop

    .line 627
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    .local v12, "target$iv":Ljava/util/ArrayList;
    move-object v13, v9

    .local v13, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 629
    .local v14, "$i$f$fastForEach":I
    nop

    .line 630
    const/4 v15, 0x0

    .local v15, "index$iv$iv":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v15, v2, :cond_0

    .line 631
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 632
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v17

    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 633
    .local v20, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 p2, v1

    .end local v1    # "snackbarHostMeasurables":Ljava/util/List;
    .local p2, "snackbarHostMeasurables":Ljava/util/List;
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    move/from16 v21, v2

    move-object/from16 v2, v19

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v22, 0x0

    .line 521
    .local v22, "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceables$1":I
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 633
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v22    # "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceables$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 634
    nop

    .line 632
    .end local v19    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 630
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move/from16 v2, v21

    goto :goto_0

    .end local p2    # "snackbarHostMeasurables":Ljava/util/List;
    .restart local v1    # "snackbarHostMeasurables":Ljava/util/List;
    :cond_0
    move-object/from16 p2, v1

    .line 635
    .end local v1    # "snackbarHostMeasurables":Ljava/util/List;
    .end local v15    # "index$iv$iv":I
    .restart local p2    # "snackbarHostMeasurables":Ljava/util/List;
    nop

    .line 636
    .end local v13    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEach":I
    move-object/from16 v21, v12

    check-cast v21, Ljava/util/List;

    .line 521
    .end local v9    # "$this$fastMap$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastMap":I
    .end local v12    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 523
    .local v21, "sheetPlaceables":Ljava/util/List;
    move-object v1, v3

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 637
    .local v2, "$i$f$fastMap":I
    nop

    .line 638
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v9, "target$iv":Ljava/util/ArrayList;
    move-object v10, v1

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 640
    .local v12, "$i$f$fastForEach":I
    nop

    .line 641
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    if-ge v13, v14, :cond_1

    .line 642
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 643
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v15

    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 644
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v20, v1

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v20, "$this$fastMap$iv":Ljava/util/List;
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    move/from16 v22, v2

    .end local v2    # "$i$f$fastMap":I
    .local v22, "$i$f$fastMap":I
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v23, 0x0

    .line 523
    .local v23, "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceables$1":I
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 644
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v23    # "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceables$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 645
    nop

    .line 643
    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 641
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v22

    goto :goto_1

    .end local v20    # "$this$fastMap$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastMap":I
    .restart local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v2, "$i$f$fastMap":I
    :cond_1
    move-object/from16 v20, v1

    move/from16 v22, v2

    .line 646
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v13    # "index$iv$iv":I
    .restart local v20    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v22    # "$i$f$fastMap":I
    nop

    .line 647
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    move-object/from16 v20, v9

    check-cast v20, Ljava/util/List;

    .line 523
    .end local v9    # "target$iv":Ljava/util/ArrayList;
    .end local v20    # "$this$fastMap$iv":Ljava/util/List;
    .end local v22    # "$i$f$fastMap":I
    nop

    .line 524
    .local v20, "topBarPlaceables":Ljava/util/List;
    move-object/from16 v1, v20

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 648
    .local v2, "$i$f$fastMaxBy":I
    nop

    .line 649
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v12, 0x0

    goto :goto_3

    .line 650
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 651
    .local v12, "maxElem$iv":Ljava/lang/Object;
    move-object v9, v12

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .local v9, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v13, 0x0

    .line 524
    .local v13, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarHeight$1":I
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    .line 651
    .end local v9    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v13    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarHeight$1":I
    nop

    .line 652
    .local v9, "maxValue$iv":I
    const/4 v13, 0x1

    .local v13, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v14

    if-gt v13, v14, :cond_4

    .line 653
    :goto_2
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 654
    .local v15, "e$iv":Ljava/lang/Object;
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .local v17, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v19, 0x0

    .line 524
    .local v19, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarHeight$1":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v17

    .line 654
    .end local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v19    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarHeight$1":I
    move/from16 v19, v17

    .line 655
    .local v19, "v$iv":I
    move/from16 v10, v19

    .end local v19    # "v$iv":I
    .local v10, "v$iv":I
    if-ge v9, v10, :cond_3

    .line 656
    move-object v12, v15

    .line 657
    move v9, v10

    .line 652
    .end local v10    # "v$iv":I
    .end local v15    # "e$iv":Ljava/lang/Object;
    :cond_3
    if-eq v13, v14, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 660
    .end local v13    # "i$iv":I
    :cond_4
    nop

    .line 524
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v9    # "maxValue$iv":I
    .end local v12    # "maxElem$iv":Ljava/lang/Object;
    :goto_3
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    move/from16 v24, v1

    goto :goto_4

    :cond_5
    const/16 v24, 0x0

    .line 526
    .local v24, "topBarHeight":I
    :goto_4
    sub-int v32, v18, v24

    const/16 v33, 0x7

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v27, v7

    .end local v7    # "looseConstraints":J
    .local v27, "looseConstraints":J
    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 527
    .end local v27    # "looseConstraints":J
    .local v1, "bodyConstraints":J
    .restart local v7    # "looseConstraints":J
    move-object v9, v4

    .local v9, "$this$fastMap$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 661
    .local v10, "$i$f$fastMap":I
    nop

    .line 662
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    .local v12, "target$iv":Ljava/util/ArrayList;
    move-object v13, v9

    .local v13, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 664
    .restart local v14    # "$i$f$fastForEach":I
    nop

    .line 665
    const/4 v15, 0x0

    move-object/from16 v25, v3

    .end local v3    # "topBarMeasurables":Ljava/util/List;
    .local v15, "index$iv$iv":I
    .local v25, "topBarMeasurables":Ljava/util/List;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    if-ge v15, v3, :cond_6

    .line 666
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 667
    .local v19, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    .local v22, "it$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 668
    .local v23, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move/from16 v26, v3

    move-object v3, v12

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v27, v4

    .end local v4    # "bodyMeasurables":Ljava/util/List;
    .local v27, "bodyMeasurables":Ljava/util/List;
    move-object/from16 v4, v22

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .local v4, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v28, 0x0

    .line 527
    .local v28, "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceables$1":I
    invoke-interface {v4, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 668
    .end local v4    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v28    # "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceables$1":I
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 669
    nop

    .line 667
    .end local v22    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 665
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v26

    move-object/from16 v4, v27

    goto :goto_5

    .end local v27    # "bodyMeasurables":Ljava/util/List;
    .local v4, "bodyMeasurables":Ljava/util/List;
    :cond_6
    move-object/from16 v27, v4

    .line 670
    .end local v4    # "bodyMeasurables":Ljava/util/List;
    .end local v15    # "index$iv$iv":I
    .restart local v27    # "bodyMeasurables":Ljava/util/List;
    nop

    .line 671
    .end local v13    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$fastForEach":I
    move-object/from16 v19, v12

    check-cast v19, Ljava/util/List;

    .line 527
    .end local v9    # "$this$fastMap$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastMap":I
    .end local v12    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 529
    .local v19, "bodyPlaceables":Ljava/util/List;
    move-object v3, v6

    .local v3, "$this$fastMap$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 672
    .local v4, "$i$f$fastMap":I
    nop

    .line 673
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    .local v9, "target$iv":Ljava/util/ArrayList;
    move-object v10, v3

    .local v10, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 675
    .local v12, "$i$f$fastForEach":I
    nop

    .line 676
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    :goto_6
    if-ge v13, v14, :cond_7

    .line 677
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 678
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v15

    .restart local v22    # "it$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 679
    .restart local v23    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-wide/from16 v28, v1

    .end local v1    # "bodyConstraints":J
    .local v28, "bodyConstraints":J
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v2, v22

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v26, 0x0

    .line 529
    .local v26, "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabPlaceable$1":I
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 679
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v26    # "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabPlaceable$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 680
    nop

    .line 678
    .end local v22    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 676
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v1, v28

    goto :goto_6

    .end local v28    # "bodyConstraints":J
    .restart local v1    # "bodyConstraints":J
    :cond_7
    move-wide/from16 v28, v1

    .line 681
    .end local v1    # "bodyConstraints":J
    .end local v13    # "index$iv$iv":I
    .restart local v28    # "bodyConstraints":J
    nop

    .line 682
    .end local v10    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    move-object/from16 v22, v9

    check-cast v22, Ljava/util/List;

    .line 529
    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastMap":I
    .end local v9    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 530
    .local v22, "fabPlaceable":Ljava/util/List;
    move-object/from16 v1, v22

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 683
    .local v2, "$i$f$fastMaxBy":I
    nop

    .line 684
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    .line 685
    :cond_8
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 686
    .local v3, "maxElem$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .local v4, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 530
    .local v9, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabWidth$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .line 686
    .end local v4    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabWidth$1":I
    nop

    .line 687
    .local v4, "maxValue$iv":I
    const/4 v9, 0x1

    .local v9, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v10

    if-gt v9, v10, :cond_a

    .line 688
    :goto_7
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 689
    .local v12, "e$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .local v13, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v14, 0x0

    .line 530
    .local v14, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabWidth$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v13

    .line 689
    .end local v13    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v14    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabWidth$1":I
    nop

    .line 690
    .local v13, "v$iv":I
    if-ge v4, v13, :cond_9

    .line 691
    move-object v3, v12

    .line 692
    move v4, v13

    .line 687
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":I
    :cond_9
    if-eq v9, v10, :cond_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 695
    .end local v9    # "i$iv":I
    :cond_a
    nop

    .line 530
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v3    # "maxElem$iv":Ljava/lang/Object;
    .end local v4    # "maxValue$iv":I
    :goto_8
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    move v12, v1

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    .line 531
    .local v12, "fabWidth":I
    :goto_9
    move-object/from16 v1, v22

    .restart local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 696
    .restart local v2    # "$i$f$fastMaxBy":I
    nop

    .line 697
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_b

    .line 698
    :cond_c
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 699
    .restart local v3    # "maxElem$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .local v4, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 531
    .local v9, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabHeight$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    .line 699
    .end local v4    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabHeight$1":I
    nop

    .line 700
    .local v4, "maxValue$iv":I
    const/4 v9, 0x1

    .local v9, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v10

    if-gt v9, v10, :cond_e

    .line 701
    :goto_a
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 702
    .local v13, "e$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .local v14, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v15, 0x0

    .line 531
    .local v15, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabHeight$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    .line 702
    .end local v14    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$fabHeight$1":I
    nop

    .line 703
    .local v14, "v$iv":I
    if-ge v4, v14, :cond_d

    .line 704
    move-object v3, v13

    .line 705
    move v4, v14

    .line 700
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "v$iv":I
    :cond_d
    if-eq v9, v10, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 708
    .end local v9    # "i$iv":I
    :cond_e
    nop

    .line 531
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v3    # "maxElem$iv":Ljava/lang/Object;
    .end local v4    # "maxValue$iv":I
    :goto_b
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    move v14, v1

    goto :goto_c

    :cond_f
    const/4 v14, 0x0

    .line 533
    .local v14, "fabHeight":I
    :goto_c
    move-object/from16 v1, p2

    .local v1, "$this$fastMap$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 709
    .local v2, "$i$f$fastMap":I
    nop

    .line 710
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    .local v3, "target$iv":Ljava/util/ArrayList;
    move-object v4, v1

    .local v4, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 712
    .local v9, "$i$f$fastForEach":I
    nop

    .line 713
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    :goto_d
    if-ge v10, v13, :cond_10

    .line 714
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 715
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v15

    .local v23, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 716
    .local v26, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object/from16 v30, v1

    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v30, "$this$fastMap$iv":Ljava/util/List;
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    move/from16 v31, v2

    .end local v2    # "$i$f$fastMap":I
    .local v31, "$i$f$fastMap":I
    move-object/from16 v2, v23

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .local v2, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v32, 0x0

    .line 533
    .local v32, "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarPlaceables$1":I
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    .line 716
    .end local v2    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v32    # "$i$a$-fastMap-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarPlaceables$1":I
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 717
    nop

    .line 715
    .end local v23    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    nop

    .line 713
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    goto :goto_d

    .end local v30    # "$this$fastMap$iv":Ljava/util/List;
    .end local v31    # "$i$f$fastMap":I
    .restart local v1    # "$this$fastMap$iv":Ljava/util/List;
    .local v2, "$i$f$fastMap":I
    :cond_10
    move-object/from16 v30, v1

    move/from16 v31, v2

    .line 718
    .end local v1    # "$this$fastMap$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMap":I
    .end local v10    # "index$iv$iv":I
    .restart local v30    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v31    # "$i$f$fastMap":I
    nop

    .line 719
    .end local v4    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move-object/from16 v23, v3

    check-cast v23, Ljava/util/List;

    .line 533
    .end local v3    # "target$iv":Ljava/util/ArrayList;
    .end local v30    # "$this$fastMap$iv":Ljava/util/List;
    .end local v31    # "$i$f$fastMap":I
    nop

    .line 534
    .local v23, "snackbarPlaceables":Ljava/util/List;
    move-object/from16 v1, v23

    .local v1, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 720
    .local v2, "$i$f$fastMaxBy":I
    nop

    .line 721
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    goto :goto_f

    .line 722
    :cond_11
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 723
    .local v3, "maxElem$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .local v4, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v9, 0x0

    .line 534
    .local v9, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarWidth$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    .line 723
    .end local v4    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v9    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarWidth$1":I
    nop

    .line 724
    .local v4, "maxValue$iv":I
    const/4 v9, 0x1

    .local v9, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v10

    if-gt v9, v10, :cond_13

    .line 725
    :goto_e
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 726
    .restart local v13    # "e$iv":Ljava/lang/Object;
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/layout/Placeable;

    .local v15, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v26, 0x0

    .line 534
    .local v26, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarWidth$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v15

    .line 726
    .end local v15    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v26    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarWidth$1":I
    nop

    .line 727
    .local v15, "v$iv":I
    if-ge v4, v15, :cond_12

    .line 728
    move-object v3, v13

    .line 729
    move v4, v15

    .line 724
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v15    # "v$iv":I
    :cond_12
    if-eq v9, v10, :cond_13

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 732
    .end local v9    # "i$iv":I
    :cond_13
    nop

    .line 534
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v3    # "maxElem$iv":Ljava/lang/Object;
    .end local v4    # "maxValue$iv":I
    :goto_f
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v9

    move v15, v9

    goto :goto_10

    :cond_14
    const/4 v15, 0x0

    .line 535
    .local v15, "snackbarWidth":I
    :goto_10
    move-object/from16 v1, v23

    .restart local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 733
    .restart local v2    # "$i$f$fastMaxBy":I
    nop

    .line 734
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v10, 0x0

    goto :goto_12

    .line 735
    :cond_15
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 736
    .restart local v3    # "maxElem$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .local v4, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v10, 0x0

    .line 535
    .local v10, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarHeight$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    .line 736
    .end local v4    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarHeight$1":I
    nop

    .line 737
    .local v4, "maxValue$iv":I
    const/4 v10, 0x1

    .local v10, "i$iv":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v13

    if-gt v10, v13, :cond_17

    .line 738
    :goto_11
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 739
    .local v16, "e$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Placeable;

    .restart local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v26, 0x0

    .line 535
    .local v26, "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarHeight$1":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v17

    .line 739
    .end local v17    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v26    # "$i$a$-fastMaxBy-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$snackbarHeight$1":I
    move/from16 v26, v17

    .line 740
    .local v26, "v$iv":I
    move/from16 v9, v26

    .end local v26    # "v$iv":I
    .local v9, "v$iv":I
    if-ge v4, v9, :cond_16

    .line 741
    move-object/from16 v3, v16

    .line 742
    move v4, v9

    .line 737
    .end local v9    # "v$iv":I
    .end local v16    # "e$iv":Ljava/lang/Object;
    :cond_16
    if-eq v10, v13, :cond_17

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_11

    :cond_17
    move-object v10, v3

    .line 745
    .end local v3    # "maxElem$iv":Ljava/lang/Object;
    .local v10, "maxElem$iv":Ljava/lang/Object;
    nop

    .line 535
    .end local v1    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastMaxBy":I
    .end local v4    # "maxValue$iv":I
    .end local v10    # "maxElem$iv":Ljava/lang/Object;
    :goto_12
    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    move/from16 v17, v2

    goto :goto_13

    :cond_18
    const/16 v17, 0x0

    .line 537
    .local v17, "snackbarHeight":I
    :goto_13
    move-wide v1, v7

    .end local v7    # "looseConstraints":J
    .local v1, "looseConstraints":J
    new-instance v7, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;

    iget-object v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetOffset:Lkotlin/jvm/functions/Function0;

    iget v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButtonPosition:I

    iget v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetPeekHeight:F

    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    move-object/from16 v10, p1

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v24}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;ILandroidx/compose/ui/layout/MeasureScope;IIFIILandroidx/compose/material/BottomSheetState;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    move v3, v12

    .end local v12    # "fabWidth":I
    .local v3, "fabWidth":I
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x0

    move v8, v11

    move/from16 v9, v18

    move-object v11, v7

    move-object/from16 v7, p1

    .end local v11    # "layoutWidth":I
    .end local v18    # "layoutHeight":I
    .local v8, "layoutWidth":I
    .local v9, "layoutHeight":I
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    move v11, v8

    .end local v8    # "layoutWidth":I
    .end local v9    # "layoutHeight":I
    .restart local v11    # "layoutWidth":I
    .restart local v18    # "layoutHeight":I
    return-object v4
.end method
