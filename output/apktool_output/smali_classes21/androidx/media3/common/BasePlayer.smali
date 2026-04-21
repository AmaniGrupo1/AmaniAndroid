.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field protected final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 36
    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    .line 401
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getRepeatMode()I

    move-result v0

    .line 402
    .local v0, "repeatMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private ignoreSeek(I)V
    .locals 6
    .param p1, "seekCommand"    # I

    .line 406
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    .end local p1    # "seekCommand":I
    .local v4, "seekCommand":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 411
    return-void
.end method

.method private repeatCurrentMediaItem(I)V
    .locals 6
    .param p1, "seekCommand"    # I

    .line 463
    nop

    .line 464
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    .line 463
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    .end local p1    # "seekCommand":I
    .local v4, "seekCommand":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 468
    return-void
.end method

.method private seekToCurrentItem(JI)V
    .locals 6
    .param p1, "positionMs"    # J
    .param p3, "seekCommand"    # I

    .line 414
    nop

    .line 415
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    .line 414
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .end local p1    # "positionMs":J
    .end local p3    # "seekCommand":I
    .local v2, "positionMs":J
    .local v4, "seekCommand":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 416
    return-void
.end method

.method private seekToDefaultPositionInternal(II)V
    .locals 6
    .param p1, "mediaItemIndex"    # I
    .param p2, "seekCommand"    # I

    .line 429
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .end local p1    # "mediaItemIndex":I
    .end local p2    # "seekCommand":I
    .local v1, "mediaItemIndex":I
    .local v4, "seekCommand":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 434
    return-void
.end method

.method private seekToNextMediaItemInternal(I)V
    .locals 2
    .param p1, "seekCommand"    # I

    .line 437
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    .line 438
    .local v0, "nextMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 439
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 440
    return-void

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 443
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 447
    :goto_0
    return-void
.end method

.method private seekToOffset(JI)V
    .locals 6
    .param p1, "offsetMs"    # J
    .param p3, "seekCommand"    # I

    .line 419
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 420
    .local v0, "positionMs":J
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 421
    .local v2, "durationMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 422
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 424
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 425
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 426
    return-void
.end method

.method private seekToPreviousMediaItemInternal(I)V
    .locals 2
    .param p1, "seekCommand"    # I

    .line 450
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    .line 451
    .local v0, "previousMediaItemIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 452
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 453
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 456
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 458
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 460
    :goto_0
    return-void
.end method


# virtual methods
.method public final addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 60
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 61
    return-void
.end method

.method public final addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 65
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->addMediaItems(Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->addMediaItems(ILjava/util/List;)V

    .line 71
    return-void
.end method

.method public final canAdvertiseSession()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public final clearMediaItems()V
    .locals 2

    .line 93
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->removeMediaItems(II)V

    .line 94
    return-void
.end method

.method public final getBufferedPercentage()I
    .locals 8

    .line 323
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 324
    return v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getBufferedPosition()J

    move-result-wide v2

    .line 327
    .local v2, "position":J
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getDuration()J

    move-result-wide v4

    .line 328
    .local v4, "duration":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/16 v6, 0x64

    if-nez v0, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/common/util/Util;->percentInt(JJ)I

    move-result v0

    invoke-static {v0, v1, v6}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    goto :goto_1

    .line 329
    :cond_3
    :goto_0
    nop

    .line 328
    :goto_1
    return v1
.end method

.method public final getContentDuration()J
    .locals 3

    .line 394
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 395
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v1

    .line 395
    :goto_0
    return-wide v1
.end method

.method public final getCurrentLiveOffset()J
    .locals 8

    .line 365
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 366
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 367
    return-wide v2

    .line 369
    :cond_0
    nop

    .line 370
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 371
    .local v4, "windowStartTimeMs":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 372
    return-wide v2

    .line 374
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v6, v3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v1, v6

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentPosition()J

    move-result-wide v6

    sub-long/2addr v1, v6

    return-wide v1
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 3

    .line 312
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 313
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v1, 0x0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 313
    :goto_0
    return-object v1
.end method

.method public final getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 294
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 294
    :goto_0
    return-object v1
.end method

.method public final getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .line 306
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method public final getMediaItemCount()I
    .locals 1

    .line 301
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getNextMediaItemIndex()I
    .locals 4

    .line 265
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 266
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, -0x1

    goto :goto_0

    .line 268
    :cond_0
    nop

    .line 269
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 266
    :goto_0
    return v1
.end method

.method public final getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 4

    .line 283
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 284
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, -0x1

    goto :goto_0

    .line 286
    :cond_0
    nop

    .line 287
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    .line 284
    :goto_0
    return v1
.end method

.method public final getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCommandAvailable(I)Z
    .locals 1
    .param p1, "command"    # I

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    return v0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    .line 344
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 345
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    .line 359
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 360
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    .line 388
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 389
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0
.end method

.method public final moveMediaItem(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 75
    if-eq p1, p2, :cond_0

    .line 76
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/common/BasePlayer;->moveMediaItems(III)V

    .line 78
    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlayWhenReady(Z)V

    .line 119
    return-void
.end method

.method public final play()V
    .locals 1

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlayWhenReady(Z)V

    .line 114
    return-void
.end method

.method public final removeMediaItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 88
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->removeMediaItems(II)V

    .line 89
    return-void
.end method

.method public final replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 82
    add-int/lit8 v0, p1, 0x1

    .line 83
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/BasePlayer;->replaceMediaItems(IILjava/util/List;)V

    .line 84
    return-void
.end method

.method public final seekBack()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToOffset(JI)V

    .line 142
    return-void
.end method

.method public final seekForward()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToOffset(JI)V

    .line 147
    return-void
.end method

.method public final seekTo(IJ)V
    .locals 6
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J

    .line 213
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "mediaItemIndex":I
    .end local p2    # "positionMs":J
    .local v1, "mediaItemIndex":I
    .local v2, "positionMs":J
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    .line 218
    return-void
.end method

.method protected abstract seekTo(IJIZ)V
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 208
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 209
    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    .line 130
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 132
    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 1
    .param p1, "mediaItemIndex"    # I

    .line 136
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    .line 137
    return-void
.end method

.method public final seekToNext()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 193
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/16 v2, 0x9

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasNextMediaItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 195
    return-void
.end method

.method public final seekToNextMediaItem()V
    .locals 1

    .line 187
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    .line 188
    return-void
.end method

.method public final seekToPrevious()V
    .locals 7

    .line 161
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 162
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->hasPreviousMediaItem()Z

    move-result v1

    .line 167
    .local v1, "hasPreviousMediaItem":Z
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    if-eqz v1, :cond_1

    .line 169
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    goto :goto_0

    .line 173
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 174
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    .line 176
    :cond_3
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4, v2}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    .line 178
    :goto_0
    return-void

    .line 163
    .end local v1    # "hasPreviousMediaItem":Z
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->ignoreSeek(I)V

    .line 164
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .locals 1

    .line 156
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    .line 157
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 40
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;)V

    .line 41
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "startPositionMs"    # J

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;IJ)V

    .line 46
    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "resetPosition"    # Z

    .line 50
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 51
    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 56
    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 242
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 243
    return-void
.end method
