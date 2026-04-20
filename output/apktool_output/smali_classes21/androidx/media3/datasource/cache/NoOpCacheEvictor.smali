.class public final Landroidx/media3/datasource/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    .line 37
    return-void
.end method

.method public onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 47
    return-void
.end method

.method public onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 52
    return-void
.end method

.method public onSpanTouched(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "oldSpan"    # Landroidx/media3/datasource/cache/CacheSpan;
    .param p3, "newSpan"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 57
    return-void
.end method

.method public onStartFile(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "length"    # J

    .line 42
    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method
