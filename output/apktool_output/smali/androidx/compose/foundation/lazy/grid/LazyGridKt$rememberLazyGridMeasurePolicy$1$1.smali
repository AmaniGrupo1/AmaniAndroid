.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "LazyGrid.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,457:1\n109#2,5:458\n109#2,5:463\n32#3:468\n32#3:470\n80#4:469\n80#4:471\n613#5,7:472\n35#6,5:479\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n*L\n240#1:458,5\n245#1:463,5\n262#1:468\n269#1:470\n262#1:469\n269#1:471\n353#1:472,7\n337#1:479,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final measure_0kLqBqw$lambda$2(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;I)Ljava/util/ArrayList;
    .locals 18
    .param p0, "$spanLayoutProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .param p1, "$measuredLineProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .param p2, "line"    # I

    .line 333
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object v2

    .line 334
    .local v2, "lineConfiguration":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;
    const/4 v3, 0x0

    .local v3, "index":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    move-result v3

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, "slot":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v5, "result":Ljava/util/ArrayList;
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    move-result-object v6

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 479
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_0

    .line 480
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 481
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    move-result-wide v11

    .local v11, "it":J
    const/4 v13, 0x0

    .line 338
    .local v13, "$i$a$-fastForEach-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$prefetchInfoRetriever$1$1":I
    invoke-static {v11, v12}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    move-result v14

    .line 339
    .local v14, "span":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v3, v3, 0x1

    .line 341
    add-int/2addr v4, v14

    .line 342
    nop

    .line 481
    .end local v11    # "it":J
    .end local v13    # "$i$a$-fastForEach-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$prefetchInfoRetriever$1$1":I
    .end local v14    # "span":I
    nop

    .line 479
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 483
    .end local v8    # "index$iv":I
    :cond_0
    nop

    .line 343
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    return-object v5
.end method

.method static final measure_0kLqBqw$lambda$3(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;I)I
    .locals 1
    .param p0, "$spanLayoutProvider"    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .param p1, "itemIndex"    # I

    .line 347
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v0

    return v0
.end method

