.class public final Landroidx/compose/foundation/lazy/LazyListStateKt;
.super Ljava/lang/Object;
.source "LazyListState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,742:1\n1128#2,6:743\n1128#2,6:749\n1128#2,6:755\n1128#2,6:761\n*S KotlinDebug\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListStateKt\n*L\n80#1:743,6\n102#1:749,6\n104#1:755,6\n132#1:761,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a+\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "rememberLazyListState",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "initialFirstVisibleItemIndex",
        "",
        "initialFirstVisibleItemScrollOffset",
        "(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;",
        "prefetchStrategy",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;",
        "(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;",
        "cacheWindow",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;",
        "EmptyLazyListMeasureResult",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "NumberOfItemsToTeleport",
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
.field private static final EmptyLazyListMeasureResult:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

.field private static final NumberOfItemsToTeleport:I = 0x64


# direct methods
.method public static synthetic $r8$lambda$NyPfUbvPPDvChCjfsx626jbnIx8(II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState$lambda$0$0(II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PNNtKPuLDTP1steNVY3dDdrnOPs(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState$lambda$3$0(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YOqKA7tOrhO3TREDmjC7WzLoFBo(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState$lambda$2$0(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 711
    nop

    .line 717
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt$EmptyLazyListMeasureResult$1;-><init>()V

    .line 727
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 732
    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 736
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    .line 737
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v10

    .line 738
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v11

    .line 711
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 712
    nop

    .line 713
    nop

    .line 714
    nop

    .line 715
    nop

    .line 717
    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    .line 726
    nop

    .line 735
    nop

    .line 736
    nop

    .line 737
    nop

    .line 738
    nop

    .line 727
    nop

    .line 728
    nop

    .line 729
    nop

    .line 730
    nop

    .line 731
    nop

    .line 732
    nop

    .line 733
    nop

    .line 734
    nop

    .line 711
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/foundation/lazy/LazyListStateKt;->EmptyLazyListMeasureResult:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    return-void
.end method

.method public static final synthetic access$getEmptyLazyListMeasureResult$p()Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListStateKt;->EmptyLazyListMeasureResult:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    return-object v0
.end method

.method public static final rememberLazyListState(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 16
    .param p0, "initialFirstVisibleItemIndex"    # I
    .param p1, "initialFirstVisibleItemScrollOffset"    # I
    .param p2, "prefetchStrategy"    # Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 103
    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, 0x4cbe3a68    # 9.9734336E7f

    const-string v3, "C(rememberLazyListState)N(initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset,prefetchStrategy)101@4651L39,103@4804L161,103@4722L243:LazyListState.kt#428nma"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    .line 100
    const/4 v3, 0x0

    .end local p0    # "initialFirstVisibleItemIndex":I
    .local v3, "initialFirstVisibleItemIndex":I
    goto :goto_0

    .line 103
    .end local v3    # "initialFirstVisibleItemIndex":I
    .restart local p0    # "initialFirstVisibleItemIndex":I
    :cond_0
    move/from16 v3, p0

    .line 100
    .end local p0    # "initialFirstVisibleItemIndex":I
    .restart local v3    # "initialFirstVisibleItemIndex":I
    :goto_0
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_1

    .line 101
    const/4 v4, 0x0

    .end local p1    # "initialFirstVisibleItemScrollOffset":I
    .local v4, "initialFirstVisibleItemScrollOffset":I
    goto :goto_1

    .line 100
    .end local v4    # "initialFirstVisibleItemScrollOffset":I
    .restart local p1    # "initialFirstVisibleItemScrollOffset":I
    :cond_1
    move/from16 v4, p1

    .line 101
    .end local p1    # "initialFirstVisibleItemScrollOffset":I
    .restart local v4    # "initialFirstVisibleItemScrollOffset":I
    :goto_1
    const/4 v5, 0x4

    and-int/lit8 v6, p5, 0x4

    const-string v7, "CC(remember):LazyListState.kt#9igjgp"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    .line 102
    const v6, 0x161955af

    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "invalid$iv":Z
    move-object/from16 v10, p3

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 749
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 750
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_2

    .line 751
    const/4 v14, 0x0

    .line 102
    .local v14, "$i$a$-cache-LazyListStateKt$rememberLazyListState$2":I
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategyKt;->LazyListPrefetchStrategy$default(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    move-result-object v14

    .line 751
    .end local v14    # "$i$a$-cache-LazyListStateKt$rememberLazyListState$2":I
    nop

    .line 752
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 753
    move-object v12, v14

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 754
    :cond_2
    nop

    .line 749
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2
    nop

    .line 102
    .end local v6    # "invalid$iv":Z
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v6, v12

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .end local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .local v6, "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_3

    .line 101
    .end local v6    # "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .restart local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    :cond_3
    move-object/from16 v6, p2

    .line 102
    .end local p2    # "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    .restart local v6    # "prefetchStrategy":Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    const-string/jumbo v11, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:102)"

    invoke-static {v2, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_4
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    invoke-virtual {v10, v6}, Landroidx/compose/foundation/lazy/LazyListState$Companion;->saver$foundation(Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v10

    const v11, 0x16196949

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

    .line 755
    .local v9, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 756
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_f

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_e

    goto :goto_7

    .line 760
    :cond_e
    goto :goto_8

    .line 757
    :cond_f
    :goto_7
    const/4 v13, 0x0

    .line 104
    .local v13, "$i$a$-cache-LazyListStateKt$rememberLazyListState$3":I
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda1;

    invoke-direct {v14, v3, v4, v6}, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda1;-><init>(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V

    .line 757
    .end local v13    # "$i$a$-cache-LazyListStateKt$rememberLazyListState$3":I
    nop

    .line 758
    .restart local v14    # "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 759
    move-object v11, v14

    .line 755
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 104
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v2, v10, v11, v0, v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 103
    :cond_10
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 104
    return-object v2
.end method

.method public static final rememberLazyListState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 9
    .param p0, "initialFirstVisibleItemIndex"    # I
    .param p1, "initialFirstVisibleItemScrollOffset"    # I
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 79
    const v0, 0x57a86af4

    const-string v1, "C(rememberLazyListState)N(initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset)79@3788L96,79@3742L142:LazyListState.kt#428nma"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 77
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 78
    const/4 p1, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:78)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    .line 80
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const v2, 0xf3996d4

    const-string v3, "CC(remember):LazyListState.kt#9igjgp"

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

    .line 743
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 744
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_9

    goto :goto_2

    .line 748
    :cond_9
    goto :goto_3

    .line 745
    :cond_a
    :goto_2
    const/4 v7, 0x0

    .line 80
    .local v7, "$i$a$-cache-LazyListStateKt$rememberLazyListState$1":I
    new-instance v8, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p1}, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 745
    .end local v7    # "$i$a$-cache-LazyListStateKt$rememberLazyListState$1":I
    nop

    .line 746
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 747
    move-object v5, v8

    .line 743
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 80
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v1, v5, p2, p4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 79
    :cond_b
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 80
    return-object p4
.end method

.method public static final rememberLazyListState(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 9
    .param p0, "cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .param p1, "initialFirstVisibleItemIndex"    # I
    .param p2, "initialFirstVisibleItemScrollOffset"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 131
    const v0, 0x5eaf5b4c

    const-string v1, "C(rememberLazyListState)N(cacheWindow,initialFirstVisibleItemIndex,initialFirstVisibleItemScrollOffset)131@5838L156,131@5766L228:LazyListState.kt#428nma"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 129
    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p5, v1

    if-eqz p5, :cond_1

    .line 130
    const/4 p2, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:130)"

    invoke-static {v0, p4, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 132
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/LazyListState$Companion;->saver$foundation(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    const v2, 0x7045d9a8

    const-string v3, "CC(remember):LazyListState.kt#9igjgp"

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

    .line 761
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 762
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_d

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_c

    goto :goto_3

    .line 766
    :cond_c
    goto :goto_4

    .line 763
    :cond_d
    :goto_3
    const/4 v7, 0x0

    .line 132
    .local v7, "$i$a$-cache-LazyListStateKt$rememberLazyListState$4":I
    new-instance v8, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListStateKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V

    .line 763
    .end local v7    # "$i$a$-cache-LazyListStateKt$rememberLazyListState$4":I
    nop

    .line 764
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 765
    move-object v5, v8

    .line 761
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 132
    .end local v1    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {p5, v0, v5, p3, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 131
    :cond_e
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 132
    return-object p5
.end method

.method private static final rememberLazyListState$lambda$0$0(II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 1
    .param p0, "$initialFirstVisibleItemIndex"    # I
    .param p1, "$initialFirstVisibleItemScrollOffset"    # I

    .line 81
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    return-object v0
.end method

.method private static final rememberLazyListState$lambda$2$0(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 1
    .param p0, "$initialFirstVisibleItemIndex"    # I
    .param p1, "$initialFirstVisibleItemScrollOffset"    # I
    .param p2, "$prefetchStrategy"    # Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 105
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 105
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V

    .line 109
    return-object v0
.end method

.method private static final rememberLazyListState$lambda$3$0(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 1
    .param p0, "$cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .param p1, "$initialFirstVisibleItemIndex"    # I
    .param p2, "$initialFirstVisibleItemScrollOffset"    # I

    .line 133
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 133
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V

    .line 137
    return-object v0
.end method
