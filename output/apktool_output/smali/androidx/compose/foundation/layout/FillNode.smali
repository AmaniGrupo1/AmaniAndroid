.class final Landroidx/compose/foundation/layout/FillNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/FillNode\n+ 2 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 3 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n*L\n1#1,1134:1\n26#2:1135\n26#2:1146\n101#3,10:1136\n101#3,10:1147\n*S KotlinDebug\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/FillNode\n*L\n700#1:1135\n713#1:1146\n701#1:1136,10\n714#1:1147,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u0011\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FillNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "direction",
        "Landroidx/compose/foundation/layout/Direction;",
        "fraction",
        "",
        "<init>",
        "(Landroidx/compose/foundation/layout/Direction;F)V",
        "getDirection",
        "()Landroidx/compose/foundation/layout/Direction;",
        "setDirection",
        "(Landroidx/compose/foundation/layout/Direction;)V",
        "getFraction",
        "()F",
        "setFraction",
        "(F)V",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
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


# instance fields
.field private direction:Landroidx/compose/foundation/layout/Direction;

.field private fraction:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;F)V
    .locals 0
    .param p1, "direction"    # Landroidx/compose/foundation/layout/Direction;
    .param p2, "fraction"    # F

    .line 689
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FillNode;->direction:Landroidx/compose/foundation/layout/Direction;

    iput p2, p0, Landroidx/compose/foundation/layout/FillNode;->fraction:F

    return-void
.end method

.method static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 723
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    .end local p0    # "$placeable":Landroidx/compose/ui/layout/Placeable;
    .end local p1    # "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v0, "$this$layout":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .local v1, "$placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getDirection()Landroidx/compose/foundation/layout/Direction;
    .locals 1

    .line 689
    iget-object v0, p0, Landroidx/compose/foundation/layout/FillNode;->direction:Landroidx/compose/foundation/layout/Direction;

    return-object v0
.end method

