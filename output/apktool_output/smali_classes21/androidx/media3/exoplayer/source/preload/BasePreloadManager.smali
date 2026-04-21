.class public abstract Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.super Ljava/lang/Object;
.source "BasePreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;,
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/preload/BasePreloadManager$BuilderBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "PreloadStatusT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final applicationHandler:Landroid/os/Handler;

.field private indexForSourceHolderToClear:I

.field private indexForSourceHolderToPreload:I

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolderMap;"
        }
    .end annotation
.end field

.field protected final rankingDataComparator:Landroidx/media3/exoplayer/source/preload/RankingDataComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/preload/RankingDataComparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sourceHolderPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;>;"
        }
    .end annotation
.end field

.field private final targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "TT;TPreloadStatusT;>;"
        }
    .end annotation
.end field

.field private targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPreloadStatusT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/media3/exoplayer/source/preload/RankingDataComparator;Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2
    .param p3, "mediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/RankingDataComparator<",
            "TT;>;",
            "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<",
            "TT;TPreloadStatusT;>;",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ")V"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "rankingDataComparator":Landroidx/media3/exoplayer/source/preload/RankingDataComparator;, "Landroidx/media3/exoplayer/source/preload/RankingDataComparator<TT;>;"
    .local p2, "targetPreloadStatusControl":Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;, "Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl<TT;TPreloadStatusT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    .line 95
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->rankingDataComparator:Landroidx/media3/exoplayer/source/preload/RankingDataComparator;

    .line 97
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;

    .line 98
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 99
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 100
    new-instance v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    .line 101
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->rankingDataComparator:Landroidx/media3/exoplayer/source/preload/RankingDataComparator;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/preload/RankingDataComparator;->setInvalidationListener(Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    .line 103
    return-void
.end method

.method private getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;"
        }
    .end annotation

    .line 484
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    return-object v0
.end method

