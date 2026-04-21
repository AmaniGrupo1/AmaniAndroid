.class final Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackStatsTracker"
.end annotation


# instance fields
.field private audioFormatBitrateTimeProduct:J

.field private final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field private audioFormatTimeMs:J

.field private audioUnderruns:J

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private currentAudioFormat:Landroidx/media3/common/Format;

.field private currentPlaybackSpeed:F

.field private currentPlaybackState:I

.field private currentPlaybackStateStartTimeMs:J

.field private currentVideoFormat:Landroidx/media3/common/Format;

.field private droppedFrames:J

.field private fatalErrorCount:I

.field private final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field private firstReportedTimeMs:J

.field private hasBeenReady:Z

.field private hasEnded:Z

.field private hasFatalError:Z

.field private initialAudioFormatBitrate:J

.field private initialVideoFormatBitrate:J

.field private initialVideoFormatHeight:I

.field private final isAd:Z

.field private isForeground:Z

.field private isInterruptedByAd:Z

.field private isJoinTimeInvalid:Z

.field private isSeeking:Z

.field private final keepHistory:Z

.field private lastAudioFormatStartTimeMs:J

.field private lastRebufferStartTimeMs:J

.field private lastVideoFormatStartTimeMs:J

.field private maxRebufferTimeMs:J

.field private final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private nonFatalErrorCount:I

.field private final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field private pauseBufferCount:I

.field private pauseCount:I

