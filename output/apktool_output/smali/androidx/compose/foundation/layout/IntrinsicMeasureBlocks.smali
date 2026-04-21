.class public final Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/IntrinsicMeasureBlocks\n+ 2 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,655:1\n377#2,5:656\n382#2,7:664\n390#2:672\n391#2,3:674\n403#2,5:677\n408#2,15:685\n426#2,6:701\n425#2,27:708\n403#2,5:735\n408#2,15:743\n426#2,6:759\n425#2,27:766\n377#2,5:793\n382#2,7:801\n390#2:809\n391#2,3:811\n377#2,5:814\n382#2,7:822\n390#2:830\n391#2,3:832\n403#2,5:835\n408#2,15:843\n426#2,6:859\n425#2,27:866\n403#2,5:893\n408#2,15:901\n426#2,6:917\n425#2,27:924\n377#2,5:951\n382#2,7:959\n390#2:967\n391#2,3:969\n35#3,3:661\n39#3:673\n35#3,3:682\n39#3:700\n35#3,3:740\n39#3:758\n35#3,3:798\n39#3:810\n35#3,3:819\n39#3:831\n35#3,3:840\n39#3:858\n35#3,3:898\n39#3:916\n35#3,3:956\n39#3:968\n26#4:671\n26#4:707\n26#4:765\n26#4:808\n26#4:829\n26#4:865\n26#4:923\n26#4:966\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/IntrinsicMeasureBlocks\n*L\n267#1:656,5\n267#1:664,7\n267#1:672\n267#1:674,3\n280#1:677,5\n280#1:685,15\n280#1:701,6\n280#1:708,27\n294#1:735,5\n294#1:743,15\n294#1:759,6\n294#1:766,27\n308#1:793,5\n308#1:801,7\n308#1:809\n308#1:811,3\n321#1:814,5\n321#1:822,7\n321#1:830\n321#1:832,3\n334#1:835,5\n334#1:843,15\n334#1:859,6\n334#1:866,27\n348#1:893,5\n348#1:901,15\n348#1:917,6\n348#1:924,27\n362#1:951,5\n362#1:959,7\n362#1:967\n362#1:969,3\n267#1:661,3\n267#1:673\n280#1:682,3\n280#1:700\n294#1:740,3\n294#1:758\n308#1:798,3\n308#1:810\n321#1:819,3\n321#1:831\n334#1:840,3\n334#1:858\n348#1:898,3\n348#1:916\n362#1:956,3\n362#1:968\n267#1:671\n280#1:707\n294#1:765\n308#1:808\n321#1:829\n334#1:865\n348#1:923\n362#1:966\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u000e\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u000f\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u0011\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J$\u0010\u0012\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;",
        "",
        "<init>",
        "()V",
        "HorizontalMinWidth",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "availableHeight",
        "mainAxisSpacing",
        "VerticalMinWidth",
        "HorizontalMinHeight",
        "availableWidth",
        "VerticalMinHeight",
        "HorizontalMaxWidth",
        "VerticalMaxWidth",
        "HorizontalMaxHeight",
        "VerticalMaxHeight",
        "foundation-layout"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HorizontalMaxHeight(Ljava/util/List;II)I
    .locals 21
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableWidth"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 349
    nop

    .line 352
    nop

    .line 353
    nop

    .line 348
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "mainAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 893
    .local v3, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 894
    :cond_0
    const/4 v4, 0x0

    .local v4, "fixedSpace$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 895
    const/4 v6, 0x0

    .line 896
    .local v6, "crossAxisMax$iv":I
    const/4 v8, 0x0

    .line 897
    .local v8, "totalWeight$iv":F
    move-object v9, v1

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 898
    .local v10, "$i$f$fastForEach":I
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_0
    const/4 v13, 0x0

    const v14, 0x7fffffff

    if-ge v11, v12, :cond_5

    .line 899
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 900
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 901
    .local v17, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v18

    .line 902
    .local v18, "weight$iv":F
    cmpg-float v19, v18, v13

    if-nez v19, :cond_1

    move/from16 v19, v7

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz v19, :cond_3

    .line 906
    if-ne v2, v14, :cond_2

    goto :goto_2

    .line 907
    :cond_2
    sub-int v14, v2, v4

    .line 906
    :goto_2
    nop

    .line 905
    nop

    .line 908
    .local v14, "remaining$iv":I
    const v13, 0x7fffffff

    .local v13, "h":I
    move-object/from16 v19, v16

    .local v19, "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 350
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$1":I
    move-object/from16 v7, v20

    .end local v20    # "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v7, "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v7, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 908
    .end local v7    # "$this$HorizontalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "h":I
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$1":I
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 909
    .local v7, "mainAxisSpace$iv":I
    add-int/2addr v4, v7

    .line 911
    move v13, v7

    .local v13, "w":I
    move-object/from16 v19, v16

    .local v19, "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v20, 0x0

    .line 351
    .local v20, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$2":I
    move-object/from16 v5, v19

    .end local v19    # "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v5, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    .line 911
    .end local v5    # "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "w":I
    .end local v20    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$2":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .end local v6    # "crossAxisMax$iv":I
    .end local v7    # "mainAxisSpace$iv":I
    .end local v14    # "remaining$iv":I
    .local v5, "crossAxisMax$iv":I
    goto :goto_3

    .line 912
    .end local v5    # "crossAxisMax$iv":I
    .restart local v6    # "crossAxisMax$iv":I
    :cond_3
    cmpl-float v5, v18, v13

    if-lez v5, :cond_4

    .line 913
    add-float v8, v8, v18

    .line 915
    :cond_4
    :goto_3
    nop

    .line 900
    .end local v16    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    .end local v18    # "weight$iv":F
    nop

    .line 898
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 916
    .end local v11    # "index$iv$iv":I
    :cond_5
    nop

    .line 917
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    cmpg-float v5, v8, v13

    if-nez v5, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 918
    const/4 v5, 0x0

    goto :goto_5

    .line 919
    :cond_7
    if-ne v2, v14, :cond_8

    .line 920
    move v5, v14

    goto :goto_5

    .line 922
    :cond_8
    sub-int v5, v2, v4

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v7, 0x0

    .line 923
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v5, v9

    .line 917
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    :goto_5
    nop

    .line 924
    nop

    .line 933
    .local v5, "weightUnitSpace$iv":I
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 898
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_6
    if-ge v10, v11, :cond_b

    .line 899
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 900
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 934
    .local v16, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v17

    .line 936
    .local v17, "weight$iv":F
    cmpl-float v18, v17, v13

    if-lez v18, :cond_a

    .line 937
    nop

    .line 939
    nop

    .line 940
    nop

    .line 941
    if-eq v5, v14, :cond_9

    .line 942
    int-to-float v13, v5

    mul-float v13, v13, v17

    .local v13, "$this$fastRoundToInt$iv$iv":F
    const/16 v19, 0x0

    .line 923
    .local v19, "$i$f$fastRoundToInt":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .end local v13    # "$this$fastRoundToInt$iv$iv":F
    .end local v19    # "$i$f$fastRoundToInt":I
    goto :goto_7

    .line 944
    :cond_9
    move v13, v14

    .line 940
    :goto_7
    move-object/from16 v19, v15

    .local v13, "w":I
    .local v19, "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 351
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$2":I
    move-object/from16 v14, v20

    .end local v20    # "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v14, "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v14, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v13

    .line 940
    .end local v13    # "w":I
    .end local v14    # "$this$HorizontalMaxHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMaxHeight$2":I
    nop

    .line 938
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 937
    move v6, v13

    .line 949
    :cond_a
    nop

    .line 900
    .end local v15    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    .end local v17    # "weight$iv":F
    nop

    .line 898
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    const v14, 0x7fffffff

    goto :goto_6

    .line 916
    .end local v10    # "index$iv$iv":I
    :cond_b
    nop

    .line 950
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move v5, v6

    .line 348
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "mainAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicCrossAxisSize":I
    .end local v4    # "fixedSpace$iv":I
    .end local v5    # "weightUnitSpace$iv":I
    .end local v6    # "crossAxisMax$iv":I
    .end local v8    # "totalWeight$iv":F
    :goto_8
    return v5
