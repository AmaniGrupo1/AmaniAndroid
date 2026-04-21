.class final Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;
.super Ljava/lang/Object;
.source "BasePreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceHolderMap"
.end annotation


# instance fields
.field private final mediaItemToMediaSourceHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;>;"
        }
    .end annotation
.end field

.field private final mediaSourceToMediaItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 646
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    .line 648
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    .line 649
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 703
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 701
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized containsKey(Landroidx/media3/common/MediaItem;)Z
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 666
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 671
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 671
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized get(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ")",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    .line 677
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    if-eqz v0, :cond_0

    .line 678
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 680
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 675
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p1    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized put(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .local p3, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 652
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p2    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    .end local p3    # "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Landroidx/media3/common/MediaItem;)Z
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .local v0, "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    if-nez v0, :cond_0

    .line 686
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 688
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 683
    .end local v0    # "mediaSourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Landroidx/media3/exoplayer/source/MediaSource;)Z
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaSourceToMediaItem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    if-nez v0, :cond_0

    .line 695
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 697
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 692
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    .end local p1    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 662
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;>;"
        }
    .end annotation

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;->mediaItemToMediaSourceHolder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 658
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolderMap;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolderMap;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
