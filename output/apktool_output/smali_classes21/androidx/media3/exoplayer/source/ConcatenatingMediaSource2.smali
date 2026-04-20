.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_TIMELINE:I = 0x1


# instance fields
.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private timelineUpdateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$bXRn9-o-6gWY7wzcXHo5E0cUSmI(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p2, "mediaSourceHolders":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;>;"
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 237
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 238
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 239
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/MediaItem;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableList;
    .param p3, "x2"    # Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$1;

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;-><init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;

    .line 59
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 397
    .local v1, "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    if-nez v2, :cond_0

    .line 398
    iget v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableChildSource(Ljava/lang/Object;)V

    .line 395
    .end local v1    # "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static getChildIndex(Ljava/lang/Object;)I
    .locals 1
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 505
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getChildIndexFromChildWindowSequenceNumber(JI)I
    .locals 2
    .param p0, "childWindowSequenceNumber"    # J
    .param p2, "childCount"    # I

    .line 523
    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 511
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method private static getChildWindowSequenceNumber(JII)J
    .locals 4
    .param p0, "windowSequenceNumber"    # J
    .param p2, "childCount"    # I
    .param p3, "childIndex"    # I

    .line 517
    int-to-long v0, p2

    mul-long/2addr v0, p0

    int-to-long v2, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "childIndex"    # I
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 499
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J
    .locals 2
    .param p0, "childWindowSequenceNumber"    # J
    .param p2, "childCount"    # I

    .line 529
    int-to-long v0, p2

    div-long v0, p0, v0

    return-wide v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->updateTimeline()V

    .line 376
    :cond_0
    return v1
.end method

.method private maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    .locals 41

    .line 405
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 406
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 407
    .local v2, "period":Landroidx/media3/common/Timeline$Period;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 408
    .local v3, "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 409
    .local v4, "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 410
    .local v5, "periodOffsetsInWindowUsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 411
    .local v6, "periodCount":I
    const/4 v7, 0x1

    .line 412
    .local v7, "isSeekable":Z
    const/4 v8, 0x0

    .line 413
    .local v8, "isDynamic":Z
    const-wide/16 v9, 0x0

    .line 414
    .local v9, "durationUs":J
    const-wide/16 v11, 0x0

    .line 415
    .local v11, "defaultPositionUs":J
    const-wide/16 v13, 0x0

    .line 416
    .local v13, "nextPeriodOffsetInWindowUs":J
    const/4 v15, 0x1

    .line 417
    .local v15, "manifestsAreIdentical":Z
    const/16 v16, 0x0

    .line 418
    .local v16, "hasInitialManifest":Z
    const/16 v17, 0x0

    .line 419
    .local v17, "initialManifest":Ljava/lang/Object;
    move/from16 v18, v6

    .end local v6    # "periodCount":I
    .local v18, "periodCount":I
    iget-object v6, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    .line 420
    .local v6, "mediaSourceHoldersCount":I
    const/16 v19, 0x0

    move/from16 v24, v7

    move/from16 v25, v8

    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    move/from16 v7, v19

    .end local v8    # "isDynamic":Z
    .end local v9    # "durationUs":J
    .end local v11    # "defaultPositionUs":J
    .local v7, "i":I
    .local v24, "isSeekable":Z
    .local v25, "isDynamic":Z
    .local v26, "durationUs":J
    .local v28, "defaultPositionUs":J
    :goto_0
    if-ge v7, v6, :cond_11

    .line 421
    iget-object v9, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 422
    .local v9, "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v10, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v10

    .line 423
    .local v10, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    const/16 v19, 0x0

    const-string v8, "Can\'t concatenate empty child Timeline."

    invoke-static {v11, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 424
    invoke-virtual {v3, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 425
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 426
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v8

    .line 427
    .local v8, "periodCountInMediaSourceHolder":I
    add-int v18, v18, v8

    .line 428
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v12

    if-ge v11, v12, :cond_10

    .line 429
    invoke-virtual {v10, v11, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 430
    if-nez v16, :cond_0

    .line 431
    iget-object v12, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 432
    .end local v17    # "initialManifest":Ljava/lang/Object;
    .local v12, "initialManifest":Ljava/lang/Object;
    const/16 v16, 0x1

    goto :goto_2

    .line 430
    .end local v12    # "initialManifest":Ljava/lang/Object;
    .restart local v17    # "initialManifest":Ljava/lang/Object;
    :cond_0
    move-object/from16 v12, v17

    .line 434
    .end local v17    # "initialManifest":Ljava/lang/Object;
    .restart local v12    # "initialManifest":Ljava/lang/Object;
    :goto_2
    const/16 v17, 0x0

    if-eqz v15, :cond_1

    iget-object v0, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 435
    invoke-static {v12, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    move/from16 v0, v17

    :goto_3
    move v15, v0

    .line 437
    move-object v0, v3

    move-object/from16 v31, v4

    .end local v3    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .end local v4    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .local v0, "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .local v31, "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 438
    .local v3, "windowDurationUs":J
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v23, v3, v21

    if-nez v23, :cond_3

    .line 439
    move-wide/from16 v32, v3

    .end local v3    # "windowDurationUs":J
    .local v32, "windowDurationUs":J
    iget-wide v3, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    cmp-long v3, v3, v21

    if-nez v3, :cond_2

    .line 441
    return-object v19

    .line 443
    :cond_2
    iget-wide v3, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    .end local v32    # "windowDurationUs":J
    .restart local v3    # "windowDurationUs":J
    goto :goto_4

    .line 438
    :cond_3
    move-wide/from16 v32, v3

    .line 445
    :goto_4
    add-long v26, v26, v3

    .line 446
    move-object/from16 v32, v0

    .end local v0    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .local v32, "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    iget v0, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    if-nez v0, :cond_4

    if-nez v11, :cond_4

    .line 447
    move-wide/from16 v33, v3

    .end local v3    # "windowDurationUs":J
    .local v33, "windowDurationUs":J
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 448
    .end local v28    # "defaultPositionUs":J
    .local v3, "defaultPositionUs":J
    move-wide/from16 v28, v3

    .end local v3    # "defaultPositionUs":J
    .restart local v28    # "defaultPositionUs":J
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    neg-long v13, v3

    goto :goto_5

    .line 446
    .end local v33    # "windowDurationUs":J
    .local v3, "windowDurationUs":J
    :cond_4
    move-wide/from16 v33, v3

    .line 451
    .end local v3    # "windowDurationUs":J
    .restart local v33    # "windowDurationUs":J
    :goto_5
    iget-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v0, v17

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v0, 0x1

    :goto_7
    and-int v24, v24, v0

    .line 452
    iget-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    or-int v25, v25, v0

    .line 454
    iget v0, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .local v0, "k":I
    :goto_8
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, v3, :cond_f

    .line 455
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 456
    const/4 v3, 0x1

    invoke-virtual {v10, v0, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 457
    iget-wide v3, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 458
    .local v3, "periodDurationUs":J
    cmp-long v23, v3, v21

    if-nez v23, :cond_8

    .line 459
    move-wide/from16 v35, v3

    .end local v3    # "periodDurationUs":J
    .local v35, "periodDurationUs":J
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget v4, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_9

    :cond_7
    move/from16 v3, v17

    :goto_9
    const-string v4, "Can\'t apply placeholder duration to multiple periods with unknown duration in a single window."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 463
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    add-long v3, v33, v3

    .end local v35    # "periodDurationUs":J
    .restart local v3    # "periodDurationUs":J
    goto :goto_a

    .line 458
    :cond_8
    move-wide/from16 v35, v3

    .line 465
    :goto_a
    const-wide/16 v35, 0x0

    .line 466
    .local v35, "timeOffsetUsForPeriod":J
    move-wide/from16 v37, v3

    .end local v3    # "periodDurationUs":J
    .local v37, "periodDurationUs":J
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-ne v0, v3, :cond_a

    iget v3, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    if-nez v3, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    move/from16 v3, v17

    .line 468
    .local v3, "isFirstPeriodInNonFirstWindow":Z
    :goto_b
    if-eqz v3, :cond_b

    cmp-long v4, v37, v21

    if-eqz v4, :cond_b

    .line 469
    move/from16 v23, v3

    .end local v3    # "isFirstPeriodInNonFirstWindow":Z
    .local v23, "isFirstPeriodInNonFirstWindow":Z
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    neg-long v3, v3

    .line 470
    .end local v35    # "timeOffsetUsForPeriod":J
    .local v3, "timeOffsetUsForPeriod":J
    add-long v35, v37, v3

    move-wide/from16 v39, v35

    move-wide/from16 v35, v3

    move-wide/from16 v3, v39

    .end local v37    # "periodDurationUs":J
    .local v35, "periodDurationUs":J
    goto :goto_c

    .line 468
    .end local v23    # "isFirstPeriodInNonFirstWindow":Z
    .local v3, "isFirstPeriodInNonFirstWindow":Z
    .local v35, "timeOffsetUsForPeriod":J
    .restart local v37    # "periodDurationUs":J
    :cond_b
    move/from16 v23, v3

    .line 472
    .end local v3    # "isFirstPeriodInNonFirstWindow":Z
    .restart local v23    # "isFirstPeriodInNonFirstWindow":Z
    move-wide/from16 v3, v37

    .end local v37    # "periodDurationUs":J
    .local v3, "periodDurationUs":J
    :goto_c
    move/from16 v30, v0

    .end local v0    # "k":I
    .local v30, "k":I
    iget-object v0, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "periodUid":Ljava/lang/Object;
    move-object/from16 v37, v1

    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .local v37, "window":Landroidx/media3/common/Timeline$Window;
    iget v1, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    if-eqz v1, :cond_e

    iget-object v1, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->periodTimeOffsetsByUid:Ljava/util/HashMap;

    .line 475
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->periodTimeOffsetsByUid:Ljava/util/HashMap;

    .line 476
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object/from16 v38, v2

    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v38, "period":Landroidx/media3/common/Timeline$Period;
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    move/from16 v1, v17

    goto :goto_e

    .line 475
    .end local v38    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v2    # "period":Landroidx/media3/common/Timeline$Period;
    :cond_d
    move-object/from16 v38, v2

    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v38    # "period":Landroidx/media3/common/Timeline$Period;
    goto :goto_d

    .line 473
    .end local v38    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v2    # "period":Landroidx/media3/common/Timeline$Period;
    :cond_e
    move-object/from16 v38, v2

    .line 476
    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v38    # "period":Landroidx/media3/common/Timeline$Period;
    :goto_d
    const/4 v1, 0x1

    .line 473
    :goto_e
    const-string v2, "Can\'t handle windows with changing offset in first period."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 478
    iget-object v1, v9, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->periodTimeOffsetsByUid:Ljava/util/HashMap;

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    add-long/2addr v13, v3

    .line 454
    .end local v0    # "periodUid":Ljava/lang/Object;
    .end local v3    # "periodDurationUs":J
    .end local v23    # "isFirstPeriodInNonFirstWindow":Z
    .end local v35    # "timeOffsetUsForPeriod":J
    add-int/lit8 v0, v30, 0x1

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    .end local v30    # "k":I
    .local v0, "k":I
    goto/16 :goto_8

    .end local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v38    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v2    # "period":Landroidx/media3/common/Timeline$Period;
    :cond_f
    move/from16 v30, v0

    move-object/from16 v37, v1

    move-object/from16 v38, v2

    .line 428
    .end local v0    # "k":I
    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .end local v33    # "windowDurationUs":J
    .restart local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v38    # "period":Landroidx/media3/common/Timeline$Period;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v12

    move-object/from16 v4, v31

    move-object/from16 v3, v32

    const/4 v12, 0x1

    goto/16 :goto_1

    .end local v12    # "initialManifest":Ljava/lang/Object;
    .end local v31    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .end local v32    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .end local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v38    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v3, "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .restart local v4    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .restart local v17    # "initialManifest":Ljava/lang/Object;
    :cond_10
    move-object/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v32, v3

    move-object/from16 v31, v4

    .line 420
    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .end local v3    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .end local v4    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .end local v8    # "periodCountInMediaSourceHolder":I
    .end local v9    # "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    .end local v10    # "timeline":Landroidx/media3/common/Timeline;
    .end local v11    # "j":I
    .restart local v31    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .restart local v32    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .restart local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v38    # "period":Landroidx/media3/common/Timeline$Period;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v31    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .end local v32    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .end local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v38    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .restart local v3    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .restart local v4    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v32, v3

    move-object/from16 v31, v4

    const/16 v19, 0x0

    .line 483
    .end local v1    # "window":Landroidx/media3/common/Timeline$Window;
    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .end local v3    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .end local v4    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .restart local v31    # "firstPeriodIndicesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    .restart local v32    # "timelinesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Timeline;>;"
    .restart local v37    # "window":Landroidx/media3/common/Timeline$Window;
    .restart local v38    # "period":Landroidx/media3/common/Timeline$Period;
    move-object/from16 v0, v19

    new-instance v19, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v20

    .line 485
    invoke-virtual/range {v32 .. v32}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    .line 486
    invoke-virtual/range {v31 .. v31}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v22

    .line 487
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    .line 492
    if-eqz v15, :cond_12

    move-object/from16 v30, v17

    goto :goto_f

    :cond_12
    move-object/from16 v30, v0

    :goto_f
    invoke-direct/range {v19 .. v30}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;-><init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V

    .line 483
    return-object v19
.end method

.method private scheduleTimelineUpdate()V
    .locals 2

    .line 380
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 382
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 384
    :cond_0
    return-void
.end method

.method private updateTimeline()V
    .locals 1

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 388
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    .line 389
    .local v0, "timeline":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 9
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 282
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, "holderIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 284
    .local v1, "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 285
    invoke-static {v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget-wide v3, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 288
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    iget v6, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 287
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildWindowSequenceNumber(JII)J

    move-result-wide v3

    .line 286
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    .line 289
    .local v2, "childMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->enableChildSource(Ljava/lang/Object;)V

    .line 290
    iget v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 292
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->periodTimeOffsetsByUid:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    nop

    .line 295
    .local v3, "timeOffsetUs":J
    new-instance v5, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    sub-long v7, p3, v3

    .line 297
    invoke-virtual {v6, v2, p2, v7, v8}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;J)V

    .line 300
    .local v5, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    .line 302
    return-object v5
.end method

.method protected enableInternal()V
    .locals 0

    .line 278
    return-void
.end method

.method public getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 245
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 250
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 5
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 335
    iget-wide v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 337
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 336
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndexFromChildWindowSequenceNumber(JI)I

    move-result v0

    .line 338
    .local v0, "childIndex":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 341
    const/4 v1, 0x0

    return-object v1

    .line 343
    :cond_0
    iget-wide v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 345
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 344
    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J

    move-result-wide v1

    .line 346
    .local v1, "windowSequenceNumber":J
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 347
    .local v3, "periodUid":Ljava/lang/Object;
    nop

    .line 348
    invoke-virtual {p2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 349
    invoke-virtual {v4, v1, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 347
    return-object v4
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Integer;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .locals 3
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaTimeMs"    # J
    .param p4, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 360
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->periodTimeOffsetsByUid:Ljava/util/HashMap;

    iget-object v1, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 366
    .local v0, "timeOffsetUs":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 367
    return-wide p2

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    add-long/2addr v1, p2

    return-wide v1

    .line 361
    .end local v0    # "timeOffsetUs":Ljava/lang/Long;
    :cond_2
    :goto_0
    return-wide p2
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getMediaTimeForChildMediaTime(Ljava/lang/Integer;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I
    .locals 1
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "windowIndex"    # I

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I

    move-result p1

    return p1
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 328
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    .line 329
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 4
    .param p1, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 265
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 266
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 269
    .local v1, "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 267
    .end local v1    # "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    .line 272
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 307
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 308
    .local v0, "holder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;->getWrappedMediaPeriod()Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 309
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 310
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    .line 313
    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 317
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 318
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 323
    return-void
.end method

.method public declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    monitor-enter p0

    .line 260
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 259
    .end local p0    # "this":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