.field private final playbackStateDurationsMs:[J

.field private final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private rebufferCount:I

.field private seekCount:I

.field private startedLoading:Z

.field private videoFormatBitrateTimeMs:J

.field private videoFormatBitrateTimeProduct:J

.field private videoFormatHeightTimeMs:J

.field private videoFormatHeightTimeProduct:J

.field private final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 3
    .param p1, "keepHistory"    # Z
    .param p2, "startTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-boolean p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    .line 417
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 418
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    .line 419
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    .line 420
    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    .line 421
    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    .line 422
    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    .line 423
    if-eqz p1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 425
    iget-wide v1, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    .line 426
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 427
    iput-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 428
    iget-object v1, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_6

    iget-object v1, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    .line 429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 430
    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 431
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    .line 432
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    .line 433
    return-void
.end method

.method private guessMediaTimeBasedOnElapsedRealtime(J)[J
    .locals 12
    .param p1, "realtimeMs"    # J

    .line 772
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 773
    .local v0, "previousKnownMediaTimeHistory":[J
    const/4 v1, 0x0

    aget-wide v3, v0, v1

    .line 774
    .local v3, "previousRealtimeMs":J
    aget-wide v5, v0, v2

    .line 775
    .local v5, "previousMediaTimeMs":J
    sub-long v7, p1, v3

    long-to-float v7, v7

    iget v8, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float/2addr v7, v8

    float-to-long v7, v7

    .line 777
    .local v7, "elapsedMediaTimeEstimateMs":J
    add-long v9, v5, v7

    .line 778
    .local v9, "mediaTimeEstimateMs":J
    const/4 v11, 0x2

    new-array v11, v11, [J

    aput-wide p1, v11, v1

    aput-wide v9, v11, v2

    return-object v11
.end method

.method private static isInvalidJoinTransition(II)Z
    .locals 4
    .param p0, "oldState"    # I
    .param p1, "newState"    # I

    .line 862
    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v0, :cond_0

    .line 865
    return v1

    .line 867
    :cond_0
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method private static isPausedState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 850
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isReadyState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 844
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRebufferingState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 855
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maybeRecordAudioFormatTime(J)V
    .locals 6
    .param p1, "nowMs"    # J

    .line 833
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 836
    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 837
    .local v0, "mediaDurationMs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    .line 838
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    .line 840
    .end local v0    # "mediaDurationMs":J
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastAudioFormatStartTimeMs:J

    .line 841
    return-void
.end method

.method private maybeRecordVideoFormatTime(J)V
    .locals 8
    .param p1, "nowMs"    # J

    .line 817
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_1

    .line 819
    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 820
    .local v0, "mediaDurationMs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 821
    iget-wide v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    .line 822
    iget-wide v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->height:I

    int-to-long v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    .line 824
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->bitrate:I

    if-eq v2, v3, :cond_1

    .line 825
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    .line 826
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    .line 829
    .end local v0    # "mediaDurationMs":J
    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastVideoFormatStartTimeMs:J

    .line 830
    return-void
.end method

.method private maybeUpdateAudioFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 4
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "newFormat"    # Landroidx/media3/common/Format;

    .line 801
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    return-void

    .line 804
    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 805
    if-eqz p2, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p2, Landroidx/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 808
    iget v0, p2, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    .line 810
    :cond_1
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    .line 811
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    new-instance v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_2
    return-void
.end method

.method private maybeUpdateMaxRebufferTimeMs(J)V
    .locals 6
    .param p1, "nowMs"    # J

    .line 740
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    sub-long v0, p1, v0

    .line 742
    .local v0, "rebufferDurationMs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 743
    :cond_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 746
    .end local v0    # "rebufferDurationMs":J
    :cond_1
    return-void
.end method

.method private maybeUpdateMediaTimeHistory(JJ)V
    .locals 9
    .param p1, "realtimeMs"    # J
    .param p3, "mediaTimeMs"    # J

    .line 749
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-nez v0, :cond_0

    .line 750
    return-void

    .line 752
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eq v0, v1, :cond_2

    .line 753
    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    .line 754
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v7, v0, v6

    .line 758
    .local v7, "previousMediaTimeMs":J
    cmp-long v0, v7, p3

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    new-array v1, v3, [J

    aput-wide p1, v1, v2

    aput-wide v7, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v7    # "previousMediaTimeMs":J
    :cond_2
    cmp-long v0, p3, v4

    .line 766
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    .line 764
    if-eqz v0, :cond_3

    .line 765
    new-array v0, v3, [J

    aput-wide p1, v0, v2

    aput-wide p3, v0, v6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 767
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_4
    :goto_0
    return-void
.end method

.method private maybeUpdateVideoFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .locals 6
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "newFormat"    # Landroidx/media3/common/Format;

    .line 782
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    return-void

    .line 785
    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 786
    if-eqz p2, :cond_2

    .line 787
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroidx/media3/common/Format;->height:I

    if-eq v0, v1, :cond_1

    .line 788
    iget v0, p2, Landroidx/media3/common/Format;->height:I

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    .line 790
    :cond_1
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p2, Landroidx/media3/common/Format;->bitrate:I

    if-eq v0, v1, :cond_2

    .line 791
    iget v0, p2, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 794
    :cond_2
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    .line 795
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    new-instance v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_3
    return-void
.end method

.method private resolveNewPlaybackState(Landroidx/media3/common/Player;)I
    .locals 5
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 695
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 696
    .local v0, "playerPlaybackState":I
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    if-eqz v1, :cond_0

    .line 698
    const/4 v1, 0x5

    return v1

    .line 699
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    if-eqz v1, :cond_1

    .line 700
    const/16 v1, 0xd

    return v1

    .line 701
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 703
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    if-eqz v1, :cond_2

    .line 704
    goto :goto_0

    .line 705
    :cond_2
    const/4 v2, 0x0

    .line 703
    :goto_0
    return v2

    .line 706
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    const/16 v3, 0xe

    if-eqz v1, :cond_4

    .line 707
    return v3

    .line 708
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 709
    const/16 v1, 0xb

    return v1

    .line 710
    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 711
    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v1, v3, :cond_6

    goto :goto_2

    .line 717
    :cond_6
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_7

    .line 718
    const/4 v1, 0x7

    return v1

    .line 720
    :cond_7
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_8

    .line 721
    const/16 v1, 0xa

    goto :goto_1

    .line 722
    :cond_8
    const/4 v1, 0x6

    .line 720
    :goto_1
    return v1

    .line 715
    :cond_9
    :goto_2
    return v4

    .line 723
    :cond_a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    .line 724
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_b

    .line 725
    return v1

    .line 727
    :cond_b
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_c

    .line 728
    const/16 v3, 0x9

    goto :goto_3

    .line 729
    :cond_c
    nop

    .line 727
    :goto_3
    return v3

    .line 730
    :cond_d
    if-ne v0, v2, :cond_e

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eqz v1, :cond_e

    .line 734
    const/16 v1, 0xc

    return v1

    .line 736
    :cond_e
    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    return v1
.end method

.method private updatePlaybackState(ILandroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 9
    .param p1, "newPlaybackState"    # I
    .param p2, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 661
    iget-wide v0, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 662
    iget-wide v3, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long/2addr v3, v5

    .line 663
    .local v3, "stateDurationMs":J
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    iget v5, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v6, v0, v5

    add-long/2addr v6, v3

    aput-wide v6, v0, v5

    .line 664
    iget-wide v5, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 665
    iget-wide v5, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v5, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 667
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    iget v5, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v5, p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInvalidJoinTransition(II)Z

    move-result v5

    or-int/2addr v0, v5

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    .line 668
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isReadyState(I)Z

    move-result v5

    or-int/2addr v0, v5

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    .line 669
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    const/16 v5, 0xb

    if-ne p1, v5, :cond_2

    move v1, v2

    :cond_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    .line 670
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isPausedState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    .line 673
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 674
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    .line 676
    :cond_4
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    .line 678
    iget-wide v0, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->lastRebufferStartTimeMs:J

    .line 680
    :cond_5
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isRebufferingState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    if-ne p1, v1, :cond_6

    .line 683
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    .line 685
    :cond_6
    iget-wide v0, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 687
    iput p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    .line 688
    iget-wide v0, p2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    .line 689
    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v0, :cond_7

    .line 690
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    new-instance v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    invoke-direct {v1, p2, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_7
    return-void
.end method


# virtual methods
.method public build(Z)Landroidx/media3/exoplayer/analytics/PlaybackStats;
    .locals 67
    .param p1, "isFinal"    # Z

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 591
    .local v1, "playbackStateDurationsMs":[J
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    .line 592
    .local v2, "mediaTimeHistory":Ljava/util/List;, "Ljava/util/List<[J>;"
    const-wide/16 v3, 0x0

    if-nez p1, :cond_1

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 594
    .local v5, "buildTimeMs":J
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateDurationsMs:[J

    .line 595
    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 596
    iget-wide v7, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackStateStartTimeMs:J

    sub-long v7, v5, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 597
    .local v7, "lastStateDurationMs":J
    iget v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    aget-wide v10, v1, v9

    add-long/2addr v10, v7

    aput-wide v10, v1, v9

    .line 598
    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMaxRebufferTimeMs(J)V

    .line 599
    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 600
    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 601
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->mediaTimeHistory:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v9

    .line 602
    iget-boolean v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v9, :cond_0

    iget v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 603
    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->guessMediaTimeBasedOnElapsedRealtime(J)[J

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v5    # "buildTimeMs":J
    .end local v7    # "lastStateDurationMs":J
    :cond_0
    move-object v12, v1

    move-object v14, v2

    goto :goto_0

    .line 592
    :cond_1
    move-object v12, v1

    move-object v14, v2

    .line 606
    .end local v1    # "playbackStateDurationsMs":[J
    .end local v2    # "mediaTimeHistory":Ljava/util/List;, "Ljava/util/List<[J>;"
    .local v12, "playbackStateDurationsMs":[J
    .local v14, "mediaTimeHistory":Ljava/util/List;, "Ljava/util/List<[J>;"
    :goto_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isJoinTimeInvalid:Z

    const/4 v5, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v5

    .line 608
    .local v1, "isJoinTimeInvalid":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 609
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v21, v6

    goto :goto_3

    .line 610
    :cond_4
    const/4 v6, 0x2

    aget-wide v6, v12, v6

    move-wide/from16 v21, v6

    :goto_3
    nop

    .line 611
    .local v21, "validJoinTimeMs":J
    aget-wide v6, v12, v5

    cmp-long v3, v6, v3

    if-lez v3, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 614
    .local v3, "hasBackgroundJoin":Z
    :goto_4
    if-eqz p1, :cond_6

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHistory:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    move-object/from16 v31, v4

    .line 616
    .local v31, "videoHistory":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;>;"
    if-eqz p1, :cond_7

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    goto :goto_6

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatHistory:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_6
    move-object/from16 v32, v4

    .line 617
    .local v32, "audioHistory":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;>;"
    new-instance v10, Landroidx/media3/exoplayer/analytics/PlaybackStats;

    .line 620
    if-eqz p1, :cond_8

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    goto :goto_7

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->playbackStateHistory:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7
    move-object v13, v4

    iget-wide v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->firstReportedTimeMs:J

    .line 623
    iget-boolean v4, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    .line 624
    iget-boolean v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasBeenReady:Z

    .line 625
    xor-int/lit8 v18, v8, 0x1

    iget-boolean v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasEnded:Z

    .line 626
    if-eqz v3, :cond_9

    move/from16 v20, v5

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    .line 628
    :goto_8
    if-eqz v1, :cond_a

    const/16 v23, 0x0

    goto :goto_9

    :cond_a
    move/from16 v23, v5

    :goto_9
    iget v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseCount:I

    iget v11, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->pauseBufferCount:I

    iget v15, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->seekCount:I

    iget v2, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->rebufferCount:I

    move-wide/from16 v24, v6

    iget-wide v5, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maxRebufferTimeMs:J

    .line 634
    iget-boolean v7, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isAd:Z

    move/from16 v66, v1

    move/from16 v27, v2

    .end local v1    # "isJoinTimeInvalid":Z
    .local v66, "isJoinTimeInvalid":Z
    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeMs:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatHeightTimeProduct:J

    move-wide/from16 v35, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeMs:J

    move-wide/from16 v37, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->videoFormatBitrateTimeProduct:J

    move-wide/from16 v39, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatTimeMs:J

    move-wide/from16 v41, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioFormatBitrateTimeProduct:J

    .line 643
    move-wide/from16 v43, v1

    iget v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const/16 v45, 0x0

    goto :goto_a

    :cond_b
    const/16 v45, 0x1

    .line 644
    :goto_a
    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    const-wide/16 v28, -0x1

    cmp-long v1, v1, v28

    if-nez v1, :cond_c

    const/16 v46, 0x0

    goto :goto_b

    :cond_c
    const/16 v46, 0x1

    :goto_b
    iget v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatHeight:I

    move/from16 v47, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialVideoFormatBitrate:J

    .line 647
    move-wide/from16 v48, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    cmp-long v1, v1, v28

    if-nez v1, :cond_d

    const/16 v50, 0x0

    goto :goto_c

    :cond_d
    const/16 v50, 0x1

    :goto_c
    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->initialAudioFormatBitrate:J

    move-wide/from16 v51, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    move-wide/from16 v53, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    move-wide/from16 v55, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    move-wide/from16 v57, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    .line 653
    move-wide/from16 v59, v1

    iget v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    if-lez v1, :cond_e

    const/16 v61, 0x1

    goto :goto_d

    :cond_e
    const/16 v61, 0x0

    :goto_d
    iget v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    iget v2, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    move/from16 v62, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    move-object/from16 v64, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    move/from16 v26, v15

    move-wide/from16 v15, v24

    move/from16 v25, v11

    const/4 v11, 0x1

    move-object/from16 v65, v1

    move/from16 v63, v2

    move/from16 v17, v4

    move-wide/from16 v28, v5

    move/from16 v30, v7

    move/from16 v19, v8

    move/from16 v24, v9

    invoke-direct/range {v10 .. v65}, Landroidx/media3/exoplayer/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    .line 617
    return-object v10
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZJZIZZLandroidx/media3/common/PlaybackException;Ljava/lang/Exception;JJLandroidx/media3/common/Format;Landroidx/media3/common/Format;Landroidx/media3/common/VideoSize;)V
    .locals 17
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p3, "belongsToPlayback"    # Z
    .param p4, "discontinuityFromPositionMs"    # J
    .param p6, "hasDiscontinuity"    # Z
    .param p7, "droppedFrameCount"    # I
    .param p8, "hasAudioUnderun"    # Z
    .param p9, "startedLoading"    # Z
    .param p10, "fatalError"    # Landroidx/media3/common/PlaybackException;
    .param p11, "nonFatalException"    # Ljava/lang/Exception;
    .param p12, "bandwidthTimeMs"    # J
    .param p14, "bandwidthBytes"    # J
    .param p16, "videoFormat"    # Landroidx/media3/common/Format;
    .param p17, "audioFormat"    # Landroidx/media3/common/Format;
    .param p18, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v9

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 506
    iget-wide v13, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v13, v14, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 507
    iput-boolean v12, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 509
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v11

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eq v11, v13, :cond_1

    .line 510
    iput-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 512
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v11

    .line 513
    .local v11, "playerPlaybackState":I
    if-eq v11, v12, :cond_2

    const/4 v15, 0x4

    if-eq v11, v15, :cond_2

    if-eqz p6, :cond_3

    .line 516
    :cond_2
    iput-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 518
    :cond_3
    if-eqz v4, :cond_4

    .line 519
    iput-boolean v12, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    .line 520
    iget v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    add-int/2addr v14, v12

    iput v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorCount:I

    .line 521
    iget-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v14, :cond_5

    .line 522
    iget-object v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->fatalErrorHistory:Ljava/util/List;

    new-instance v15, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v15, v1, v4}, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v15

    if-nez v15, :cond_5

    .line 525
    iput-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->hasFatalError:Z

    .line 527
    :cond_5
    :goto_0
    iget-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    if-eqz v14, :cond_7

    iget-boolean v14, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    if-nez v14, :cond_7

    .line 528
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v14

    .line 529
    .local v14, "currentTracks":Landroidx/media3/common/Tracks;
    invoke-virtual {v14, v13}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v13

    const/4 v15, 0x0

    if-nez v13, :cond_6

    .line 530
    invoke-direct {v0, v1, v15}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 532
    :cond_6
    invoke-virtual {v14, v12}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 533
    invoke-direct {v0, v1, v15}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 536
    .end local v14    # "currentTracks":Landroidx/media3/common/Tracks;
    :cond_7
    if-eqz v6, :cond_8

    .line 537
    invoke-direct {v0, v1, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 539
    :cond_8
    if-eqz v7, :cond_9

    .line 540
    invoke-direct {v0, v1, v7}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateAudioFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 542
    :cond_9
    iget-object v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    if-eqz v13, :cond_a

    iget-object v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    iget v13, v13, Landroidx/media3/common/Format;->height:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a

    if-eqz v8, :cond_a

    .line 545
    iget-object v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentVideoFormat:Landroidx/media3/common/Format;

    .line 547
    invoke-virtual {v13}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v13

    iget v14, v8, Landroidx/media3/common/VideoSize;->width:I

    .line 548
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v13

    iget v14, v8, Landroidx/media3/common/VideoSize;->height:I

    .line 549
    invoke-virtual {v13, v14}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v13

    .line 550
    invoke-virtual {v13}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v13

    .line 551
    .local v13, "formatWithHeightAndWidth":Landroidx/media3/common/Format;
    invoke-direct {v0, v1, v13}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateVideoFormat(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 553
    .end local v13    # "formatWithHeightAndWidth":Landroidx/media3/common/Format;
    :cond_a
    if-eqz p9, :cond_b

    .line 554
    iput-boolean v12, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->startedLoading:Z

    .line 556
    :cond_b
    if-eqz p8, :cond_c

    .line 557
    iget-wide v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->audioUnderruns:J

    .line 559
    :cond_c
    iget-wide v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    move/from16 v15, p7

    int-to-long v9, v15

    add-long/2addr v13, v9

    iput-wide v13, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->droppedFrames:J

    .line 560
    iget-wide v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    add-long v9, v9, p12

    iput-wide v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthTimeMs:J

    .line 561
    iget-wide v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    add-long v9, v9, p14

    iput-wide v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->bandwidthBytes:J

    .line 562
    if-eqz v5, :cond_d

    .line 563
    iget v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    add-int/2addr v9, v12

    iput v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorCount:I

    .line 564
    iget-boolean v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->keepHistory:Z

    if-eqz v9, :cond_d

    .line 565
    iget-object v9, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->nonFatalErrorHistory:Ljava/util/List;

    new-instance v10, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;

    invoke-direct {v10, v1, v5}, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_d
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->resolveNewPlaybackState(Landroidx/media3/common/Player;)I

    move-result v9

    .line 570
    .local v9, "newPlaybackState":I
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 571
    .local v10, "newPlaybackSpeed":F
    iget v12, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-ne v12, v9, :cond_e

    iget v12, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    cmpl-float v12, v12, v10

    if-eqz v12, :cond_10

    .line 572
    :cond_e
    iget-wide v12, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 574
    if-eqz p3, :cond_f

    iget-wide v2, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    goto :goto_1

    :cond_f
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 572
    :goto_1
    invoke-direct {v0, v12, v13, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 575
    iget-wide v2, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 576
    iget-wide v2, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 578
    :cond_10
    iput v10, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackSpeed:F

    .line 579
    iget v2, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    if-eq v2, v9, :cond_11

    .line 580
    invoke-direct {v0, v9, v1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->updatePlaybackState(ILandroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 582
    :cond_11
    return-void
.end method

.method public onFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZJ)V
    .locals 4
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "automaticTransition"    # Z
    .param p3, "discontinuityFromPositionMs"    # J

    .line 460
    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->currentPlaybackState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const/16 v1, 0xf

    goto :goto_1

    .line 461
    :cond_1
    :goto_0
    nop

    .line 462
    :goto_1
    nop

    .line 463
    .local v1, "finalPlaybackState":I
    iget-wide v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v2, v3, p3, p4}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeUpdateMediaTimeHistory(JJ)V

    .line 464
    iget-wide v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordVideoFormatTime(J)V

    .line 465
    iget-wide v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->maybeRecordAudioFormatTime(J)V

    .line 466
    invoke-direct {p0, v1, p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->updatePlaybackState(ILandroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 467
    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isForeground:Z

    .line 438
    return-void
.end method

.method public onInterruptedByAd()V
    .locals 1

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isInterruptedByAd:Z

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->isSeeking:Z

    .line 444
    return-void
.end method