.end method

.method public final HorizontalMaxWidth(Ljava/util/List;II)I
    .locals 20
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableHeight"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 322
    nop

    .line 324
    nop

    .line 325
    nop

    .line 321
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "crossAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 814
    .local v3, "$i$f$intrinsicMainAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    .line 815
    :cond_0
    const/4 v4, 0x0

    .line 816
    .local v4, "weightUnitSpace$iv":I
    const/4 v6, 0x0

    .line 817
    .local v6, "fixedSpace$iv":I
    const/4 v7, 0x0

    .line 818
    .local v7, "totalWeight$iv":F
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 819
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_4

    .line 820
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 821
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 822
    .local v15, "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    invoke-static {v14}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v16

    .line 823
    .local v16, "weight$iv":F
    move-object/from16 v17, v14

    .local v17, "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move/from16 v18, v2

    .local v18, "h":I
    move-object/from16 v19, v17

    .end local v17    # "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v19, "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 323
    .local v17, "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$HorizontalMaxWidth$1":I
    move/from16 v5, v18

    move-object/from16 v12, v19

    const/16 v18, 0x1

    .end local v18    # "h":I
    .end local v19    # "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "h":I
    .local v12, "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v12, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 823
    .end local v5    # "h":I
    .end local v12    # "$this$HorizontalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$HorizontalMaxWidth$1":I
    nop

    .line 824
    .local v5, "size$iv":I
    const/4 v12, 0x0

    cmpg-float v17, v16, v12

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    if-eqz v18, :cond_2

    .line 825
    add-int/2addr v6, v5

    goto :goto_2

    .line 826
    :cond_2
    cmpl-float v12, v16, v12

    if-lez v12, :cond_3

    .line 827
    add-float v7, v7, v16

    .line 828
    int-to-float v12, v5

    div-float v12, v12, v16

    .local v12, "$this$fastRoundToInt$iv$iv":F
    const/16 v17, 0x0

    .line 829
    .local v17, "$i$f$fastRoundToInt":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 828
    .end local v12    # "$this$fastRoundToInt$iv$iv":F
    .end local v17    # "$i$f$fastRoundToInt":I
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 830
    :cond_3
    :goto_2
    nop

    .line 821
    .end local v5    # "size$iv":I
    .end local v14    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    .end local v16    # "weight$iv":F
    nop

    .line 819
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    .line 831
    .end local v10    # "index$iv$iv":I
    nop

    .line 832
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    int-to-float v5, v4

    mul-float/2addr v5, v7

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v8, 0x0

    .line 829
    .local v8, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 833
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v8    # "$i$f$fastRoundToInt":I
    nop

    .line 832
    add-int/2addr v5, v6

    .line 834
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v0

    .line 832
    add-int/2addr v5, v8

    .line 321
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "crossAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicMainAxisSize":I
    .end local v4    # "weightUnitSpace$iv":I
    .end local v6    # "fixedSpace$iv":I
    .end local v7    # "totalWeight$iv":F
    :goto_3
    return v5
