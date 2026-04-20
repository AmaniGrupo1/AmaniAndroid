.class public final Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Landroidx/media3/datasource/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Landroidx/media3/extractor/ChunkIndex;

.field private final lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroidx/media3/extractor/ChunkIndex;)V
    .locals 3
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "chunkIndex"    # Landroidx/media3/extractor/ChunkIndex;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 50
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 53
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-interface {p1, p2, p0}, Landroidx/media3/datasource/cache/Cache;->addListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 59
    .local v0, "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Landroidx/media3/datasource/cache/CacheSpan;>;"
    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    .local v1, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media3/datasource/cache/CacheSpan;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CacheSpan;

    .line 62
    .local v2, "span":Landroidx/media3/datasource/cache/CacheSpan;
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 63
    .end local v2    # "span":Landroidx/media3/datasource/cache/CacheSpan;
    goto :goto_0

    .line 64
    .end local v0    # "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Landroidx/media3/datasource/cache/CacheSpan;>;"
    .end local v1    # "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media3/datasource/cache/CacheSpan;>;"
    :cond_0
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 11
    .param p1, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 141
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v5, p1, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 142
    .local v0, "newRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 143
    .local v1, "floorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 144
    .local v2, "ceilingRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z

    move-result v3

    .line 145
    .local v3, "floorConnects":Z
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z

    move-result v4

    .line 147
    .local v4, "ceilingConnects":Z
    if-eqz v4, :cond_1

    .line 148
    if-eqz v3, :cond_0

    .line 150
    iget-wide v5, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 151
    iget v5, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_0

    .line 154
    :cond_0
    iget-wide v5, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 155
    iget v5, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v5, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 156
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 159
    :cond_1
    if-eqz v3, :cond_3

    .line 161
    iget-wide v5, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 162
    iget v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 163
    .local v5, "index":I
    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget v6, v6, Landroidx/media3/extractor/ChunkIndex;->length:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v6, v6, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    iget-wide v9, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v6, v7, v9

    if-gtz v6, :cond_2

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_2
    iput v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 168
    .end local v5    # "index":I
    goto :goto_3

    .line 170
    :cond_3
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v5, v5, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iget-wide v6, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 171
    .restart local v5    # "index":I
    if-gez v5, :cond_4

    neg-int v6, v5

    add-int/lit8 v6, v6, -0x2

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    iput v6, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 172
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v5    # "index":I
    :goto_3
    return-void
.end method

.method private regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z
    .locals 4
    .param p1, "lower"    # Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    .param p2, "upper"    # Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 177
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .locals 9
    .param p1, "byteOffset"    # J

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iput-wide p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 83
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 84
    .local v0, "floorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    iget v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget v1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 90
    .local v1, "index":I
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget v2, v2, Landroidx/media3/extractor/ChunkIndex;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v4, v4, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v5, v4, v1

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v4, v4, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    aget v4, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 92
    monitor-exit p0

    const/4 v2, -0x2

    return v2

    .line 94
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v2, v2, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v3, v2, v1

    iget-wide v5, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v2, v2, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v7, v2, v1

    sub-long/2addr v5, v7

    mul-long/2addr v3, v5

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v2, v2, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    aget v2, v2, v1

    int-to-long v5, v2

    div-long/2addr v3, v5

    .line 97
    .local v3, "segmentFractionUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v2, v2, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    aget-wide v5, v2, v1

    add-long/2addr v5, v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v2, v5

    monitor-exit p0

    return v2

    .line 87
    .end local v1    # "index":I
    .end local v3    # "segmentFractionUs":J
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 81
    .end local v0    # "floorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    .end local p1    # "byteOffset":J
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
    .end local p1    # "cache":Landroidx/media3/datasource/cache/Cache;
    .end local p2    # "span":Landroidx/media3/datasource/cache/CacheSpan;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 7
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "span"    # Landroidx/media3/datasource/cache/CacheSpan;

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v1, p2, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v3, p2, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v5, p2, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 110
    .local v0, "removedRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 111
    .local v1, "floorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    if-nez v1, :cond_0

    .line 112
    const-string v2, "CachedRegionTracker"

    const-string v3, "Removed a span we were not aware of"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 117
    .end local p0    # "this":Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 121
    new-instance v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 123
    .local v2, "newFloorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v3, v3, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iget-wide v4, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 124
    .local v3, "index":I
    if-gez v3, :cond_1

    neg-int v4, v3

    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput v4, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 125
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "newFloorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    .end local v3    # "index":I
    :cond_2
    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 129
    new-instance v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 130
    .local v2, "newCeilingRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    iget v3, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v3, v2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 131
    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v2    # "newCeilingRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    :cond_3
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "removedRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    .end local v1    # "floorRegion":Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    .end local p1    # "cache":Landroidx/media3/datasource/cache/Cache;
    .end local p2    # "span":Landroidx/media3/datasource/cache/CacheSpan;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onSpanTouched(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Landroidx/media3/datasource/cache/Cache;
    .param p2, "oldSpan"    # Landroidx/media3/datasource/cache/CacheSpan;
    .param p3, "newSpan"    # Landroidx/media3/datasource/cache/CacheSpan;

    .line 138
    return-void
.end method

.method public release()V
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroidx/media3/datasource/cache/Cache;->removeListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)V

    .line 69
    return-void
.end method
