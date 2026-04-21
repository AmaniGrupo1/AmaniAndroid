.class final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# static fields
.field public static final INITIAL_RENDERER_POSITION_OFFSET_US:J = 0xe8d4a51000L

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MAX_EFFECTIVE_START_POSITION_DIFF_WITH_PROJECTION_US:J = 0x4c4b40L

.field static final UPDATE_PERIOD_QUEUE_ALTERED_PREWARMING_PERIOD:I = 0x2

.field static final UPDATE_PERIOD_QUEUE_ALTERED_READING_PERIOD:I = 0x1


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private length:I

.field private loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private final mediaPeriodHolderFactory:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field private preloadPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaPeriodHolder;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 1
    .param p1, "analyticsCollector"    # Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .param p2, "analyticsCollectorHandler"    # Landroidx/media3/common/util/HandlerWrapper;
    .param p3, "mediaPeriodHolderFactory"    # Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;
    .param p4, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 122
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 123
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    .line 124
    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 125
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 126
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    .line 128
    return-void
.end method

.method static areDurationsCompatible(JJ)Z
    .locals 2
    .param p0, "previousDurationUs"    # J
    .param p2, "newDurationUs"    # J

    .line 920
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

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

.method private canKeepMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/MediaPeriodInfo;)Z
    .locals 11
    .param p1, "oldInfo"    # Landroidx/media3/exoplayer/MediaPeriodInfo;
    .param p2, "newInfo"    # Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 896
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 897
    return v1

    .line 899
    :cond_0
    iget-wide v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 900
    return v2

    .line 904
    :cond_1
    iget-wide v3, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    iget-wide v3, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_0

    .line 908
    :cond_2
    iget-wide v3, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    sub-long/2addr v3, v5

    .line 910
    .local v3, "oldEffectiveStartPositionUs":J
    iget-wide v5, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    sub-long/2addr v5, v7

    .line 912
    .local v5, "newEffectiveStartPositionUs":J
    sub-long v7, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x4c4b40

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 906
    .end local v3    # "oldEffectiveStartPositionUs":J
    .end local v5    # "newEffectiveStartPositionUs":J
    :cond_4
    :goto_0
    return v1
.end method