.method public final getFraction()F
    .locals 1

    .line 689
    iget v0, p0, Landroidx/compose/foundation/layout/FillNode;->fraction:F

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J

    .line 695
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 696
    .local v1, "minWidth":I
    const/4 v2, 0x0

    .line 697
    .local v2, "maxWidth":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/compose/foundation/layout/FillNode;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v4, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    if-eq v3, v4, :cond_2

    .line 699
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroidx/compose/foundation/layout/FillNode;->fraction:F

    mul-float/2addr v3, v4

    .line 700
    nop

    .local v3, "$this$fastRoundToInt$iv":F
    const/4 v4, 0x0

    .line 1135
    .local v4, "$i$f$fastRoundToInt":I
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 701
    .end local v3    # "$this$fastRoundToInt$iv":F
    .end local v4    # "$i$f$fastRoundToInt":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    .local v4, "minimumValue$iv":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    .local v3, "$this$fastCoerceIn$iv":I
    .local v5, "maximumValue$iv":I
    const/4 v6, 0x0

    .line 1136
    .local v6, "$i$f$fastCoerceIn":I
    move v7, v4

    .local v7, "minimumValue$iv$iv":I
    move v8, v3

    .local v8, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v9, 0x0

    .line 1140
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-ge v8, v7, :cond_0

    move v8, v7

    .line 1136
    .end local v7    # "minimumValue$iv$iv":I
    .end local v8    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_0
    move v7, v5

    .local v7, "maximumValue$iv$iv":I
    .local v8, "$this$fastCoerceAtMost$iv$iv":I
    const/4 v9, 0x0

    .line 1145
    .local v9, "$i$f$fastCoerceAtMost":I
    if-le v8, v7, :cond_1

    move v8, v7

    .line 1136
    .end local v7    # "maximumValue$iv$iv":I
    .end local v8    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtMost":I
    :cond_1
    nop

    .line 701
    .end local v3    # "$this$fastCoerceIn$iv":I
    .end local v4    # "minimumValue$iv":I
    .end local v5    # "maximumValue$iv":I
    .end local v6    # "$i$f$fastCoerceIn":I
    nop

    .line 698
    nop

    .line 702
    .local v8, "width":I
    move v1, v8

    .line 703
    nop

    .end local v2    # "maxWidth":I
    .local v8, "maxWidth":I
    goto :goto_0

    .line 705
    .end local v8    # "maxWidth":I
    .restart local v2    # "maxWidth":I
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 706
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    .line 708
    .end local v2    # "maxWidth":I
    .restart local v8    # "maxWidth":I
    :goto_0
    const/4 v2, 0x0

    .line 709
    .local v2, "minHeight":I
    const/4 v3, 0x0

    .line 710
    .local v3, "maxHeight":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/compose/foundation/layout/FillNode;->direction:Landroidx/compose/foundation/layout/Direction;

    sget-object v5, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v4, v5, :cond_5

    .line 712
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroidx/compose/foundation/layout/FillNode;->fraction:F

    mul-float/2addr v4, v5

    .line 713
    nop

    .local v4, "$this$fastRoundToInt$iv":F
    const/4 v5, 0x0

    .line 1146
    .local v5, "$i$f$fastRoundToInt":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 714
    .end local v4    # "$this$fastRoundToInt$iv":F
    .end local v5    # "$i$f$fastRoundToInt":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    .local v5, "minimumValue$iv":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    .local v4, "$this$fastCoerceIn$iv":I
    .local v6, "maximumValue$iv":I
    const/4 v7, 0x0

    .line 1147
    .local v7, "$i$f$fastCoerceIn":I
    move v9, v5

    .local v9, "minimumValue$iv$iv":I
    move v10, v4

    .local v10, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v11, 0x0

    .line 1151
    .local v11, "$i$f$fastCoerceAtLeast":I
    if-ge v10, v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v10

    .line 1147
    .end local v9    # "minimumValue$iv$iv":I
    .end local v10    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v11    # "$i$f$fastCoerceAtLeast":I
    :goto_1
    move v10, v6

    .local v9, "$this$fastCoerceAtMost$iv$iv":I
    .local v10, "maximumValue$iv$iv":I
    const/4 v11, 0x0

    .line 1156
    .local v11, "$i$f$fastCoerceAtMost":I
    if-le v9, v10, :cond_4

    goto :goto_2

    :cond_4
    move v10, v9

    .line 1147
    .end local v9    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v10    # "maximumValue$iv$iv":I
    .end local v11    # "$i$f$fastCoerceAtMost":I
    :goto_2
    nop

    .line 714
    .end local v4    # "$this$fastCoerceIn$iv":I
    .end local v5    # "minimumValue$iv":I
    .end local v6    # "maximumValue$iv":I
    .end local v7    # "$i$f$fastCoerceIn":I
    nop

    .line 711
    nop

    .line 715
    .local v10, "height":I
    move v2, v10

    .line 716
    nop

    .end local v3    # "maxHeight":I
    .local v10, "maxHeight":I
    goto :goto_3

    .line 718
    .end local v10    # "maxHeight":I
    .restart local v3    # "maxHeight":I
    :cond_5
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 719
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v10

    .line 721
    .end local v3    # "maxHeight":I
    .restart local v10    # "maxHeight":I
    :goto_3
    invoke-static {v1, v8, v2, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v3

    move-object/from16 v5, p2

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 723
    .local v3, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    new-instance v15, Landroidx/compose/foundation/layout/FillNode$$ExternalSyntheticLambda0;

    invoke-direct {v15, v3}, Landroidx/compose/foundation/layout/FillNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    return-object v4
.end method

.method public final setDirection(Landroidx/compose/foundation/layout/Direction;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/layout/Direction;

    .line 689
    iput-object p1, p0, Landroidx/compose/foundation/layout/FillNode;->direction:Landroidx/compose/foundation/layout/Direction;

    return-void
.end method

.method public final setFraction(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 689
    iput p1, p0, Landroidx/compose/foundation/layout/FillNode;->fraction:F

    return-void
.end method