.end method

.method public final HorizontalMinHeight(Ljava/util/List;II)I
    .locals 21
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableWidth"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 295
    nop

    .line 298
    nop

    .line 299
    nop

    .line 294
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "mainAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 735
    .local v3, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 736
    :cond_0
    const/4 v4, 0x0

    .local v4, "fixedSpace$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 737
    const/4 v6, 0x0

    .line 738
    .local v6, "crossAxisMax$iv":I
    const/4 v8, 0x0

    .line 739
    .local v8, "totalWeight$iv":F
    move-object v9, v1

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 740
    .local v10, "$i$f$fastForEach":I
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_0
    const/4 v13, 0x0

    const v14, 0x7fffffff

    if-ge v11, v12, :cond_5

    .line 741
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 742
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 743
    .local v17, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v18

    .line 744
    .local v18, "weight$iv":F
    cmpg-float v19, v18, v13

    if-nez v19, :cond_1

    move/from16 v19, v7

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz v19, :cond_3

    .line 748
    if-ne v2, v14, :cond_2

    goto :goto_2

    .line 749
    :cond_2
    sub-int v14, v2, v4

    .line 748
    :goto_2
    nop

    .line 747
    nop

    .line 750
    .local v14, "remaining$iv":I
    const v13, 0x7fffffff

    .local v13, "h":I
    move-object/from16 v19, v16

    .local v19, "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 296
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$1":I
    move-object/from16 v7, v20

    .end local v20    # "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v7, "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v7, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 750
    .end local v7    # "$this$HorizontalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "h":I
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$1":I
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 751
    .local v7, "mainAxisSpace$iv":I
    add-int/2addr v4, v7

    .line 753
    move v13, v7

    .local v13, "w":I
    move-object/from16 v19, v16

    .local v19, "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v20, 0x0

    .line 297
    .local v20, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$2":I
    move-object/from16 v5, v19

    .end local v19    # "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v5, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v5

    .line 753
    .end local v5    # "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "w":I
    .end local v20    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$2":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .end local v6    # "crossAxisMax$iv":I
    .end local v7    # "mainAxisSpace$iv":I
    .end local v14    # "remaining$iv":I
    .local v5, "crossAxisMax$iv":I
    goto :goto_3

    .line 754
    .end local v5    # "crossAxisMax$iv":I
    .restart local v6    # "crossAxisMax$iv":I
    :cond_3
    cmpl-float v5, v18, v13

    if-lez v5, :cond_4

    .line 755
    add-float v8, v8, v18

    .line 757
    :cond_4
    :goto_3
    nop

    .line 742
    .end local v16    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    .end local v18    # "weight$iv":F
    nop

    .line 740
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 758
    .end local v11    # "index$iv$iv":I
    :cond_5
    nop

    .line 759
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    cmpg-float v5, v8, v13

    if-nez v5, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 760
    const/4 v5, 0x0

    goto :goto_5

    .line 761
    :cond_7
    if-ne v2, v14, :cond_8

    .line 762
    move v5, v14

    goto :goto_5

    .line 764
    :cond_8
    sub-int v5, v2, v4

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v7, 0x0

    .line 765
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v5, v9

    .line 759
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    :goto_5
    nop

    .line 766
    nop

    .line 775
    .local v5, "weightUnitSpace$iv":I
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 740
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_6
    if-ge v10, v11, :cond_b

    .line 741
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 742
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 776
    .local v16, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v17

    .line 778
    .local v17, "weight$iv":F
    cmpl-float v18, v17, v13

    if-lez v18, :cond_a

    .line 779
    nop

    .line 781
    nop

    .line 782
    nop

    .line 783
    if-eq v5, v14, :cond_9

    .line 784
    int-to-float v13, v5

    mul-float v13, v13, v17

    .local v13, "$this$fastRoundToInt$iv$iv":F
    const/16 v19, 0x0

    .line 765
    .local v19, "$i$f$fastRoundToInt":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .end local v13    # "$this$fastRoundToInt$iv$iv":F
    .end local v19    # "$i$f$fastRoundToInt":I
    goto :goto_7

    .line 786
    :cond_9
    move v13, v14

    .line 782
    :goto_7
    move-object/from16 v19, v15

    .local v13, "w":I
    .local v19, "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 297
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$2":I
    move-object/from16 v14, v20

    .end local v20    # "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v14, "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v14, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v13

    .line 782
    .end local v13    # "w":I
    .end local v14    # "$this$HorizontalMinHeight_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$HorizontalMinHeight$2":I
    nop

    .line 780
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 779
    move v6, v13

    .line 791
    :cond_a
    nop

    .line 742
    .end local v15    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    .end local v17    # "weight$iv":F
    nop

    .line 740
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    const v14, 0x7fffffff

    goto :goto_6

    .line 758
    .end local v10    # "index$iv$iv":I
    :cond_b
    nop

    .line 792
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move v5, v6

    .line 294
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "mainAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicCrossAxisSize":I
    .end local v4    # "fixedSpace$iv":I
    .end local v5    # "weightUnitSpace$iv":I
    .end local v6    # "crossAxisMax$iv":I
    .end local v8    # "totalWeight$iv":F
    :goto_8
    return v5
