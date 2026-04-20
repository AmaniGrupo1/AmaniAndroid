.class public final Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "LazyListCacheWindowStrategy.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListCacheWindowStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListCacheWindowStrategy.kt\nandroidx/compose/foundation/lazy/LazyListCacheWindowStrategy\n*L\n1#1,151:1\n65#1,4:152\n65#1,4:156\n*S KotlinDebug\n*F\n+ 1 LazyListCacheWindowStrategy.kt\nandroidx/compose/foundation/lazy/LazyListCacheWindowStrategy\n*L\n41#1:152,4\n45#1:156,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001c\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0011\u001a\u00020\n*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J.\u0010\u0015\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\n0\u0017\u00a2\u0006\u0002\u0008\u0019H\u0082\u0008R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;",
        "cacheWindow",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V",
        "cacheWindowScope",
        "Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;",
        "onScroll",
        "",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchScope;",
        "delta",
        "",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "onVisibleItemsUpdated",
        "onNestedPrefetch",
        "Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;",
        "firstVisibleItemIndex",
        "",
        "applyWindowScope",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V
    .locals 3
    .param p1, "cacheWindow"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    .line 35
    nop

    .line 37
    nop

    .line 35
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    .line 36
    return-void
.end method

.method private final applyWindowScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "$this$applyWindowScope"    # Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .param p2, "layoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListPrefetchScope;",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    .local v0, "$i$f$applyWindowScope":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    .line 66
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    .line 67
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public onNestedPrefetch(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
    .locals 5
    .param p1, "$this$onNestedPrefetch"    # Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;
    .param p2, "firstVisibleItemIndex"    # I

    .line 50
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->getNestedPrefetchItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x2

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->getNestedPrefetchItemCount()I

    move-result v0

    .line 50
    :goto_0
    nop

    .line 49
    nop

    .line 55
    .local v0, "resolvedNestedPrefetchItemCount":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    move v2, v1

    .local v2, "it":I
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-repeat-LazyListCacheWindowStrategy$onNestedPrefetch$1":I
    add-int v4, p2, v2

    invoke-interface {p1, v4}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->schedulePrecomposition(I)V

    .line 57
    nop

    .line 55
    .end local v2    # "it":I
    .end local v3    # "$i$a$-repeat-LazyListCacheWindowStrategy$onNestedPrefetch$1":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public onScroll(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 6
    .param p1, "$this$onScroll"    # Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .param p2, "delta"    # F
    .param p3, "layoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 41
    move-object v0, p3

    .local v0, "layoutInfo$iv":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
    move-object v2, p1

    .local v2, "$this$applyWindowScope$iv":Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    const/4 v3, 0x0

    .line 152
    .local v3, "$i$f$applyWindowScope":I
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v4, v0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    .line 153
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    .line 154
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    check-cast v4, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .local v4, "$this$onScroll_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    const/4 v5, 0x0

    .line 41
    .local v5, "$i$a$-applyWindowScope-LazyListCacheWindowStrategy$onScroll$1":I
    invoke-virtual {p0, v4, p2}, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->onScroll(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    .line 154
    .end local v4    # "$this$onScroll_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local v5    # "$i$a$-applyWindowScope-LazyListCacheWindowStrategy$onScroll$1":I
    nop

    .line 155
    nop

    .line 42
    .end local v0    # "layoutInfo$iv":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .end local v1    # "this_$iv":Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
    .end local v2    # "$this$applyWindowScope$iv":Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .end local v3    # "$i$f$applyWindowScope":I
    return-void
.end method

.method public onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 6
    .param p1, "$this$onVisibleItemsUpdated"    # Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .param p2, "layoutInfo"    # Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 45
    move-object v0, p2

    .local v0, "layoutInfo$iv":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    move-object v1, p1

    .local v1, "$this$applyWindowScope$iv":Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
    const/4 v3, 0x0

    .line 156
    .local v3, "$i$f$applyWindowScope":I
    iget-object v4, v2, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v4, v0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    .line 157
    iget-object v4, v2, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v4, v1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    .line 158
    iget-object v4, v2, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    check-cast v4, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;

    .local v4, "$this$onVisibleItemsUpdated_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$a$-applyWindowScope-LazyListCacheWindowStrategy$onVisibleItemsUpdated$1":I
    invoke-virtual {p0, v4}, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    .line 158
    .end local v4    # "$this$onVisibleItemsUpdated_u24lambda_u240":Landroidx/compose/foundation/lazy/layout/CacheWindowScope;
    .end local v5    # "$i$a$-applyWindowScope-LazyListCacheWindowStrategy$onVisibleItemsUpdated$1":I
    nop

    .line 159
    nop

    .line 46
    .end local v0    # "layoutInfo$iv":Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .end local v1    # "$this$applyWindowScope$iv":Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .end local v2    # "this_$iv":Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
    .end local v3    # "$i$f$applyWindowScope":I
    return-void
.end method