.method private isCurrentlyPreloading(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;)Z"
        }
    .end annotation

    .line 524
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$onCompleted$0(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 1
    .param p0, "mediaSourceHolder"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 360
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;->onCompleted(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method static synthetic lambda$onCompleted$2(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 1
    .param p0, "mediaSourceHolder"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 379
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;->onCompleted(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method static synthetic lambda$onError$4(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 399
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    return-void
.end method

.method static synthetic lambda$onError$6(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 419
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    return-void
.end method

.method private maybeAdvanceToNextMediaSourceHolder()V
    .locals 3

    .line 473
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :cond_0
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    .line 476
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 477
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeStartPreloadingNextSourceHolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    :cond_1
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeStartPreloadingNextSourceHolder()Z
    .locals 3

    .line 577
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->shouldStartPreloadingNextSource()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    iget v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    .line 579
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 580
    .local v0, "preloadingHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    return v1

    .line 583
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusControl:Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    .line 584
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl;->getTargetPreloadStatus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;

    .line 585
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->preloadMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Ljava/lang/Object;)V

    .line 587
    const/4 v1, 0x1

    return v1

    .line 589
    .end local v0    # "preloadingHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :cond_1
    return v1
.end method

.method private resetSourceHolderPriorityList()V
    .locals 2

    .line 216
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    .line 220
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToClear:I

    .line 221
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 593
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 596
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preload manager is accessed on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Landroidx/media3/common/MediaItem;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "TT;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p2, "rankingData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->add(Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public final add(Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V
    .locals 4
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "TT;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p2, "rankingData":Ljava/lang/Object;, "TT;"
    nop

    .line 196
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->createMediaSourceHolder(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v0

    .line 197
    .local v0, "mediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->put(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 198
    return-void
.end method

.method public addListener(Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 111
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final addMediaItems(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    .local p2, "rankingDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->add(Landroidx/media3/common/MediaItem;Ljava/lang/Object;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->invalidate()V

    .line 159
    return-void
.end method

.method public final addMediaSources(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    .local p2, "rankingDataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->add(Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->invalidate()V

    .line 186
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 130
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->verifyApplicationThread()V

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->clear()V

    .line 132
    return-void
.end method

.method protected abstract createMediaSourceHolder(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "TT;)",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;"
        }
    .end annotation
.end method

.method public final getMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 232
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->containsKey(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaSourceHolderToClear()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;"
        }
    .end annotation

    .line 492
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    iget v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToClear:I

    if-lt v1, v2, :cond_0

    .line 494
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    iget v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToClear:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    monitor-exit v0

    return-object v1

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSourceCount()I
    .locals 1

    .line 141
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->size()I

    move-result v0

    return v0
.end method

.method protected final getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            ")TPreloadStatusT;"
        }
    .end annotation

    .line 514
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    .line 516
    .local v1, "currentMediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {p1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    .line 517
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 520
    .end local v1    # "currentMediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ")TPreloadStatusT;"
        }
    .end annotation

    .line 503
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    .line 505
    .local v1, "currentMediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    .line 506
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 509
    .end local v1    # "currentMediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final invalidate()V
    .locals 3

    .line 205
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->resetSourceHolderPriorityList()V

    .line 207
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->sourceHolderPriorityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 208
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeStartPreloadingNextSourceHolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToPreload:I

    goto :goto_0

    .line 211
    :cond_0
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$onCompleted$1$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V
    .locals 4
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "shouldNotifyListenerAndAdvancePredicate"    # Lcom/google/common/base/Predicate;

    .line 352
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 353
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 359
    .local v1, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 361
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 363
    :cond_1
    return-void
.end method

.method synthetic lambda$onCompleted$3$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "shouldNotifyListenerAndAdvancePredicate"    # Lcom/google/common/base/Predicate;

    .line 371
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 372
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 378
    .local v1, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 380
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 382
    :cond_1
    return-void
.end method

.method synthetic lambda$onError$5$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;Landroidx/media3/exoplayer/source/preload/PreloadException;)V
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "shouldNotifyListenerAndAdvancePredicate"    # Lcom/google/common/base/Predicate;
    .param p3, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 392
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 393
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 400
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 402
    :cond_1
    return-void
.end method

.method synthetic lambda$onError$7$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;Landroidx/media3/exoplayer/source/preload/PreloadException;)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "shouldNotifyListenerAndAdvancePredicate"    # Lcom/google/common/base/Predicate;
    .param p3, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 412
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 413
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 420
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 422
    :cond_1
    return-void
.end method

.method synthetic lambda$onMediaSourceUpdated$9$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "updatedMediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 460
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 461
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 466
    .local v1, "sourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->remove(Landroidx/media3/common/MediaItem;)Z

    .line 467
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 468
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v2, p1, p2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->put(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 469
    return-void
.end method

.method synthetic lambda$onSkipped$8$androidx-media3-exoplayer-source-preload-BasePreloadManager(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "shouldAdvancePredicate"    # Lcom/google/common/base/Predicate;

    .line 431
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    nop

    .line 432
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    .local v0, "targetPreloadStatus":Ljava/lang/Object;, "TPreloadStatusT;"
    if-nez v0, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 440
    :cond_1
    return-void
.end method

.method protected final onCompleted(Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Lcom/google/common/base/Predicate<",
            "TPreloadStatusT;>;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p2, "shouldNotifyListenerAndAdvancePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method protected final onCompleted(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Lcom/google/common/base/Predicate<",
            "TPreloadStatusT;>;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p2, "shouldNotifyListenerAndAdvancePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method protected final onError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/PreloadException;",
            "Landroidx/media3/common/MediaItem;",
            "Lcom/google/common/base/Predicate<",
            "TPreloadStatusT;>;)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p3, "shouldNotifyListenerAndAdvancePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method protected final onError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/PreloadException;",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Lcom/google/common/base/Predicate<",
            "TPreloadStatusT;>;)V"
        }
    .end annotation

    .line 390
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p3, "shouldNotifyListenerAndAdvancePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method protected final onMediaSourceUpdated(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "updatedMediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 457
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 470
    return-void
.end method

.method protected final onSkipped(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Lcom/google/common/base/Predicate<",
            "TPreloadStatusT;>;)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p2, "shouldAdvancePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->applicationHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method protected final onSourceCleared()V
    .locals 2

    .line 445
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToClear:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->indexForSourceHolderToClear:I

    .line 447
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract preloadMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;TPreloadStatusT;)V"
        }
    .end annotation
.end method

.method public final release()V
    .locals 0

    .line 342
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->reset()V

    .line 343
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseInternal()V

    .line 344
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->clearListeners()V

    .line 345
    return-void
.end method

.method protected releaseInternal()V
    .locals 0

    .line 567
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    return-void
.end method

.method protected releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;)V"
        }
    .end annotation

    .line 563
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->release()V

    .line 564
    return-void
.end method

.method public final remove(Landroidx/media3/common/MediaItem;)Z
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 246
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v0

    .line 247
    .local v0, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 249
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->remove(Landroidx/media3/common/MediaItem;)Z

    .line 250
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isCurrentlyPreloading(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 253
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final remove(Landroidx/media3/exoplayer/source/MediaSource;)Z
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .line 288
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v0

    .line 289
    .local v0, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 291
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->remove(Landroidx/media3/exoplayer/source/MediaSource;)Z

    .line 292
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->isCurrentlyPreloading(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 295
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 297
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public removeListener(Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    .line 120
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->verifyApplicationThread()V

    .line 121
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public final removeMediaItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 265
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v2

    .line 266
    .local v2, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 268
    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->remove(Landroidx/media3/common/MediaItem;)Z

    .line 270
    .end local v1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local v2    # "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    .line 274
    .local v1, "currentMediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 278
    :cond_2
    return-void

    .line 274
    .end local v1    # "currentMediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final removeMediaSources(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    .local p1, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource;

    .line 307
    .local v1, "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->get(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v2

    .line 308
    .local v2, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 310
    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->remove(Landroidx/media3/exoplayer/source/MediaSource;)Z

    .line 312
    .end local v1    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    .end local v2    # "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->getCurrentlyPreloadingMediaSourceHolder()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v1

    .line 316
    .local v1, "currentMediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->maybeAdvanceToNextMediaSourceHolder()V

    .line 320
    :cond_2
    return-void

    .line 316
    .end local v1    # "currentMediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final reset()V
    .locals 2

    .line 326
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    .line 327
    .local v1, "mediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->releaseMediaSourceHolderInternal(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V

    .line 328
    .end local v1    # "mediaHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->mediaSourceHolderMap:Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->clear()V

    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->resetSourceHolderPriorityList()V

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->targetPreloadStatusOfCurrentPreloadingSource:Ljava/lang/Object;

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected shouldStartPreloadingNextSource()Z
    .locals 1

    .line 531
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>;"
    const/4 v0, 0x1

    return v0
.end method