.method private getDefaultPeriodPositionOfNextWindow(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroid/util/Pair;
    .locals 11
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Ljava/lang/Object;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 353
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 352
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v6

    .line 354
    .local v6, "nextWindowIndex":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 355
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    move-wide v9, p3

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .end local p3    # "defaultPositionProjectionUs":J
    .local v3, "timeline":Landroidx/media3/common/Timeline;
    .local v9, "defaultPositionProjectionUs":J
    invoke-virtual/range {v3 .. v10}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    .line 361
    .end local v3    # "timeline":Landroidx/media3/common/Timeline;
    .end local v9    # "defaultPositionProjectionUs":J
    .restart local p1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local p3    # "defaultPositionProjectionUs":J
    :cond_0
    move-object v3, p1

    move-wide v9, p3

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .end local p3    # "defaultPositionProjectionUs":J
    .restart local v3    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v9    # "defaultPositionProjectionUs":J
    const/4 p1, 0x0

    .line 354
    :goto_0
    return-object p1
.end method

.method private getFirstMediaPeriodInfo(Landroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 9
    .param p1, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 974
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method private getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 28
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;
    .param p3, "bufferedDurationUs"    # J

    .line 1025
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v10, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1026
    .local v10, "mediaPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    iget-object v2, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 1027
    .local v2, "currentPeriodIndex":I
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 1028
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v11

    .line 1030
    move v12, v2

    .end local v2    # "currentPeriodIndex":I
    .local v11, "nextPeriodIndex":I
    .local v12, "currentPeriodIndex":I
    const/4 v2, -0x1

    const/4 v13, 0x0

    if-ne v11, v2, :cond_0

    .line 1032
    return-object v13

    .line 1034
    :cond_0
    const-wide/16 v14, 0x0

    .line 1035
    .local v14, "startPositionUs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1036
    .local v2, "liveStreamStartPositionProjectionUs":J
    const-wide/16 v4, 0x0

    .line 1037
    .local v4, "contentPositionUs":J
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1038
    const/4 v7, 0x1

    invoke-virtual {v1, v11, v6, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1039
    .local v6, "nextWindowIndex":I
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v7, v7, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1040
    .local v16, "nextPeriodUid":Ljava/lang/Object;
    iget-object v7, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 1041
    .local v7, "windowSequenceNumber":J
    move-object/from16 v17, v13

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v6, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget v13, v13, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-ne v13, v11, :cond_5

    .line 1043
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 1044
    .end local v4    # "contentPositionUs":J
    .local v18, "contentPositionUs":J
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-wide/from16 v20, v2

    .end local v2    # "liveStreamStartPositionProjectionUs":J
    .local v20, "liveStreamStartPositionProjectionUs":J
    iget-wide v2, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v1, v4, v2, v3, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->shouldUseLiveStartPositionProjection(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    const-wide/16 v2, 0x0

    move-wide/from16 v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .end local v20    # "liveStreamStartPositionProjectionUs":J
    .restart local v2    # "liveStreamStartPositionProjectionUs":J
    goto :goto_0

    .line 1044
    .end local v2    # "liveStreamStartPositionProjectionUs":J
    .restart local v20    # "liveStreamStartPositionProjectionUs":J
    :cond_1
    move-wide/from16 v4, p3

    move-wide/from16 v2, v20

    .line 1052
    .end local v20    # "liveStreamStartPositionProjectionUs":J
    .restart local v2    # "liveStreamStartPositionProjectionUs":J
    :goto_0
    move-wide/from16 v20, v7

    move-wide v7, v2

    .end local v2    # "liveStreamStartPositionProjectionUs":J
    .local v7, "liveStreamStartPositionProjectionUs":J
    .local v20, "windowSequenceNumber":J
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1053
    move v4, v6

    .end local v6    # "nextWindowIndex":I
    .local v4, "nextWindowIndex":I
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v22, v20

    .end local v20    # "windowSequenceNumber":J
    .local v22, "windowSequenceNumber":J
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 1059
    move v13, v4

    .end local v4    # "nextWindowIndex":I
    .local v2, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v13, "nextWindowIndex":I
    if-nez v2, :cond_2

    .line 1060
    return-object v17

    .line 1062
    :cond_2
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1063
    .end local v16    # "nextPeriodUid":Ljava/lang/Object;
    .local v1, "nextPeriodUid":Ljava/lang/Object;
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1064
    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 1065
    .local v3, "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1066
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v2, v1

    move-wide v5, v4

    move-wide/from16 v20, v7

    move-wide v3, v14

    .end local v22    # "windowSequenceNumber":J
    .local v4, "windowSequenceNumber":J
    goto :goto_2

    .line 1068
    .end local v4    # "windowSequenceNumber":J
    .restart local v22    # "windowSequenceNumber":J
    :cond_3
    nop

    .line 1069
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v4

    .line 1071
    .local v4, "windowSequenceNumberFromPreload":J
    const-wide/16 v16, -0x1

    cmp-long v6, v4, v16

    if-nez v6, :cond_4

    .line 1072
    move-object/from16 v16, v1

    move-object v6, v2

    .end local v1    # "nextPeriodUid":Ljava/lang/Object;
    .end local v2    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v6, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v16    # "nextPeriodUid":Ljava/lang/Object;
    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v20, 0x1

    move-wide/from16 v24, v1

    add-long v1, v24, v20

    iput-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    move-wide/from16 v1, v24

    goto :goto_1

    .line 1073
    .end local v6    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v16    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v1    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v2    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :cond_4
    move-object/from16 v16, v1

    move-object v6, v2

    .end local v1    # "nextPeriodUid":Ljava/lang/Object;
    .end local v2    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v6    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v16    # "nextPeriodUid":Ljava/lang/Object;
    move-wide v1, v4

    :goto_1
    move-wide v5, v1

    move-wide/from16 v20, v7

    move-wide v3, v14

    move-object/from16 v2, v16

    .end local v22    # "windowSequenceNumber":J
    .local v1, "windowSequenceNumber":J
    goto :goto_2

    .line 1041
    .end local v1    # "windowSequenceNumber":J
    .end local v3    # "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v13    # "nextWindowIndex":I
    .end local v18    # "contentPositionUs":J
    .local v2, "liveStreamStartPositionProjectionUs":J
    .local v4, "contentPositionUs":J
    .local v6, "nextWindowIndex":I
    .local v7, "windowSequenceNumber":J
    :cond_5
    move-wide/from16 v20, v2

    move v13, v6

    move-wide/from16 v22, v7

    .end local v2    # "liveStreamStartPositionProjectionUs":J
    .end local v6    # "nextWindowIndex":I
    .end local v7    # "windowSequenceNumber":J
    .restart local v13    # "nextWindowIndex":I
    .local v20, "liveStreamStartPositionProjectionUs":J
    .restart local v22    # "windowSequenceNumber":J
    move-wide/from16 v18, v4

    move-wide v3, v14

    move-object/from16 v2, v16

    move-wide/from16 v5, v22

    .line 1078
    .end local v4    # "contentPositionUs":J
    .end local v14    # "startPositionUs":J
    .end local v16    # "nextPeriodUid":Ljava/lang/Object;
    .end local v22    # "windowSequenceNumber":J
    .local v2, "nextPeriodUid":Ljava/lang/Object;
    .local v3, "startPositionUs":J
    .local v5, "windowSequenceNumber":J
    .restart local v18    # "contentPositionUs":J
    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1079
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 1081
    move-object/from16 v16, v2

    move-wide/from16 v22, v5

    .end local v2    # "nextPeriodUid":Ljava/lang/Object;
    .end local v5    # "windowSequenceNumber":J
    .local v7, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v16    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v22    # "windowSequenceNumber":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v18, v5

    if-eqz v2, :cond_7

    iget-wide v14, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v2, v14, v5

    if-eqz v2, :cond_7

    .line 1083
    iget-object v2, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1084
    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->hasServerSideInsertedAds(Ljava/lang/Object;Landroidx/media3/common/Timeline;)Z

    move-result v2

    .line 1086
    .local v2, "precedingPeriodHasServerSideInsertedAds":Z
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 1088
    iget-wide v5, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide/from16 v26, v5

    move-wide v5, v3

    move-wide/from16 v3, v26

    .end local v18    # "contentPositionUs":J
    .local v5, "contentPositionUs":J
    goto :goto_3

    .line 1089
    .end local v5    # "contentPositionUs":J
    .restart local v18    # "contentPositionUs":J
    :cond_6
    if-eqz v2, :cond_7

    .line 1091
    iget-wide v3, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-wide v5, v3

    move-wide/from16 v3, v18

    goto :goto_3

    .line 1094
    .end local v2    # "precedingPeriodHasServerSideInsertedAds":Z
    :cond_7
    move-wide v5, v3

    move-wide/from16 v3, v18

    .end local v18    # "contentPositionUs":J
    .local v3, "contentPositionUs":J
    .local v5, "startPositionUs":J
    :goto_3
    move-object v2, v7

    move-wide/from16 v7, v20

    .end local v20    # "liveStreamStartPositionProjectionUs":J
    .local v2, "periodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v7, "liveStreamStartPositionProjectionUs":J
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v14

    return-object v14
.end method

.method private getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 5
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;
    .param p3, "rendererPositionUs"    # J

    .line 999
    iget-object v0, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1003
    .local v0, "mediaPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    nop

    .line 1004
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p3

    .line 1005
    .local v1, "bufferedDurationUs":J
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v3, :cond_0

    .line 1006
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    goto :goto_0

    .line 1007
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfoOfCurrentPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    .line 1005
    :goto_0
    return-object v3
.end method

.method private getFollowingMediaPeriodInfoOfCurrentPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 24
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;
    .param p3, "bufferedDurationUs"    # J

    .line 1114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    iget-object v13, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1115
    .local v13, "mediaPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    iget-object v14, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1116
    .local v14, "currentPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1117
    iget-boolean v9, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 1119
    .local v9, "isPrecededByTransitionFromSameStream":Z
    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    .line 1120
    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1121
    .local v2, "adGroupIndex":I
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4, v2}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v15

    .line 1122
    .local v15, "adCountInCurrentAdGroup":I
    const/4 v8, 0x0

    if-ne v15, v3, :cond_0

    .line 1123
    return-object v8

    .line 1125
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v4, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 1126
    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v4

    .line 1127
    .local v4, "nextAdIndexInAdGroup":I
    if-ge v4, v15, :cond_1

    .line 1129
    move v3, v2

    .end local v2    # "adGroupIndex":I
    .local v3, "adGroupIndex":I
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v7, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v11, v9

    move-object v9, v0

    .end local v3    # "adGroupIndex":I
    .end local v4    # "nextAdIndexInAdGroup":I
    .end local v9    # "isPrecededByTransitionFromSameStream":Z
    .local v11, "isPrecededByTransitionFromSameStream":Z
    .local v16, "adGroupIndex":I
    .local v17, "nextAdIndexInAdGroup":I
    return-object v2

    .line 1139
    .end local v11    # "isPrecededByTransitionFromSameStream":Z
    .end local v16    # "adGroupIndex":I
    .end local v17    # "nextAdIndexInAdGroup":I
    .restart local v2    # "adGroupIndex":I
    .restart local v4    # "nextAdIndexInAdGroup":I
    .restart local v9    # "isPrecededByTransitionFromSameStream":Z
    :cond_1
    move/from16 v16, v2

    move/from16 v17, v4

    move v11, v9

    move-object v9, v0

    .end local v2    # "adGroupIndex":I
    .end local v4    # "nextAdIndexInAdGroup":I
    .end local v9    # "isPrecededByTransitionFromSameStream":Z
    .restart local v11    # "isPrecededByTransitionFromSameStream":Z
    .restart local v16    # "adGroupIndex":I
    .restart local v17    # "nextAdIndexInAdGroup":I
    iget-wide v2, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 1140
    .local v2, "startPositionUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1141
    .local v4, "liveStreamStartPositionProjectionUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    .line 1142
    iget-object v0, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v6, v6, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-object v10, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v1, v0, v6, v7, v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->shouldUseLiveStartPositionProjection(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1146
    const-wide/16 v6, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v4, p3

    .end local v4    # "liveStreamStartPositionProjectionUs":J
    .local v18, "liveStreamStartPositionProjectionUs":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .end local v18    # "liveStreamStartPositionProjectionUs":J
    .local v6, "liveStreamStartPositionProjectionUs":J
    goto :goto_0

    .line 1142
    .end local v6    # "liveStreamStartPositionProjectionUs":J
    .restart local v4    # "liveStreamStartPositionProjectionUs":J
    :cond_2
    move-wide/from16 v18, v4

    move-wide/from16 v4, p3

    .end local v4    # "liveStreamStartPositionProjectionUs":J
    .restart local v18    # "liveStreamStartPositionProjectionUs":J
    move-wide/from16 v6, v18

    .line 1149
    .end local v18    # "liveStreamStartPositionProjectionUs":J
    .restart local v6    # "liveStreamStartPositionProjectionUs":J
    :goto_0
    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    move-wide/from16 v18, v2

    .end local v2    # "startPositionUs":J
    .local v18, "startPositionUs":J
    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v0, v9, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v3, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1150
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v20, v18

    .end local v18    # "startPositionUs":J
    .local v20, "startPositionUs":J
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    .line 1156
    .local v1, "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v1, :cond_3

    .line 1157
    return-object v8

    .line 1159
    :cond_3
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v1, v2

    move-wide v5, v6

    .end local v20    # "startPositionUs":J
    .restart local v2    # "startPositionUs":J
    goto :goto_1

    .line 1141
    .end local v1    # "defaultPositionUs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v6    # "liveStreamStartPositionProjectionUs":J
    .restart local v4    # "liveStreamStartPositionProjectionUs":J
    :cond_4
    move-object v0, v1

    move-wide/from16 v20, v2

    move-wide/from16 v18, v4

    .end local v2    # "startPositionUs":J
    .end local v4    # "liveStreamStartPositionProjectionUs":J
    .local v18, "liveStreamStartPositionProjectionUs":J
    .restart local v20    # "startPositionUs":J
    move-wide/from16 v5, v18

    move-wide/from16 v1, v20

    .line 1161
    .end local v18    # "liveStreamStartPositionProjectionUs":J
    .end local v20    # "startPositionUs":J
    .local v1, "startPositionUs":J
    .local v5, "liveStreamStartPositionProjectionUs":J
    :goto_1
    iget-object v3, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1162
    invoke-direct {v9, v0, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 1164
    .local v3, "minStartPositionUs":J
    iget-object v7, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1167
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v20, v1

    move-object v2, v7

    .end local v1    # "startPositionUs":J
    .restart local v20    # "startPositionUs":J
    iget-wide v7, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v9, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 1164
    move-wide/from16 v22, v18

    move-wide/from16 v18, v3

    move-wide/from16 v3, v22

    move-object v1, v0

    move-object/from16 v0, p0

    .end local v3    # "minStartPositionUs":J
    .local v18, "minStartPositionUs":J
    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    return-object v2

    .line 1173
    .end local v5    # "liveStreamStartPositionProjectionUs":J
    .end local v11    # "isPrecededByTransitionFromSameStream":Z
    .end local v15    # "adCountInCurrentAdGroup":I
    .end local v16    # "adGroupIndex":I
    .end local v17    # "nextAdIndexInAdGroup":I
    .end local v18    # "minStartPositionUs":J
    .end local v20    # "startPositionUs":J
    .restart local v9    # "isPrecededByTransitionFromSameStream":Z
    :cond_5
    move v11, v9

    .end local v9    # "isPrecededByTransitionFromSameStream":Z
    .restart local v11    # "isPrecededByTransitionFromSameStream":Z
    iget v1, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v3, :cond_6

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1174
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1176
    invoke-direct/range {p0 .. p4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    .line 1179
    :cond_6
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 1180
    .local v4, "adIndexInAdGroup":I
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1181
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1182
    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    move v15, v1

    .line 1184
    .local v15, "isPlayedServerSideInsertedAd":Z
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v1

    if-eq v4, v1, :cond_9

    if-eqz v15, :cond_8

    move-object/from16 v1, p1

    move/from16 v17, v4

    move/from16 v16, v11

    goto :goto_3

    .line 1200
    :cond_8
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v1, p1

    move v9, v11

    .end local v11    # "isPrecededByTransitionFromSameStream":Z
    .restart local v9    # "isPrecededByTransitionFromSameStream":Z
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    move/from16 v17, v4

    move/from16 v16, v9

    .end local v4    # "adIndexInAdGroup":I
    .end local v9    # "isPrecededByTransitionFromSameStream":Z
    .local v16, "isPrecededByTransitionFromSameStream":Z
    .local v17, "adIndexInAdGroup":I
    return-object v2

    .line 1184
    .end local v16    # "isPrecededByTransitionFromSameStream":Z
    .end local v17    # "adIndexInAdGroup":I
    .restart local v4    # "adIndexInAdGroup":I
    .restart local v11    # "isPrecededByTransitionFromSameStream":Z
    :cond_9
    move-object/from16 v1, p1

    move/from16 v17, v4

    move/from16 v16, v11

    .line 1188
    .end local v4    # "adIndexInAdGroup":I
    .end local v11    # "isPrecededByTransitionFromSameStream":Z
    .restart local v16    # "isPrecededByTransitionFromSameStream":Z
    .restart local v17    # "adIndexInAdGroup":I
    :goto_3
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1189
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 1191
    .local v3, "startPositionUs":J
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v9, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v11, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    return-object v2
.end method

.method private getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 14
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "requestedContentPositionUs"    # J
    .param p5, "startPositionUs"    # J
    .param p7, "liveStreamStartPositionProjectionUs"    # J

    .line 1225
    move-object/from16 v0, p2

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1226
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    .line 1236
    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v9, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method private getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 19
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "adGroupIndex"    # I
    .param p4, "adIndexInAdGroup"    # I
    .param p5, "contentPositionUs"    # J
    .param p7, "windowSequenceNumber"    # J
    .param p9, "isPrecededByTransitionFromSameStream"    # Z

    .line 1255
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    move-object v3, v1

    .line 1257
    .local v3, "id":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1259
    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v2, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 1260
    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v12

    .line 1262
    .local v12, "durationUs":J
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    const-wide/16 v5, 0x0

    move/from16 v7, p4

    if-ne v7, v1, :cond_0

    .line 1263
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v8

    goto :goto_0

    .line 1264
    :cond_0
    move-wide v8, v5

    :goto_0
    nop

    .line 1265
    .local v8, "startPositionUs":J
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v10, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1266
    invoke-virtual {v1, v10}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v15

    .line 1267
    .local v15, "isFollowedByTransitionToSameStream":Z
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v10

    if-eqz v1, :cond_1

    cmp-long v1, v8, v12

    if-ltz v1, :cond_1

    .line 1269
    const-wide/16 v10, 0x1

    sub-long v10, v12, v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1271
    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    move/from16 v14, p9

    move-wide v4, v8

    move-wide/from16 v8, p5

    .end local v8    # "startPositionUs":J
    .local v4, "startPositionUs":J
    invoke-direct/range {v2 .. v18}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v2
.end method

.method private getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 31
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "startPositionUs"    # J
    .param p5, "liveStreamStartPositionProjectionUs"    # J
    .param p7, "requestedContentPositionUs"    # J
    .param p9, "windowSequenceNumber"    # J
    .param p11, "isPrecededByTransitionFromSameStream"    # Z

    .line 1293
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1294
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    .line 1295
    .local v5, "nextAdGroupIndex":I
    const/4 v6, 0x0

    .line 1296
    .local v6, "clipPeriodAtContentDuration":Z
    nop

    .line 1301
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1296
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    .line 1298
    nop

    .line 1299
    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1300
    invoke-virtual {v11}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v11

    invoke-virtual {v7, v11}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v6, v7

    goto :goto_1

    .line 1301
    :cond_1
    invoke-virtual {v7, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1302
    invoke-virtual {v7, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v11

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v13, v7, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v7, v11, v13

    if-nez v7, :cond_2

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1303
    invoke-virtual {v7, v5}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1305
    const/4 v5, -0x1

    .line 1306
    const/4 v6, 0x1

    .line 1309
    :cond_2
    :goto_1
    new-instance v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v11, p9

    invoke-direct {v7, v2, v11, v12, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    move-object v14, v7

    .line 1310
    .local v14, "id":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v14}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v7

    .line 1311
    .local v7, "isLastInPeriod":Z
    invoke-direct {v0, v1, v14}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v28

    .line 1312
    .local v28, "isLastInWindow":Z
    invoke-direct {v0, v1, v14, v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v29

    .line 1313
    .local v29, "isLastInTimeline":Z
    if-eq v5, v10, :cond_3

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1315
    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1316
    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v13

    if-nez v13, :cond_3

    const/16 v26, 0x1

    goto :goto_2

    :cond_3
    const/16 v26, 0x0

    .line 1317
    .local v26, "isFollowedByTransitionToSameStream":Z
    :goto_2
    if-eq v5, v10, :cond_4

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1319
    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1320
    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    move/from16 v30, v13

    .line 1322
    .local v30, "isFollowedByServerSidePostRollPlaceholder":Z
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v10, :cond_5

    if-nez v30, :cond_5

    .line 1323
    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v17

    move-wide/from16 v21, v17

    goto :goto_4

    .line 1324
    :cond_5
    if-eqz v6, :cond_6

    iget-object v10, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v8, v10, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v21, v8

    goto :goto_4

    :cond_6
    move-wide/from16 v21, v15

    :goto_4
    nop

    .line 1326
    .local v21, "endPositionUs":J
    cmp-long v8, v21, v15

    if-eqz v8, :cond_8

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v21, v8

    if-nez v8, :cond_7

    goto :goto_5

    .line 1328
    :cond_7
    move-wide/from16 v23, v21

    goto :goto_6

    .line 1327
    :cond_8
    :goto_5
    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v8, v8, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v23, v8

    .line 1328
    :goto_6
    nop

    .line 1329
    .local v23, "durationUs":J
    cmp-long v8, v23, v15

    if-eqz v8, :cond_c

    cmp-long v8, v3, v23

    if-ltz v8, :cond_c

    .line 1331
    if-nez v29, :cond_a

    if-nez v6, :cond_9

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v8, 0x1

    .line 1332
    .local v8, "endAtLastFrame":Z
    :goto_8
    if-eqz v8, :cond_b

    const/4 v13, 0x1

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    int-to-long v9, v13

    sub-long v9, v23, v9

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v15, v0

    .end local p3    # "startPositionUs":J
    .local v0, "startPositionUs":J
    goto :goto_a

    .line 1334
    .end local v0    # "startPositionUs":J
    .end local v8    # "endAtLastFrame":Z
    .restart local p3    # "startPositionUs":J
    :cond_c
    move-wide v15, v3

    .end local p3    # "startPositionUs":J
    .local v15, "startPositionUs":J
    :goto_a
    new-instance v13, Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-wide/from16 v17, p5

    move-wide/from16 v19, p7

    move/from16 v25, p11

    move/from16 v27, v7

    .end local v7    # "isLastInPeriod":Z
    .local v27, "isLastInPeriod":Z
    invoke-direct/range {v13 .. v29}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v13
.end method

.method private getMediaPeriodInfoForPeriodPosition(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 13
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "positionUs"    # J
    .param p5, "windowSequenceNumber"    # J

    .line 326
    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 327
    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v12

    .line 329
    .local v12, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v2, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v7, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    goto :goto_0

    .line 338
    :cond_0
    iget-object v2, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v11, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJZ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    .line 329
    :goto_0
    return-object v2
.end method

.method private getMinStartPositionAfterAdGroupUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;I)J
    .locals 4
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "adGroupIndex"    # I

    .line 1372
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1373
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    .line 1374
    .local v0, "startPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    .line 1377
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1374
    if-nez v2, :cond_0

    .line 1375
    iget-wide v2, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    return-wide v2

    .line 1377
    :cond_0
    invoke-virtual {v3, p3}, Landroidx/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private hasServerSideInsertedAds(Ljava/lang/Object;Landroidx/media3/common/Timeline;)Z
    .locals 7
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;

    .line 1212
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 1213
    .local v0, "adGroupCount":I
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v1

    .line 1214
    .local v1, "firstAdGroupIndex":I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1215
    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 1216
    invoke-virtual {v3, v1}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1214
    :goto_0
    return v2
.end method

.method private isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1349
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "isLastMediaPeriodInPeriod"    # Z

    .line 1363
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 1364
    .local v2, "periodIndex":I
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v2, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1365
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez v1, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 1366
    move-object v1, p1

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .local v1, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->isLastPeriod(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 1365
    .end local v1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local p1    # "timeline":Landroidx/media3/common/Timeline;
    :cond_0
    move-object v1, p1

    .line 1366
    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v1    # "timeline":Landroidx/media3/common/Timeline;
    :cond_1
    const/4 p1, 0x0

    .line 1365
    :goto_0
    return p1
.end method

.method private isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 4
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1353
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1354
    return v1

    .line 1356
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 1357
    .local v0, "windowIndex":I
    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 1358
    .local v2, "periodIndex":I
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isSkippableAdPeriod(Landroidx/media3/common/Timeline$Period;)Z
    .locals 9
    .param p0, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 755
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    .line 756
    .local v0, "adGroupCount":I
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 757
    invoke-virtual {p0, v1}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 758
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 759
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    .line 762
    :cond_1
    iget-wide v5, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_2

    .line 763
    return v2

    .line 765
    :cond_2
    const-wide/16 v3, 0x0

    .line 766
    .local v3, "contentResumeOffsetUs":J
    nop

    .line 767
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    sub-int v5, v0, v5

    .line 768
    .local v5, "lastIndexInclusive":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-gt v6, v5, :cond_4

    .line 769
    invoke-virtual {p0, v6}, Landroidx/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 768
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 771
    .end local v6    # "i":I
    :cond_4
    iget-wide v6, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v6, v6, v3

    if-gtz v6, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 760
    .end local v3    # "contentResumeOffsetUs":J
    .end local v5    # "lastIndexInclusive":I
    :cond_6
    :goto_2
    return v1
.end method

.method private notifyQueueUpdate()V
    .locals 5

    .line 812
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 813
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 814
    .local v1, "period":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v1, :cond_0

    .line 815
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 816
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    .line 818
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 819
    .local v2, "readingPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v4, Landroidx/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-interface {v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 821
    return-void
.end method

.method private releaseAndResetPreloadPriorityList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaPeriodHolder;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "newPriorityList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaPeriodHolder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 321
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    .line 322
    return-void
.end method

.method private removePreloadedMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3
    .param p1, "info"    # Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 308
    .local v1, "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->canBeUsedForMediaPeriodInfo(Landroidx/media3/exoplayer/MediaPeriodInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v2

    .line 306
    .end local v1    # "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 7
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J
    .param p4, "windowSequenceNumber"    # J
    .param p6, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p7, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 734
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 735
    iget v0, p7, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 737
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    .line 738
    .end local p1    # "periodUid":Ljava/lang/Object;
    .local v0, "periodIndex":I
    .local v2, "periodUid":Ljava/lang/Object;
    :goto_0
    invoke-static {p7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isSkippableAdPeriod(Landroidx/media3/common/Timeline$Period;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p6, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, p1, :cond_0

    .line 740
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p7, p1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 741
    iget-object p1, p7, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "periodIndex":I
    :cond_0
    invoke-virtual {p0, v2, p7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 744
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    .line 745
    .local v3, "adGroupIndex":I
    const/4 p1, -0x1

    if-ne v3, p1, :cond_1

    .line 746
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p1

    .line 747
    .local p1, "nextAdGroupIndex":I
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v2, p4, p5, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object v0

    .line 749
    .end local p1    # "nextAdGroupIndex":I
    :cond_1
    invoke-virtual {p7, v3}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 750
    .local v4, "adIndexInAdGroup":I
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide v5, p4

    .end local p4    # "windowSequenceNumber":J
    .local v5, "windowSequenceNumber":J
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object v1
.end method

.method private resolvePeriodUidToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J
    .locals 8
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 834
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 836
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v2, :cond_0

    .line 837
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 838
    .local v3, "oldFrontWindowIndex":I
    if-ne v3, v0, :cond_0

    .line 840
    iget-wide v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v4

    .line 844
    .end local v1    # "oldFrontPeriodIndex":I
    .end local v3    # "oldFrontWindowIndex":I
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 845
    .local v1, "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v1, :cond_2

    .line 846
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v2

    .line 850
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    .line 852
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 853
    :goto_1
    if-eqz v1, :cond_4

    .line 854
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 855
    .local v3, "indexOfHolderInTimeline":I
    if-eq v3, v2, :cond_3

    .line 856
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 857
    .local v4, "holderWindowIndex":I
    if-ne v4, v0, :cond_3

    .line 859
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v5

    .line 862
    .end local v4    # "holderWindowIndex":I
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 863
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_1

    .line 865
    :cond_4
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v2

    .line 866
    .local v2, "windowSequenceNumber":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    .line 867
    return-wide v2

    .line 871
    :cond_5
    iget-wide v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 872
    .end local v2    # "windowSequenceNumber":J
    .local v4, "windowSequenceNumber":J
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_6

    .line 874
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 875
    iput-wide v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 877
    :cond_6
    return-wide v4
.end method

.method private resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J
    .locals 4
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 882
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 883
    .local v1, "preloadHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v2

    .line 881
    .end local v1    # "preloadHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static shouldUseLiveStartPositionProjection(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;)Z
    .locals 2
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "windowIndex"    # I
    .param p2, "periodDurationUs"    # J
    .param p4, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 1382
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1383
    return v1

    .line 1385
    :cond_0
    invoke-virtual {p0, p1, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1386
    iget-boolean v0, p4, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I
    .locals 7
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 933
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 934
    .local v0, "lastValidPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 935
    const/4 v1, 0x0

    return v1

    .line 937
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .line 939
    .local v2, "currentPeriodIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 940
    move-object v1, p1

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .local v1, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result p1

    .line 942
    .local p1, "nextPeriodIndex":I
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v3, :cond_1

    .line 944
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 948
    .local v3, "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_4

    if-nez v3, :cond_2

    .line 949
    goto :goto_2

    .line 951
    :cond_2
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 952
    .local v4, "nextPeriodHolderPeriodIndex":I
    if-eq v4, p1, :cond_3

    .line 953
    goto :goto_2

    .line 955
    :cond_3
    move-object v0, v3

    .line 956
    move v2, p1

    .line 957
    .end local v3    # "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v4    # "nextPeriodHolderPeriodIndex":I
    .end local p1    # "nextPeriodIndex":I
    move-object p1, v1

    goto :goto_0

    .line 961
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    .line 964
    .local p1, "removeAfterResult":I
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 966
    return p1
.end method


# virtual methods
.method public advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3

    .line 433
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    return-object v1

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    .line 437
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 439
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_2

    .line 440
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 442
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 443
    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 444
    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_3

    .line 445
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 446
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 449
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 450
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 451
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public advancePrewarmingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 421
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 422
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 2

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 409
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 410
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 411
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 529
    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_0

    .line 530
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 533
    .local v0, "front":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 534
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 535
    :goto_0
    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 537
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 540
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 541
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 542
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 543
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 544
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 545
    return-void
.end method

.method public enqueueNextMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 4
    .param p1, "info"    # Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 232
    const-wide v0, 0xe8d4a51000L

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    :goto_0
    nop

    .line 234
    .local v0, "rendererPositionOffsetUs":J
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removePreloadedMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 235
    .local v2, "newPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v2, :cond_1

    .line 236
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v3, p1, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;->create(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    goto :goto_1

    .line 238
    :cond_1
    iput-object p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 239
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setRendererOffset(J)V

    .line 241
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    goto :goto_2

    .line 244
    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 245
    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 246
    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 248
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 249
    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 250
    iget v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 251
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 252
    return-object v2
.end method

.method public getLoadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLandroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 2
    .param p1, "rendererPositionUs"    # J
    .param p3, "playbackInfo"    # Landroidx/media3/exoplayer/PlaybackInfo;

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfo(Landroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0
.end method

.method public getPlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 385
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getPreloadHolderByMediaPeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 519
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 520
    .local v1, "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v2, p1, :cond_0

    .line 521
    return-object v1

    .line 518
    .end local v1    # "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreloadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getPrewarmingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 397
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    .line 391
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 20
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "info"    # Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 664
    .local v4, "id":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v3

    .line 665
    .local v3, "isLastInPeriod":Z
    invoke-direct {v0, v1, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v18

    .line 666
    .local v18, "isLastInWindow":Z
    invoke-direct {v0, v1, v4, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v19

    .line 667
    .local v19, "isLastInTimeline":Z
    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 669
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_1

    iget v5, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v9, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v5, v9}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v9

    move-wide v11, v9

    goto :goto_1

    .line 670
    :cond_1
    :goto_0
    move-wide v11, v7

    .line 671
    :goto_1
    nop

    .line 673
    .local v11, "endPositionUs":J
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 674
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v7, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v8, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v5, v7, v8}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v7

    move-wide v13, v7

    goto :goto_3

    .line 675
    :cond_2
    cmp-long v5, v11, v7

    if-eqz v5, :cond_4

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v11, v7

    if-nez v5, :cond_3

    goto :goto_2

    .line 677
    :cond_3
    move-wide v13, v11

    goto :goto_3

    .line 676
    :cond_4
    :goto_2
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v7

    move-wide v13, v7

    .line 677
    :goto_3
    nop

    .line 679
    .local v13, "durationUs":J
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 680
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v6, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v5

    move/from16 v16, v5

    goto :goto_5

    .line 681
    :cond_5
    iget v5, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v5, v6, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v6, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 682
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    move/from16 v16, v5

    :goto_5
    nop

    .line 683
    .local v16, "isFollowedByTransitionToSameStream":Z
    move/from16 v17, v3

    .end local v3    # "isLastInPeriod":Z
    .local v17, "isLastInPeriod":Z
    new-instance v3, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    iget-wide v9, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-boolean v15, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    invoke-direct/range {v3 .. v19}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJJZZZZZ)V

    return-object v3
.end method

.method public invalidatePreloadPool(Landroidx/media3/common/Timeline;)V
    .locals 14
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 257
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    move-object v5, p0

    move-object v6, p1

    goto/16 :goto_2

    .line 261
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 262
    .local v0, "loading":Landroidx/media3/exoplayer/MediaPeriodHolder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "newPreloadPriorityList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaPeriodHolder;>;"
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 264
    const-wide/16 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getDefaultPeriodPositionOfNextWindow(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroid/util/Pair;

    move-result-object v2

    .line 266
    .local v2, "defaultPositionOfNextWindow":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-eqz v2, :cond_4

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    .line 269
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    .line 268
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 272
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v3

    .line 274
    .local v3, "windowSequenceNumber":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 275
    iget-wide v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    move-wide v3, v5

    move-wide v10, v3

    goto :goto_0

    .line 274
    :cond_1
    move-wide v10, v3

    .line 278
    .end local v3    # "windowSequenceNumber":J
    .local v10, "windowSequenceNumber":J
    :goto_0
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 282
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 279
    move-object v5, p0

    move-object v6, p1

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .local v6, "timeline":Landroidx/media3/common/Timeline;
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForPeriodPosition(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    .line 285
    .local p1, "nextInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removePreloadedMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 286
    .local v3, "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    if-nez v3, :cond_2

    .line 288
    nop

    .line 289
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v7

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v12, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v7, v12

    iget-wide v12, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v7, v12

    .line 290
    .local v7, "rendererPositionOffsetUs":J
    iget-object v4, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v4, p1, v7, v8}, Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;->create(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 292
    .end local v7    # "rendererPositionOffsetUs":J
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v3    # "nextMediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v6    # "timeline":Landroidx/media3/common/Timeline;
    .end local v10    # "windowSequenceNumber":J
    .local p1, "timeline":Landroidx/media3/common/Timeline;
    :cond_3
    move-object v5, p0

    move-object v6, p1

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v6    # "timeline":Landroidx/media3/common/Timeline;
    goto :goto_1

    .line 266
    .end local v6    # "timeline":Landroidx/media3/common/Timeline;
    .restart local p1    # "timeline":Landroidx/media3/common/Timeline;
    :cond_4
    move-object v5, p0

    move-object v6, p1

    .line 294
    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v6    # "timeline":Landroidx/media3/common/Timeline;
    :goto_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->releaseAndResetPreloadPriorityList(Ljava/util/List;)V

    .line 295
    return-void

    .line 257
    .end local v0    # "loading":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v1    # "newPreloadPriorityList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/MediaPeriodHolder;>;"
    .end local v2    # "defaultPositionOfNextWindow":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v6    # "timeline":Landroidx/media3/common/Timeline;
    .restart local p1    # "timeline":Landroidx/media3/common/Timeline;
    :cond_5
    move-object v5, p0

    move-object v6, p1

    .line 258
    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v6    # "timeline":Landroidx/media3/common/Timeline;
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->releasePreloadPool()V

    .line 259
    return-void
.end method

.method public isLoading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 179
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreloading(Landroidx/media3/exoplayer/source/MediaPeriod;)Z
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 184
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$notifyQueueUpdate$0$androidx-media3-exoplayer-MediaPeriodQueue(Lcom/google/common/collect/ImmutableList$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/common/collect/ImmutableList$Builder;
    .param p2, "readingPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 820
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public maybeUpdatePreloadMediaPeriodHolder()V
    .locals 3

    .line 503
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 508
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 509
    .local v1, "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 511
    goto :goto_1

    .line 507
    .end local v1    # "mediaPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "rendererPositionUs"    # J

    .line 193
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->reevaluateBuffer(J)V

    .line 196
    :cond_0
    return-void
.end method

.method public releasePreloadPool()V
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->releaseAndResetPreloadPriorityList(Ljava/util/List;)V

    .line 302
    :cond_0
    return-void
.end method

.method public removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I
    .locals 3
    .param p1, "mediaPeriodHolder"    # Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 472
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, "removedResult":I
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 478
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 479
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 480
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v1, :cond_1

    .line 481
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 482
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 483
    or-int/lit8 v0, v0, 0x1

    .line 484
    or-int/lit8 v0, v0, 0x2

    .line 486
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v1, :cond_2

    .line 487
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 488
    or-int/lit8 v0, v0, 0x2

    .line 490
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 491
    iget v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    goto :goto_0

    .line 493
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 494
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 495
    return v0
.end method

.method public resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 8
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "positionUs"    # J

    .line 709
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 710
    .local v4, "windowSequenceNumber":J
    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .end local p2    # "periodUid":Ljava/lang/Object;
    .end local p3    # "positionUs":J
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    .local v1, "periodUid":Ljava/lang/Object;
    .local v2, "positionUs":J
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 11
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "periodUid"    # Ljava/lang/Object;
    .param p3, "positionUs"    # J

    .line 786
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumber(Landroidx/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 788
    .local v4, "windowSequenceNumber":J
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 789
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 790
    move-object v0, p2

    .line 791
    .local v0, "periodUidToPlay":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 792
    .local v1, "seenAdPeriod":Z
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v3, v3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-lt v2, v3, :cond_4

    .line 793
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v6, 0x1

    invoke-virtual {p1, v2, v3, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 794
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 795
    .local v6, "isAdPeriod":Z
    :goto_1
    or-int/2addr v1, v6

    .line 796
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v7, v7, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 798
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, v3, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 800
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v7, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_3

    .line 802
    nop

    .line 805
    .end local v2    # "i":I
    .end local v6    # "isAdPeriod":Z
    :cond_2
    move v8, v1

    move-object v1, v0

    goto :goto_2

    .line 792
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v8, v1

    move-object v1, v0

    .line 805
    .end local v0    # "periodUidToPlay":Ljava/lang/Object;
    .end local v2    # "i":I
    .local v1, "periodUidToPlay":Ljava/lang/Object;
    .local v8, "seenAdPeriod":Z
    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v0, p1

    move-wide v2, p3

    .end local p1    # "timeline":Landroidx/media3/common/Timeline;
    .end local p3    # "positionUs":J
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    .local v2, "positionUs":J
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public shouldLoadNextMediaPeriod()Z
    .locals 4

    .line 200
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 202
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 200
    :goto_1
    return v0
.end method

.method public updatePreloadConfiguration(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "preloadConfiguration"    # Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 173
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 174
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->invalidatePreloadPool(Landroidx/media3/common/Timeline;)V

    .line 175
    return-void
.end method

.method public updateQueuedPeriods(Landroidx/media3/common/Timeline;JJJ)I
    .locals 21
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "rendererPositionUs"    # J
    .param p4, "maxRendererReadPositionUs"    # J
    .param p6, "maxRendererPrewarmingPositionUs"    # J

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 576
    .local v2, "previousPeriodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 577
    .local v3, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_0
    if-eqz v3, :cond_10

    .line 578
    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 582
    .local v5, "oldPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    if-nez v2, :cond_0

    .line 586
    invoke-virtual {v0, v1, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v6

    move-object v8, v6

    move-wide/from16 v6, p2

    .local v6, "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    goto :goto_1

    .line 588
    .end local v6    # "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    :cond_0
    nop

    .line 589
    move-wide/from16 v6, p2

    invoke-direct {v0, v1, v2, v6, v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v8

    .line 590
    .local v8, "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    if-eqz v8, :cond_f

    invoke-direct {v0, v5, v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->canKeepMediaPeriodHolder(Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/MediaPeriodInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v12, v3

    goto/16 :goto_7

    .line 594
    :cond_1
    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v11, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 597
    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v11, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->liveStreamStartPositionProjectionUs:J

    .line 598
    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v8

    .line 605
    :cond_2
    :goto_1
    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 606
    invoke-virtual {v8, v9, v10}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v9

    iput-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 609
    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v11, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_e

    .line 611
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    .line 614
    iget-wide v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 615
    const-wide v9, 0x7fffffffffffffffL

    goto :goto_2

    .line 616
    :cond_3
    iget-wide v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-virtual {v3, v9, v10}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v9

    :goto_2
    nop

    .line 617
    .local v9, "newDurationInRendererTime":J
    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v14, 0x1

    const-wide/high16 v15, -0x8000000000000000L

    if-ne v3, v13, :cond_5

    iget-object v13, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v13, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez v13, :cond_5

    cmp-long v13, p4, v15

    if-eqz v13, :cond_4

    cmp-long v13, p4, v9

    if-ltz v13, :cond_5

    :cond_4
    move v13, v14

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 622
    .local v13, "isReadingAndReadBeyondNewDuration":Z
    :goto_3
    const/16 v17, 0x0

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->prewarming:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v3, v4, :cond_7

    cmp-long v4, p6, v15

    if-eqz v4, :cond_6

    cmp-long v4, p6, v9

    if-ltz v4, :cond_7

    :cond_6
    move v4, v14

    goto :goto_4

    :cond_7
    move/from16 v4, v17

    .line 627
    .local v4, "isPrewarmingAndReadBeyondNewDuration":Z
    :goto_4
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v18

    .line 628
    .local v18, "removeAfterResult":I
    if-eqz v18, :cond_8

    .line 629
    return v18

    .line 631
    :cond_8
    move-wide/from16 v19, v11

    iget-wide v11, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v11, v11, v19

    if-nez v11, :cond_9

    iget-wide v11, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    cmp-long v11, v11, v15

    if-nez v11, :cond_9

    iget-wide v11, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    cmp-long v11, v11, v19

    if-eqz v11, :cond_9

    iget-wide v11, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    cmp-long v11, v11, v15

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v14, v17

    .line 636
    .local v14, "isLivePeriodClippedForAd":Z
    :goto_5
    const/4 v11, 0x0

    .line 637
    .local v11, "result":I
    if-eqz v13, :cond_b

    move-object v12, v3

    move v15, v4

    .end local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v4    # "isPrewarmingAndReadBeyondNewDuration":Z
    .local v12, "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .local v15, "isPrewarmingAndReadBeyondNewDuration":Z
    iget-wide v3, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v3, v3, v19

    if-nez v3, :cond_a

    if-eqz v14, :cond_c

    .line 639
    :cond_a
    or-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 637
    .end local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v15    # "isPrewarmingAndReadBeyondNewDuration":Z
    .restart local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v4    # "isPrewarmingAndReadBeyondNewDuration":Z
    :cond_b
    move-object v12, v3

    move v15, v4

    .line 641
    .end local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v4    # "isPrewarmingAndReadBeyondNewDuration":Z
    .restart local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v15    # "isPrewarmingAndReadBeyondNewDuration":Z
    :cond_c
    :goto_6
    if-eqz v15, :cond_d

    .line 642
    or-int/lit8 v11, v11, 0x2

    .line 644
    :cond_d
    return v11

    .line 647
    .end local v9    # "newDurationInRendererTime":J
    .end local v11    # "result":I
    .end local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .end local v13    # "isReadingAndReadBeyondNewDuration":Z
    .end local v14    # "isLivePeriodClippedForAd":Z
    .end local v15    # "isPrewarmingAndReadBeyondNewDuration":Z
    .end local v18    # "removeAfterResult":I
    .restart local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_e
    move-object v12, v3

    .end local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    move-object v2, v12

    .line 648
    invoke-virtual {v12}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    .line 649
    .end local v5    # "oldPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .end local v8    # "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .end local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    goto/16 :goto_0

    .line 590
    .restart local v5    # "oldPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .restart local v8    # "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    :cond_f
    move-object v12, v3

    .line 593
    .end local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :goto_7
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v3

    return v3

    .line 650
    .end local v5    # "oldPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .end local v8    # "newPeriodInfo":Landroidx/media3/exoplayer/MediaPeriodInfo;
    .end local v12    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    .restart local v3    # "periodHolder":Landroidx/media3/exoplayer/MediaPeriodHolder;
    :cond_10
    const/16 v17, 0x0

    return v17
.end method

.method public updateRepeatMode(Landroidx/media3/common/Timeline;I)I
    .locals 1
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "repeatMode"    # I

    .line 143
    iput p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    .line 144
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I

    move-result v0

    return v0
.end method

.method public updateShuffleModeEnabled(Landroidx/media3/common/Timeline;Z)I
    .locals 1
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "shuffleModeEnabled"    # Z

    .line 161
    iput-boolean p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 162
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)I

    move-result v0

    return v0
.end method