.end method

.method public final HorizontalMinWidth(Ljava/util/List;II)I
    .locals 20
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableHeight"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 268
    nop

    .line 270
    nop

    .line 271
    nop

    .line 267
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "crossAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 656
    .local v3, "$i$f$intrinsicMainAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    .line 657
    :cond_0
    const/4 v4, 0x0

    .line 658
    .local v4, "weightUnitSpace$iv":I
    const/4 v6, 0x0

    .line 659
    .local v6, "fixedSpace$iv":I
    const/4 v7, 0x0

    .line 660
    .local v7, "totalWeight$iv":F
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 661
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_4

    .line 662
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 663
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 664
    .local v15, "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    invoke-static {v14}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v16

    .line 665
    .local v16, "weight$iv":F
    move-object/from16 v17, v14

    .local v17, "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move/from16 v18, v2

    .local v18, "h":I
    move-object/from16 v19, v17

    .end local v17    # "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v19, "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 269
    .local v17, "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$HorizontalMinWidth$1":I
    move/from16 v5, v18

    move-object/from16 v12, v19

    const/16 v18, 0x1

    .end local v18    # "h":I
    .end local v19    # "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "h":I
    .local v12, "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v12, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v5

    .line 665
    .end local v5    # "h":I
    .end local v12    # "$this$HorizontalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$HorizontalMinWidth$1":I
    nop

    .line 666
    .local v5, "size$iv":I
    const/4 v12, 0x0

    cmpg-float v17, v16, v12

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    if-eqz v18, :cond_2

    .line 667
    add-int/2addr v6, v5

    goto :goto_2

    .line 668
    :cond_2
    cmpl-float v12, v16, v12

    if-lez v12, :cond_3

    .line 669
    add-float v7, v7, v16

    .line 670
    int-to-float v12, v5

    div-float v12, v12, v16

    .local v12, "$this$fastRoundToInt$iv$iv":F
    const/16 v17, 0x0

    .line 671
    .local v17, "$i$f$fastRoundToInt":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 670
    .end local v12    # "$this$fastRoundToInt$iv$iv":F
    .end local v17    # "$i$f$fastRoundToInt":I
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 672
    :cond_3
    :goto_2
    nop

    .line 663
    .end local v5    # "size$iv":I
    .end local v14    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    .end local v16    # "weight$iv":F
    nop

    .line 661
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    .line 673
    .end local v10    # "index$iv$iv":I
    nop

    .line 674
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    int-to-float v5, v4

    mul-float/2addr v5, v7

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v8, 0x0

    .line 671
    .local v8, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 675
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v8    # "$i$f$fastRoundToInt":I
    nop

    .line 674
    add-int/2addr v5, v6

    .line 676
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v0

    .line 674
    add-int/2addr v5, v8

    .line 267
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "crossAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicMainAxisSize":I
    .end local v4    # "weightUnitSpace$iv":I
    .end local v6    # "fixedSpace$iv":I
    .end local v7    # "totalWeight$iv":F
    :goto_3
    return v5
