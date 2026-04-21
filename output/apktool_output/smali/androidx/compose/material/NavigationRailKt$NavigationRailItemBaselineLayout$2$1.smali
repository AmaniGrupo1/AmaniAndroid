.class final Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;
.super Ljava/lang/Object;
.source "NavigationRail.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/NavigationRailKt;->NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,472:1\n544#2,2:473\n33#2,6:475\n546#2:481\n544#2,2:482\n33#2,6:484\n546#2:490\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1\n*L\n341#1:473,2\n341#1:475,6\n341#1:481\n344#1:482,2\n344#1:484,6\n344#1:490\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
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
.field final synthetic $iconPositionAnimationProgress:F

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(Lkotlin/jvm/functions/Function2;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$iconPositionAnimationProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .param p1, "$this$Layout"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 341
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p2

    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 473
    .local v4, "$i$f$fastFirst":I
    nop

    .line 474
    move-object v5, v3

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 475
    .local v6, "$i$f$fastForEach":I
    nop

    .line 476
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    const-string v9, "Collection contains no element matching the predicate."

    if-ge v7, v8, :cond_5

    .line 477
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 478
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 474
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .local v13, "it":Landroidx/compose/ui/layout/Measurable;
    const/4 v14, 0x0

    .line 341
    .local v14, "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$iconPlaceable$1":I
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v3

    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    const-string/jumbo v3, "icon"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 474
    .end local v13    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v14    # "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$iconPlaceable$1":I
    if-eqz v3, :cond_4

    .line 481
    .end local v4    # "$i$f$fastFirst":I
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v7    # "index$iv$iv":I
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    move-object v3, v11

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 341
    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    .line 343
    .local v10, "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    iget-object v3, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_2

    move-object v11, v3

    .local v11, "it":Lkotlin/jvm/functions/Function2;
    const/4 v12, 0x0

    .line 344
    .local v12, "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    move-object/from16 v3, p2

    .restart local v3    # "$this$fastFirst$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 482
    .restart local v4    # "$i$f$fastFirst":I
    nop

    .line 483
    move-object v5, v3

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 484
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 485
    const/4 v7, 0x0

    .restart local v7    # "index$iv$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_1

    .line 486
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 487
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 483
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .local v16, "it":Landroidx/compose/ui/layout/Measurable;
    const/16 v17, 0x0

    .line 344
    .local v17, "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1$1":I
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "label"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 483
    .end local v16    # "it":Landroidx/compose/ui/layout/Measurable;
    .end local v17    # "$i$a$-fastFirst-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1$1":I
    if-eqz v1, :cond_0

    .line 490
    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirst":I
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v7    # "index$iv$iv":I
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    move-object v9, v14

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 347
    const/16 v7, 0xb

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 344
    invoke-interface {v9, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 343
    .end local v11    # "it":Lkotlin/jvm/functions/Function2;
    .end local v12    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    goto :goto_2

    .line 483
    .restart local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .restart local v4    # "$i$f$fastFirst":I
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    .restart local v7    # "index$iv$iv":I
    .restart local v11    # "it":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    .restart local v13    # "item$iv$iv":Ljava/lang/Object;
    .restart local v14    # "it$iv":Ljava/lang/Object;
    .restart local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    :cond_0
    move-wide/from16 v1, p3

    .line 487
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastFirst$2$iv":I
    nop

    .line 485
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 489
    .end local v7    # "index$iv$iv":I
    :cond_1
    nop

    .line 490
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    .end local v3    # "$this$fastFirst$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastFirst":I
    .end local v11    # "it":Lkotlin/jvm/functions/Function2;
    .end local v12    # "$i$a$-let-NavigationRailKt$NavigationRailItemBaselineLayout$2$1$labelPlaceable$1":I
    :cond_2
    const/4 v3, 0x0

    .line 352
    .local v3, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    :goto_2
    iget-object v4, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$label:Lkotlin/jvm/functions/Function2;

    if-nez v4, :cond_3

    .line 353
    move-object/from16 v4, p1

    invoke-static {v4, v10, v1, v2}, Landroidx/compose/material/NavigationRailKt;->access$placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    move-object v2, v3

    move-object v3, v10

    goto :goto_3

    .line 355
    :cond_3
    move-object/from16 v4, p1

    .line 356
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 357
    nop

    .line 358
    nop

    .line 359
    iget v6, v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;->$iconPositionAnimationProgress:F

    .line 355
    move-wide/from16 v18, v1

    move-object v1, v4

    move-wide/from16 v4, v18

    move-object v2, v3

    move-object v3, v10

    .end local v10    # "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v2, "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .local v3, "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/NavigationRailKt;->access$placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v6

    move-object v5, v6

    .line 352
    :goto_3
    return-object v5

    .line 478
    .end local v2    # "labelPlaceable":Landroidx/compose/ui/layout/Placeable;
    .end local v3    # "iconPlaceable":Landroidx/compose/ui/layout/Placeable;
    .restart local v4    # "$i$f$fastFirst":I
    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    .restart local v7    # "index$iv$iv":I
    .local v10, "item$iv$iv":Ljava/lang/Object;
    .local v16, "$this$fastFirst$iv":Ljava/util/List;
    :cond_4
    nop

    .line 476
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 480
    .end local v7    # "index$iv$iv":I
    .end local v16    # "$this$fastFirst$iv":Ljava/util/List;
    .local v3, "$this$fastFirst$iv":Ljava/util/List;
    :cond_5
    nop

    .line 481
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
