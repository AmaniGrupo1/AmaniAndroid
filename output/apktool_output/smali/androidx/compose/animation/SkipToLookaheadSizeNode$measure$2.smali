.class final Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SkipToLookaheadSizeNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SkipToLookaheadSizeNode;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    value = "SMAP\nSkipToLookaheadSizeNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkipToLookaheadSizeNode.kt\nandroidx/compose/animation/SkipToLookaheadSizeNode$measure$2\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactorKt\n+ 5 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactor\n+ 6 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 7 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 8 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,199:1\n54#2:200\n59#2:202\n54#2:208\n59#2:213\n85#3:201\n90#3:203\n53#3,3:205\n85#3:209\n60#3:211\n90#3:214\n70#3:216\n80#3:219\n31#4:204\n41#5:210\n46#5:215\n22#6:212\n22#6:217\n30#7:218\n61#8,3:220\n*S KotlinDebug\n*F\n+ 1 SkipToLookaheadSizeNode.kt\nandroidx/compose/animation/SkipToLookaheadSizeNode$measure$2\n*L\n78#1:200\n78#1:202\n89#1:208\n90#1:213\n78#1:201\n78#1:203\n79#1:205,3\n89#1:209\n89#1:211\n90#1:214\n90#1:216\n88#1:219\n79#1:204\n89#1:210\n90#1:215\n89#1:212\n90#1:217\n88#1:218\n86#1:220,3\n*E\n"
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
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $constrainedSize:J

