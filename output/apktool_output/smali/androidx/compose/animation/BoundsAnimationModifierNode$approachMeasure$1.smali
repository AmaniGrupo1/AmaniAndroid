.class final Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimateBoundsModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/BoundsAnimationModifierNode;->approachMeasure-3p2s80s(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nAnimateBoundsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateBoundsModifier.kt\nandroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,452:1\n1#2:453\n71#3:454\n65#3:455\n73#3:458\n69#3:459\n60#4:456\n70#4:460\n22#5:457\n26#5:461\n*S KotlinDebug\n*F\n+ 1 AnimateBoundsModifier.kt\nandroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1\n*L\n284#1:454\n284#1:455\n284#1:458\n284#1:459\n284#1:456\n284#1:460\n284#1:457\n285#1:461\n*E\n"
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/animation/BoundsAnimationModifierNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;

    iput-object p2, p0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 265
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 20
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;

    invoke-static {v1}, Landroidx/compose/animation/BoundsAnimationModifierNode;->access$getBoundsAnimation$p(Landroidx/compose/animation/BoundsAnimationModifierNode;)Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getValue()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 268
    .local v1, "animatedBounds":Landroidx/compose/ui/geometry/Rect;
    iget-object v2, v0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;

    invoke-virtual {v2}, Landroidx/compose/animation/BoundsAnimationModifierNode;->getLookaheadScope()Landroidx/compose/ui/layout/LookaheadScope;

    move-result-object v2

    .local v2, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/layout/LookaheadScope;
    iget-object v3, v0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;

    const/4 v4, 0x0

    .line 269
    .local v4, "$i$a$-with-BoundsAnimationModifierNode$approachMeasure$1$positionInScope$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    if-eqz v5, :cond_0

    .local v5, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v6, 0x0

    .line 270
    .local v6, "$i$a$-let-BoundsAnimationModifierNode$approachMeasure$1$positionInScope$1$1":I
    move-object/from16 v7, p1

    invoke-interface {v2, v7}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v8

    .line 271
    nop

    .line 272
    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v9

    .line 273
    invoke-virtual {v3}, Landroidx/compose/animation/BoundsAnimationModifierNode;->getAnimateMotionFrameOfReference()Z

    move-result v3

    .line 270
    invoke-interface {v8, v5, v9, v10, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v8

    .line 274
    nop

    .end local v5    # "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v6    # "$i$a$-let-BoundsAnimationModifierNode$approachMeasure$1$positionInScope$1$1":I
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    .line 269
    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    const/4 v3, 0x0

    .line 275
    :goto_0
    nop

    .line 268
    .end local v2    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/layout/LookaheadScope;
    .end local v4    # "$i$a$-with-BoundsAnimationModifierNode$approachMeasure$1$positionInScope$1":I
    nop

    .line 267
    nop

    .line 278
    .local v3, "positionInScope":Landroidx/compose/ui/geometry/Offset;
    nop

    .line 282
    iget-object v2, v0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->this$0:Landroidx/compose/animation/BoundsAnimationModifierNode;

    .line 278
    if-eqz v1, :cond_1

    .line 279
    invoke-static {v2}, Landroidx/compose/animation/BoundsAnimationModifierNode;->access$getBoundsAnimation$p(Landroidx/compose/animation/BoundsAnimationModifierNode;)Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v4

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-virtual {v2, v4, v5, v8, v9}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->updateCurrentBounds-tz77jQw(JJ)V

    .line 280
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v4

    goto :goto_1

    .line 282
    :cond_1
    invoke-static {v2}, Landroidx/compose/animation/BoundsAnimationModifierNode;->access$getBoundsAnimation$p(Landroidx/compose/animation/BoundsAnimationModifierNode;)Landroidx/compose/animation/BoundsTransformDeferredAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/BoundsTransformDeferredAnimation;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    .line 278
    :goto_1
    nop

    .line 277
    nop

    .line 284
    .local v4, "topLeft":J
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v8

    .line 453
    .local v8, "it":J
    const/4 v2, 0x0

    .line 284
    .local v2, "$i$a$-let-BoundsAnimationModifierNode$approachMeasure$1$1":I
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v8

    .end local v2    # "$i$a$-let-BoundsAnimationModifierNode$approachMeasure$1$1":I
    .end local v8    # "it":J
    goto :goto_2

    :cond_3
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v8

    :goto_2
    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$component1-impl":I
    move-wide v12, v10

    .local v12, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    const/4 v6, 0x0

    .line 455
    .local v6, "$i$f$getX-impl":I
    move-wide v14, v12

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 456
    .local v16, "$i$f$unpackFloat1":I
    const/16 v17, 0x20

    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "animatedBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v2    # "$i$f$component1-impl":I
    .local v18, "animatedBounds":Landroidx/compose/ui/geometry/Rect;
    .local v19, "$i$f$component1-impl":I
    shr-long v1, v14, v17

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv$iv":I
    const/4 v2, 0x0

    .line 457
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 456
    .end local v1    # "bits$iv$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 455
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$unpackFloat1":I
    nop

    .line 454
    .end local v6    # "$i$f$getX-impl":I
    .end local v12    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    nop

    .line 284
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v19    # "$i$f$component1-impl":I
    nop

    .local v1, "x":F
    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 458
    .local v2, "$i$f$component2-impl":I
    nop

    .local v10, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    const/4 v6, 0x0

    .line 459
    .local v6, "$i$f$getY-impl":I
    nop

    .local v12, "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 460
    .local v14, "$i$f$unpackFloat2":I
    const-wide v15, 0xffffffffL

    move/from16 v17, v1

    move/from16 v19, v2

    .end local v1    # "x":F
    .end local v2    # "$i$f$component2-impl":I
    .local v17, "x":F
    .local v19, "$i$f$component2-impl":I
    and-long v1, v12, v15

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv$iv":I
    const/4 v2, 0x0

    .line 457
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 460
    .end local v1    # "bits$iv$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 459
    .end local v12    # "value$iv$iv$iv":J
    .end local v14    # "$i$f$unpackFloat2":I
    nop

    .line 458
    .end local v6    # "$i$f$getY-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    nop

    .line 284
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v19    # "$i$f$component2-impl":I
    nop

    .line 285
    .local v1, "y":F
    iget-object v8, v0, Landroidx/compose/animation/BoundsAnimationModifierNode$approachMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    move/from16 v2, v17

    .local v2, "$this$fastRoundToInt$iv":F
    const/4 v6, 0x0

    .line 461
    .local v6, "$i$f$fastRoundToInt":I
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 285
    .end local v2    # "$this$fastRoundToInt$iv":F
    .end local v6    # "$i$f$fastRoundToInt":I
    move v2, v1

    .restart local v2    # "$this$fastRoundToInt$iv":F
    const/4 v6, 0x0

    .line 461
    .restart local v6    # "$i$f$fastRoundToInt":I
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 285
    .end local v2    # "$this$fastRoundToInt$iv":F
    .end local v6    # "$i$f$fastRoundToInt":I
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 286
    return-void
.end method
