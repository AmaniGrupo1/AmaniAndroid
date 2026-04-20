.class public Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;
.super Ljava/lang/Object;
.source "BasePreloadManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaSourceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
        "TT;TPreloadStatusT;>.MediaSourceHolder;>;"
    }
.end annotation


# instance fields
.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field private mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field public final rankingData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private released:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/source/preload/BasePreloadManager;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p4, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "TT;",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 606
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    .local p3, "rankingData":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 608
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    .line 609
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 610
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<",
            "TT;TPreloadStatusT;>.MediaSourceHolder;)I"
        }
    .end annotation

    .line 630
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    .local p1, "o":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->rankingDataComparator:Landroidx/media3/exoplayer/source/preload/RankingDataComparator;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    iget-object v2, p1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->rankingData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/source/preload/RankingDataComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 599
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    check-cast p1, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->compareTo(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 621
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isReleased()Z
    .locals 1

    .line 617
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->released:Z

    return v0
.end method

.method public final release()V
    .locals 1

    .line 613
    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->released:Z

    .line 614
    return-void
.end method

.method public declared-synchronized setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;

    .local p0, "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    monitor-enter p0

    .line 625
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 624
    .end local p0    # "this":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<TT;TPreloadStatusT;>.MediaSourceHolder;"
    .end local p1    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