.end method

.method public final VerticalMaxHeight(Ljava/util/List;II)I
    .locals 20
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableWidth"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 363
    nop

    .line 365
    nop

    .line 366
    nop

    .line 362
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "crossAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 951
    .local v3, "$i$f$intrinsicMainAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    .line 952
    :cond_0
    const/4 v4, 0x0

    .line 953
    .local v4, "weightUnitSpace$iv":I
    const/4 v6, 0x0

    .line 954
    .local v6, "fixedSpace$iv":I
    const/4 v7, 0x0

    .line 955
    .local v7, "totalWeight$iv":F
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 956
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_4

    .line 957
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 958
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 959
    .local v15, "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    invoke-static {v14}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v16

    .line 960
    .local v16, "weight$iv":F
    move-object/from16 v17, v14

    .local v17, "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move/from16 v18, v2

    .local v18, "w":I
    move-object/from16 v19, v17

    .end local v17    # "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v19, "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 364
    .local v17, "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$VerticalMaxHeight$1":I
    move/from16 v5, v18

    move-object/from16 v12, v19

    const/16 v18, 0x1

    .end local v18    # "w":I
    .end local v19    # "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "w":I
    .local v12, "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v12, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5

    .line 960
    .end local v5    # "w":I
    .end local v12    # "$this$VerticalMaxHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$VerticalMaxHeight$1":I
    nop

    .line 961
    .local v5, "size$iv":I
    const/4 v12, 0x0

    cmpg-float v17, v16, v12

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    if-eqz v18, :cond_2

    .line 962
    add-int/2addr v6, v5

    goto :goto_2

    .line 963
    :cond_2
    cmpl-float v12, v16, v12

    if-lez v12, :cond_3

    .line 964
    add-float v7, v7, v16

    .line 965
    int-to-float v12, v5

    div-float v12, v12, v16

    .local v12, "$this$fastRoundToInt$iv$iv":F
    const/16 v17, 0x0

    .line 966
    .local v17, "$i$f$fastRoundToInt":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 965
    .end local v12    # "$this$fastRoundToInt$iv$iv":F
    .end local v17    # "$i$f$fastRoundToInt":I
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 967
    :cond_3
    :goto_2
    nop

    .line 958
    .end local v5    # "size$iv":I
    .end local v14    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    .end local v16    # "weight$iv":F
    nop

    .line 956
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    .line 968
    .end local v10    # "index$iv$iv":I
    nop

    .line 969
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    int-to-float v5, v4

    mul-float/2addr v5, v7

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v8, 0x0

    .line 966
    .local v8, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 970
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v8    # "$i$f$fastRoundToInt":I
    nop

    .line 969
    add-int/2addr v5, v6

    .line 971
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v0

    .line 969
    add-int/2addr v5, v8

    .line 362
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "crossAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicMainAxisSize":I
    .end local v4    # "weightUnitSpace$iv":I
    .end local v6    # "fixedSpace$iv":I
    .end local v7    # "totalWeight$iv":F
    :goto_3
    return v5
.end method

