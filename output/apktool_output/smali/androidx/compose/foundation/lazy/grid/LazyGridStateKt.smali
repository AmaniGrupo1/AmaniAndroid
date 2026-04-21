.class public final Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;
.super Ljava/lang/Object;
.source "LazyGridState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,758:1\n1128#2,6:759\n1128#2,6:765\n1128#2,6:771\n1128#2,6:777\n*S KotlinDebug\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridStateKt\n*L\n81#1:759,6\n103#1:765,6\n105#1:771,6\n133#1:777,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a!\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a+\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "rememberLazyGridState",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "initialFirstVisibleItemIndex",
        "",
        "initialFirstVisibleItemScrollOffset",
        "(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "prefetchStrategy",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;",
        "(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "cacheWindow",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "EmptyLazyGridLayoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
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


# static fields
.field private static final EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;


# direct methods
.method public static synthetic $r8$lambda$3ixFdUCfZbLFklUSG46db99CeD8(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState$lambda$3$0(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TpLE_bjko8ZHnFp57NnN2I3cJf8(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState$lambda$2$0(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dDu9Ax-PeFSz4-6rWgPOzyp7-sQ(II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState$lambda$0$0(II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 727
    nop

    .line 733
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$EmptyLazyGridLayoutInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$EmptyLazyGridLayoutInfo$1;-><init>()V

    .line 743
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 748
    sget-object v19, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 752
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v10

    .line 754
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    .line 727
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 728
    nop

    .line 729
    nop

    .line 730
    nop

    .line 731
    nop

    .line 733
    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    .line 742
    nop

    .line 751
    nop

    .line 754
    nop

    .line 752
    nop

    .line 753
    new-instance v12, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda3;-><init>()V

    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda4;

    invoke-direct {v13}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda4;-><init>()V

    .line 743
    nop

    .line 744
    nop

    .line 745
    nop

    .line 746
    nop

    .line 747
    nop

    .line 748
    nop

    .line 749
    nop

    .line 750
    nop

    .line 727
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    sput-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    return-void
.end method

.method static final EmptyLazyGridLayoutInfo$lambda$0(I)Ljava/util/List;
    .locals 1
    .param p0, "it"    # I

    .line 755
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static final EmptyLazyGridLayoutInfo$lambda$1(I)I
    .locals 1
    .param p0, "it"    # I

    .line 756
    const/4 v0, -0x1

    return v0
.end method

.method public static final synthetic access$getEmptyLazyGridLayoutInfo$p()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    return-object v0
.end method

.method public static final rememberLazyGridState(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 16
    .param p0, "initialFirstVisibleItemIndex"    # I
    .param p1, "initialFirstVisibleItemScrollOffset"    # I
    .param p2, "prefetchStrategy"    # Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 104
    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, -0x1364c70

    const-string v3, "C(rememberLazyGridState)N(initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset,prefetchStrategy)102@4719L39,104@4872L161,104@4790L243:LazyGridState.kt#7791vq"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    .line 101
    const/4 v3, 0x0

    .end local p0    # "initialFirstVisibleItemIndex":I
    .local v3, "initialFirstVisibleItemIndex":I
    goto :goto_0

    .line 104
    .end local v3    # "initialFirstVisibleItemIndex":I
    .restart local p0    # "initialFirstVisibleItemIndex":I
    :cond_0
    move/from16 v3, p0

    .line 101
    .end local p0    # "initialFirstVisibleItemIndex":I
    .restart local v3    # "initialFirstVisibleItemIndex":I
    :goto_0
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_1

    .line 102
    const/4 v4, 0x0

    .end local p1    # "initialFirstVisibleItemScrollOffset":I
    .local v4, "initialFirstVisibleItemScrollOffset":I
    goto :goto_1

    .line 101
    .end local v4    # "initialFirstVisibleItemScrollOffset":I
    .restart local p1    # "initialFirstVisibleItemScrollOffset":I
    :cond_1
    move/from16 v4, p1

    .line 102
    .end local p1    # "initialFirstVisibleItemScrollOffset":I
    .restart local v4    # "initialFirstVisibleItemScrollOffset":I
    :goto_1
    const/4 v5, 0x4

    and-int/lit8 v6, p5, 0x4

    const-string v7, "CC(remember):LazyGridState.kt#9igjgp"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    .line 103
    const v6, 0x732b24d7

    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "invalid$iv":Z
    move-object/from16 v10, p3

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 765
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 766
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_2

    .line 767
    const/4 v14, 0x0

    .line 103
    .local v14, "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$2":I
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategyKt;->LazyGridPrefetchStrategy$default(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    move-result-object v14

    .line 767
    .end local v14    # "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$2":I
    nop

    .line 768
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 769
    move-object v12, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 770
    :cond_2
    nop

    .line 765
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2
    nop

    .line 103
    .end local v6    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v6, v12

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .end local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    .local v6, "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_3

    .line 102
    .end local v6    # "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    .restart local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    :cond_3
    move-object/from16 v6, p2

    .line 103
    .end local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    .restart local v6    # "prefetchStrategy":Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    const-string/jumbo v11, "androidx.compose.foundation.lazy.grid.rememberLazyGridState (LazyGridState.kt:103)"

    invoke-static {v2, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 105
    :cond_4
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    invoke-virtual {v10, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;->saver$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v10

    const v11, 0x732b3871

    invoke-static {v0, v11, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v7, v1, 0xe

    xor-int/lit8 v7, v7, 0x6

    if-le v7, v5, :cond_5

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    and-int/lit8 v7, v1, 0x6

    if-ne v7, v5, :cond_7

    :cond_6
    move v5, v9

    goto :goto_4

    :cond_7
    move v5, v8

    :goto_4
    and-int/lit8 v7, v1, 0x70

    xor-int/lit8 v7, v7, 0x30

    const/16 v11, 0x20

    if-le v7, v11, :cond_8

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    and-int/lit8 v7, v1, 0x30

    if-ne v7, v11, :cond_a

    :cond_9
    move v7, v9

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    or-int/2addr v5, v7

    and-int/lit16 v7, v1, 0x380

    xor-int/lit16 v7, v7, 0x180

    const/16 v11, 0x100

    if-le v7, v11, :cond_b

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    and-int/lit16 v7, v1, 0x180

    if-ne v7, v11, :cond_d

    :cond_c
    goto :goto_6

    :cond_d
    move v9, v8

    :goto_6
    or-int/2addr v5, v9

    .local v5, "invalid$iv":Z
    move-object/from16 v7, p3

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 771
    .local v9, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 772
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_f

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_e

    goto :goto_7

    .line 776
    :cond_e
    goto :goto_8

    .line 773
    :cond_f
    :goto_7
    const/4 v13, 0x0

    .line 105
    .local v13, "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$3":I
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;

    invoke-direct {v14, v3, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda2;-><init>(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)V

    .line 773
    .end local v13    # "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$3":I
    nop

    .line 774
    .restart local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 775
    move-object v11, v14

    .line 771
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 105
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v2, v10, v11, v0, v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 104
    :cond_10
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 105
    return-object v2
.end method

.method public static final rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 9
    .param p0, "initialFirstVisibleItemIndex"    # I
    .param p1, "initialFirstVisibleItemScrollOffset"    # I
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 80
    const v0, 0x1bd5b8c

    const-string v1, "C(rememberLazyGridState)N(initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset)80@3856L96,80@3810L142:LazyGridState.kt#7791vq"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 78
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 79
    const/4 p1, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.lazy.grid.rememberLazyGridState (LazyGridState.kt:79)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    .line 81
    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const v2, -0x782b3e94

    const-string v3, "CC(remember):LazyGridState.kt#9igjgp"

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    and-int/lit8 v2, p3, 0x6

    if-ne v2, v3, :cond_5

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, p4

    :goto_0
    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    if-le v3, v5, :cond_6

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    and-int/lit8 v3, p3, 0x30

    if-ne v3, v5, :cond_8

    :cond_7
    goto :goto_1

    :cond_8
    move v4, p4

    :goto_1
    or-int/2addr v2, v4

    .local v2, "invalid$iv":Z
    move-object v3, p2

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 759
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 760
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_9

    goto :goto_2

    .line 764
    :cond_9
    goto :goto_3

    .line 761
    :cond_a
    :goto_2
    const/4 v7, 0x0

    .line 81
    .local v7, "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$1":I
    new-instance v8, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda1;-><init>(II)V

    .line 761
    .end local v7    # "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$1":I
    nop

    .line 762
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 763
    move-object v5, v8

    .line 759
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 81
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v1, v5, p2, p4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 80
    :cond_b
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 81
    return-object p4
.end method

.method public static final rememberLazyGridState(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 9
    .param p0, "cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .param p1, "initialFirstVisibleItemIndex"    # I
    .param p2, "initialFirstVisibleItemScrollOffset"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 132
    const v0, -0x5ba16fcc

    const-string v1, "C(rememberLazyGridState)N(cacheWindow,initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset)132@5906L156,132@5834L228:LazyGridState.kt#7791vq"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 130
    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p5, v1

    if-eqz p5, :cond_1

    .line 131
    const/4 p2, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.grid.rememberLazyGridState (LazyGridState.kt:131)"

    invoke-static {v0, p4, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;->saver$foundation(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    const v2, 0x6fb7490

    const-string v3, "CC(remember):LazyGridState.kt#9igjgp"

    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p4, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v1, :cond_3

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    and-int/lit8 v2, p4, 0x6

    if-ne v2, v1, :cond_5

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v4

    :goto_0
    and-int/lit8 v2, p4, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/16 v5, 0x20

    if-le v2, v5, :cond_6

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    and-int/lit8 v2, p4, 0x30

    if-ne v2, v5, :cond_8

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v2, v4

    :goto_1
    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/16 v5, 0x100

    if-le v2, v5, :cond_9

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    and-int/lit16 v2, p4, 0x180

    if-ne v2, v5, :cond_b

    :cond_a
    goto :goto_2

    :cond_b
    move v3, v4

    :goto_2
    or-int/2addr v1, v3

    .local v1, "invalid$iv":Z
    move-object v2, p3

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 777
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 778
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_d

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_c

    goto :goto_3

    .line 782
    :cond_c
    goto :goto_4

    .line 779
    :cond_d
    :goto_3
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$4":I
    new-instance v8, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V

    .line 779
    .end local v7    # "$i$a$-cache-LazyGridStateKt$rememberLazyGridState$4":I
    nop

    .line 780
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 781
    move-object v5, v8

    .line 777
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 133
    .end local v1    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {p5, v0, v5, p3, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 132
    :cond_e
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 133
    return-object p5
.end method

.method private static final rememberLazyGridState$lambda$0$0(II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 1
    .param p0, "$initialFirstVisibleItemIndex"    # I
    .param p1, "$initialFirstVisibleItemScrollOffset"    # I

    .line 82
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    return-object v0
.end method

.method private static final rememberLazyGridState$lambda$2$0(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 1
    .param p0, "$initialFirstVisibleItemIndex"    # I
    .param p1, "$initialFirstVisibleItemScrollOffset"    # I
    .param p2, "$prefetchStrategy"    # Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .line 106
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 106
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)V

    .line 110
    return-object v0
.end method

.method private static final rememberLazyGridState$lambda$3$0(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 1
    .param p0, "$cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .param p1, "$initialFirstVisibleItemIndex"    # I
    .param p2, "$initialFirstVisibleItemScrollOffset"    # I

    .line 134
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 134
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V

    .line 138
    return-object v0
.end method
