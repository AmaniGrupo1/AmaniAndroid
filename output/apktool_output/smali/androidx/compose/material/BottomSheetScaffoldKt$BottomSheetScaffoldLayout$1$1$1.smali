.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,625:1\n33#2,6:626\n33#2,6:632\n33#2,6:638\n33#2,6:644\n33#2,6:650\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1\n*L\n558#1:626,6\n559#1:632,6\n560#1:638,6\n561#1:644,6\n562#1:650,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
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
.field final synthetic $bodyPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fabHeight:I

.field final synthetic $fabPlaceable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fabWidth:I

.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $layoutHeight:I

.field final synthetic $layoutWidth:I

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

.field final synthetic $sheetPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetState:Landroidx/compose/material/BottomSheetState;

.field final synthetic $snackbarHeight:I

.field final synthetic $snackbarPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarWidth:I

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $topBarHeight:I

.field final synthetic $topBarPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;ILandroidx/compose/ui/layout/MeasureScope;IIFIILandroidx/compose/material/BottomSheetState;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "IIFII",
            "Landroidx/compose/material/BottomSheetState;",
            "II",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffset:Lkotlin/jvm/functions/Function0;

    move/from16 v2, p2

    iput v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$floatingActionButtonPosition:I

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    move/from16 v4, p4

    iput v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$layoutWidth:I

    move/from16 v5, p5

    iput v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabWidth:I

    move/from16 v6, p6

    iput v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPeekHeight:F

    move/from16 v7, p7

    iput v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabHeight:I

    move/from16 v8, p8

    iput v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarWidth:I

    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    move/from16 v10, p10

    iput v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarHeight:I

    move/from16 v11, p11

    iput v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$layoutHeight:I

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceables:Ljava/util/List;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceables:Ljava/util/List;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceables:Ljava/util/List;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabPlaceable:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 537
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 26
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffset:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 540
    .local v1, "sheetOffsetY":I
    iget v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$floatingActionButtonPosition:I

    .line 541
    sget-object v3, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v3}, Landroidx/compose/material/FabPosition$Companion;->getStart-5ygKITE()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/material/FabPosition;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {}, Landroidx/compose/material/BottomSheetScaffoldKt;->access$getFabSpacing$p()F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_0

    .line 542
    :cond_0
    sget-object v3, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v3}, Landroidx/compose/material/FabPosition$Companion;->getCenter-5ygKITE()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/material/FabPosition;->equals-impl0(II)Z

    move-result v2

    .line 543
    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$layoutWidth:I

    .line 542
    if-eqz v2, :cond_1

    iget v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabWidth:I

    sub-int/2addr v3, v2

    div-int/lit8 v2, v3, 0x2

    goto :goto_0

    .line 543
    :cond_1
    iget v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabWidth:I

    sub-int/2addr v3, v2

    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {}, Landroidx/compose/material/BottomSheetScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v2, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int v2, v3, v2

    .line 540
    :goto_0
    move v5, v2

    .line 547
    .local v5, "fabOffsetX":I
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPeekHeight:F

    invoke-interface {v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    .line 549
    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabHeight:I

    .line 547
    if-gez v2, :cond_2

    .line 548
    sub-int v2, v1, v3

    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {}, Landroidx/compose/material/BottomSheetScaffoldKt;->access$getFabSpacing$p()F

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    sub-int/2addr v2, v3

    move v6, v2

    goto :goto_1

    .line 549
    :cond_2
    div-int/lit8 v3, v3, 0x2

    sub-int v2, v1, v3

    move v6, v2

    .line 547
    :goto_1
    nop

    .line 551
    .local v6, "fabOffsetY":I
    iget v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$layoutWidth:I

    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 552
    .local v2, "snackbarOffsetX":I
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    invoke-virtual {v3}, Landroidx/compose/material/BottomSheetState;->getCurrentValue()Landroidx/compose/material/BottomSheetValue;

    move-result-object v3

    sget-object v4, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Landroidx/compose/material/BottomSheetValue;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 554
    move v9, v2

    .end local v2    # "snackbarOffsetX":I
    .local v9, "snackbarOffsetX":I
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .end local v9    # "snackbarOffsetX":I
    .restart local v2    # "snackbarOffsetX":I
    :pswitch_0
    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$layoutHeight:I

    iget v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarHeight:I

    sub-int/2addr v3, v4

    move v10, v3

    goto :goto_2

    .line 553
    :pswitch_1
    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarHeight:I

    sub-int v3, v6, v3

    move v10, v3

    .line 552
    :goto_2
    nop

    .line 558
    .local v10, "snackbarOffsetY":I
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceables:Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    iget v14, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    const/4 v4, 0x0

    .line 626
    .local v4, "$i$f$fastForEach":I
    nop

    .line 627
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_3

    .line 628
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 629
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .local v12, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v18, 0x0

    .line 558
    .local v18, "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$1":I
    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 629
    .end local v12    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v18    # "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$1":I
    nop

    .line 627
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 631
    .end local v7    # "index$iv":I
    :cond_3
    nop

    .line 559
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceables:Ljava/util/List;

    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 632
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 633
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_4
    if-ge v7, v8, :cond_4

    .line 634
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 635
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object/from16 v20, v9

    check-cast v20, Landroidx/compose/ui/layout/Placeable;

    .local v20, "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v11, 0x0

    .line 559
    .local v11, "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$2":I
    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p1

    invoke-static/range {v19 .. v25}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 635
    .end local v11    # "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$2":I
    .end local v20    # "it":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 633
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 637
    .end local v7    # "index$iv":I
    :cond_4
    nop

    .line 560
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceables:Ljava/util/List;

    .restart local v3    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 638
    .restart local v4    # "$i$f$fastForEach":I
    nop

    .line 639
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_5
    if-ge v7, v8, :cond_5

    .line 640
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 641
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object/from16 v20, v9

    check-cast v20, Landroidx/compose/ui/layout/Placeable;

    .restart local v20    # "it":Landroidx/compose/ui/layout/Placeable;
    const/4 v11, 0x0

    .line 560
    .local v11, "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$3":I
    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p1

    invoke-static/range {v19 .. v25}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 641
    .end local v11    # "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$3":I
    .end local v20    # "it":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 639
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 643
    .end local v7    # "index$iv":I
    :cond_5
    nop

    .line 561
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    iget-object v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabPlaceable:Ljava/util/List;

    .local v11, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 644
    .local v12, "$i$f$fastForEach":I
    nop

    .line 645
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move v14, v3

    .end local v3    # "index$iv":I
    .local v14, "index$iv":I
    :goto_6
    if-ge v14, v13, :cond_6

    .line 646
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 647
    .local v15, "item$iv":Ljava/lang/Object;
    move-object v4, v15

    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .local v4, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v16, 0x0

    .line 561
    .local v16, "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$4":I
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 647
    .end local v4    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v16    # "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$4":I
    nop

    .line 645
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 649
    .end local v14    # "index$iv":I
    :cond_6
    nop

    .line 562
    .end local v11    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    iget-object v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceables:Ljava/util/List;

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 650
    .local v4, "$i$f$fastForEach":I
    nop

    .line 651
    const/4 v7, 0x0

    .restart local v7    # "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    move v15, v7

    .end local v7    # "index$iv":I
    .local v15, "index$iv":I
    :goto_7
    if-ge v15, v14, :cond_7

    .line 652
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 653
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v8, v16

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .local v8, "it":Landroidx/compose/ui/layout/Placeable;
    const/16 v17, 0x0

    .line 562
    .local v17, "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$5":I
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move v9, v2

    .end local v2    # "snackbarOffsetX":I
    .local v9, "snackbarOffsetX":I
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 653
    .end local v8    # "it":Landroidx/compose/ui/layout/Placeable;
    .end local v17    # "$i$a$-fastForEach-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1$5":I
    nop

    .line 651
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 655
    .end local v9    # "snackbarOffsetX":I
    .end local v15    # "index$iv":I
    .restart local v2    # "snackbarOffsetX":I
    :cond_7
    nop

    .line 563
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