.method public final VerticalMaxWidth(Ljava/util/List;II)I
    .locals 21
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableHeight"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 335
    nop

    .line 338
    nop

    .line 339
    nop

    .line 334
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "mainAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 835
    .local v3, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 836
    :cond_0
    const/4 v4, 0x0

    .local v4, "fixedSpace$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 837
    const/4 v6, 0x0

    .line 838
    .local v6, "crossAxisMax$iv":I
    const/4 v8, 0x0

    .line 839
    .local v8, "totalWeight$iv":F
    move-object v9, v1

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 840
    .local v10, "$i$f$fastForEach":I
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_0
    const/4 v13, 0x0

    const v14, 0x7fffffff

    if-ge v11, v12, :cond_5

    .line 841
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 842
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 843
    .local v17, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v18

    .line 844
    .local v18, "weight$iv":F
    cmpg-float v19, v18, v13

    if-nez v19, :cond_1

    move/from16 v19, v7

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz v19, :cond_3

    .line 848
    if-ne v2, v14, :cond_2

    goto :goto_2

    .line 849
    :cond_2
    sub-int v14, v2, v4

    .line 848
    :goto_2
    nop

    .line 847
    nop

    .line 850
    .local v14, "remaining$iv":I
    const v13, 0x7fffffff

    .local v13, "w":I
    move-object/from16 v19, v16

    .local v19, "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 336
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$1":I
    move-object/from16 v7, v20

    .end local v20    # "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v7, "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v7, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v7

    .line 850
    .end local v7    # "$this$VerticalMaxWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "w":I
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$1":I
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 851
    .local v7, "mainAxisSpace$iv":I
    add-int/2addr v4, v7

    .line 853
    move v13, v7

    .local v13, "h":I
    move-object/from16 v19, v16

    .local v19, "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v20, 0x0

    .line 337
    .local v20, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$2":I
    move-object/from16 v5, v19

    .end local v19    # "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v5, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    .line 853
    .end local v5    # "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "h":I
    .end local v20    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$2":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .end local v6    # "crossAxisMax$iv":I
    .end local v7    # "mainAxisSpace$iv":I
    .end local v14    # "remaining$iv":I
    .local v5, "crossAxisMax$iv":I
    goto :goto_3

    .line 854
    .end local v5    # "crossAxisMax$iv":I
    .restart local v6    # "crossAxisMax$iv":I
    :cond_3
    cmpl-float v5, v18, v13

    if-lez v5, :cond_4

    .line 855
    add-float v8, v8, v18

    .line 857
    :cond_4
    :goto_3
    nop

    .line 842
    .end local v16    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    .end local v18    # "weight$iv":F
    nop

    .line 840
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 858
    .end local v11    # "index$iv$iv":I
    :cond_5
    nop

    .line 859
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    cmpg-float v5, v8, v13

    if-nez v5, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 860
    const/4 v5, 0x0

    goto :goto_5

    .line 861
    :cond_7
    if-ne v2, v14, :cond_8

    .line 862
    move v5, v14

    goto :goto_5

    .line 864
    :cond_8
    sub-int v5, v2, v4

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v7, 0x0

    .line 865
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v5, v9

    .line 859
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    :goto_5
    nop

    .line 866
    nop

    .line 875
    .local v5, "weightUnitSpace$iv":I
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 840
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_6
    if-ge v10, v11, :cond_b

    .line 841
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 842
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 876
    .local v16, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v17

    .line 878
    .local v17, "weight$iv":F
    cmpl-float v18, v17, v13

    if-lez v18, :cond_a

    .line 879
    nop

    .line 881
    nop

    .line 882
    nop

    .line 883
    if-eq v5, v14, :cond_9

    .line 884
    int-to-float v13, v5

    mul-float v13, v13, v17

    .local v13, "$this$fastRoundToInt$iv$iv":F
    const/16 v19, 0x0

    .line 865
    .local v19, "$i$f$fastRoundToInt":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .end local v13    # "$this$fastRoundToInt$iv$iv":F
    .end local v19    # "$i$f$fastRoundToInt":I
    goto :goto_7

    .line 886
    :cond_9
    move v13, v14

    .line 882
    :goto_7
    move-object/from16 v19, v15

    .local v13, "h":I
    .local v19, "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 337
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$2":I
    move-object/from16 v14, v20

    .end local v20    # "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v14, "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v14, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v13

    .line 882
    .end local v13    # "h":I
    .end local v14    # "$this$VerticalMaxWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMaxWidth$2":I
    nop

    .line 880
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 879
    move v6, v13

    .line 891
    :cond_a
    nop

    .line 842
    .end local v15    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    .end local v17    # "weight$iv":F
    nop

    .line 840
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    const v14, 0x7fffffff

    goto :goto_6

    .line 858
    .end local v10    # "index$iv$iv":I
    :cond_b
    nop

    .line 892
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move v5, v6

    .line 334
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "mainAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicCrossAxisSize":I
    .end local v4    # "fixedSpace$iv":I
    .end local v5    # "weightUnitSpace$iv":I
    .end local v6    # "crossAxisMax$iv":I
    .end local v8    # "totalWeight$iv":F
    :goto_8
    return v5
.end method

