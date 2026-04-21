.class public final Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "ExternallyLoadedMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final externalLoader:Landroidx/media3/exoplayer/source/ExternalLoader;

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final timelineDurationUs:J


# direct methods
.method private constructor <init>(Landroidx/media3/common/MediaItem;JLandroidx/media3/exoplayer/source/ExternalLoader;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "timelineDurationUs"    # J
    .param p4, "externalLoader"    # Landroidx/media3/exoplayer/source/ExternalLoader;

    .line 99
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 101
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->timelineDurationUs:J

    .line 102
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->externalLoader:Landroidx/media3/exoplayer/source/ExternalLoader;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;JLandroidx/media3/exoplayer/source/ExternalLoader;Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/MediaItem;
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroidx/media3/exoplayer/source/ExternalLoader;
    .param p5, "x3"    # Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$1;

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;-><init>(Landroidx/media3/common/MediaItem;JLandroidx/media3/exoplayer/source/ExternalLoader;)V

    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 6
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 130
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 131
    .local v0, "newConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 132
    .local v1, "oldConfiguration":Landroidx/media3/common/MediaItem$LocalConfiguration;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 133
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    .line 136
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->timelineDurationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 132
    :goto_0
    return v2
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 5
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 151
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 152
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v2, "Externally loaded mediaItems require a MIME type."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->externalLoader:Landroidx/media3/exoplayer/source/ExternalLoader;

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/source/ExternalLoader;)V

    return-object v1
.end method

.method public declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 147
    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 8
    .param p1, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 107
    new-instance v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->timelineDurationUs:J

    .line 114
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 115
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 116
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 161
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->releasePeriod()V

    .line 162
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    .line 121
    return-void
.end method

.method public declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    monitor-enter p0

    .line 141
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