.method static final measure_0kLqBqw$lambda$5(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JIIIILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 3
    .param p0, "$this_LazyLayoutMeasurePolicy"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "$$v$c$androidx-compose-ui-unit-Constraints$-containerConstraints$0"    # J
    .param p3, "$totalHorizontalPadding"    # I
    .param p4, "$totalVerticalPadding"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "placement"    # Lkotlin/jvm/functions/Function1;

    .line 415
    nop

    .line 416
    add-int v0, p5, p3

    invoke-static {p1, p2, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 417
    add-int v1, p6, p4

    invoke-static {p1, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 418
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 419
    nop

    .line 415
    invoke-interface {p0, v0, v1, v2, p7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 420
    return-object v0
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 58
    .param p1, "$this$LazyLayoutMeasurePolicy"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p2, "$v$c$androidx-compose-ui-unit-Constraints$-containerConstraints$0"    # J

    .line 191
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v13, p2

    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getMeasurementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 193
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getHasLookaheadOccurred$foundation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move/from16 v22, v0

    .line 195
    .local v22, "isInLookaheadScope":Z
    nop

    .line 196
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 194
    :goto_2
    invoke-static {v13, v14, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 201
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 205
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 201
    if-eqz v0, :cond_3

    .line 202
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_3

    .line 205
    :cond_3
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 201
    :goto_3
    nop

    .line 200
    move/from16 v32, v0

    .line 209
    .local v32, "startPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 213
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 209
    if-eqz v0, :cond_4

    .line 210
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_4

    .line 213
    :cond_4
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 209
    :goto_4
    nop

    .line 208
    move/from16 v33, v0

    .line 215
    .local v33, "endPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v34

    .line 216
    .local v34, "topPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v35

    .line 217
    .local v35, "bottomPadding":I
    add-int v15, v34, v35

    .line 218
    .local v15, "totalVerticalPadding":I
    add-int v2, v32, v33

    .line 220
    .local v2, "totalHorizontalPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_5

    move v0, v15

    goto :goto_5

    :cond_5
    move v0, v2

    .line 219
    :goto_5
    move/from16 v36, v0

    .line 222
    .local v36, "totalMainAxisPadding":I
    nop

    .line 223
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_6

    move/from16 v6, v34

    goto :goto_6

    .line 224
    :cond_6
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_7

    move/from16 v6, v35

    goto :goto_6

    .line 225
    :cond_7
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_8

    move/from16 v6, v32

    goto :goto_6

    .line 226
    :cond_8
    move/from16 v6, v33

    .line 222
    :goto_6
    nop

    .line 221
    nop

    .line 228
    .local v6, "beforeContentPadding":I
    sub-int v7, v36, v6

    .line 230
    .local v7, "afterContentPadding":I
    neg-int v0, v2

    neg-int v4, v15

    invoke-static {v13, v14, v0, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v4

    .line 229
    nop

    .line 232
    .local v4, "contentConstraints":J
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 233
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    invoke-interface {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getSpanLayoutProvider()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-result-object v9

    .line 234
    .local v9, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    move-object v10, v3

    check-cast v10, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v10, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;->invoke-0kLqBqw(Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-result-object v25

    .line 235
    .local v25, "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->getSizes()[I

    move-result-object v0

    array-length v10, v0

    .line 236
    .local v10, "slotsPerLine":I
    invoke-virtual {v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->setSlotsPerLine(I)V

    .line 239
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_a

    .line 240
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .local v0, "value$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 458
    .local v11, "$i$f$requirePreconditionNotNull":I
    if-eqz v0, :cond_9

    .line 462
    nop

    .line 243
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$requirePreconditionNotNull":I
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v0

    goto :goto_7

    .line 459
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v11    # "$i$f$requirePreconditionNotNull":I
    :cond_9
    const/4 v12, 0x0

    .line 241
    .local v12, "$i$a$-requirePreconditionNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$1":I
    nop

    .line 459
    .end local v12    # "$i$a$-requirePreconditionNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$1":I
    const-string/jumbo v12, "null verticalArrangement when isVertical == true"

    invoke-static {v12}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v12, Lkotlin/KotlinNothingValueException;

    invoke-direct {v12}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v12

    .line 245
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$requirePreconditionNotNull":I
    :cond_a
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .restart local v0    # "value$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 463
    .restart local v11    # "$i$f$requirePreconditionNotNull":I
    if-eqz v0, :cond_17

    .line 467
    nop

    .line 248
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v11    # "$i$f$requirePreconditionNotNull":I
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v0

    .line 239
    :goto_7
    nop

    .line 238
    move v11, v0

    .line 250
    .local v11, "spaceBetweenLinesDp":F
    invoke-interface {v3, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v27

    .line 251
    .local v27, "spaceBetweenLines":I
    invoke-interface {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getItemCount()I

    move-result v26

    .line 255
    .local v26, "itemsCount":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_b

    .line 256
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    sub-int/2addr v0, v15

    goto :goto_8

    .line 258
    :cond_b
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    sub-int/2addr v0, v2

    .line 255
    :goto_8
    nop

    .line 254
    move/from16 v16, v0

    .line 261
    .local v16, "mainAxisAvailableSize":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    const-wide v17, 0xffffffffL

    if-eqz v0, :cond_f

    if-lez v16, :cond_c

    move/from16 v23, v2

    const/16 v19, 0x20

    goto :goto_b

    .line 270
    :cond_c
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_d

    move/from16 v0, v32

    goto :goto_9

    :cond_d
    add-int v0, v32, v16

    .line 271
    :goto_9
    const/16 v19, 0x20

    iget-boolean v12, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v12, :cond_e

    add-int v12, v34, v16

    goto :goto_a

    :cond_e
    move/from16 v12, v34

    .line 269
    :goto_a
    nop

    .local v0, "x$iv":I
    .local v12, "y$iv":I
    const/16 v20, 0x0

    .line 470
    .local v20, "$i$f$IntOffset":I
    move/from16 v21, v12

    .local v21, "val2$iv$iv":I
    move/from16 v23, v0

    .local v23, "val1$iv$iv":I
    move/from16 v24, v21

    .end local v21    # "val2$iv$iv":I
    .local v24, "val2$iv$iv":I
    const/16 v21, 0x0

    .line 471
    .local v21, "$i$f$packInts":I
    move/from16 v28, v0

    move/from16 v23, v2

    .end local v2    # "totalHorizontalPadding":I
    .local v0, "val1$iv$iv":I
    .local v23, "totalHorizontalPadding":I
    .local v28, "x$iv":I
    int-to-long v2, v0

    shl-long v2, v2, v19

    move/from16 v29, v0

    move-wide/from16 v30, v2

    move/from16 v0, v24

    .end local v24    # "val2$iv$iv":I
    .local v0, "val2$iv$iv":I
    .local v29, "val1$iv$iv":I
    int-to-long v2, v0

    and-long v2, v2, v17

    or-long v2, v30, v2

    .line 470
    .end local v0    # "val2$iv$iv":I
    .end local v21    # "$i$f$packInts":I
    .end local v29    # "val1$iv$iv":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_c

    .line 261
    .end local v12    # "y$iv":I
    .end local v20    # "$i$f$IntOffset":I
    .end local v23    # "totalHorizontalPadding":I
    .end local v28    # "x$iv":I
    .restart local v2    # "totalHorizontalPadding":I
    :cond_f
    move/from16 v23, v2

    const/16 v19, 0x20

    .line 262
    .end local v2    # "totalHorizontalPadding":I
    .restart local v23    # "totalHorizontalPadding":I
    :goto_b
    move/from16 v0, v34

    .local v0, "y$iv":I
    move/from16 v2, v32

    .local v2, "x$iv":I
    const/4 v3, 0x0

    .line 468
    .local v3, "$i$f$IntOffset":I
    move v12, v0

    .local v12, "val2$iv$iv":I
    move/from16 v20, v2

    .local v20, "val1$iv$iv":I
    const/16 v21, 0x0

    .line 469
    .restart local v21    # "$i$f$packInts":I
    move/from16 v24, v0

    move/from16 v28, v3

    move/from16 v0, v20

    .end local v2    # "x$iv":I
    .end local v3    # "$i$f$IntOffset":I
    .local v0, "val1$iv$iv":I
    .local v20, "x$iv":I
    .local v24, "y$iv":I
    .local v28, "$i$f$IntOffset":I
    int-to-long v2, v0

    shl-long v2, v2, v19

    move-wide/from16 v29, v2

    int-to-long v2, v12

    and-long v2, v2, v17

    or-long v2, v29, v2

    .line 468
    .end local v0    # "val1$iv$iv":I
    .end local v12    # "val2$iv$iv":I
    .end local v21    # "$i$f$packInts":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v2

    .line 261
    .end local v20    # "x$iv":I
    .end local v24    # "y$iv":I
    .end local v28    # "$i$f$IntOffset":I
    :goto_c
    nop

    .line 260
    nop

    .line 276
    .local v2, "visualItemOffset":J
    new-instance v28, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    move-object/from16 v29, v9

    move v9, v6

    .end local v6    # "beforeContentPadding":I
    .local v9, "beforeContentPadding":I
    .local v29, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    iget-object v6, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move/from16 v20, v10

    move v10, v7

    .end local v7    # "afterContentPadding":I
    .local v10, "afterContentPadding":I
    .local v20, "slotsPerLine":I
    iget-boolean v7, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move-wide/from16 v56, v2

    move v2, v11

    move-wide/from16 v11, v56

    move-object v3, v8

    .end local v8    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v2, "spaceBetweenLinesDp":F
    .local v3, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v11, "visualItemOffset":J
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v37, v2

    move-wide/from16 v18, v4

    move/from16 v17, v23

    move/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v4, p1

    .end local v2    # "spaceBetweenLinesDp":F
    .end local v4    # "contentConstraints":J
    .end local v23    # "totalHorizontalPadding":I
    .end local v27    # "spaceBetweenLines":I
    .local v5, "spaceBetweenLines":I
    .local v17, "totalHorizontalPadding":I
    .local v18, "contentConstraints":J
    .local v37, "spaceBetweenLinesDp":F
    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/lazy/grid/LazyGridState;ZZIIJ)V

    .line 275
    move-object v8, v3

    move-wide/from16 v38, v11

    .line 308
    .end local v3    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v11    # "visualItemOffset":J
    .restart local v8    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v28, "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    .local v38, "visualItemOffset":J
    new-instance v23, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v24, v0

    .end local v5    # "spaceBetweenLines":I
    .restart local v27    # "spaceBetweenLines":I
    invoke-direct/range {v23 .. v29}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    .line 307
    move-object/from16 v40, v25

    move/from16 v12, v26

    move-object/from16 v41, v28

    move-object/from16 v11, v29

    .end local v25    # "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    .end local v26    # "itemsCount":I
    .end local v28    # "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v29    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v11, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v12, "itemsCount":I
    .local v40, "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    .local v41, "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    move-object/from16 v2, v23

    .line 332
    .local v2, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;)V

    move-object/from16 v28, v0

    .line 346
    .local v28, "prefetchInfoRetriever":Lkotlin/jvm/functions/Function1;
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    move-object/from16 v29, v0

    .line 350
    .local v29, "lineIndexProvider":Lkotlin/jvm/functions/Function1;
    const/4 v3, 0x0

    .line 351
    .local v3, "firstVisibleLineIndex":I
    const/4 v4, 0x0

    .line 353
    .local v4, "firstVisibleLineScrollOffset":I
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v5, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v6, 0x0

    .line 472
    .local v6, "$i$f$withoutReadObservation":I
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v7

    .line 473
    .local v7, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/16 v42, 0x0

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v21

    goto :goto_d

    :cond_10
    move-object/from16 v21, v42

    :goto_d
    move-object/from16 v23, v21

    .line 474
    .local v23, "observer$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v21, v2

    .end local v2    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .local v21, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 475
    .local v2, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 476
    const/16 v24, 0x0

    .line 355
    .local v24, "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1":I
    nop

    .line 356
    nop

    .line 357
    move/from16 v25, v3

    .end local v3    # "firstVisibleLineIndex":I
    .local v25, "firstVisibleLineIndex":I
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    move-result v3

    .line 355
    invoke-virtual {v0, v8, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 354
    nop

    .line 359
    .local v3, "index":I
    if-lt v3, v12, :cond_12

    if-gtz v12, :cond_11

    goto :goto_e

    .line 365
    :cond_11
    add-int/lit8 v0, v12, -0x1

    :try_start_1
    invoke-virtual {v11, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v25    # "firstVisibleLineIndex":I
    .local v0, "firstVisibleLineIndex":I
    const/4 v4, 0x0

    move/from16 v26, v0

    move/from16 v25, v10

    move v10, v4

    goto :goto_f

    .line 478
    .end local v0    # "firstVisibleLineIndex":I
    .end local v3    # "index":I
    .end local v24    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1":I
    .restart local v25    # "firstVisibleLineIndex":I
    :catchall_0
    move-exception v0

    move-wide/from16 v43, v18

    move/from16 v19, v12

    move-wide/from16 v12, v43

    move-object/from16 v48, v8

    move v8, v9

    move-object/from16 v49, v11

    move/from16 v43, v15

    move/from16 v45, v16

    move/from16 v44, v17

    move-object/from16 v47, v21

    move-object/from16 v3, v23

    move/from16 v21, v10

    goto/16 :goto_12

    .line 360
    .restart local v3    # "index":I
    .restart local v24    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1":I
    :cond_12
    :goto_e
    :try_start_2
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 361
    .end local v25    # "firstVisibleLineIndex":I
    .local v26, "firstVisibleLineIndex":I
    :try_start_3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v4, v0

    move/from16 v25, v10

    move v10, v4

    .line 368
    .end local v4    # "firstVisibleLineScrollOffset":I
    .local v10, "firstVisibleLineScrollOffset":I
    .local v25, "afterContentPadding":I
    :goto_f
    nop

    .end local v3    # "index":I
    .end local v24    # "$i$a$-withoutReadObservation-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1":I
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    nop

    .line 478
    move-object/from16 v3, v23

    .end local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v3, "observer$iv":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v5, v7, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 476
    nop

    .line 371
    .end local v2    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v6    # "$i$f$withoutReadObservation":I
    .end local v7    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 372
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPinnedItems$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v2

    .line 373
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v3

    .line 371
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v0

    .line 370
    nop

    .line 377
    .local v0, "pinnedItems":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v2

    if-nez v2, :cond_14

    if-nez v22, :cond_13

    goto :goto_10

    .line 380
    :cond_13
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getScrollDeltaBetweenPasses$foundation()F

    move-result v2

    goto :goto_11

    .line 378
    :cond_14
    :goto_10
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getScrollToBeConsumed$foundation()F

    move-result v2

    .line 377
    :goto_11
    nop

    .line 376
    move/from16 v23, v2

    .line 402
    .local v23, "scrollToBeConsumed":F
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getItemAnimator$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v24

    .line 406
    move-object/from16 v30, v11

    move/from16 v11, v23

    .end local v23    # "scrollToBeConsumed":F
    .local v11, "scrollToBeConsumed":F
    .local v30, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v23

    .line 407
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getApproachLayoutInfo$foundation()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    .line 409
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPlacementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;

    move-result-object v31

    .line 386
    nop

    .line 387
    move-object/from16 v43, v21

    check-cast v43, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    .line 388
    move-object/from16 v44, v41

    check-cast v44, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    nop

    .line 393
    nop

    .line 394
    nop

    .line 395
    nop

    .line 396
    nop

    .line 397
    iget-boolean v14, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 398
    move v7, v15

    .end local v15    # "totalVerticalPadding":I
    .local v7, "totalVerticalPadding":I
    iget-object v15, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 399
    iget-object v13, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 400
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 401
    move/from16 v45, v16

    move-object/from16 v16, v13

    move-wide/from16 v56, v18

    move/from16 v19, v12

    move-wide/from16 v12, v56

    .end local v16    # "mainAxisAvailableSize":I
    .end local v18    # "contentConstraints":J
    .local v12, "contentConstraints":J
    .local v19, "itemsCount":I
    .local v45, "mainAxisAvailableSize":I
    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/ui/unit/Density;

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 405
    nop

    .line 406
    nop

    .line 407
    move-object/from16 v46, v2

    check-cast v46, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 408
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 409
    nop

    .line 412
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 410
    nop

    .line 411
    nop

    .line 413
    iget-object v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$stickyItemsScrollBehavior:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 385
    move-object v6, v2

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda2;

    move-object/from16 v48, v8

    move-object/from16 v47, v21

    move/from16 v21, v25

    move/from16 v8, v27

    move-object/from16 v49, v30

    move-object/from16 v27, v4

    move-object/from16 v30, v5

    move-object/from16 v25, v6

    move/from16 v6, v17

    move-wide/from16 v4, p2

    move/from16 v17, v3

    move-object/from16 v3, p1

    .end local v17    # "totalHorizontalPadding":I
    .end local v25    # "afterContentPadding":I
    .end local v27    # "spaceBetweenLines":I
    .end local v30    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v6, "totalHorizontalPadding":I
    .local v8, "spaceBetweenLines":I
    .local v21, "afterContentPadding":I
    .local v47, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .local v48, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v49, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    move/from16 v5, v45

    move/from16 v44, v6

    move/from16 v43, v7

    move v6, v9

    move/from16 v7, v21

    move/from16 v9, v26

    move-object/from16 v26, v31

    move-object/from16 v21, v0

    move-object/from16 v31, v2

    move/from16 v2, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v46

    .end local v0    # "pinnedItems":Ljava/util/List;
    .end local v19    # "itemsCount":I
    .end local v26    # "firstVisibleLineIndex":I
    .end local v45    # "mainAxisAvailableSize":I
    .local v2, "itemsCount":I
    .local v5, "mainAxisAvailableSize":I
    .local v6, "beforeContentPadding":I
    .local v7, "afterContentPadding":I
    .local v9, "firstVisibleLineIndex":I
    .local v21, "pinnedItems":Ljava/util/List;
    .local v43, "totalVerticalPadding":I
    .local v44, "totalHorizontalPadding":I
    invoke-static/range {v2 .. v31}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid-t1x4au0(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    .line 384
    move/from16 v19, v2

    move/from16 v27, v8

    move-object/from16 v2, v21

    move v8, v6

    move/from16 v21, v7

    .end local v5    # "mainAxisAvailableSize":I
    .end local v6    # "beforeContentPadding":I
    .end local v7    # "afterContentPadding":I
    .local v2, "pinnedItems":Ljava/util/List;
    .local v8, "beforeContentPadding":I
    .restart local v19    # "itemsCount":I
    .local v21, "afterContentPadding":I
    .restart local v27    # "spaceBetweenLines":I
    .restart local v45    # "mainAxisAvailableSize":I
    move-object/from16 v51, v0

    .line 423
    .local v51, "measureResult":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v52

    const/16 v54, 0x4

    const/16 v55, 0x0

    const/16 v53, 0x0

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v55}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZILjava/lang/Object;)V

    .line 425
    iget-object v0, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchStrategy$foundation()Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    move-result-object v0

    instance-of v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    if-eqz v3, :cond_15

    move-object/from16 v42, v0

    check-cast v42, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    :cond_15
    move-object/from16 v0, v42

    if-eqz v0, :cond_16

    .line 426
    invoke-virtual/range {v51 .. v51}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v3

    .line 427
    invoke-virtual/range {v51 .. v51}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    .line 428
    move-object/from16 v5, v47

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    .line 425
    invoke-static {v0, v3, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->access$keepAroundItems(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/gestures/Orientation;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;)V

    .line 430
    :cond_16
    move-object/from16 v0, v51

    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    return-object v0

    .line 478
    .end local v19    # "itemsCount":I
    .end local v43    # "totalVerticalPadding":I
    .end local v44    # "totalHorizontalPadding":I
    .end local v45    # "mainAxisAvailableSize":I
    .end local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .end local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .end local v51    # "measureResult":Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .local v2, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v5, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v6, "$i$f$withoutReadObservation":I
    .local v7, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v9, "beforeContentPadding":I
    .local v11, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v12, "itemsCount":I
    .restart local v15    # "totalVerticalPadding":I
    .restart local v16    # "mainAxisAvailableSize":I
    .restart local v17    # "totalHorizontalPadding":I
    .restart local v18    # "contentConstraints":J
    .local v21, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .local v23, "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "afterContentPadding":I
    .restart local v26    # "firstVisibleLineIndex":I
    :catchall_1
    move-exception v0

    move-wide/from16 v43, v18

    move/from16 v19, v12

    move-wide/from16 v12, v43

    move-object/from16 v48, v8

    move v8, v9

    move-object/from16 v49, v11

    move/from16 v43, v15

    move/from16 v45, v16

    move/from16 v44, v17

    move-object/from16 v47, v21

    move-object/from16 v3, v23

    move/from16 v21, v25

    move/from16 v9, v26

    move/from16 v25, v9

    move v4, v10

    .end local v11    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .end local v15    # "totalVerticalPadding":I
    .end local v16    # "mainAxisAvailableSize":I
    .end local v17    # "totalHorizontalPadding":I
    .end local v18    # "contentConstraints":J
    .end local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "afterContentPadding":I
    .end local v26    # "firstVisibleLineIndex":I
    .restart local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "beforeContentPadding":I
    .local v9, "firstVisibleLineIndex":I
    .local v12, "contentConstraints":J
    .restart local v19    # "itemsCount":I
    .local v21, "afterContentPadding":I
    .restart local v43    # "totalVerticalPadding":I
    .restart local v44    # "totalHorizontalPadding":I
    .restart local v45    # "mainAxisAvailableSize":I
    .restart local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .restart local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    goto :goto_12

    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v19    # "itemsCount":I
    .end local v43    # "totalVerticalPadding":I
    .end local v44    # "totalHorizontalPadding":I
    .end local v45    # "mainAxisAvailableSize":I
    .end local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .end local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .restart local v4    # "firstVisibleLineScrollOffset":I
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v9, "beforeContentPadding":I
    .local v10, "afterContentPadding":I
    .restart local v11    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v12, "itemsCount":I
    .restart local v15    # "totalVerticalPadding":I
    .restart local v16    # "mainAxisAvailableSize":I
    .restart local v17    # "totalHorizontalPadding":I
    .restart local v18    # "contentConstraints":J
    .local v21, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "firstVisibleLineIndex":I
    :catchall_2
    move-exception v0

    move-wide/from16 v43, v18

    move/from16 v19, v12

    move-wide/from16 v12, v43

    move-object/from16 v48, v8

    move v8, v9

    move-object/from16 v49, v11

    move/from16 v43, v15

    move/from16 v45, v16

    move/from16 v44, v17

    move-object/from16 v47, v21

    move-object/from16 v3, v23

    move/from16 v21, v10

    move/from16 v25, v26

    .end local v9    # "beforeContentPadding":I
    .end local v10    # "afterContentPadding":I
    .end local v11    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .end local v15    # "totalVerticalPadding":I
    .end local v16    # "mainAxisAvailableSize":I
    .end local v17    # "totalHorizontalPadding":I
    .end local v18    # "contentConstraints":J
    .end local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "beforeContentPadding":I
    .local v12, "contentConstraints":J
    .restart local v19    # "itemsCount":I
    .local v21, "afterContentPadding":I
    .restart local v43    # "totalVerticalPadding":I
    .restart local v44    # "totalHorizontalPadding":I
    .restart local v45    # "mainAxisAvailableSize":I
    .restart local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .restart local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    goto :goto_12

    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v19    # "itemsCount":I
    .end local v26    # "firstVisibleLineIndex":I
    .end local v43    # "totalVerticalPadding":I
    .end local v44    # "totalHorizontalPadding":I
    .end local v45    # "mainAxisAvailableSize":I
    .end local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .end local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .restart local v9    # "beforeContentPadding":I
    .restart local v10    # "afterContentPadding":I
    .restart local v11    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v12, "itemsCount":I
    .restart local v15    # "totalVerticalPadding":I
    .restart local v16    # "mainAxisAvailableSize":I
    .restart local v17    # "totalHorizontalPadding":I
    .restart local v18    # "contentConstraints":J
    .local v21, "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v25, "firstVisibleLineIndex":I
    :catchall_3
    move-exception v0

    move-wide/from16 v43, v18

    move/from16 v19, v12

    move-wide/from16 v12, v43

    move-object/from16 v48, v8

    move v8, v9

    move-object/from16 v49, v11

    move/from16 v43, v15

    move/from16 v45, v16

    move/from16 v44, v17

    move-object/from16 v47, v21

    move-object/from16 v3, v23

    move/from16 v21, v10

    .end local v9    # "beforeContentPadding":I
    .end local v10    # "afterContentPadding":I
    .end local v11    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .end local v15    # "totalVerticalPadding":I
    .end local v16    # "mainAxisAvailableSize":I
    .end local v17    # "totalHorizontalPadding":I
    .end local v18    # "contentConstraints":J
    .end local v23    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "beforeContentPadding":I
    .local v12, "contentConstraints":J
    .restart local v19    # "itemsCount":I
    .local v21, "afterContentPadding":I
    .restart local v43    # "totalVerticalPadding":I
    .restart local v44    # "totalHorizontalPadding":I
    .restart local v45    # "mainAxisAvailableSize":I
    .restart local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .restart local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .restart local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    :goto_12
    invoke-virtual {v5, v7, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    .line 464
    .end local v3    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v12    # "contentConstraints":J
    .end local v19    # "itemsCount":I
    .end local v20    # "slotsPerLine":I
    .end local v21    # "afterContentPadding":I
    .end local v27    # "spaceBetweenLines":I
    .end local v28    # "prefetchInfoRetriever":Lkotlin/jvm/functions/Function1;
    .end local v29    # "lineIndexProvider":Lkotlin/jvm/functions/Function1;
    .end local v37    # "spaceBetweenLinesDp":F
    .end local v38    # "visualItemOffset":J
    .end local v40    # "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    .end local v41    # "measuredItemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v43    # "totalVerticalPadding":I
    .end local v44    # "totalHorizontalPadding":I
    .end local v45    # "mainAxisAvailableSize":I
    .end local v47    # "measuredLineProvider":Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
    .end local v48    # "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .end local v49    # "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v0, "value$iv":Ljava/lang/Object;
    .local v2, "totalHorizontalPadding":I
    .local v4, "contentConstraints":J
    .local v6, "beforeContentPadding":I
    .local v7, "afterContentPadding":I
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .local v9, "spanLayoutProvider":Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .local v10, "slotsPerLine":I
    .local v11, "$i$f$requirePreconditionNotNull":I
    .restart local v15    # "totalVerticalPadding":I
    .local v25, "resolvedSlots":Landroidx/compose/foundation/lazy/grid/LazyGridSlots;
    :cond_17
    move/from16 v44, v2

    .end local v2    # "totalHorizontalPadding":I
    .restart local v44    # "totalHorizontalPadding":I
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$a$-requirePreconditionNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$2":I
    nop

    .line 464
    .end local v2    # "$i$a$-requirePreconditionNotNull-LazyGridKt$rememberLazyGridMeasurePolicy$1$1$spaceBetweenLinesDp$2":I
    const-string/jumbo v2, "null horizontalArrangement when isVertical == false"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method
