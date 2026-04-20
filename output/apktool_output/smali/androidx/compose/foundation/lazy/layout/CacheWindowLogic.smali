.class public abstract Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.super Ljava/lang/Object;
.source "CacheWindowLogic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCacheWindowLogic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheWindowLogic.kt\nandroidx/compose/foundation/lazy/layout/CacheWindowLogic\n+ 2 CacheWindowLogic.kt\nandroidx/compose/foundation/lazy/layout/CacheWindowLogicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n+ 5 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 8 IntSet.kt\nandroidx/collection/IntSet\n*L\n1#1,567:1\n559#2,4:568\n559#2,4:572\n559#2,4:576\n547#2,4:581\n559#2,4:585\n559#2,4:589\n559#2,4:593\n559#2,4:597\n559#2,4:631\n559#2,4:635\n559#2,4:639\n559#2,4:643\n559#2,4:652\n559#2,4:661\n559#2,4:718\n559#2,4:752\n559#2,4:756\n1#3:580\n747#4:601\n749#4:615\n750#4,3:621\n753#4:630\n354#5,6:602\n364#5,3:609\n367#5,2:613\n370#5,6:624\n390#5,3:670\n354#5,6:673\n364#5,3:680\n367#5,9:684\n393#5:693\n390#5,3:694\n354#5,6:697\n364#5,3:704\n367#5,9:708\n393#5:717\n1399#6:608\n1270#6:612\n1399#6:679\n1270#6:683\n1399#6:703\n1270#6:707\n1399#6:733\n1270#6:737\n35#7,5:616\n35#7,5:647\n35#7,5:656\n35#7,5:665\n35#7,5:740\n255#8,4:722\n225#8,7:726\n236#8,3:734\n239#8,2:738\n242#8,6:745\n259#8:751\n*S KotlinDebug\n*F\n+ 1 CacheWindowLogic.kt\nandroidx/compose/foundation/lazy/layout/CacheWindowLogic\n*L\n86#1:568,4\n92#1:572,4\n108#1:576,4\n131#1:581,4\n136#1:585,4\n162#1:589,4\n189#1:593,4\n229#1:597,4\n302#1:631,4\n336#1:635,4\n401#1:639,4\n405#1:643,4\n410#1:652,4\n450#1:661,4\n473#1:718,4\n486#1:752,4\n503#1:756,4\n255#1:601\n255#1:615\n255#1:621,3\n255#1:630\n255#1:602,6\n255#1:609,3\n255#1:613,2\n255#1:624,6\n469#1:670,3\n469#1:673,6\n469#1:680,3\n469#1:684,9\n469#1:693\n471#1:694,3\n471#1:697,6\n471#1:704,3\n471#1:708,9\n471#1:717\n255#1:608\n255#1:612\n469#1:679\n469#1:683\n471#1:703\n471#1:707\n475#1:733\n475#1:737\n256#1:616,5\n406#1:647,5\n415#1:656,5\n463#1:665,5\n476#1:740,5\n475#1:722,4\n475#1:726,7\n475#1:734,3\n475#1:738,2\n475#1:745,6\n475#1:751\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\u0008!\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u001f\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020\u0011J\u0008\u0010#\u001a\u00020 H\u0002J\n\u0010$\u001a\u00020 *\u00020!J\u0006\u0010%\u001a\u00020\u0005J\u0014\u0010&\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0014\u0010\'\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0014\u0010(\u001a\u00020 *\u00020!2\u0006\u0010)\u001a\u00020\u0005H\u0002J\u000c\u0010*\u001a\u00020 *\u00020!H\u0002J\u0006\u0010+\u001a\u00020 JD\u0010,\u001a\u00020 *\u00020!2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u00132\u0006\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0005H\u0002J@\u00104\u001a\u00020 2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u00132\u0006\u00102\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0013H\u0002J\u001c\u00106\u001a\u00020\u0013*\u00020!2\u0006\u00107\u001a\u00020\u00132\u0006\u00108\u001a\u00020\u0005H\u0002J\u0018\u00109\u001a\u00020 2\u0006\u00107\u001a\u00020\u00132\u0006\u0010:\u001a\u00020\u0013H\u0002J \u0010;\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u00132\u0006\u0010:\u001a\u00020\u00132\u0006\u0010<\u001a\u00020\u0001H\u0002J \u0010=\u001a\u00020 2\u0006\u00107\u001a\u00020\u00132\u0006\u0010<\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0013H\u0002J\u0018\u0010>\u001a\u00020 2\u0006\u0010?\u001a\u00020\u00132\u0006\u0010@\u001a\u00020\u0013H\u0002J\u001c\u0010A\u001a\u00020 *\u00020!2\u0006\u00107\u001a\u00020\u00132\u0006\u0010B\u001a\u00020\u0013H\u0002J\u000c\u0010C\u001a\u00020 *\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u000e\u0010\u001b\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "",
        "cacheWindow",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "enableInitialPrefetch",
        "",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V",
        "prefetchWindowHandles",
        "Landroidx/collection/MutableIntObjectMap;",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "indicesToRemove",
        "Landroidx/collection/MutableIntSet;",
        "windowCache",
        "Landroidx/compose/foundation/lazy/layout/CachedItem;",
        "previousPassDelta",
        "",
        "previousPassItemCount",
        "",
        "hasUpdatedVisibleItemsOnce",
        "value",
        "prefetchWindowStartLine",
        "getPrefetchWindowStartLine$foundation",
        "()I",
        "prefetchWindowEndLine",
        "getPrefetchWindowEndLine$foundation",
        "prefetchWindowStartExtraSpace",
        "prefetchWindowEndExtraSpace",
        "shouldRefillWindow",
        "itemsCount",
        "onScroll",
        "",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
        "delta",
        "traceWindowInfo",
        "onVisibleItemsUpdated",
        "hasValidBounds",
        "fillCacheWindowBackward",
        "fillCacheWindowForward",
        "refillWindow",
        "refillForward",
        "onDatasetChangedSize",
        "resetStrategy",
        "onPrefetchForward",
        "visibleWindowStart",
        "visibleWindowEnd",
        "prefetchForwardWindow",
        "mainAxisExtraSpaceEnd",
        "mainAxisExtraSpaceStart",
        "scrollDelta",
        "applyForwardPrefetch",
        "onKeepAround",
        "keepAroundWindow",
        "getItemSizeOrPrefetch",
        "index",
        "isUrgent",
        "cachePrefetchedItem",
        "size",
        "updateOrCreateCachedItem",
        "key",
        "cacheVisibleItemsInfo",
        "removeOutOfBoundsItems",
        "startLine",
        "endLine",
        "onItemPrefetched",
        "itemSize",
        "scheduleNextItemIfNeeded",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field private final enableInitialPrefetch:Z

