.class final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetchState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NestedPrefetchController"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPrefetchState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPrefetchState.kt\nandroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,973:1\n97#2,4:974\n51#2,4:978\n27#3,3:982\n31#3:990\n27#3,5:991\n35#4,5:985\n35#4,5:996\n35#4,5:1001\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPrefetchState.kt\nandroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController\n*L\n851#1:974,4\n863#1:978,4\n869#1:982,3\n869#1:990\n872#1:991,5\n870#1:985,5\n915#1:996,5\n924#1:1001,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001a\u0010\u0014\u001a\u00020\u000f*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000fJ\u0006\u0010\u0018\u001a\u00020\u000cJ\u0006\u0010\u0019\u001a\u00020\u000cR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00030\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;",
        "",
        "states",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V",
        "requestsByState",
        "",
        "Landroidx/compose/foundation/lazy/layout/PrefetchRequest;",
        "[Ljava/util/List;",
        "stateIndex",
        "",
        "requestIndex",
        "executedNestedPrefetch",
        "",
        "getExecutedNestedPrefetch",
        "()Z",
        "setExecutedNestedPrefetch",
        "(Z)V",
        "executeNestedPrefetches",
        "Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;",
        "nestedPrefetchCount",
        "isUrgent",
        "collectIdealNestedPrefetchCount",
        "collectNestedPrefetchedItemsCount",
        "foundation"
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
.field private executedNestedPrefetch:Z

.field private requestIndex:I

.field private final requestsByState:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/PrefetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private stateIndex:I