.field final synthetic $p:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SkipToLookaheadSizeNode;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    iput-object p2, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    iput-object p5, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 20
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-virtual {v1}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->getScaleToBounds()Landroidx/compose/animation/ScaleToBoundsImpl;

    move-result-object v1

    .line 73
    .local v1, "scaleToBounds":Landroidx/compose/animation/ScaleToBoundsImpl;
    if-nez v1, :cond_0

    .line 74
    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto/16 :goto_2

    .line 76
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/animation/ScaleToBoundsImpl;->getContentScale()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    .line 78
    .local v2, "contentScale":Landroidx/compose/ui/layout/ContentScale;
    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v3}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v3

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$f$getWidth-impl":I
    move-wide v6, v3

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 201
    .local v8, "$i$f$unpackInt1":I
    const/16 v9, 0x20

    shr-long v10, v6, v9

    long-to-int v6, v10

    .line 200
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt1":I
    nop

    .line 78
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v5    # "$i$f$getWidth-impl":I
    const-wide v3, 0xffffffffL

    if-eqz v6, :cond_2

    iget-object v5, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v5}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v5

    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v7, 0x0

    .line 202
    .local v7, "$i$f$getHeight-impl":I
    move-wide v10, v5

    .local v10, "value$iv$iv":J
    const/4 v8, 0x0

    .line 203
    .local v8, "$i$f$unpackInt2":I
    and-long v12, v10, v3

    long-to-int v8, v12

    .line 202
    .end local v8    # "$i$f$unpackInt2":I
    .end local v10    # "value$iv$iv":J
    nop

    .line 78
    .end local v5    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    if-nez v8, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    nop

    .line 82
    iget-object v5, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v5}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    .line 83
    iget-wide v7, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v7

    .line 81
    invoke-interface {v2, v5, v6, v7, v8}, Landroidx/compose/ui/layout/ContentScale;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v5

    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "scaleX$iv":F
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "scaleY$iv":F
    const/4 v7, 0x0

    .line 204
    .local v7, "$i$f$ScaleFactor":I
    move v8, v6

    .local v8, "val2$iv$iv":F
    move v10, v5

    .local v10, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 205
    .local v11, "$i$f$packFloats":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 206
    .local v12, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-long v14, v14

    .line 207
    .local v14, "v2$iv$iv":J
    shl-long v16, v12, v9

    and-long v18, v14, v3

    or-long v10, v16, v18

    .line 204
    .end local v8    # "val2$iv$iv":F
    .end local v10    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    .end local v14    # "v2$iv$iv":J
    invoke-static {v10, v11}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide v5

    .line 78
    .end local v5    # "scaleX$iv":F
    .end local v6    # "scaleY$iv":F
    .end local v7    # "$i$f$ScaleFactor":I
    :goto_1
    nop

    .line 77
    nop

    .line 87
    .local v5, "resolvedScale":J
    invoke-virtual {v1}, Landroidx/compose/animation/ScaleToBoundsImpl;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v10

    .line 89
    iget-object v7, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v7}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v7

    .local v7, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 208
    .local v11, "$i$f$getWidth-impl":I
    move-wide v12, v7

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 209
    .local v14, "$i$f$unpackInt1":I
    move-wide v15, v3

    shr-long v3, v12, v9

    long-to-int v3, v3

    .line 208
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackInt1":I
    nop

    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v11    # "$i$f$getWidth-impl":I
    int-to-float v3, v3

    .line 89
    move-wide v7, v5

    .local v7, "$v$c$androidx-compose-ui-layout-ScaleFactor$-this$0$iv":J
    const/4 v4, 0x0

    .line 210
    .local v4, "$i$f$getScaleX-impl":I
    move-wide v11, v7

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 211
    .local v13, "$i$f$unpackFloat1":I
    move v14, v9

    move-object/from16 v17, v10

    shr-long v9, v11, v14

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 212
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 211
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 210
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 89
    .end local v4    # "$i$f$getScaleX-impl":I
    .end local v7    # "$v$c$androidx-compose-ui-layout-ScaleFactor$-this$0$iv":J
    mul-float/2addr v3, v9

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 90
    iget-object v4, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->this$0:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    invoke-static {v4}, Landroidx/compose/animation/SkipToLookaheadSizeNode;->access$getLookaheadSize$p(Landroidx/compose/animation/SkipToLookaheadSizeNode;)J

    move-result-wide v7

    .local v7, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 213
    .local v4, "$i$f$getHeight-impl":I
    move-wide v9, v7

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 214
    .local v11, "$i$f$unpackInt2":I
    and-long v12, v9, v15

    long-to-int v9, v12

    .line 213
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackInt2":I
    nop

    .end local v4    # "$i$f$getHeight-impl":I
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v4, v9

    .line 90
    move-wide v7, v5

    .local v7, "$v$c$androidx-compose-ui-layout-ScaleFactor$-this$0$iv":J
    const/4 v9, 0x0

    .line 215
    .local v9, "$i$f$getScaleY-impl":I
    move-wide v10, v7

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 216
    .local v12, "$i$f$unpackFloat2":I
    move v13, v14

    move-wide/from16 v18, v15

    and-long v14, v10, v18

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 217
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 216
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 215
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat2":I
    nop

    .line 90
    .end local v7    # "$v$c$androidx-compose-ui-layout-ScaleFactor$-this$0$iv":J
    .end local v9    # "$i$f$getScaleY-impl":I
    mul-float/2addr v4, v14

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 88
    nop

    .local v3, "width$iv":I
    .local v4, "height$iv":I
    const/4 v7, 0x0

    .line 218
    .local v7, "$i$f$IntSize":I
    move v8, v4

    .local v8, "val2$iv$iv":I
    move v9, v3

    .local v9, "val1$iv$iv":I
    const/4 v10, 0x0

    .line 219
    .local v10, "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v13

    int-to-long v13, v8

    and-long v13, v13, v18

    or-long v8, v11, v13

    .line 218
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v11

    .line 92
    .end local v3    # "width$iv":I
    .end local v4    # "height$iv":I
    .end local v7    # "$i$f$IntSize":I
    iget-wide v13, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$constrainedSize:J

    .line 93
    iget-object v3, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    .line 87
    move-object/from16 v10, v17

    invoke-interface/range {v10 .. v15}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v3

    .line 86
    move-wide v7, v3

    .local v7, "$v$c$androidx-compose-ui-unit-IntOffset$-this$0$iv":J
    const/4 v9, 0x0

    .line 220
    .local v9, "$i$f$component1-impl":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v11

    .line 86
    .end local v7    # "$v$c$androidx-compose-ui-unit-IntOffset$-this$0$iv":J
    .end local v9    # "$i$f$component1-impl":I
    nop

    .local v3, "$v$c$androidx-compose-ui-unit-IntOffset$-this$0$iv":J
    .local v11, "x":I
    const/4 v7, 0x0

    .line 222
    .local v7, "$i$f$component2-impl":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v12

    .line 86
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntOffset$-this$0$iv":J
    .end local v7    # "$i$f$component2-impl":I
    nop

    .line 95
    .local v12, "y":I
    iget-object v10, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->$p:Landroidx/compose/ui/layout/Placeable;

    new-instance v3, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;

    invoke-direct {v3, v5, v6}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;-><init>(J)V

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 101
    .end local v2    # "contentScale":Landroidx/compose/ui/layout/ContentScale;
    .end local v5    # "resolvedScale":J
    .end local v11    # "x":I
    .end local v12    # "y":I
    :goto_2
    return-void
.end method
