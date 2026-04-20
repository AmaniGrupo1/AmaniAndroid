.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "LazyList.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n*L\n1#1,422:1\n109#2,5:423\n109#2,5:428\n32#3:433\n32#3:435\n80#4:434\n80#4:436\n613#5,7:437\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n*L\n252#1:423,5\n257#1:428,5\n275#1:433\n282#1:435\n275#1:434\n282#1:436\n329#1:437,7\n*E\n"
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
.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "I",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final measure_0kLqBqw$lambda$3(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JIIIILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 3
    .param p0, "$this_LazyLayoutMeasurePolicy"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p1, "$$v$c$androidx-compose-ui-unit-Constraints$-containerConstraints$0"    # J
    .param p3, "$totalHorizontalPadding"    # I
    .param p4, "$totalVerticalPadding"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "placement"    # Lkotlin/jvm/functions/Function1;

    .line 379
    nop

    .line 380
    add-int v0, p5, p3

    invoke-static {p1, p2, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 381
    add-int v1, p6, p4

    invoke-static {p1, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 382
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 383
    nop

    .line 379
    invoke-interface {p0, v0, v1, v2, p7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 384
    return-object v0
.end method


# virtual methods
.method public final measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 51
    .param p1, "$this$LazyLayoutMeasurePolicy"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
    .param p2, "$v$c$androidx-compose-ui-unit-Constraints$-containerConstraints$0"    # J

    .line 202
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getMeasurementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 204
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getHasLookaheadOccurred$foundation()Z

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
    move/from16 v21, v0

    .line 206
    .local v21, "hasLookaheadOccurred":Z
    nop

    .line 207
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 205
    :goto_2
    invoke-static {v4, v5, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 212
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 216
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 212
    if-eqz v0, :cond_3

    .line 213
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_3

    .line 216
    :cond_3
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 212
    :goto_3
    nop

    .line 211
    move/from16 v28, v0

    .line 220
    .local v28, "startPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 224
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 220
    if-eqz v0, :cond_4

    .line 221
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {v2, v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    goto :goto_4

    .line 224
    :cond_4
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 220
    :goto_4
    nop

    .line 219
    move/from16 v29, v0

    .line 226
    .local v29, "endPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v30

    .line 227
    .local v30, "topPadding":I
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v31

    .line 228
    .local v31, "bottomPadding":I
    add-int v2, v30, v31

    .line 229
    .local v2, "totalVerticalPadding":I
    add-int v6, v28, v29

    .line 231
    .local v6, "totalHorizontalPadding":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v6

    .line 230
    :goto_5
    move/from16 v32, v0

    .line 233
    .local v32, "totalMainAxisPadding":I
    nop

    .line 234
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_6

    move/from16 v13, v30

    goto :goto_6

    .line 235
    :cond_6
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v0, :cond_7

    move/from16 v13, v31

    goto :goto_6

    .line 236
    :cond_7
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v0, :cond_8

    move/from16 v13, v28

    goto :goto_6

    .line 237
    :cond_8
    move/from16 v13, v29

    .line 233
    :goto_6
    nop

    .line 232
    nop

    .line 239
    .local v13, "beforeContentPadding":I
    sub-int v14, v32, v13

    .line 241
    .local v14, "afterContentPadding":I
    neg-int v0, v6

    neg-int v7, v2

    invoke-static {v4, v5, v0, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v11

    .line 240
    nop

    .line 243
    .local v11, "contentConstraints":J
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 245
    .local v7, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-result-object v0

    .line 246
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v8

    .line 247
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    .line 245
    invoke-virtual {v0, v8, v9}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxSize(II)V

    .line 251
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .local v0, "value$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 423
    .local v8, "$i$f$requirePreconditionNotNull":I
    if-eqz v0, :cond_9

    .line 427
    nop

    .line 255
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$requirePreconditionNotNull":I
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v0

    goto :goto_7

    .line 424
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$i$f$requirePreconditionNotNull":I
    :cond_9
    const/4 v9, 0x0

    .line 253
    .local v9, "$i$a$-requirePreconditionNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$1":I
    nop

    .line 424
    .end local v9    # "$i$a$-requirePreconditionNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$1":I
    const-string/jumbo v9, "null verticalArrangement when isVertical == true"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v9, Lkotlin/KotlinNothingValueException;

    invoke-direct {v9}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v9

    .line 257
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$requirePreconditionNotNull":I
    :cond_a
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .restart local v0    # "value$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 428
    .restart local v8    # "$i$f$requirePreconditionNotNull":I
    if-eqz v0, :cond_15

    .line 432
    nop

    .line 260
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$requirePreconditionNotNull":I
    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v0

    .line 251
    :goto_7
    nop

    .line 250
    move v8, v0

    .line 262
    .local v8, "spaceBetweenItemsDp":F
    invoke-interface {v3, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    .line 264
    .local v9, "spaceBetweenItems":I
    move v10, v8

    .end local v8    # "spaceBetweenItemsDp":F
    .local v10, "spaceBetweenItemsDp":F
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemCount()I

    move-result v8

    .line 268
    .local v8, "itemsCount":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_b

    .line 269
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_8

    .line 271
    :cond_b
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    sub-int/2addr v0, v6

    .line 268
    :goto_8
    nop

    .line 267
    move/from16 v18, v0

    .line 274
    .local v18, "mainAxisAvailableSize":I
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    const/16 v17, 0x20

    if-eqz v0, :cond_f

    if-lez v18, :cond_c

    move/from16 v23, v2

    const-wide v19, 0xffffffffL

    goto :goto_b

    .line 283
    :cond_c
    iget-boolean v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v0, :cond_d

    move/from16 v0, v28

    goto :goto_9

    :cond_d
    add-int v0, v28, v18

    .line 284
    :goto_9
    const-wide v19, 0xffffffffL

    iget-boolean v15, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v15, :cond_e

    add-int v15, v30, v18

    goto :goto_a

    :cond_e
    move/from16 v15, v30

    .line 282
    :goto_a
    nop

    .local v0, "x$iv":I
    .local v15, "y$iv":I
    const/16 v16, 0x0

    .line 435
    .local v16, "$i$f$IntOffset":I
    move/from16 v22, v15

    .local v22, "val2$iv$iv":I
    move/from16 v23, v0

    .local v23, "val1$iv$iv":I
    const/16 v24, 0x0

    .line 436
    .local v24, "$i$f$packInts":I
    move/from16 v25, v0

    move/from16 v23, v2

    .end local v2    # "totalVerticalPadding":I
    .local v0, "val1$iv$iv":I
    .local v23, "totalVerticalPadding":I
    .local v25, "x$iv":I
    int-to-long v2, v0

    shl-long v2, v2, v17

    move/from16 v26, v0

    move-wide/from16 v33, v2

    move/from16 v0, v22

    .end local v22    # "val2$iv$iv":I
    .local v0, "val2$iv$iv":I
    .local v26, "val1$iv$iv":I
    int-to-long v2, v0

    and-long v2, v2, v19

    or-long v2, v33, v2

    .line 435
    .end local v0    # "val2$iv$iv":I
    .end local v24    # "$i$f$packInts":I
    .end local v26    # "val1$iv$iv":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_c

    .line 274
    .end local v15    # "y$iv":I
    .end local v16    # "$i$f$IntOffset":I
    .end local v23    # "totalVerticalPadding":I
    .end local v25    # "x$iv":I
    .restart local v2    # "totalVerticalPadding":I
    :cond_f
    move/from16 v23, v2

    const-wide v19, 0xffffffffL

    .line 275
    .end local v2    # "totalVerticalPadding":I
    .restart local v23    # "totalVerticalPadding":I
    :goto_b
    move/from16 v0, v30

    .local v0, "y$iv":I
    move/from16 v2, v28

    .local v2, "x$iv":I
    const/4 v3, 0x0

    .line 433
    .local v3, "$i$f$IntOffset":I
    move v15, v0

    .local v15, "val2$iv$iv":I
    move/from16 v16, v2

    .local v16, "val1$iv$iv":I
    const/16 v22, 0x0

    .line 434
    .local v22, "$i$f$packInts":I
    move/from16 v24, v0

    move/from16 v25, v3

    move/from16 v0, v16

    .end local v2    # "x$iv":I
    .end local v3    # "$i$f$IntOffset":I
    .local v0, "val1$iv$iv":I
    .local v16, "x$iv":I
    .local v24, "y$iv":I
    .local v25, "$i$f$IntOffset":I
    int-to-long v2, v0

    shl-long v2, v2, v17

    move-wide/from16 v26, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    or-long v2, v26, v2

    .line 433
    .end local v0    # "val1$iv$iv":I
    .end local v15    # "val2$iv$iv":I
    .end local v22    # "$i$f$packInts":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v2

    move-wide v15, v2

    .line 274
    .end local v16    # "x$iv":I
    .end local v24    # "y$iv":I
    .end local v25    # "$i$f$IntOffset":I
    :goto_c
    nop

    .line 273
    nop

    .line 289
    .local v15, "visualItemOffset":J
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move v3, v10

    .end local v10    # "spaceBetweenItemsDp":F
    .local v3, "spaceBetweenItemsDp":F
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-wide/from16 v49, v11

    move v12, v3

    move-wide/from16 v3, v49

    .end local v11    # "contentConstraints":J
    .local v3, "contentConstraints":J
    .local v12, "spaceBetweenItemsDp":F
    iget-object v11, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move/from16 v17, v12

    .end local v12    # "spaceBetweenItemsDp":F
    .local v17, "spaceBetweenItemsDp":F
    iget-boolean v12, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move/from16 v19, v6

    move-object v6, v7

    move/from16 v33, v17

    move-object/from16 v7, p1

    move-object/from16 v17, v0

    .end local v7    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .end local v17    # "spaceBetweenItemsDp":F
    .local v6, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v19, "totalHorizontalPadding":I
    .local v33, "spaceBetweenItemsDp":F
    invoke-direct/range {v2 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 288
    move-wide v11, v3

    move v10, v8

    move-wide/from16 v34, v15

    move-object v8, v6

    .end local v3    # "contentConstraints":J
    .end local v6    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .end local v15    # "visualItemOffset":J
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v10, "itemsCount":I
    .restart local v11    # "contentConstraints":J
    .local v34, "visualItemOffset":J
    move-object/from16 v36, v2

    .line 327
    .local v36, "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    const/4 v2, 0x0

    .line 328
    .local v2, "firstVisibleItemIndex":I
    const/4 v3, 0x0

    .line 329
    .local v3, "firstVisibleScrollOffset":I
    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v5, 0x0

    .line 437
    .local v5, "$i$f$withoutReadObservation":I
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    .line 438
    .local v6, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/16 v37, 0x0

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    goto :goto_d

    :cond_10
    move-object/from16 v7, v37

    .line 439
    .local v7, "observer$iv":Lkotlin/jvm/functions/Function1;
    :goto_d
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v15

    .line 440
    .local v15, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 441
    const/16 v16, 0x0

    .line 330
    .local v16, "$i$a$-withoutReadObservation-LazyListKt$rememberLazyListMeasurePolicy$1$1$1":I
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    move/from16 v17, v2

    .end local v2    # "firstVisibleItemIndex":I
    .local v17, "firstVisibleItemIndex":I
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v2

    .line 331
    invoke-virtual {v0, v8, v2}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 330
    move/from16 v17, v2

    .line 335
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v20, v0

    .line 336
    .end local v3    # "firstVisibleScrollOffset":I
    .local v20, "firstVisibleScrollOffset":I
    nop

    .end local v16    # "$i$a$-withoutReadObservation-LazyListKt$rememberLazyListMeasurePolicy$1$1$1":I
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    nop

    .line 443
    invoke-virtual {v4, v6, v15, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 441
    nop

    .line 339
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v5    # "$i$f$withoutReadObservation":I
    .end local v6    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v7    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v15    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 340
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getPinnedItems$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v2

    .line 341
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v3

    .line 339
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v0

    .line 338
    nop

    .line 345
    .local v0, "pinnedItems":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v21, :cond_11

    goto :goto_e

    .line 348
    :cond_11
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollDeltaBetweenPasses$foundation()F

    move-result v2

    goto :goto_f

    .line 346
    :cond_12
    :goto_e
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollToBeConsumed$foundation()F

    move-result v2

    .line 345
    :goto_f
    nop

    .line 344
    move v15, v2

    .line 354
    .local v15, "scrollToBeConsumed":F
    nop

    .line 355
    move-object/from16 v16, v36

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 360
    nop

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    move/from16 v22, v13

    .end local v13    # "beforeContentPadding":I
    .local v22, "beforeContentPadding":I
    iget-boolean v13, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 365
    move/from16 v24, v14

    .end local v14    # "afterContentPadding":I
    .local v24, "afterContentPadding":I
    iget-object v14, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 366
    move/from16 v25, v10

    move v10, v15

    .end local v15    # "scrollToBeConsumed":F
    .local v10, "scrollToBeConsumed":F
    .local v25, "itemsCount":I
    iget-object v15, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 367
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 368
    move-object/from16 v26, v8

    move/from16 v8, v17

    .end local v17    # "firstVisibleItemIndex":I
    .local v8, "firstVisibleItemIndex":I
    .local v26, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/ui/unit/Density;

    .line 369
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getItemAnimator$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v27

    .line 370
    iget v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    .line 371
    nop

    .line 372
    nop

    .line 373
    move/from16 v38, v22

    .end local v22    # "beforeContentPadding":I
    .local v38, "beforeContentPadding":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v22

    .line 374
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 375
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getPlacementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;

    move-result-object v39

    .line 376
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 377
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyItemsPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 353
    move v7, v2

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$$ExternalSyntheticLambda0;

    move-object/from16 v40, v4

    move/from16 v41, v25

    move-object/from16 v42, v26

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v6, v19

    move-wide/from16 v4, p2

    move/from16 v19, v7

    move/from16 v7, v23

    move/from16 v23, v3

    move-object/from16 v3, p1

    .end local v19    # "totalHorizontalPadding":I
    .end local v23    # "totalVerticalPadding":I
    .end local v25    # "itemsCount":I
    .end local v26    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v6, "totalHorizontalPadding":I
    .local v7, "totalVerticalPadding":I
    .local v41, "itemsCount":I
    .local v42, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v3, v39

    move/from16 v39, v6

    move/from16 v6, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v16

    move/from16 v4, v18

    move/from16 v16, v19

    move/from16 v19, v23

    move-object/from16 v18, v27

    move/from16 v5, v38

    move-object/from16 v23, v40

    move-object/from16 v27, v2

    move/from16 v38, v7

    move v7, v9

    move/from16 v9, v20

    move/from16 v2, v41

    move-object/from16 v20, v0

    .end local v0    # "pinnedItems":Ljava/util/List;
    .end local v18    # "mainAxisAvailableSize":I
    .end local v24    # "afterContentPadding":I
    .end local v41    # "itemsCount":I
    .local v2, "itemsCount":I
    .local v4, "mainAxisAvailableSize":I
    .local v5, "beforeContentPadding":I
    .local v6, "afterContentPadding":I
    .local v7, "spaceBetweenItems":I
    .local v9, "firstVisibleScrollOffset":I
    .local v20, "pinnedItems":Ljava/util/List;
    .local v38, "totalVerticalPadding":I
    .local v39, "totalHorizontalPadding":I
    invoke-static/range {v2 .. v27}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList-_s_dbAc(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    .line 352
    move/from16 v25, v2

    move v13, v5

    move v14, v6

    move v2, v7

    move v3, v10

    move v10, v4

    .end local v4    # "mainAxisAvailableSize":I
    .end local v5    # "beforeContentPadding":I
    .end local v6    # "afterContentPadding":I
    .end local v7    # "spaceBetweenItems":I
    .local v2, "spaceBetweenItems":I
    .local v3, "scrollToBeConsumed":F
    .local v10, "mainAxisAvailableSize":I
    .restart local v13    # "beforeContentPadding":I
    .restart local v14    # "afterContentPadding":I
    .restart local v25    # "itemsCount":I
    move-object/from16 v44, v0

    .line 388
    .local v44, "measureResult":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->isLookingAhead()Z

    move-result v45

    const/16 v47, 0x4

    const/16 v48, 0x0

    const/16 v46, 0x0

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v48}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZILjava/lang/Object;)V

    .line 390
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getPrefetchStrategy$foundation()Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    move-result-object v0

    instance-of v4, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    if-eqz v4, :cond_13

    move-object/from16 v37, v0

    check-cast v37, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    :cond_13
    move-object/from16 v0, v37

    if-eqz v0, :cond_14

    .line 391
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    .line 392
    move-object/from16 v5, v36

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    .line 390
    invoke-static {v0, v4, v5}, Landroidx/compose/foundation/lazy/LazyListKt;->access$keepAroundItems(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;)V

    .line 394
    :cond_14
    move-object/from16 v0, v44

    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    return-object v0

    .line 443
    .end local v2    # "spaceBetweenItems":I
    .end local v3    # "scrollToBeConsumed":F
    .end local v25    # "itemsCount":I
    .end local v38    # "totalVerticalPadding":I
    .end local v39    # "totalHorizontalPadding":I
    .end local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .end local v44    # "measureResult":Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v5, "$i$f$withoutReadObservation":I
    .local v6, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v7, "observer$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v9, "spaceBetweenItems":I
    .local v10, "itemsCount":I
    .local v15, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v17    # "firstVisibleItemIndex":I
    .restart local v18    # "mainAxisAvailableSize":I
    .restart local v19    # "totalHorizontalPadding":I
    .local v20, "firstVisibleScrollOffset":I
    .restart local v23    # "totalVerticalPadding":I
    :catchall_0
    move-exception v0

    move-object/from16 v42, v8

    move v2, v9

    move/from16 v25, v10

    move/from16 v8, v17

    move/from16 v10, v18

    move/from16 v39, v19

    move/from16 v9, v20

    move/from16 v38, v23

    move v3, v9

    .end local v17    # "firstVisibleItemIndex":I
    .end local v18    # "mainAxisAvailableSize":I
    .end local v19    # "totalHorizontalPadding":I
    .end local v20    # "firstVisibleScrollOffset":I
    .end local v23    # "totalVerticalPadding":I
    .restart local v2    # "spaceBetweenItems":I
    .local v8, "firstVisibleItemIndex":I
    .local v9, "firstVisibleScrollOffset":I
    .local v10, "mainAxisAvailableSize":I
    .restart local v25    # "itemsCount":I
    .restart local v38    # "totalVerticalPadding":I
    .restart local v39    # "totalHorizontalPadding":I
    .restart local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    goto :goto_10

    .end local v2    # "spaceBetweenItems":I
    .end local v25    # "itemsCount":I
    .end local v38    # "totalVerticalPadding":I
    .end local v39    # "totalHorizontalPadding":I
    .end local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v3, "firstVisibleScrollOffset":I
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v9, "spaceBetweenItems":I
    .local v10, "itemsCount":I
    .restart local v17    # "firstVisibleItemIndex":I
    .restart local v18    # "mainAxisAvailableSize":I
    .restart local v19    # "totalHorizontalPadding":I
    .restart local v23    # "totalVerticalPadding":I
    :catchall_1
    move-exception v0

    move-object/from16 v42, v8

    move v2, v9

    move/from16 v25, v10

    move/from16 v8, v17

    move/from16 v10, v18

    move/from16 v39, v19

    move/from16 v38, v23

    .end local v9    # "spaceBetweenItems":I
    .end local v17    # "firstVisibleItemIndex":I
    .end local v18    # "mainAxisAvailableSize":I
    .end local v19    # "totalHorizontalPadding":I
    .end local v23    # "totalVerticalPadding":I
    .restart local v2    # "spaceBetweenItems":I
    .local v8, "firstVisibleItemIndex":I
    .local v10, "mainAxisAvailableSize":I
    .restart local v25    # "itemsCount":I
    .restart local v38    # "totalVerticalPadding":I
    .restart local v39    # "totalHorizontalPadding":I
    .restart local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    goto :goto_10

    .end local v2    # "spaceBetweenItems":I
    .end local v25    # "itemsCount":I
    .end local v38    # "totalVerticalPadding":I
    .end local v39    # "totalHorizontalPadding":I
    .end local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v8, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .restart local v9    # "spaceBetweenItems":I
    .local v10, "itemsCount":I
    .restart local v17    # "firstVisibleItemIndex":I
    .restart local v18    # "mainAxisAvailableSize":I
    .restart local v19    # "totalHorizontalPadding":I
    .restart local v23    # "totalVerticalPadding":I
    :catchall_2
    move-exception v0

    move-object/from16 v42, v8

    move v2, v9

    move/from16 v25, v10

    move/from16 v10, v18

    move/from16 v39, v19

    move/from16 v38, v23

    .end local v8    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .end local v9    # "spaceBetweenItems":I
    .end local v18    # "mainAxisAvailableSize":I
    .end local v19    # "totalHorizontalPadding":I
    .end local v23    # "totalVerticalPadding":I
    .restart local v2    # "spaceBetweenItems":I
    .local v10, "mainAxisAvailableSize":I
    .restart local v25    # "itemsCount":I
    .restart local v38    # "totalVerticalPadding":I
    .restart local v39    # "totalHorizontalPadding":I
    .restart local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    :goto_10
    invoke-virtual {v4, v6, v15, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    .line 429
    .end local v3    # "firstVisibleScrollOffset":I
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v5    # "$i$f$withoutReadObservation":I
    .end local v10    # "mainAxisAvailableSize":I
    .end local v15    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v17    # "firstVisibleItemIndex":I
    .end local v25    # "itemsCount":I
    .end local v33    # "spaceBetweenItemsDp":F
    .end local v34    # "visualItemOffset":J
    .end local v36    # "measuredItemProvider":Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
    .end local v38    # "totalVerticalPadding":I
    .end local v39    # "totalHorizontalPadding":I
    .end local v42    # "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v0, "value$iv":Ljava/lang/Object;
    .local v2, "totalVerticalPadding":I
    .local v6, "totalHorizontalPadding":I
    .local v7, "itemProvider":Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .local v8, "$i$f$requirePreconditionNotNull":I
    :cond_15
    move/from16 v38, v2

    .end local v2    # "totalVerticalPadding":I
    .restart local v38    # "totalVerticalPadding":I
    const/4 v2, 0x0

    .line 258
    .local v2, "$i$a$-requirePreconditionNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$2":I
    nop

    .line 429
    .end local v2    # "$i$a$-requirePreconditionNotNull-LazyListKt$rememberLazyListMeasurePolicy$1$1$spaceBetweenItemsDp$2":I
    const-string/jumbo v2, "null horizontalAlignment when isVertical == false"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method