.field private final states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V
    .locals 3
    .param p1, "this$0"    # Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
    .param p2, "states"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            ">;)V"
        }
    .end annotation

    .line 839
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    .line 845
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestsByState:[Ljava/util/List;

    .line 850
    nop

    .line 851
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 974
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_0

    .line 975
    const/4 v2, 0x0

    .line 852
    .local v2, "$i$a$-requirePrecondition-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$1":I
    nop

    .line 975
    .end local v2    # "$i$a$-requirePrecondition-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$1":I
    const-string/jumbo v2, "NestedPrefetchController shouldn\'t be created with no states"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 977
    :cond_0
    nop

    .line 854
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    nop

    .line 839
    return-void
.end method


# virtual methods
.method public final collectIdealNestedPrefetchCount()I
    .locals 9

    .line 914
    const/4 v0, 0x0

    .local v0, "count":I
    const v0, 0x7fffffff

    .line 915
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 996
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 997
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 998
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .local v6, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    const/4 v7, 0x0

    .line 917
    .local v7, "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$collectIdealNestedPrefetchCount$1":I
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->getIdealNestedPrefetchCount$foundation()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 918
    nop

    .line 998
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .end local v7    # "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$collectIdealNestedPrefetchCount$1":I
    nop

    .line 996
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    .end local v3    # "index$iv":I
    :cond_0
    nop

    .line 919
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final collectNestedPrefetchedItemsCount()I
    .locals 9

    .line 923
    const/4 v0, 0x0

    .local v0, "count":I
    const v0, 0x7fffffff

    .line 924
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1001
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 1002
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1003
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .local v6, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    const/4 v7, 0x0

    .line 926
    .local v7, "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$collectNestedPrefetchedItemsCount$1":I
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->getLastNumberOfNestedPrefetchItems$foundation()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 927
    nop

    .line 1003
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .end local v7    # "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$collectNestedPrefetchedItemsCount$1":I
    nop

    .line 1001
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1005
    .end local v3    # "index$iv":I
    :cond_0
    nop

    .line 928
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final executeNestedPrefetches(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;IZ)Z
    .locals 12
    .param p1, "$this$executeNestedPrefetches"    # Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;
    .param p2, "nestedPrefetchCount"    # I
    .param p3, "isUrgent"    # Z

    .line 860
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 861
    return v2

    .line 863
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->this$0:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->access$isCanceled$p(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .local v0, "value$iv":Z
    const/4 v3, 0x0

    .line 978
    .local v3, "$i$f$checkPrecondition":I
    if-nez v0, :cond_1

    .line 979
    const/4 v4, 0x0

    .line 864
    .local v4, "$i$a$-checkPrecondition-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$1":I
    nop

    .line 979
    .end local v4    # "$i$a$-checkPrecondition-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$1":I
    const-string/jumbo v4, "Should not execute nested prefetch on canceled request"

    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 981
    :cond_1
    nop

    .line 869
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$checkPrecondition":I
    const-string/jumbo v0, "compose:lazy:prefetch:update_nested_prefetch_count"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 982
    .local v3, "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 983
    nop

    .line 984
    const/4 v4, 0x0

    .line 870
    .local v4, "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$2":I
    :try_start_0
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 985
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_2

    .line 986
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 987
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .local v10, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    const/4 v11, 0x0

    .line 870
    .local v11, "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$2$1":I
    invoke-virtual {v10, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->setRealizedNestedPrefetchCount$foundation(I)V

    .line 987
    .end local v10    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .end local v11    # "$i$a$-fastForEach-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$2$1":I
    nop

    .line 985
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 989
    .end local v7    # "index$iv":I
    :cond_2
    nop

    .line 871
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    nop

    .end local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 984
    nop

    .line 990
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 984
    nop

    .line 872
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    const-string/jumbo v0, "compose:lazy:prefetch:nested"

    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 991
    .restart local v3    # "$i$f$trace":I
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 992
    nop

    .line 993
    const/4 v4, 0x0

    .line 873
    .local v4, "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    :goto_1
    :try_start_1
    iget v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    iget-object v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 874
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestsByState:[Ljava/util/List;

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    aget-object v5, v5, v6

    if-nez v5, :cond_4

    .line 875
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;->availableTimeNanos()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 878
    nop

    .line 995
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    .line 881
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestsByState:[Ljava/util/List;

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    .line 882
    iget-object v7, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->states:Ljava/util/List;

    iget v8, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->collectNestedPrefetchRequests$foundation()Ljava/util/List;

    move-result-object v7

    aput-object v7, v5, v6

    .line 885
    :cond_4
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestsByState:[Ljava/util/List;

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    aget-object v5, v5, v6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 886
    .local v5, "nestedRequests":Ljava/util/List;
    :goto_3
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestIndex:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 888
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/layout/PrefetchRequest;

    .local v6, "$this$executeNestedPrefetches_u24lambda_u242_u240":Landroidx/compose/foundation/lazy/layout/PrefetchRequest;
    const/4 v7, 0x0

    .line 892
    .local v7, "$i$a$-with-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3$hasMoreWork$1":I
    if-eqz p3, :cond_6

    .line 893
    instance-of v8, v6, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    if-eqz v8, :cond_5

    move-object v8, v6

    check-cast v8, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->markAsUrgent()V

    .line 895
    :cond_6
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->executedNestedPrefetch:Z

    .line 896
    invoke-interface {v6, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchRequest;->execute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    move-result v8

    .line 888
    .end local v6    # "$this$executeNestedPrefetches_u24lambda_u242_u240":Landroidx/compose/foundation/lazy/layout/PrefetchRequest;
    .end local v7    # "$i$a$-with-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3$hasMoreWork$1":I
    nop

    .line 887
    nop

    .line 898
    .local v8, "hasMoreWork":Z
    if-eqz v8, :cond_7

    .line 899
    nop

    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    .end local v5    # "nestedRequests":Ljava/util/List;
    .end local v8    # "hasMoreWork":Z
    goto :goto_2

    .line 901
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    .restart local v5    # "nestedRequests":Ljava/util/List;
    .restart local v8    # "hasMoreWork":Z
    :cond_7
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestIndex:I

    .end local v8    # "hasMoreWork":Z
    goto :goto_3

    .line 905
    :cond_8
    iput v2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->requestIndex:I

    .line 906
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->stateIndex:I

    .end local v5    # "nestedRequests":Ljava/util/List;
    goto :goto_1

    .line 908
    :cond_9
    nop

    .end local v4    # "$i$a$-trace-PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController$executeNestedPrefetches$3":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 993
    nop

    .line 995
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 993
    nop

    .line 910
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    return v2

    .line 995
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    .line 990
    :catchall_1
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
.end method

.method public final getExecutedNestedPrefetch()Z
    .locals 1

    .line 848
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->executedNestedPrefetch:Z

    return v0
.end method

.method public final setExecutedNestedPrefetch(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 848
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;->executedNestedPrefetch:Z

    return-void
.end method
