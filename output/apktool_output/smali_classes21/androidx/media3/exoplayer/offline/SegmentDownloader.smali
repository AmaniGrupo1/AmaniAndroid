.class public abstract Landroidx/media3/exoplayer/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS:J = 0x4e20L


# instance fields
.field private final activeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

.field private final cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field public final durationUs:J

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final manifestDataSpec:Landroidx/media3/datasource/DataSpec;

.field private final manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final maxMergedSegmentStartTimeDiffUs:J

.field private final priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field public final startPositionUs:J

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 11
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "maxMergedSegmentStartTimeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    .local p2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<TM;>;"
    const-wide/16 v7, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;JJJ)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "maxMergedSegmentStartTimeDiffMs"    # J
    .param p7, "startPositionUs"    # J
    .param p9, "durationUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "JJJ)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    .local p2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 199
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 201
    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 202
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 203
    iput-wide p7, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->startPositionUs:J

    .line 204
    iput-wide p9, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->durationUs:J

    .line 205
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getCache()Landroidx/media3/datasource/cache/Cache;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/Cache;

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 206
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 207
    invoke-virtual {p3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Landroidx/media3/common/PriorityTaskManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 209
    invoke-static {p5, p6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    .line 210
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/offline/SegmentDownloader;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    return-object v0
.end method

.method private addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "TT;*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 488
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 490
    :cond_0
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .end local p1    # "runnable":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    throw v1

    .line 493
    .restart local p1    # "runnable":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static canMergeSegments(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec;)Z
    .locals 4
    .param p0, "dataSpec1"    # Landroidx/media3/datasource/DataSpec;
    .param p1, "dataSpec2"    # Landroidx/media3/datasource/DataSpec;

    .line 538
    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v2, p0, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    .line 541
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->flags:I

    iget v1, p1, Landroidx/media3/datasource/DataSpec;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget v1, p1, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 544
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0
.end method

.method protected static getCompressibleDataSpec(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 483
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    return-object v0
.end method

.method private static mergeSegments(Ljava/util/List;Landroidx/media3/datasource/cache/CacheKeyFactory;J)V
    .locals 16
    .param p1, "keyFactory"    # Landroidx/media3/datasource/cache/CacheKeyFactory;
    .param p2, "maxMergedSegmentStartTimeDiffUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheKeyFactory;",
            "J)V"
        }
    .end annotation

    .line 512
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v1, "lastIndexByCacheKey":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 514
    .local v2, "nextOutIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 515
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 516
    .local v4, "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    iget-object v5, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    move-object/from16 v6, p1

    invoke-interface {v6, v5}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "cacheKey":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 518
    .local v7, "lastIndex":Ljava/lang/Integer;
    if-nez v7, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 519
    .local v8, "lastSegment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    :goto_1
    if-eqz v8, :cond_3

    iget-wide v9, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v11, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    add-long v11, v11, p2

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    iget-object v9, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v10, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 521
    invoke-static {v9, v10}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->canMergeSegments(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 527
    :cond_1
    iget-object v9, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v9, v9, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 528
    goto :goto_2

    .line 529
    :cond_2
    iget-object v9, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v9, v9, Landroidx/media3/datasource/DataSpec;->length:J

    iget-object v11, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v11, v11, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v11, v9

    :goto_2
    nop

    .line 530
    .local v11, "mergedLength":J
    iget-object v9, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v13, 0x0

    invoke-virtual {v9, v13, v14, v11, v12}, Landroidx/media3/datasource/DataSpec;->subrange(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object v9

    .line 531
    .local v9, "mergedDataSpec":Landroidx/media3/datasource/DataSpec;
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v13, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-wide v14, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-direct {v13, v14, v15, v9}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    invoke-interface {v0, v10, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 522
    .end local v9    # "mergedDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v11    # "mergedLength":J
    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 524
    add-int/lit8 v2, v2, 0x1

    .line 514
    .end local v4    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .end local v5    # "cacheKey":Ljava/lang/String;
    .end local v7    # "lastIndex":Ljava/lang/Integer;
    .end local v8    # "lastSegment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v6, p1

    .line 534
    .end local v3    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 535
    return-void
.end method

.method private removeActiveRunnable(I)V
    .locals 2
    .param p1, "index"    # I

    .line 505
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "**>;)V"
        }
    .end annotation

    .line 498
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<**>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 356
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 357
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 359
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final download(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;)V
    .locals 27
    .param p1, "progressListener"    # Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 215
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v2, v0

    .line 216
    .local v2, "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    move-object v3, v0

    .line 217
    .local v3, "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v4, -0xfa0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->add(I)V

    .line 221
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    move-object v6, v0

    .line 223
    .local v6, "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v0, v7}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v0

    .line 224
    .local v0, "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 225
    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v8}, Landroidx/media3/exoplayer/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-object v0, v8

    goto :goto_0

    .line 224
    :cond_1
    move-object v8, v0

    .line 227
    .end local v0    # "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    .local v8, "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    :goto_0
    invoke-virtual {v1, v6, v8, v7}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 231
    .local v7, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 232
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-wide v9, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->maxMergedSegmentStartTimeDiffUs:J

    invoke-static {v7, v0, v9, v10}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->mergeSegments(Ljava/util/List;Landroidx/media3/datasource/cache/CacheKeyFactory;J)V

    .line 235
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v13, v0

    .line 236
    .local v13, "totalSegments":I
    const/4 v0, 0x0

    .line 237
    .local v0, "segmentsDownloaded":I
    const-wide/16 v9, 0x0

    .line 238
    .local v9, "contentLength":J
    const-wide/16 v11, 0x0

    .line 239
    .local v11, "bytesDownloaded":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-int/2addr v14, v5

    move/from16 v16, v0

    move v0, v14

    move-wide v14, v11

    move-wide v11, v9

    .end local v9    # "contentLength":J
    .local v0, "i":I
    .local v11, "contentLength":J
    .local v14, "bytesDownloaded":J
    .local v16, "segmentsDownloaded":I
    :goto_1
    if-ltz v0, :cond_7

    .line 240
    :try_start_1
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-object v9, v9, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 241
    .local v9, "dataSpec":Landroidx/media3/datasource/DataSpec;
    iget-object v10, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    invoke-interface {v10, v9}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .local v10, "cacheKey":Ljava/lang/String;
    move/from16 v23, v5

    move-object/from16 v24, v6

    .end local v6    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    .local v24, "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    :try_start_2
    iget-wide v5, v9, Landroidx/media3/datasource/DataSpec;->length:J

    .line 243
    .local v5, "segmentLength":J
    const-wide/16 v25, -0x1

    cmp-long v17, v5, v25

    if-nez v17, :cond_3

    .line 244
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 245
    invoke-interface {v4, v10}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v17

    .line 246
    .local v17, "resourceLength":J
    cmp-long v4, v17, v25

    if-eqz v4, :cond_2

    .line 247
    move-wide/from16 v19, v5

    .end local v5    # "segmentLength":J
    .local v19, "segmentLength":J
    iget-wide v4, v9, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long v5, v17, v4

    move-wide/from16 v21, v5

    .end local v19    # "segmentLength":J
    .restart local v5    # "segmentLength":J
    goto :goto_3

    .line 246
    :cond_2
    move-wide/from16 v19, v5

    .end local v5    # "segmentLength":J
    .restart local v19    # "segmentLength":J
    goto :goto_2

    .line 243
    .end local v17    # "resourceLength":J
    .end local v19    # "segmentLength":J
    .restart local v5    # "segmentLength":J
    :cond_3
    move-wide/from16 v19, v5

    .line 250
    .end local v5    # "segmentLength":J
    .restart local v19    # "segmentLength":J
    :goto_2
    move-wide/from16 v21, v19

    .end local v19    # "segmentLength":J
    .local v21, "segmentLength":J
    :goto_3
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v9, Landroidx/media3/datasource/DataSpec;->position:J

    .line 251
    move-object/from16 v17, v4

    move-wide/from16 v19, v5

    move-object/from16 v18, v10

    .end local v10    # "cacheKey":Ljava/lang/String;
    .local v18, "cacheKey":Ljava/lang/String;
    invoke-interface/range {v17 .. v22}, Landroidx/media3/datasource/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v4

    .line 252
    .local v4, "segmentBytesDownloaded":J
    add-long/2addr v14, v4

    .line 253
    cmp-long v6, v21, v25

    if-eqz v6, :cond_5

    .line 254
    cmp-long v6, v21, v4

    if-nez v6, :cond_4

    .line 256
    add-int/lit8 v16, v16, 0x1

    .line 257
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    :cond_4
    cmp-long v6, v11, v25

    if-eqz v6, :cond_6

    .line 260
    add-long v11, v11, v21

    goto :goto_4

    .line 263
    :cond_5
    const-wide/16 v10, -0x1

    move-wide v11, v10

    .line 239
    .end local v4    # "segmentBytesDownloaded":J
    .end local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v18    # "cacheKey":Ljava/lang/String;
    .end local v21    # "segmentLength":J
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, -0x1

    move/from16 v5, v23

    move-object/from16 v6, v24

    const/16 v4, -0xfa0

    goto :goto_1

    .line 339
    .end local v0    # "i":I
    .end local v7    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .end local v8    # "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    .end local v11    # "contentLength":J
    .end local v13    # "totalSegments":I
    .end local v14    # "bytesDownloaded":J
    .end local v16    # "segmentsDownloaded":I
    .end local v24    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    :catchall_0
    move-exception v0

    move/from16 v23, v5

    goto/16 :goto_e

    .line 239
    .restart local v0    # "i":I
    .restart local v6    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    .restart local v7    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .restart local v8    # "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    .restart local v11    # "contentLength":J
    .restart local v13    # "totalSegments":I
    .restart local v14    # "bytesDownloaded":J
    .restart local v16    # "segmentsDownloaded":I
    :cond_7
    move/from16 v23, v5

    move-object/from16 v24, v6

    .line 270
    .end local v0    # "i":I
    .end local v6    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    .restart local v24    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    if-eqz p1, :cond_8

    .line 271
    new-instance v9, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;-><init>(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;JIJI)V

    goto :goto_5

    .line 277
    :cond_8
    const/4 v9, 0x0

    :goto_5
    nop

    .line 278
    .local v9, "progressNotifier":Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 279
    :goto_6
    iget-boolean v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 281
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v4, -0xfa0

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->proceed(I)V

    .line 288
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 290
    .local v0, "recycledRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    iget-object v4, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 291
    .local v4, "segmentDataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    iget-object v5, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 292
    .end local v0    # "recycledRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .local v5, "temporaryBuffer":[B
    goto :goto_7

    .line 293
    .end local v4    # "segmentDataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    .end local v5    # "temporaryBuffer":[B
    :cond_a
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    move-object v4, v0

    .line 294
    .restart local v4    # "segmentDataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    const/high16 v0, 0x20000

    new-array v0, v0, [B

    move-object v5, v0

    .line 296
    .restart local v5    # "temporaryBuffer":[B
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    move-object v6, v0

    .line 297
    .local v6, "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v0, v6, v4, v9, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;[B)V

    move-object v10, v0

    .line 300
    .local v10, "downloadRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    invoke-direct {v1, v10}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 301
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v17, v4

    move v4, v0

    .local v4, "j":I
    .local v17, "segmentDataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    :goto_8
    if-ltz v4, :cond_f

    .line 305
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    move-object/from16 v18, v0

    .line 309
    .local v18, "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->isDone()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_b

    .line 311
    :cond_c
    :goto_9
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->get()Ljava/lang/Object;

    .line 312
    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 313
    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .end local v18    # "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .local v5, "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .local v19, "temporaryBuffer":[B
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 327
    move-object/from16 v20, v6

    goto :goto_b

    .line 314
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v19    # "temporaryBuffer":[B
    .local v5, "temporaryBuffer":[B
    .restart local v18    # "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .line 315
    .end local v18    # "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .local v5, "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .restart local v19    # "temporaryBuffer":[B
    :goto_a
    :try_start_5
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Throwable;

    move-object/from16 v20, v18

    .line 316
    .local v20, "cause":Ljava/lang/Throwable;
    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v6

    .end local v6    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .local v0, "cause":Ljava/lang/Throwable;
    .local v18, "e":Ljava/util/concurrent/ExecutionException;
    .local v20, "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    instance-of v6, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v6, :cond_d

    .line 318
    iget-object v6, v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 319
    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 320
    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_b

    .line 321
    :cond_d
    instance-of v6, v0, Ljava/io/IOException;

    if-nez v6, :cond_e

    .line 325
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v5    # "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .end local v18    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_b
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_8

    .line 322
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v5    # "activeRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .restart local v18    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_e
    move-object v6, v0

    check-cast v6, Ljava/io/IOException;

    .end local v2    # "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .end local v3    # "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    .end local p1    # "progressListener":Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;
    throw v6

    .line 304
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v18    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v19    # "temporaryBuffer":[B
    .end local v20    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .restart local v2    # "pendingSegments":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .restart local v3    # "recycledRunnables":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;>;"
    .local v5, "temporaryBuffer":[B
    .restart local v6    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .restart local p1    # "progressListener":Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;
    :cond_f
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 333
    .end local v4    # "j":I
    .end local v5    # "temporaryBuffer":[B
    .end local v6    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .restart local v19    # "temporaryBuffer":[B
    .restart local v20    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    invoke-virtual {v10}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->blockUntilStarted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 334
    .end local v10    # "downloadRunnable":Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    .end local v17    # "segmentDataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    .end local v19    # "temporaryBuffer":[B
    .end local v20    # "segment":Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    goto/16 :goto_6

    .line 339
    .end local v7    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .end local v8    # "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    .end local v9    # "progressNotifier":Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
    .end local v11    # "contentLength":J
    .end local v13    # "totalSegments":I
    .end local v14    # "bytesDownloaded":J
    .end local v16    # "segmentsDownloaded":I
    .end local v24    # "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 344
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 339
    if-ge v0, v4, :cond_11

    .line 340
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/RunnableFutureTask;

    move/from16 v6, v23

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    move/from16 v6, v23

    .line 344
    .end local v0    # "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .restart local v0    # "i":I
    :goto_d
    if-ltz v0, :cond_12

    .line 345
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v4}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 346
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 348
    .end local v0    # "i":I
    :cond_12
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_13

    .line 349
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v4, -0xfa0

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 352
    :cond_13
    return-void

    .line 339
    :catchall_1
    move-exception v0

    :goto_e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 344
    iget-object v6, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    .line 339
    if-ge v4, v5, :cond_14

    .line 340
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/util/RunnableFutureTask;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_14
    const/4 v7, 0x1

    .line 344
    .end local v4    # "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .restart local v4    # "i":I
    :goto_10
    if-ltz v4, :cond_15

    .line 345
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v5}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 346
    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 344
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 348
    .end local v4    # "i":I
    :cond_15
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v4, :cond_16

    .line 349
    iget-object v4, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v5, -0xfa0

    invoke-virtual {v4, v5}, Landroidx/media3/common/PriorityTaskManager;->remove(I)V

    .line 351
    :cond_16
    throw v0
.end method

.method protected final execute(Lcom/google/common/base/Supplier;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/util/RunnableFutureTask<",
            "TT;*>;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    .local p1, "runnable":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/common/util/RunnableFutureTask<TT;*>;>;"
    if-eqz p2, :cond_1

    .line 421
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/RunnableFutureTask;

    .line 422
    .local v0, "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->run()V

    .line 424
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 427
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_0

    .line 431
    invoke-static {v1}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 428
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 436
    .end local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_5

    .line 440
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    const/16 v1, -0xfa0

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->proceed(I)V

    .line 443
    :cond_2
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/RunnableFutureTask;

    .line 444
    .restart local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->addActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 445
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 461
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 447
    return-object v1

    .line 460
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 448
    :catch_1
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 450
    .restart local v2    # "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v3, :cond_3

    goto :goto_1

    .line 452
    :cond_3
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_4

    .line 456
    invoke-static {v1}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 461
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 462
    nop

    .line 463
    .end local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    goto :goto_0

    .line 453
    .restart local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    .restart local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_4
    :try_start_3
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    .end local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    .end local p1    # "runnable":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/common/util/RunnableFutureTask<TT;*>;>;"
    .end local p2    # "removing":Z
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    .restart local p1    # "runnable":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/common/util/RunnableFutureTask<TT;*>;>;"
    .restart local p2    # "removing":Z
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 461
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->removeActiveRunnable(Landroidx/media3/common/util/RunnableFutureTask;)V

    .line 462
    throw v1

    .line 437
    .end local v0    # "task":Landroidx/media3/common/util/RunnableFutureTask;, "Landroidx/media3/common/util/RunnableFutureTask<TT;*>;"
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected final getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;
    .locals 1
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "removing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/datasource/DataSpec;",
            "Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->execute(Lcom/google/common/base/Supplier;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/FilterableManifest;

    return-object v0
.end method

.method protected abstract getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "TM;Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method synthetic lambda$getManifest$0$androidx-media3-exoplayer-offline-SegmentDownloader(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)Landroidx/media3/common/util/RunnableFutureTask;
    .locals 1
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;

    .line 399
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-object v0
.end method

.method public final remove()V
    .locals 7

    .line 366
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader;, "Landroidx/media3/exoplayer/offline/SegmentDownloader<TM;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->createDataSourceForRemovingDownload()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    .line 368
    .local v0, "dataSource":Landroidx/media3/datasource/cache/CacheDataSource;
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getManifest(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/exoplayer/offline/FilterableManifest;

    move-result-object v1

    .line 369
    .local v1, "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->getSegments(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 370
    if-ge v3, v4, :cond_0

    .line 371
    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iget-object v6, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v4, v6}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "manifest":Landroidx/media3/exoplayer/offline/FilterableManifest;, "TM;"
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;>;"
    .end local v3    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    .line 375
    :catch_0
    move-exception v1

    .line 379
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 380
    :goto_2
    goto :goto_3

    .line 373
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 381
    :goto_3
    return-void

    .line 379
    :goto_4
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->manifestDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v3, v4}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 380
    throw v1
.end method