.method public final VerticalMinHeight(Ljava/util/List;II)I
    .locals 20
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableWidth"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 309
    nop

    .line 311
    nop

    .line 312
    nop

    .line 308
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "crossAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 793
    .local v3, "$i$f$intrinsicMainAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    .line 794
    :cond_0
    const/4 v4, 0x0

    .line 795
    .local v4, "weightUnitSpace$iv":I
    const/4 v6, 0x0

    .line 796
    .local v6, "fixedSpace$iv":I
    const/4 v7, 0x0

    .line 797
    .local v7, "totalWeight$iv":F
    move-object v8, v1

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 798
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_4

    .line 799
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 800
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v14, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 801
    .local v15, "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    invoke-static {v14}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v16

    .line 802
    .local v16, "weight$iv":F
    move-object/from16 v17, v14

    .local v17, "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move/from16 v18, v2

    .local v18, "w":I
    move-object/from16 v19, v17

    .end local v17    # "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v19, "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 310
    .local v17, "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$VerticalMinHeight$1":I
    move/from16 v5, v18

    move-object/from16 v12, v19

    const/16 v18, 0x1

    .end local v18    # "w":I
    .end local v19    # "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "w":I
    .local v12, "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v12, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v5

    .line 802
    .end local v5    # "w":I
    .end local v12    # "$this$VerticalMinHeight_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-intrinsicMainAxisSize-IntrinsicMeasureBlocks$VerticalMinHeight$1":I
    nop

    .line 803
    .local v5, "size$iv":I
    const/4 v12, 0x0

    cmpg-float v17, v16, v12

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    if-eqz v18, :cond_2

    .line 804
    add-int/2addr v6, v5

    goto :goto_2

    .line 805
    :cond_2
    cmpl-float v12, v16, v12

    if-lez v12, :cond_3

    .line 806
    add-float v7, v7, v16

    .line 807
    int-to-float v12, v5

    div-float v12, v12, v16

    .local v12, "$this$fastRoundToInt$iv$iv":F
    const/16 v17, 0x0

    .line 808
    .local v17, "$i$f$fastRoundToInt":I
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 807
    .end local v12    # "$this$fastRoundToInt$iv$iv":F
    .end local v17    # "$i$f$fastRoundToInt":I
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 809
    :cond_3
    :goto_2
    nop

    .line 800
    .end local v5    # "size$iv":I
    .end local v14    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicMainAxisSize$1$iv":I
    .end local v16    # "weight$iv":F
    nop

    .line 798
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    .line 810
    .end local v10    # "index$iv$iv":I
    nop

    .line 811
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    int-to-float v5, v4

    mul-float/2addr v5, v7

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v8, 0x0

    .line 808
    .local v8, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 812
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v8    # "$i$f$fastRoundToInt":I
    nop

    .line 811
    add-int/2addr v5, v6

    .line 813
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v0

    .line 811
    add-int/2addr v5, v8

    .line 308
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "crossAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicMainAxisSize":I
    .end local v4    # "weightUnitSpace$iv":I
    .end local v6    # "fixedSpace$iv":I
    .end local v7    # "totalWeight$iv":F
    :goto_3
    return v5
.end method