.field private hasUpdatedVisibleItemsOnce:Z

.field private final indicesToRemove:Landroidx/collection/MutableIntSet;

.field private itemsCount:I

.field private prefetchWindowEndExtraSpace:I

.field private prefetchWindowEndLine:I

.field private final prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private prefetchWindowStartExtraSpace:I

.field private prefetchWindowStartLine:I

.field private previousPassDelta:F

.field private previousPassItemCount:I

.field private shouldRefillWindow:Z

.field private final windowCache:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/foundation/lazy/layout/CachedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V
    .locals 1
    .param p1, "cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .param p2, "enableInitialPrefetch"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 34
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->enableInitialPrefetch:Z

    .line 38
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 40
    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    .line 45
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    .line 58
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 34
    const/4 p2, 0x1

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V

    .line 35
    return-void
.end method

.method private final cachePrefetchedItem(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 422
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    sget-object v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 423
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    if-le p1, v0, :cond_0

    .line 424
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 425
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    goto :goto_0

    .line 426
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-ge p1, v0, :cond_1

    .line 427
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 428
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 430
    :cond_1
    :goto_0
    return-void
.end method

.method private final cacheVisibleItemsInfo(ILjava/lang/Object;I)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "size"    # I

    .line 450
    const/4 v0, 0x0

    .line 661
    .local v0, "$i$f$debugLog":I
    nop

    .line 664
    nop

    .line 451
    .end local v0    # "$i$f$debugLog":I
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result v0

    .line 453
    .local v0, "cachedSize":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 454
    .local v1, "cachedKey":Ljava/lang/Object;
    if-ne v0, p3, :cond_0

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    .line 459
    .end local v0    # "cachedSize":I
    .end local v1    # "cachedKey":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p0, p1, p3, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 461
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 462
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 463
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 665
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 666
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 667
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .local v5, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/4 v6, 0x0

    .line 463
    .local v6, "$i$a$-fastForEach-CacheWindowLogic$cacheVisibleItemsInfo$2":I
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 667
    .end local v5    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v6    # "$i$a$-fastForEach-CacheWindowLogic$cacheVisibleItemsInfo$2":I
    nop

    .line 665
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v2    # "index$iv":I
    :cond_2
    nop

    .line 464
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    :cond_3
    return-void
.end method

.method private final fillCacheWindowBackward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 12
    .param p1, "$this$fillCacheWindowBackward"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "delta"    # F

    .line 153
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    .line 157
    .local v0, "viewport":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 580
    .local v1, "$this$fillCacheWindowBackward_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$a$-with-CacheWindowLogic$fillCacheWindowBackward$keepAroundWindow$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateBehindWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 156
    .end local v1    # "$this$fillCacheWindowBackward_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .end local v2    # "$i$a$-with-CacheWindowLogic$fillCacheWindowBackward$keepAroundWindow$1":I
    :goto_0
    move v9, v3

    .line 160
    .local v9, "keepAroundWindow":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    .line 162
    const/4 v1, 0x0

    .line 589
    .local v1, "$i$f$debugLog":I
    nop

    .line 592
    nop

    .line 171
    .end local v1    # "$i$f$debugLog":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v5

    .line 172
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v6

    .line 175
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v11

    .line 176
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v8

    .line 177
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v7

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 177
    nop

    .line 176
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 170
    move-object v4, p0

    move v10, p2

    .end local p2    # "delta":F
    .local v10, "delta":F
    invoke-direct/range {v4 .. v11}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onKeepAround(IIIIIFI)V

    goto :goto_1

    .line 153
    .end local v0    # "viewport":I
    .end local v9    # "keepAroundWindow":I
    .end local v10    # "delta":F
    .restart local p2    # "delta":F
    :cond_1
    move v10, p2

    .line 180
    .end local p2    # "delta":F
    .restart local v10    # "delta":F
    :goto_1
    return-void
.end method

.method private final fillCacheWindowForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 10
    .param p1, "$this$fillCacheWindowForward"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "delta"    # F

    .line 183
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    .line 187
    .local v0, "viewport":I
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 580
    .local v2, "$this$fillCacheWindowForward_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    const/4 v3, 0x0

    .line 187
    .local v3, "$i$a$-with-CacheWindowLogic$fillCacheWindowForward$prefetchForwardWindow$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v2, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 186
    .end local v2    # "$this$fillCacheWindowForward_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .end local v3    # "$i$a$-with-CacheWindowLogic$fillCacheWindowForward$prefetchForwardWindow$1":I
    :goto_0
    nop

    .line 189
    .local v4, "prefetchForwardWindow":I
    const/4 v2, 0x0

    .line 593
    .local v2, "$i$f$debugLog":I
    nop

    .line 596
    nop

    .line 198
    .end local v2    # "$i$f$debugLog":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v3

    .line 199
    move v2, v5

    move v5, v4

    .end local v4    # "prefetchForwardWindow":I
    .local v5, "prefetchForwardWindow":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v4

    .line 202
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v7

    .line 203
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v6

    .line 204
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v9, v2

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    nop

    .line 203
    nop

    .line 202
    nop

    .line 201
    nop

    .line 204
    nop

    .line 197
    move-object v1, p0

    move-object v2, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    .line 207
    .end local v0    # "viewport":I
    .end local v5    # "prefetchForwardWindow":I
    :cond_2
    return-void
.end method

.method private final getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I
    .locals 8
    .param p1, "$this$getItemSizeOrPrefetch"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "index"    # I
    .param p3, "isUrgent"    # Z

    .line 400
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 639
    .local v0, "$i$f$debugLog":I
    nop

    .line 642
    nop

    .line 402
    .end local v0    # "$i$f$debugLog":I
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result v0

    goto/16 :goto_2

    .line 403
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntObjectMap;->containsKey(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 405
    const/4 v0, 0x0

    .line 643
    .restart local v0    # "$i$f$debugLog":I
    nop

    .line 646
    nop

    .line 406
    .end local v0    # "$i$f$debugLog":I
    if-eqz p3, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 647
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 648
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 649
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .local v6, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/4 v7, 0x0

    .line 406
    .local v7, "$i$a$-fastForEach-CacheWindowLogic$getItemSizeOrPrefetch$3":I
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    .line 649
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v7    # "$i$a$-fastForEach-CacheWindowLogic$getItemSizeOrPrefetch$3":I
    nop

    .line 647
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v3    # "index$iv":I
    :cond_1
    nop

    .line 407
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_2
    move v0, v1

    goto :goto_2

    .line 410
    :cond_3
    const/4 v0, 0x0

    .line 652
    .local v0, "$i$f$debugLog":I
    nop

    .line 655
    nop

    .line 411
    .end local v0    # "$i$f$debugLog":I
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 412
    new-instance v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-interface {p1, p2, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->schedulePrefetch(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    .line 411
    invoke-virtual {v0, p2, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 415
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 656
    .restart local v2    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    .restart local v3    # "index$iv":I
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    .line 657
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 658
    .restart local v5    # "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .restart local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/4 v7, 0x0

    .line 415
    .local v7, "$i$a$-fastForEach-CacheWindowLogic$getItemSizeOrPrefetch$6":I
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    .line 658
    .end local v6    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v7    # "$i$a$-fastForEach-CacheWindowLogic$getItemSizeOrPrefetch$6":I
    nop

    .line 656
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 660
    .end local v3    # "index$iv":I
    :cond_4
    nop

    .line 416
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_5
    move v0, v1

    .line 400
    :goto_2
    return v0
.end method

.method static final getItemSizeOrPrefetch$lambda$4(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
    .param p1, "$this_getItemSizeOrPrefetch"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "prefetchedIndex"    # I
    .param p3, "size"    # I

    .line 413
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    .line 414
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final onDatasetChangedSize(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 5
    .param p1, "$this$onDatasetChangedSize"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .line 229
    const/4 v0, 0x0

    .line 597
    .local v0, "$i$f$debugLog":I
    nop

    .line 600
    nop

    .line 230
    .end local v0    # "$i$f$debugLog":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    .line 231
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 232
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastLineIndex()I

    move-result v1

    .line 233
    .local v1, "lastLineIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 234
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 240
    :cond_0
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 241
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v2

    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v0

    invoke-direct {p0, v2, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 245
    :goto_0
    return-void
.end method

.method private final onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V
    .locals 1
    .param p1, "$this$onItemPrefetched"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "index"    # I
    .param p3, "itemSize"    # I

    .line 486
    const/4 v0, 0x0

    .line 752
    .local v0, "$i$f$debugLog":I
    nop

    .line 755
    nop

    .line 487
    .end local v0    # "$i$f$debugLog":I
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cachePrefetchedItem(II)V

    .line 488
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->scheduleNextItemIfNeeded(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    .line 489
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    .line 490
    return-void
.end method

.method private final onKeepAround(IIIIIFI)V
    .locals 2
    .param p1, "visibleWindowStart"    # I
    .param p2, "visibleWindowEnd"    # I
    .param p3, "mainAxisExtraSpaceEnd"    # I
    .param p4, "mainAxisExtraSpaceStart"    # I
    .param p5, "keepAroundWindow"    # I
    .param p6, "scrollDelta"    # F
    .param p7, "itemsCount"    # I

    .line 367
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_2

    .line 368
    sub-int v0, p5, p4

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 369
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 370
    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-lez v0, :cond_1

    .line 372
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result v0

    .line 372
    nop

    .line 371
    nop

    .line 378
    .local v0, "item":I
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 379
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .end local v0    # "item":I
    goto :goto_0

    .line 375
    :cond_0
    nop

    .line 381
    :cond_1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    goto :goto_2

    .line 383
    :cond_2
    sub-int v0, p5, p3

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 384
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 385
    :goto_1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez v0, :cond_4

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v1, p7, -0x1

    if-ge v0, v1, :cond_4

    .line 387
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result v0

    .line 387
    nop

    .line 386
    nop

    .line 392
    .restart local v0    # "item":I
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 393
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .end local v0    # "item":I
    goto :goto_1

    .line 390
    :cond_3
    nop

    .line 395
    :cond_4
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p7, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 397
    :goto_2
    return-void
.end method

.method private final onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V
    .locals 9
    .param p1, "$this$onPrefetchForward"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "visibleWindowStart"    # I
    .param p3, "visibleWindowEnd"    # I
    .param p4, "prefetchForwardWindow"    # I
    .param p5, "mainAxisExtraSpaceEnd"    # I
    .param p6, "mainAxisExtraSpaceStart"    # I
    .param p7, "scrollDelta"    # F
    .param p8, "applyForwardPrefetch"    # Z

    .line 276
    move v0, p6

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    .line 278
    .local v1, "changedScrollDirection":Z
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz p8, :cond_6

    .line 279
    if-nez v1, :cond_2

    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz v6, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    nop

    .line 284
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 285
    sub-int v7, p4, p5

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    .line 283
    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    goto :goto_2

    .line 280
    :cond_2
    :goto_1
    sub-int v6, p4, p5

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 281
    iput p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 289
    :goto_2
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez v6, :cond_c

    .line 290
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-interface {p1, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v6

    if-eq v6, v5, :cond_c

    .line 291
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-interface {p1, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_c

    .line 296
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr v6, v3

    add-int/lit8 v7, p3, 0x1

    if-ne v6, v7, :cond_5

    cmpg-float v6, p7, v4

    if-nez v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-nez v6, :cond_5

    .line 297
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p5

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, v2

    goto :goto_4

    .line 299
    :cond_5
    move v6, v2

    .line 296
    :goto_4
    nop

    .line 295
    nop

    .line 302
    .local v6, "isUrgent":Z
    const/4 v7, 0x0

    .line 631
    .local v7, "$i$f$debugLog":I
    nop

    .line 634
    nop

    .line 307
    .end local v7    # "$i$f$debugLog":I
    iget v7, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr v7, v3

    invoke-direct {p0, p1, v7, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result v7

    .line 306
    nop

    .line 309
    .local v7, "itemSize":I
    if-eq v7, v5, :cond_c

    .line 311
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr v8, v3

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 312
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr v8, v7

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .end local v6    # "isUrgent":Z
    .end local v7    # "itemSize":I
    goto :goto_2

    .line 315
    :cond_6
    if-nez v1, :cond_8

    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz v6, :cond_7

    goto :goto_5

    .line 319
    :cond_7
    nop

    .line 320
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 321
    sub-int v7, p4, v0

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    .line 319
    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    goto :goto_6

    .line 316
    :cond_8
    :goto_5
    sub-int v6, p4, v0

    iput v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 317
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 324
    :goto_6
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez v6, :cond_c

    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-lez v6, :cond_c

    .line 328
    nop

    .line 329
    iget v6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    sub-int/2addr v6, v3

    add-int/lit8 v7, p2, -0x1

    if-ne v6, v7, :cond_b

    cmpg-float v6, p7, v4

    if-nez v6, :cond_9

    move v6, v3

    goto :goto_7

    :cond_9
    move v6, v2

    :goto_7
    if-nez v6, :cond_b

    .line 331
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    move v6, v3

    goto :goto_8

    :cond_a
    move v6, v2

    goto :goto_8

    .line 333
    :cond_b
    move v6, v2

    .line 328
    :goto_8
    nop

    .line 327
    nop

    .line 336
    .restart local v6    # "isUrgent":Z
    const/4 v7, 0x0

    .line 635
    .local v7, "$i$f$debugLog":I
    nop

    .line 638
    nop

    .line 342
    .end local v7    # "$i$f$debugLog":I
    iget v7, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    sub-int/2addr v7, v3

    invoke-direct {p0, p1, v7, v6}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result v7

    .line 341
    nop

    .line 343
    .local v7, "itemSize":I
    if-eq v7, v5, :cond_c

    .line 344
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/2addr v8, v5

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 345
    iget v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr v8, v7

    iput v8, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .end local v6    # "isUrgent":Z
    .end local v7    # "itemSize":I
    goto :goto_6

    .line 348
    :cond_c
    return-void
.end method

.method private final refillWindow(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;Z)V
    .locals 13
    .param p1, "$this$refillWindow"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "refillForward"    # Z

    .line 210
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    .line 214
    .local v0, "viewport":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 580
    .local v1, "$this$refillWindow_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    const/4 v2, 0x0

    .line 214
    .local v2, "$i$a$-with-CacheWindowLogic$refillWindow$prefetchForwardWindow$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 213
    .end local v1    # "$this$refillWindow_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .end local v2    # "$i$a$-with-CacheWindowLogic$refillWindow$prefetchForwardWindow$1":I
    :goto_0
    move v8, v3

    .line 217
    .local v8, "prefetchForwardWindow":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v6

    .line 218
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v7

    .line 221
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v10

    .line 222
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v9

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 222
    nop

    .line 221
    nop

    .line 220
    nop

    .line 223
    nop

    .line 216
    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p1

    move v12, p2

    .end local p1    # "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local p2    # "refillForward":Z
    .local v5, "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .local v12, "refillForward":Z
    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    goto :goto_1

    .line 210
    .end local v0    # "viewport":I
    .end local v5    # "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local v8    # "prefetchForwardWindow":I
    .end local v12    # "refillForward":Z
    .restart local p1    # "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .restart local p2    # "refillForward":Z
    :cond_1
    move-object v5, p1

    move v12, p2

    .line 226
    .end local p1    # "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local p2    # "refillForward":Z
    .restart local v5    # "$this$refillWindow":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .restart local v12    # "refillForward":Z
    :goto_1
    return-void
.end method

.method private final removeOutOfBoundsItems(II)V
    .locals 35
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I

    .line 468
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3}, Landroidx/collection/MutableIntSet;->clear()V

    .line 469
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    check-cast v3, Landroidx/collection/IntObjectMap;

    .local v3, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v4, 0x0

    .line 670
    .local v4, "$i$f$forEachKey":I
    iget-object v5, v3, Landroidx/collection/IntObjectMap;->keys:[I

    .line 672
    .local v5, "k$iv":[I
    move-object v6, v3

    .local v6, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v7, 0x0

    .line 673
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 674
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 676
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v18, 0x0

    const-wide/16 v19, 0x80

    const/16 v11, 0x8

    if-gt v10, v9, :cond_6

    .line 677
    :goto_0
    aget-wide v21, v8, v10

    .line 678
    .local v21, "slot$iv$iv":J
    move-wide/from16 v23, v21

    .local v23, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v25, 0x0

    .line 679
    .local v25, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v12, v23

    const/16 v23, 0x7

    const-wide/16 v26, 0xff

    .end local v23    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    not-long v14, v12

    shl-long v14, v14, v23

    and-long/2addr v14, v12

    and-long v12, v14, v16

    .line 678
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v25    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v12, v16

    if-eqz v12, :cond_5

    .line 680
    sub-int v12, v10, v9

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    .line 681
    .local v12, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v12, :cond_4

    .line 682
    and-long v14, v21, v26

    .local v14, "value$iv$iv$iv":J
    const/16 v25, 0x0

    .line 683
    .local v25, "$i$f$isFull":I
    cmp-long v28, v14, v19

    if-gez v28, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    move/from16 v14, v18

    .line 682
    .end local v14    # "value$iv$iv$iv":J
    .end local v25    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_3

    .line 684
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 685
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v25, 0x0

    .line 672
    .local v25, "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    move/from16 v28, v11

    aget v11, v5, v15

    .local v11, "it":I
    const/16 v29, 0x0

    .line 469
    .local v29, "$i$a$-forEachKey-CacheWindowLogic$removeOutOfBoundsItems$1":I
    if-gt v1, v11, :cond_1

    if-gt v11, v2, :cond_1

    const/16 v30, 0x1

    goto :goto_3

    :cond_1
    move/from16 v30, v18

    :goto_3
    if-eqz v30, :cond_2

    move-object/from16 v30, v3

    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .local v30, "this_$iv":Landroidx/collection/IntObjectMap;
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3, v11}, Landroidx/collection/MutableIntSet;->add(I)Z

    goto :goto_4

    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_2
    move-object/from16 v30, v3

    .line 672
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v11    # "it":I
    .end local v29    # "$i$a$-forEachKey-CacheWindowLogic$removeOutOfBoundsItems$1":I
    .restart local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    :goto_4
    nop

    .line 685
    .end local v15    # "index$iv":I
    .end local v25    # "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    goto :goto_5

    .line 682
    .end local v14    # "index$iv$iv":I
    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_3
    move-object/from16 v30, v3

    move/from16 v28, v11

    .line 687
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    :goto_5
    shr-long v21, v21, v28

    .line 681
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v28

    move-object/from16 v3, v30

    goto :goto_1

    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_4
    move-object/from16 v30, v3

    move/from16 v28, v11

    .line 689
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v13    # "j$iv$iv":I
    .restart local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    move/from16 v3, v28

    if-ne v12, v3, :cond_8

    goto :goto_6

    .line 678
    .end local v12    # "bitCount$iv$iv":I
    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_5
    move-object/from16 v30, v3

    .line 676
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v21    # "slot$iv$iv":J
    .restart local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    :goto_6
    if-eq v10, v9, :cond_7

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v30

    const/16 v11, 0x8

    goto :goto_0

    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_6
    move-object/from16 v30, v3

    const/16 v23, 0x7

    const-wide/16 v26, 0xff

    .line 692
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "i$iv$iv":I
    .restart local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    :cond_7
    nop

    .line 693
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_8
    nop

    .line 471
    .end local v4    # "$i$f$forEachKey":I
    .end local v5    # "k$iv":[I
    .end local v30    # "this_$iv":Landroidx/collection/IntObjectMap;
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    check-cast v3, Landroidx/collection/IntObjectMap;

    .restart local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v4, 0x0

    .line 694
    .restart local v4    # "$i$f$forEachKey":I
    iget-object v5, v3, Landroidx/collection/IntObjectMap;->keys:[I

    .line 696
    .restart local v5    # "k$iv":[I
    move-object v6, v3

    .restart local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v7, 0x0

    .line 697
    .restart local v7    # "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 698
    .restart local v8    # "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 700
    .restart local v9    # "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .restart local v10    # "i$iv$iv":I
    if-gt v10, v9, :cond_f

    .line 701
    :goto_7
    aget-wide v11, v8, v10

    .line 702
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 703
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v21, v3

    move/from16 v22, v4

    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v4    # "$i$f$forEachKey":I
    .local v21, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v22, "$i$f$forEachKey":I
    not-long v3, v13

    shl-long v3, v3, v23

    and-long/2addr v3, v13

    and-long v3, v3, v16

    .line 702
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v16

    if-eqz v3, :cond_e

    .line 704
    sub-int v3, v10, v9

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v28, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 705
    .local v3, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_8
    if-ge v4, v3, :cond_d

    .line 706
    and-long v13, v11, v26

    .local v13, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 707
    .local v15, "$i$f$isFull":I
    cmp-long v25, v13, v19

    if-gez v25, :cond_9

    const/4 v13, 0x1

    goto :goto_9

    :cond_9
    move/from16 v13, v18

    .line 706
    .end local v13    # "value$iv$iv$iv":J
    .end local v15    # "$i$f$isFull":I
    :goto_9
    if-eqz v13, :cond_c

    .line 708
    shl-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v4

    .line 709
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/4 v15, 0x0

    .line 696
    .local v15, "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    move/from16 v25, v4

    .end local v4    # "j$iv$iv":I
    .local v25, "j$iv$iv":I
    aget v4, v5, v14

    .local v4, "it":I
    const/16 v29, 0x0

    .line 471
    .local v29, "$i$a$-forEachKey-CacheWindowLogic$removeOutOfBoundsItems$2":I
    if-gt v1, v4, :cond_a

    if-gt v4, v2, :cond_a

    const/16 v30, 0x1

    goto :goto_a

    :cond_a
    move/from16 v30, v18

    :goto_a
    if-eqz v30, :cond_b

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v1, v4}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 696
    .end local v4    # "it":I
    .end local v29    # "$i$a$-forEachKey-CacheWindowLogic$removeOutOfBoundsItems$2":I
    :cond_b
    nop

    .line 709
    .end local v14    # "index$iv":I
    .end local v15    # "$i$a$-forEachIndexed-IntObjectMap$forEachKey$1$iv":I
    goto :goto_b

    .line 706
    .end local v13    # "index$iv$iv":I
    .end local v25    # "j$iv$iv":I
    .local v4, "j$iv$iv":I
    :cond_c
    move/from16 v25, v4

    .line 711
    .end local v4    # "j$iv$iv":I
    .restart local v25    # "j$iv$iv":I
    :goto_b
    const/16 v1, 0x8

    shr-long/2addr v11, v1

    .line 705
    add-int/lit8 v4, v25, 0x1

    move/from16 v1, p1

    .end local v25    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    goto :goto_8

    :cond_d
    move/from16 v25, v4

    const/16 v1, 0x8

    .line 713
    .end local v4    # "j$iv$iv":I
    if-ne v3, v1, :cond_11

    .line 700
    .end local v3    # "bitCount$iv$iv":I
    .end local v11    # "slot$iv$iv":J
    :cond_e
    if-eq v10, v9, :cond_10

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto :goto_7

    .end local v21    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v22    # "$i$f$forEachKey":I
    .local v3, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v4, "$i$f$forEachKey":I
    :cond_f
    move-object/from16 v21, v3

    move/from16 v22, v4

    .line 716
    .end local v3    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v4    # "$i$f$forEachKey":I
    .end local v10    # "i$iv$iv":I
    .restart local v21    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v22    # "$i$f$forEachKey":I
    :cond_10
    nop

    .line 717
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_11
    nop

    .line 473
    .end local v5    # "k$iv":[I
    .end local v21    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v22    # "$i$f$forEachKey":I
    const/4 v1, 0x0

    .line 718
    .local v1, "$i$f$debugLog":I
    nop

    .line 721
    nop

    .line 475
    .end local v1    # "$i$f$debugLog":I
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    check-cast v1, Landroidx/collection/IntSet;

    .local v1, "this_$iv":Landroidx/collection/IntSet;
    const/4 v3, 0x0

    .line 722
    .local v3, "$i$f$forEach":I
    nop

    .line 723
    iget-object v4, v1, Landroidx/collection/IntSet;->elements:[I

    .line 725
    .local v4, "k$iv":[I
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/collection/IntSet;
    const/4 v6, 0x0

    .line 726
    .local v6, "$i$f$forEachIndex":I
    nop

    .line 727
    iget-object v7, v5, Landroidx/collection/IntSet;->metadata:[J

    .line 728
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 730
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_18

    .line 731
    :goto_c
    aget-wide v10, v7, v9

    .line 732
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 733
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move-object v15, v1

    .end local v1    # "this_$iv":Landroidx/collection/IntSet;
    .local v15, "this_$iv":Landroidx/collection/IntSet;
    not-long v1, v12

    shl-long v1, v1, v23

    and-long/2addr v1, v12

    and-long v1, v1, v16

    .line 732
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v1, v1, v16

    if-eqz v1, :cond_17

    .line 734
    sub-int v1, v9, v8

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v28, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 735
    .local v1, "bitCount$iv$iv":I
    const/4 v2, 0x0

    .local v2, "j$iv$iv":I
    :goto_d
    if-ge v2, v1, :cond_16

    .line 736
    and-long v12, v10, v26

    .local v12, "value$iv$iv$iv":J
    const/4 v14, 0x0

    .line 737
    .local v14, "$i$f$isFull":I
    cmp-long v21, v12, v19

    if-gez v21, :cond_12

    const/4 v12, 0x1

    goto :goto_e

    :cond_12
    move/from16 v12, v18

    .line 736
    .end local v12    # "value$iv$iv$iv":J
    .end local v14    # "$i$f$isFull":I
    :goto_e
    if-eqz v12, :cond_15

    .line 738
    shl-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v2

    .line 739
    .local v12, "index$iv$iv":I
    move v13, v12

    .local v13, "index$iv":I
    const/4 v14, 0x0

    .line 725
    .local v14, "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    move/from16 v21, v2

    .end local v2    # "j$iv$iv":I
    .local v21, "j$iv$iv":I
    aget v2, v4, v13

    .local v2, "it":I
    const/16 v22, 0x0

    .line 476
    .local v22, "$i$a$-forEach-CacheWindowLogic$removeOutOfBoundsItems$4":I
    move/from16 v25, v3

    .end local v3    # "$i$f$forEach":I
    .local v25, "$i$f$forEach":I
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v3, v2}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_14

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v29, 0x0

    .line 740
    .local v29, "$i$f$fastForEach":I
    const/16 v30, 0x0

    .local v30, "index$iv":I
    move-object/from16 v31, v3

    check-cast v31, Ljava/util/Collection;

    move-object/from16 v32, v4

    .end local v4    # "k$iv":[I
    .local v32, "k$iv":[I
    invoke-interface/range {v31 .. v31}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v31, v5

    move/from16 v5, v30

    .end local v30    # "index$iv":I
    .local v5, "index$iv":I
    .local v31, "this_$iv$iv":Landroidx/collection/IntSet;
    :goto_f
    if-ge v5, v4, :cond_13

    .line 741
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .line 742
    .local v30, "item$iv":Ljava/lang/Object;
    move-object/from16 v33, v30

    check-cast v33, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .local v33, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/16 v34, 0x0

    .line 476
    .local v34, "$i$a$-fastForEach-CacheWindowLogic$removeOutOfBoundsItems$4$1":I
    invoke-interface/range {v33 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 742
    .end local v33    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v34    # "$i$a$-fastForEach-CacheWindowLogic$removeOutOfBoundsItems$4$1":I
    nop

    .line 740
    .end local v30    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 744
    .end local v5    # "index$iv":I
    :cond_13
    nop

    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v29    # "$i$f$fastForEach":I
    goto :goto_10

    .line 476
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v32    # "k$iv":[I
    .restart local v4    # "k$iv":[I
    .local v5, "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_14
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 477
    .end local v4    # "k$iv":[I
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v32    # "k$iv":[I
    :goto_10
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v3, v2}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    .line 478
    nop

    .line 725
    .end local v2    # "it":I
    .end local v22    # "$i$a$-forEach-CacheWindowLogic$removeOutOfBoundsItems$4":I
    nop

    .line 739
    .end local v13    # "index$iv":I
    .end local v14    # "$i$a$-forEachIndex-IntSet$forEach$2$iv":I
    goto :goto_11

    .line 736
    .end local v12    # "index$iv$iv":I
    .end local v21    # "j$iv$iv":I
    .end local v25    # "$i$f$forEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v32    # "k$iv":[I
    .local v2, "j$iv$iv":I
    .local v3, "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_15
    move/from16 v21, v2

    move/from16 v25, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 745
    .end local v2    # "j$iv$iv":I
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v21    # "j$iv$iv":I
    .restart local v25    # "$i$f$forEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v32    # "k$iv":[I
    :goto_11
    const/16 v3, 0x8

    shr-long/2addr v10, v3

    .line 735
    add-int/lit8 v2, v21, 0x1

    move/from16 v3, v25

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    .end local v21    # "j$iv$iv":I
    .restart local v2    # "j$iv$iv":I
    goto :goto_d

    .end local v25    # "$i$f$forEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v32    # "k$iv":[I
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_16
    move/from16 v21, v2

    move/from16 v25, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    const/16 v3, 0x8

    .line 747
    .end local v2    # "j$iv$iv":I
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v25    # "$i$f$forEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v32    # "k$iv":[I
    if-ne v1, v3, :cond_1a

    goto :goto_12

    .line 732
    .end local v1    # "bitCount$iv$iv":I
    .end local v25    # "$i$f$forEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v32    # "k$iv":[I
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_17
    move/from16 v25, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    const/16 v3, 0x8

    .line 730
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v10    # "slot$iv$iv":J
    .restart local v25    # "$i$f$forEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v32    # "k$iv":[I
    :goto_12
    if-eq v9, v8, :cond_19

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move-object v1, v15

    move/from16 v3, v25

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    goto/16 :goto_c

    .end local v15    # "this_$iv":Landroidx/collection/IntSet;
    .end local v25    # "$i$f$forEach":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v32    # "k$iv":[I
    .local v1, "this_$iv":Landroidx/collection/IntSet;
    .restart local v3    # "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_18
    move-object v15, v1

    move/from16 v25, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 750
    .end local v1    # "this_$iv":Landroidx/collection/IntSet;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "this_$iv$iv":Landroidx/collection/IntSet;
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/IntSet;
    .restart local v25    # "$i$f$forEach":I
    .restart local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    .restart local v32    # "k$iv":[I
    :cond_19
    nop

    .line 751
    .end local v6    # "$i$f$forEachIndex":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/collection/IntSet;
    :cond_1a
    nop

    .line 479
    .end local v15    # "this_$iv":Landroidx/collection/IntSet;
    .end local v25    # "$i$f$forEach":I
    .end local v32    # "k$iv":[I
    return-void
.end method

.method private final scheduleNextItemIfNeeded(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 3
    .param p1, "$this$scheduleNextItemIfNeeded"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .line 493
    const/4 v0, 0x0

    .local v0, "nextPrefetchableLineIndex":I
    const/4 v0, -0x1

    .line 495
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 496
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez v1, :cond_1

    .line 497
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 499
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez v1, :cond_1

    .line 500
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v0, v1, -0x1

    .line 503
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 756
    .local v1, "$i$f$debugLog":I
    nop

    .line 759
    nop

    .line 505
    .end local v1    # "$i$f$debugLog":I
    nop

    .line 506
    if-lez v0, :cond_2

    .line 507
    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 508
    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    if-ge v1, v2, :cond_2

    .line 510
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 511
    new-instance v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-interface {p1, v0, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->schedulePrefetch(ILkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    .line 510
    invoke-virtual {v1, v0, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 515
    :cond_2
    return-void
.end method

.method static final scheduleNextItemIfNeeded$lambda$1(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
    .param p1, "$this_scheduleNextItemIfNeeded"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "index"    # I
    .param p3, "mainAxisSize"    # I

    .line 512
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    .line 513
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final traceWindowInfo()V
    .locals 3

    .line 101
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    int-to-long v0, v0

    const-string/jumbo v2, "prefetchWindowStartExtraSpace"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    .line 102
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    int-to-long v0, v0

    const-string/jumbo v2, "prefetchWindowEndExtraSpace"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    .line 103
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    int-to-long v0, v0

    const-string/jumbo v2, "prefetchWindowStartIndex"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    .line 104
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    int-to-long v0, v0

    const-string/jumbo v2, "prefetchWindowEndIndex"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    .line 105
    return-void
.end method

.method private final updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;
    .locals 3
    .param p1, "index"    # I
    .param p2, "size"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 434
    .local v0, "cachedItem":Landroidx/compose/foundation/lazy/layout/CachedItem;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/lazy/layout/CachedItem;->setMainAxisSize(I)V

    .line 436
    invoke-virtual {v0, p3}, Landroidx/compose/foundation/lazy/layout/CachedItem;->setKey(Ljava/lang/Object;)V

    .line 437
    move-object v1, v0

    goto :goto_0

    .line 439
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    sget-object v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    invoke-direct {v1, v2, p2}, Landroidx/compose/foundation/lazy/layout/CachedItem;-><init>(Ljava/lang/Object;I)V

    .line 434
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final getPrefetchWindowEndLine$foundation()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    return v0
.end method

.method public final getPrefetchWindowStartLine$foundation()I
    .locals 1

    .line 58
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    return v0
.end method

.method public final hasValidBounds()Z
    .locals 2

    .line 150
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onScroll(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 1
    .param p1, "$this$onScroll"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .param p2, "delta"    # F

    .line 86
    const/4 v0, 0x0

    .line 568
    .local v0, "$i$f$debugLog":I
    nop

    .line 571
    nop

    .line 87
    .end local v0    # "$i$f$debugLog":I
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->fillCacheWindowBackward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->fillCacheWindowForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    .line 90
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    .line 91
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    .line 92
    const/4 v0, 0x0

    .line 572
    .restart local v0    # "$i$f$debugLog":I
    nop

    .line 575
    nop

    .line 98
    .end local v0    # "$i$f$debugLog":I
    return-void
.end method

.method public final onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 13
    .param p1, "$this$onVisibleItemsUpdated"    # Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .line 108
    const/4 v0, 0x0

    .line 576
    .local v0, "$i$f$debugLog":I
    nop

    .line 579
    nop

    .line 109
    .end local v0    # "$i$f$debugLog":I
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->hasUpdatedVisibleItemsOnce:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->enableInitialPrefetch:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 580
    .local v0, "$this$onVisibleItemsUpdated_u24lambda_u241":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$a$-with-CacheWindowLogic$onVisibleItemsUpdated$prefetchForwardWindow$1":I
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    .line 110
    .end local v0    # "$this$onVisibleItemsUpdated_u24lambda_u241":Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .end local v3    # "$i$a$-with-CacheWindowLogic$onVisibleItemsUpdated$prefetchForwardWindow$1":I
    :goto_0
    nop

    .line 113
    .local v4, "prefetchForwardWindow":I
    if-eqz v4, :cond_1

    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    .line 114
    :cond_1
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->hasUpdatedVisibleItemsOnce:Z

    .line 121
    .end local v4    # "prefetchForwardWindow":I
    :cond_2
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 122
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onDatasetChangedSize(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    .line 125
    :cond_3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    .line 130
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    move-object v0, p1

    .local v0, "$this$forEachVisibleItem$iv":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    const/4 v4, 0x0

    .line 581
    .local v4, "$i$f$forEachVisibleItem":I
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleLineCount()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_5

    move v7, v6

    .local v7, "it$iv":I
    const/4 v8, 0x0

    .line 582
    .local v8, "$i$a$-repeat-CacheWindowLogicKt$forEachVisibleItem$1$iv":I
    invoke-interface {v0, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleItemLine(I)I

    move-result v9

    .local v9, "index":I
    invoke-interface {v0, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleLineKey(I)Ljava/lang/Object;

    move-result-object v10

    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v0, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleItemSize(I)I

    move-result v11

    .local v11, "mainAxisSize":I
    const/4 v12, 0x0

    .line 132
    .local v12, "$i$a$-forEachVisibleItem-CacheWindowLogic$onVisibleItemsUpdated$2":I
    if-eq v9, v3, :cond_4

    invoke-direct {p0, v9, v10, v11}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheVisibleItemsInfo(ILjava/lang/Object;I)V

    .line 133
    :cond_4
    nop

    .line 582
    .end local v9    # "index":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "mainAxisSize":I
    .end local v12    # "$i$a$-forEachVisibleItem-CacheWindowLogic$onVisibleItemsUpdated$2":I
    nop

    .line 583
    nop

    .line 581
    .end local v7    # "it$iv":I
    .end local v8    # "$i$a$-repeat-CacheWindowLogicKt$forEachVisibleItem$1$iv":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 584
    :cond_5
    nop

    .line 134
    .end local v0    # "$this$forEachVisibleItem$iv":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local v4    # "$i$f$forEachVisibleItem":I
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz v0, :cond_8

    .line 136
    const/4 v0, 0x0

    .line 585
    .local v0, "$i$f$debugLog":I
    nop

    .line 588
    nop

    .line 137
    .end local v0    # "$i$f$debugLog":I
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->refillWindow(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;Z)V

    .line 138
    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    goto :goto_3

    .line 143
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->resetStrategy()V

    .line 146
    :cond_8
    :goto_3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    .line 147
    return-void
.end method

.method public final resetStrategy()V
    .locals 25

    .line 248
    move-object/from16 v0, p0

    const v1, 0x7fffffff

    iput v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    .line 249
    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    .line 250
    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 251
    iput v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 252
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    .line 254
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 255
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .local v2, "this_$iv":Landroidx/collection/MutableIntObjectMap;
    const/4 v3, 0x0

    .line 601
    .local v3, "$i$f$removeIf":I
    move-object v4, v2

    check-cast v4, Landroidx/collection/IntObjectMap;

    .local v4, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v5, 0x0

    .line 602
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 603
    .local v6, "m$iv$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 605
    .local v7, "lastIndex$iv$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    if-gt v8, v7, :cond_5

    .line 606
    :goto_0
    aget-wide v9, v6, v8

    .line 607
    .local v9, "slot$iv$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v13, 0x0

    .line 608
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 607
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v11, v16

    if-eqz v11, :cond_4

    .line 609
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 610
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_3

    .line 611
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 612
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v17, v14, v17

    if-gez v17, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    move/from16 v17, v1

    .line 611
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_2

    .line 613
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 614
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 615
    .local v16, "$i$a$-forEachIndexed-MutableIntObjectMap$removeIf$1$iv":I
    iget-object v1, v2, Landroidx/collection/MutableIntObjectMap;->keys:[I

    aget v1, v1, v15

    iget-object v1, v2, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v15

    check-cast v1, Ljava/util/List;

    .local v1, "value":Ljava/util/List;
    const/16 v18, 0x0

    .line 256
    .local v18, "$i$a$-removeIf-CacheWindowLogic$resetStrategy$1":I
    move-object/from16 v19, v1

    .local v19, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v20, 0x0

    .line 616
    .local v20, "$i$f$fastForEach":I
    const/16 v21, 0x0

    .local v21, "index$iv":I
    move-object/from16 v22, v19

    check-cast v22, Ljava/util/Collection;

    move/from16 v23, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v12

    move/from16 v0, v21

    .end local v21    # "index$iv":I
    .local v0, "index$iv":I
    :goto_3
    if-ge v0, v12, :cond_1

    .line 617
    move-object/from16 v21, v1

    move-object/from16 v1, v19

    .end local v19    # "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    .local v21, "value":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 618
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    check-cast v22, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .local v22, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/16 v24, 0x0

    .line 256
    .local v24, "$i$a$-fastForEach-CacheWindowLogic$resetStrategy$1$1":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 618
    .end local v22    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v24    # "$i$a$-fastForEach-CacheWindowLogic$resetStrategy$1$1":I
    nop

    .line 616
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    goto :goto_3

    .end local v21    # "value":Ljava/util/List;
    .local v1, "value":Ljava/util/List;
    .local v19, "$this$fastForEach$iv":Ljava/util/List;
    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v1, v19

    .line 620
    .end local v0    # "index$iv":I
    .end local v19    # "$this$fastForEach$iv":Ljava/util/List;
    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v21    # "value":Ljava/util/List;
    nop

    .line 257
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v20    # "$i$f$fastForEach":I
    nop

    .line 615
    .end local v18    # "$i$a$-removeIf-CacheWindowLogic$resetStrategy$1":I
    .end local v21    # "value":Ljava/util/List;
    nop

    .line 621
    invoke-virtual {v2, v15}, Landroidx/collection/MutableIntObjectMap;->removeValueAt(I)Ljava/lang/Object;

    .line 623
    nop

    .line 614
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-MutableIntObjectMap$removeIf$1$iv":I
    goto :goto_4

    .line 611
    .end local v14    # "index$iv$iv":I
    :cond_2
    move/from16 v23, v12

    .line 624
    :goto_4
    shr-long v9, v9, v23

    .line 610
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v12, v23

    goto :goto_1

    :cond_3
    move/from16 v23, v12

    .line 626
    .end local v13    # "j$iv$iv":I
    move/from16 v0, v23

    if-ne v11, v0, :cond_6

    .line 605
    .end local v9    # "slot$iv$iv":J
    .end local v11    # "bitCount$iv$iv":I
    :cond_4
    if-eq v8, v7, :cond_5

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 629
    .end local v8    # "i$iv$iv":I
    :cond_5
    nop

    .line 630
    .end local v4    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv$iv":[J
    .end local v7    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 259
    .end local v2    # "this_$iv":Landroidx/collection/MutableIntObjectMap;
    .end local v3    # "$i$f$removeIf":I
    return-void
.end method
