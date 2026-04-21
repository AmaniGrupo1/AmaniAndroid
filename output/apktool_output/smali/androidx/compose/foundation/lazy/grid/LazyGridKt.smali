.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "LazyGrid.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n*L\n1#1,457:1\n122#2:458\n599#3:459\n596#3,6:460\n1128#4,3:466\n1131#4,3:470\n1128#4,6:475\n597#5:469\n75#6:473\n75#6:474\n27#7,5:481\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n*L\n67#1:458\n89#1:459\n89#1:460,6\n89#1:466,3\n89#1:470,3\n180#1:475,6\n89#1:469\n90#1:473\n91#1:474\n440#1:481,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0088\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00010\u0017\u00a2\u0006\u0002\u0008\u0019H\u0001\u00a2\u0006\u0002\u0010\u001a\u001aq\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0003\u00a2\u0006\u0002\u0010&\u001a*\u0010\'\u001a\u00020\u0001*\u00020(2\u0006\u0010)\u001a\u00020*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,2\u0006\u0010.\u001a\u00020/H\u0002\u00a8\u00060"
    }
    d2 = {
        "LazyGrid",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "slots",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "isVertical",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "rememberLazyGridMeasurePolicy",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;",
        "itemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "stickyItemsScrollBehavior",
        "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;",
        "keepAroundItems",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "visibleItemsList",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "measuredLineProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .param p2, "slots"    # Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "isVertical"    # Z
    .param p6, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p7, "userScrollEnabled"    # Z
    .param p8, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p9, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p10, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p11, "content"    # Lkotlin/jvm/functions/Function1;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 84
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p5

    move/from16 v14, p7

    move-object/from16 v15, p11

    move/from16 v0, p13

    const v3, 0x2a3e8512

    move-object/from16 v4, p12

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(LazyGrid)N(modifier,state,slots,contentPadding,reverseLayout,isVertical,flingBehavior,userScrollEnabled,overscrollEffect,verticalArrangement,horizontalArrangement,content)84@4015L50,86@4091L51,88@4169L24,89@4241L7,90@4310L7,93@4351L404,126@5421L302,121@5252L1117:LazyGrid.kt#7791vq"

    invoke-static {v6, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p13

    .local v4, "$dirty":I
    move/from16 v7, p14

    .local v7, "$dirty1":I
    and-int/lit8 v8, p15, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v4, v4, 0x6

    move-object/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v0, 0x6

    if-nez v11, :cond_2

    move-object/from16 v11, p0

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x4

    goto :goto_0

    :cond_1
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v4, v12

    goto :goto_1

    :cond_2
    move-object/from16 v11, p0

    :goto_1
    and-int/lit8 v12, v0, 0x30

    const/16 v16, 0x10

    if-nez v12, :cond_4

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    move/from16 v12, v16

    :goto_2
    or-int/2addr v4, v12

    :cond_4
    and-int/lit16 v12, v0, 0x180

    if-nez v12, :cond_7

    and-int/lit16 v12, v0, 0x200

    if-nez v12, :cond_5

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_3

    :cond_5
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    :goto_3
    if-eqz v12, :cond_6

    const/16 v12, 0x100

    goto :goto_4

    :cond_6
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v4, v12

    :cond_7
    and-int/lit8 v12, p15, 0x8

    if-eqz v12, :cond_8

    or-int/lit16 v4, v4, 0xc00

    move-object/from16 v9, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v9, v0, 0xc00

    if-nez v9, :cond_a

    move-object/from16 v9, p3

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x800

    goto :goto_5

    :cond_9
    const/16 v17, 0x400

    :goto_5
    or-int v4, v4, v17

    goto :goto_6

    :cond_a
    move-object/from16 v9, p3

    :goto_6
    and-int/lit8 v17, p15, 0x10

    if-eqz v17, :cond_b

    or-int/lit16 v4, v4, 0x6000

    move/from16 v10, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v10, v0, 0x6000

    if-nez v10, :cond_d

    move/from16 v10, p4

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x4000

    goto :goto_7

    :cond_c
    const/16 v19, 0x2000

    :goto_7
    or-int v4, v4, v19

    goto :goto_8

    :cond_d
    move/from16 v10, p4

    :goto_8
    const/high16 v19, 0x30000

    and-int v19, v0, v19

    if-nez v19, :cond_f

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v19, 0x10000

    :goto_9
    or-int v4, v4, v19

    :cond_f
    const/high16 v19, 0x180000

    and-int v19, v0, v19

    if-nez v19, :cond_12

    and-int/lit8 v19, p15, 0x40

    if-nez v19, :cond_10

    move-object/from16 v13, p6

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const/high16 v20, 0x100000

    goto :goto_a

    :cond_10
    move-object/from16 v13, p6

    :cond_11
    const/high16 v20, 0x80000

    :goto_a
    or-int v4, v4, v20

    goto :goto_b

    :cond_12
    move-object/from16 v13, p6

    :goto_b
    const/high16 v20, 0xc00000

    and-int v20, v0, v20

    if-nez v20, :cond_14

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x800000

    goto :goto_c

    :cond_13
    const/high16 v20, 0x400000

    :goto_c
    or-int v4, v4, v20

    :cond_14
    const/high16 v20, 0x6000000

    and-int v20, v0, v20

    if-nez v20, :cond_16

    move-object/from16 v13, p8

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x4000000

    goto :goto_d

    :cond_15
    const/high16 v20, 0x2000000

    :goto_d
    or-int v4, v4, v20

    goto :goto_e

    :cond_16
    move-object/from16 v13, p8

    :goto_e
    const/high16 v20, 0x30000000

    and-int v20, v0, v20

    if-nez v20, :cond_18

    move-object/from16 v3, p9

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/high16 v21, 0x20000000

    goto :goto_f

    :cond_17
    const/high16 v21, 0x10000000

    :goto_f
    or-int v4, v4, v21

    goto :goto_10

    :cond_18
    move-object/from16 v3, p9

    :goto_10
    and-int/lit8 v21, p14, 0x6

    if-nez v21, :cond_1a

    move-object/from16 v0, p10

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v18, 0x4

    goto :goto_11

    :cond_19
    const/16 v18, 0x2

    :goto_11
    or-int v7, v7, v18

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p10

    :goto_12
    and-int/lit8 v18, p14, 0x30

    if-nez v18, :cond_1c

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/16 v16, 0x20

    :cond_1b
    or-int v7, v7, v16

    :cond_1c
    const v16, 0x12492493

    and-int v0, v4, v16

    const v2, 0x12492492

    const/16 v16, 0x0

    const/16 v18, 0x1

    if-ne v0, v2, :cond_1e

    and-int/lit8 v0, v7, 0x13

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1d

    goto :goto_13

    :cond_1d
    move/from16 v0, v16

    goto :goto_14

    :cond_1e
    :goto_13
    move/from16 v0, v18

    :goto_14
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const-string v0, "72@3483L15"

    invoke-static {v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p13, 0x1

    const v2, -0x380001

    if-eqz v0, :cond_21

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_15

    .line 59
    :cond_1f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p15, 0x40

    if-eqz v0, :cond_20

    and-int/2addr v4, v2

    :cond_20
    move-object/from16 v17, p6

    move v2, v4

    move-object v3, v9

    move v4, v10

    move-object v0, v11

    goto :goto_19

    .line 84
    :cond_21
    :goto_15
    if-eqz v8, :cond_22

    .line 61
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 84
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object v0, v11

    .line 61
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    if-eqz v12, :cond_23

    .line 67
    const/4 v8, 0x0

    .local v8, "$this$dp$iv":I
    const/4 v11, 0x0

    .line 458
    .local v11, "$i$f$getDp":I
    int-to-float v12, v8

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 67
    .end local v8    # "$this$dp$iv":I
    .end local v11    # "$i$f$getDp":I
    invoke-static {v8}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v8

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v8, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_17

    .line 61
    .end local v8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_23
    move-object v8, v9

    .line 67
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_17
    if-eqz v17, :cond_24

    .line 69
    const/4 v9, 0x0

    .end local p4    # "reverseLayout":Z
    .local v9, "reverseLayout":Z
    goto :goto_18

    .line 67
    .end local v9    # "reverseLayout":Z
    .restart local p4    # "reverseLayout":Z
    :cond_24
    move v9, v10

    .line 69
    .end local p4    # "reverseLayout":Z
    .restart local v9    # "reverseLayout":Z
    :goto_18
    and-int/lit8 v10, p15, 0x40

    if-eqz v10, :cond_25

    .line 73
    sget-object v10, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v11, 0x6

    invoke-virtual {v10, v6, v11}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v10

    .end local p6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v10, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    and-int/2addr v4, v2

    move v2, v4

    move-object v3, v8

    move v4, v9

    move-object/from16 v17, v10

    goto :goto_19

    .line 69
    .end local v10    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local p6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_25
    move-object/from16 v17, p6

    move v2, v4

    move-object v3, v8

    move v4, v9

    .line 59
    .end local v8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v9    # "reverseLayout":Z
    .end local p6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v2, "$dirty":I
    .local v3, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "reverseLayout":Z
    .local v17, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :goto_19
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_26

    const-string/jumbo v8, "androidx.compose.foundation.lazy.grid.LazyGrid (LazyGrid.kt:83)"

    const v9, 0x2a3e8512

    invoke-static {v9, v2, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_26
    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0xe

    and-int/lit8 v9, v7, 0x70

    or-int/2addr v8, v9

    invoke-static {v1, v15, v6, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt;->rememberLazyGridItemProviderLambda(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v8

    .line 87
    .local v8, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    shr-int/lit8 v9, v2, 0x3

    and-int/lit8 v9, v9, 0xe

    shr-int/lit8 v10, v2, 0x9

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v9, v10

    invoke-static {v1, v4, v6, v9}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;->rememberLazyGridSemanticState(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v19

    .line 89
    .local v19, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    nop

    .local v16, "$changed$iv":I
    move-object v9, v6

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 459
    .local v10, "$i$f$rememberCoroutineScope":I
    const v11, 0x2e20b340

    const-string v12, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 460
    nop

    .line 464
    move-object v11, v9

    .line 465
    .local v11, "composer$iv":Landroidx/compose/runtime/Composer;
    const v12, 0x28c0fdc4

    move-object/from16 p0, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    const-string v0, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v9, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv$iv":Z
    move-object v12, v9

    .local v12, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 466
    .local v20, "$i$f$cache":I
    move/from16 p3, v0

    .end local v0    # "invalid$iv$iv":Z
    .local p3, "invalid$iv$iv":Z
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 467
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 468
    const/4 v1, 0x0

    .line 465
    .local v1, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    const/16 v22, 0x0

    .line 469
    .local v22, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v22, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 465
    .end local v22    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 p4, v0

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v22

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 468
    .end local v1    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    nop

    .line 470
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 471
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1a

    .line 472
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    :cond_27
    move-object/from16 p4, v0

    .line 466
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_1a
    nop

    .line 465
    .end local v12    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv":Z
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 459
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 465
    nop

    .line 89
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$rememberCoroutineScope":I
    .end local v11    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$changed$iv":I
    nop

    .line 90
    .local v0, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalGraphicsContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v9, 0x0

    .local v9, "$changed$iv":I
    move-object v10, v6

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 473
    .local v11, "$i$f$getCurrent":I
    const v12, 0x789c5f52

    move-object/from16 p3, v0

    .end local v0    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local p3, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    const-string v0, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 90
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v9    # "$changed$iv":I
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$getCurrent":I
    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 91
    .local v9, "graphicsContext":Landroidx/compose/ui/graphics/GraphicsContext;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalScrollCaptureInProgress()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v1

    .restart local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x0

    .local v10, "$changed$iv":I
    move-object v11, v6

    .local v11, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 474
    .local v16, "$i$f$getCurrent":I
    invoke-static {v11, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v11    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move/from16 v16, v0

    .line 95
    .local v16, "stickyHeadersEnabled":Z
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    if-eqz v16, :cond_28

    sget-object v0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;->Companion:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->getStickToTopPlacement()Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    move-result-object v0

    goto :goto_1b

    :cond_28
    const/4 v0, 0x0

    :goto_1b
    move-object v10, v0

    and-int/lit8 v0, v2, 0x70

    and-int/lit16 v1, v2, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0x1c00

    or-int/2addr v0, v1

    const v18, 0xe000

    and-int v1, v2, v18

    or-int/2addr v0, v1

    const/high16 v20, 0x70000

    and-int v1, v2, v20

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x12

    const/high16 v11, 0x380000

    and-int/2addr v1, v11

    or-int/2addr v0, v1

    shr-int/lit8 v1, v2, 0x6

    const/high16 v11, 0x1c00000

    and-int/2addr v1, v11

    or-int v12, v0, v1

    .line 94
    const/4 v13, 0x0

    move-object/from16 v14, p0

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object v11, v6

    move/from16 v21, v7

    move-object v0, v8

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    .end local v2    # "$dirty":I
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "$dirty1":I
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v0, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .local v8, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v21, "$dirty1":I
    .local v22, "$dirty":I
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    move-result-object v10

    .line 93
    move-object v12, v1

    move-object/from16 v23, v3

    move v5, v4

    move-object v13, v9

    move-object v6, v11

    move-object v11, v8

    .end local v3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v4    # "reverseLayout":Z
    .end local v8    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v9    # "graphicsContext":Landroidx/compose/ui/graphics/GraphicsContext;
    .local v5, "reverseLayout":Z
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v13, "graphicsContext":Landroidx/compose/ui/graphics/GraphicsContext;
    .local v23, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    move-object/from16 v24, v10

    .line 108
    .local v24, "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    if-eqz p5, :cond_29

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1c

    :cond_29
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1c
    move-object v2, v1

    .line 111
    .local v2, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    if-eqz p7, :cond_2a

    const v1, 0x1a048e3

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "112@4986L48"

    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 112
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 113
    shr-int/lit8 v3, v22, 0x3

    and-int/lit8 v3, v3, 0xe

    invoke-static {v12, v6, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsModifierKt;->rememberLazyGridBeyondBoundsState(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    move-result-object v3

    .line 114
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v4

    .line 115
    nop

    .line 116
    nop

    .line 112
    invoke-static {v1, v3, v4, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 111
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1d

    .line 118
    :cond_2a
    const v1, 0x1a4cdf0

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 119
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 111
    :goto_1d
    nop

    .line 110
    move-object v8, v1

    .line 124
    .local v8, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 125
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getRemeasurementModifier$foundation()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 126
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getAwaitLayoutModifier$foundation()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    shr-int/lit8 v3, v22, 0x9

    and-int v3, v3, v18

    shl-int/lit8 v4, v22, 0x3

    and-int v4, v4, v20

    or-int v7, v3, v4

    .line 127
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move/from16 v4, p7

    move-object v3, v2

    move-object/from16 v2, v19

    .end local v0    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v19    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .local v1, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .local v2, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .local v3, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 134
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object v2, v3

    move-object/from16 v18, v6

    .end local v1    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v3    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .local v20, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 135
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getItemAnimator$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 142
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getInternalInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    .line 135
    nop

    .line 137
    move-object v1, v12

    check-cast v1, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 138
    nop

    .line 143
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 136
    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v3, v8

    .end local v8    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .local v3, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x0

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    move-object/from16 v3, p8

    .end local v3    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .local v6, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v17, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ScrollableAreaKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 145
    move v1, v5

    move-object v3, v6

    .end local v5    # "reverseLayout":Z
    .end local v6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v1, "reverseLayout":Z
    .local v3, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v6

    .line 147
    nop

    .line 136
    nop

    .line 145
    nop

    .line 146
    nop

    .line 122
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    move-object/from16 v7, v24

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v19    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v24    # "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .local v4, "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .local v7, "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v4

    .end local v4    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v0    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    .end local v0    # "itemProviderLambda":Lkotlin/jvm/functions/Function0;
    .end local v2    # "orientation":Landroidx/compose/foundation/gestures/Orientation;
    .end local v7    # "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .end local v11    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v13    # "graphicsContext":Landroidx/compose/ui/graphics/GraphicsContext;
    .end local v16    # "stickyHeadersEnabled":Z
    .end local v17    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .end local v20    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    :cond_2b
    move v5, v1

    move-object v7, v3

    move-object v1, v14

    move-object/from16 v4, v23

    goto :goto_1e

    .line 59
    .end local v1    # "reverseLayout":Z
    .end local v3    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local v14    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$dirty1":I
    .end local v22    # "$dirty":I
    .end local v23    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "$dirty":I
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$dirty1":I
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local p3, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local p4, "reverseLayout":Z
    .restart local p6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    :cond_2c
    move-object v12, v1

    move-object/from16 v18, v6

    move/from16 v21, v7

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v7    # "$dirty1":I
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$dirty1":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move/from16 v22, v4

    move-object v4, v9

    move v5, v10

    move-object v1, v11

    .line 149
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local p4    # "reverseLayout":Z
    .end local p6    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v5    # "reverseLayout":Z
    .local v7, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .restart local v22    # "$dirty":I
    :goto_1e
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2d

    move-object v2, v0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v25, v2

    move-object v2, v12

    move-object v12, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v2, v25

    invoke-interface {v2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2d
    return-void
.end method

.method static final LazyGrid$lambda$0(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p14

    move-object/from16 v13, p15

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$keepAroundItems(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/gestures/Orientation;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "visibleItemsList"    # Ljava/util/List;
    .param p3, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->keepAroundItems(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/gestures/Orientation;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;)V

    return-void
.end method

.method private static final keepAroundItems(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/gestures/Orientation;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;)V
    .locals 7
    .param p0, "$this$keepAroundItems"    # Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "visibleItemsList"    # Ljava/util/List;
    .param p3, "measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            ")V"
        }
    .end annotation

    .line 440
    const-string/jumbo v0, "compose:lazy:cache_window:keepAroundItems"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 481
    .local v1, "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 482
    nop

    .line 483
    const/4 v2, 0x0

    .line 442
    .local v2, "$i$a$-trace-LazyGridKt$keepAroundItems$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->hasValidBounds()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-static {v3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfoKt;->lineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v3

    .line 444
    .local v3, "firstVisibleItemIndex":I
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-static {v4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfoKt;->lineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v4

    .line 447
    .local v4, "lastVisibleItemIndex":I
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getPrefetchWindowStartLine$foundation()I

    move-result v5

    .local v5, "line":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 448
    invoke-virtual {p3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->keepAround(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 447
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 451
    .end local v5    # "line":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "line":I
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getPrefetchWindowEndLine$foundation()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 452
    :goto_1
    invoke-virtual {p3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->keepAround(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 451
    if-eq v5, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 455
    .end local v3    # "firstVisibleItemIndex":I
    .end local v4    # "lastVisibleItemIndex":I
    .end local v5    # "line":I
    :cond_1
    nop

    .end local v2    # "$i$a$-trace-LazyGridKt$keepAroundItems$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    nop

    .line 485
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 483
    nop

    .line 456
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    return-void

    .line 485
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private static final rememberLazyGridMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .locals 22
    .param p0, "itemProviderLambda"    # Lkotlin/jvm/functions/Function0;
    .param p1, "state"    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .param p2, "slots"    # Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "reverseLayout"    # Z
    .param p5, "isVertical"    # Z
    .param p6, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p7, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p8, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p9, "graphicsContext"    # Landroidx/compose/ui/graphics/GraphicsContext;
    .param p10, "stickyItemsScrollBehavior"    # Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;"
        }
    .end annotation

    .line 180
    move-object/from16 v0, p11

    move/from16 v1, p12

    const v2, -0x3d73bf05

    const-string v3, "C(rememberLazyGridMeasurePolicy)N(itemProviderLambda,state,slots,contentPadding,reverseLayout,isVertical,horizontalArrangement,verticalArrangement,coroutineScope,graphicsContext,stickyItemsScrollBehavior)179@7590L12074:LazyGrid.kt#7791vq"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "androidx.compose.foundation.lazy.grid.rememberLazyGridMeasurePolicy (LazyGrid.kt:179)"

    move/from16 v4, p13

    invoke-static {v2, v1, v4, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v4, p13

    :goto_0
    const v2, 0x50809fc5

    const-string v3, "CC(remember):LazyGrid.kt#9igjgp"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v2, v3, :cond_1

    .line 181
    move-object/from16 v8, p1

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 180
    :cond_1
    move-object/from16 v8, p1

    .line 181
    :goto_1
    and-int/lit8 v2, v1, 0x30

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    and-int/lit16 v3, v1, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v7, 0x100

    if-le v3, v7, :cond_4

    .line 182
    move-object/from16 v13, p2

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 181
    :cond_4
    move-object/from16 v13, p2

    .line 182
    :goto_3
    and-int/lit16 v3, v1, 0x180

    if-ne v3, v7, :cond_6

    :cond_5
    move v3, v6

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_4
    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    xor-int/lit16 v3, v3, 0xc00

    const/16 v7, 0x800

    if-le v3, v7, :cond_7

    .line 183
    move-object/from16 v10, p3

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 182
    :cond_7
    move-object/from16 v10, p3

    .line 183
    :goto_5
    and-int/lit16 v3, v1, 0xc00

    if-ne v3, v7, :cond_9

    :cond_8
    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v3, v1

    xor-int/lit16 v3, v3, 0x6000

    const/16 v7, 0x4000

    if-le v3, v7, :cond_a

    .line 184
    move/from16 v11, p4

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_7

    .line 183
    :cond_a
    move/from16 v11, p4

    .line 184
    :goto_7
    and-int/lit16 v3, v1, 0x6000

    if-ne v3, v7, :cond_c

    :cond_b
    move v3, v6

    goto :goto_8

    :cond_c
    move v3, v5

    :goto_8
    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    const/high16 v7, 0x30000

    xor-int/2addr v3, v7

    const/high16 v9, 0x20000

    if-le v3, v9, :cond_d

    .line 185
    move/from16 v3, p5

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_9

    .line 184
    :cond_d
    move/from16 v3, p5

    .line 185
    :goto_9
    and-int/2addr v7, v1

    if-ne v7, v9, :cond_f

    :cond_e
    move v7, v6

    goto :goto_a

    :cond_f
    move v7, v5

    :goto_a
    or-int/2addr v2, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v1

    const/high16 v9, 0x180000

    xor-int/2addr v7, v9

    const/high16 v12, 0x100000

    if-le v7, v12, :cond_10

    .line 186
    move-object/from16 v15, p6

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_b

    .line 185
    :cond_10
    move-object/from16 v15, p6

    .line 186
    :goto_b
    and-int v7, v1, v9

    if-ne v7, v12, :cond_12

    :cond_11
    move v7, v6

    goto :goto_c

    :cond_12
    move v7, v5

    :goto_c
    or-int/2addr v2, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v1

    const/high16 v9, 0xc00000

    xor-int/2addr v7, v9

    const/high16 v12, 0x800000

    if-le v7, v12, :cond_13

    .line 187
    move-object/from16 v14, p7

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_d

    .line 186
    :cond_13
    move-object/from16 v14, p7

    .line 187
    :goto_d
    and-int v7, v1, v9

    if-ne v7, v12, :cond_15

    :cond_14
    move v5, v6

    :cond_15
    or-int/2addr v2, v5

    .line 188
    move-object/from16 v5, p9

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 180
    move-object/from16 v6, p11

    .local v2, "invalid$iv":Z
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 475
    .local v19, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 476
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_17

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_16

    goto :goto_e

    .line 480
    :cond_16
    goto :goto_f

    .line 477
    :cond_17
    :goto_e
    const/16 v21, 0x0

    .line 190
    .local v21, "$i$a$-cache-LazyGridKt$rememberLazyGridMeasurePolicy$1":I
    move-object v9, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v9, "it$iv":Ljava/lang/Object;
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move-object v12, v9

    move v9, v3

    move-object v3, v12

    move-object/from16 v12, p0

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    move-object/from16 v17, v5

    .end local v9    # "it$iv":Ljava/lang/Object;
    .local v3, "it$iv":Ljava/lang/Object;
    invoke-direct/range {v7 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;)V

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 431
    nop

    .line 477
    .end local v21    # "$i$a$-cache-LazyGridKt$rememberLazyGridMeasurePolicy$1":I
    nop

    .line 478
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 479
    nop

    .line 475
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_f
    nop

    .line 180
    .end local v2    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_18
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v7
.end method