.method public final VerticalMinWidth(Ljava/util/List;II)I
    .locals 21
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "availableHeight"    # I
    .param p3, "mainAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 281
    nop

    .line 284
    nop

    .line 285
    nop

    .line 280
    move/from16 v0, p3

    .local v0, "mainAxisSpacing$iv":I
    move-object/from16 v1, p1

    .local v1, "children$iv":Ljava/util/List;
    move/from16 v2, p2

    .local v2, "mainAxisAvailable$iv":I
    const/4 v3, 0x0

    .line 677
    .local v3, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 678
    :cond_0
    const/4 v4, 0x0

    .local v4, "fixedSpace$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 679
    const/4 v6, 0x0

    .line 680
    .local v6, "crossAxisMax$iv":I
    const/4 v8, 0x0

    .line 681
    .local v8, "totalWeight$iv":F
    move-object v9, v1

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 682
    .local v10, "$i$f$fastForEach":I
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_0
    const/4 v13, 0x0

    const v14, 0x7fffffff

    if-ge v11, v12, :cond_5

    .line 683
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 684
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v16, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v17, 0x0

    .line 685
    .local v17, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v18

    .line 686
    .local v18, "weight$iv":F
    cmpg-float v19, v18, v13

    if-nez v19, :cond_1

    move/from16 v19, v7

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz v19, :cond_3

    .line 690
    if-ne v2, v14, :cond_2

    goto :goto_2

    .line 691
    :cond_2
    sub-int v14, v2, v4

    .line 690
    :goto_2
    nop

    .line 689
    nop

    .line 692
    .local v14, "remaining$iv":I
    const v13, 0x7fffffff

    .local v13, "w":I
    move-object/from16 v19, v16

    .local v19, "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 282
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$1":I
    move-object/from16 v7, v20

    .end local v20    # "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v7, "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v7, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v7

    .line 692
    .end local v7    # "$this$VerticalMinWidth_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "w":I
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$1":I
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 693
    .local v7, "mainAxisSpace$iv":I
    add-int/2addr v4, v7

    .line 695
    move v13, v7

    .local v13, "h":I
    move-object/from16 v19, v16

    .local v19, "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v20, 0x0

    .line 283
    .local v20, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$2":I
    move-object/from16 v5, v19

    .end local v19    # "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v5, "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v5, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v5

    .line 695
    .end local v5    # "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v13    # "h":I
    .end local v20    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$2":I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .end local v6    # "crossAxisMax$iv":I
    .end local v7    # "mainAxisSpace$iv":I
    .end local v14    # "remaining$iv":I
    .local v5, "crossAxisMax$iv":I
    goto :goto_3

    .line 696
    .end local v5    # "crossAxisMax$iv":I
    .restart local v6    # "crossAxisMax$iv":I
    :cond_3
    cmpl-float v5, v18, v13

    if-lez v5, :cond_4

    .line 697
    add-float v8, v8, v18

    .line 699
    :cond_4
    :goto_3
    nop

    .line 684
    .end local v16    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v17    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$1$iv":I
    .end local v18    # "weight$iv":F
    nop

    .line 682
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 700
    .end local v11    # "index$iv$iv":I
    :cond_5
    nop

    .line 701
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    cmpg-float v5, v8, v13

    if-nez v5, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 702
    const/4 v5, 0x0

    goto :goto_5

    .line 703
    :cond_7
    if-ne v2, v14, :cond_8

    .line 704
    move v5, v14

    goto :goto_5

    .line 706
    :cond_8
    sub-int v5, v2, v4

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    .local v5, "$this$fastRoundToInt$iv$iv":F
    const/4 v7, 0x0

    .line 707
    .local v7, "$i$f$fastRoundToInt":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v5, v9

    .line 701
    .end local v5    # "$this$fastRoundToInt$iv$iv":F
    .end local v7    # "$i$f$fastRoundToInt":I
    :goto_5
    nop

    .line 708
    nop

    .line 717
    .local v5, "weightUnitSpace$iv":I
    move-object v7, v1

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 682
    .local v9, "$i$f$fastForEach":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_6
    if-ge v10, v11, :cond_b

    .line 683
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 684
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v15, "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v16, 0x0

    .line 718
    .local v16, "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v17

    .line 720
    .local v17, "weight$iv":F
    cmpl-float v18, v17, v13

    if-lez v18, :cond_a

    .line 721
    nop

    .line 723
    nop

    .line 724
    nop

    .line 725
    if-eq v5, v14, :cond_9

    .line 726
    int-to-float v13, v5

    mul-float v13, v13, v17

    .local v13, "$this$fastRoundToInt$iv$iv":F
    const/16 v19, 0x0

    .line 707
    .local v19, "$i$f$fastRoundToInt":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .end local v13    # "$this$fastRoundToInt$iv$iv":F
    .end local v19    # "$i$f$fastRoundToInt":I
    goto :goto_7

    .line 728
    :cond_9
    move v13, v14

    .line 724
    :goto_7
    move-object/from16 v19, v15

    .local v13, "h":I
    .local v19, "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move-object/from16 v20, v19

    .end local v19    # "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v20, "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 283
    .local v19, "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$2":I
    move-object/from16 v14, v20

    .end local v20    # "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v14, "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-interface {v14, v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v13

    .line 724
    .end local v13    # "h":I
    .end local v14    # "$this$VerticalMinWidth_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-IntrinsicMeasureBlocks$VerticalMinWidth$2":I
    nop

    .line 722
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 721
    move v6, v13

    .line 733
    :cond_a
    nop

    .line 684
    .end local v15    # "child$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v16    # "$i$a$-fastForEach-RowColumnImplKt$intrinsicCrossAxisSize$2$iv":I
    .end local v17    # "weight$iv":F
    nop

    .line 682
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    const v14, 0x7fffffff

    goto :goto_6

    .line 700
    .end local v10    # "index$iv$iv":I
    :cond_b
    nop

    .line 734
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move v5, v6

    .line 280
    .end local v0    # "mainAxisSpacing$iv":I
    .end local v1    # "children$iv":Ljava/util/List;
    .end local v2    # "mainAxisAvailable$iv":I
    .end local v3    # "$i$f$intrinsicCrossAxisSize":I
    .end local v4    # "fixedSpace$iv":I
    .end local v5    # "weightUnitSpace$iv":I
    .end local v6    # "crossAxisMax$iv":I
    .end local v8    # "totalWeight$iv":F
    :goto_8
    return v5
.end method
