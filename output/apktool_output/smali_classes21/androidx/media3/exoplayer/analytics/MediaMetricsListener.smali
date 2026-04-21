.class public final Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.implements Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;,
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
    }
.end annotation


# instance fields
.field private activeSessionId:Ljava/lang/String;

.field private audioUnderruns:I

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final bandwidthBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthTimeMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentAudioFormat:Landroidx/media3/common/Format;

.field private currentNetworkType:I

.field private currentPlaybackState:I

.field private currentTextFormat:Landroidx/media3/common/Format;

.field private currentVideoFormat:Landroidx/media3/common/Format;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private hasFatalError:Z

.field private ioErrorType:I

.field private isSeeking:Z

.field private metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingPlayerError:Landroidx/media3/common/PlaybackException;

.field private pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playbackSession:Landroid/media/metrics/PlaybackSession;

.field private playedFrames:I

.field private reportedEventsForCurrentSession:Z

.field private final sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

.field private final startTimeMs:J

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playbackSession"    # Landroid/media/metrics/PlaybackSession;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 150
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 152
    invoke-static {}, Landroidx/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 153
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    .line 154
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 159
    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 160
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 161
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->setListener(Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;)V

    .line 162
    return-void
.end method

.method private canReportPendingFormatUpdate(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z
    .locals 2
    .param p1, "pendingFormatUpdate"    # Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 416
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 417
    invoke-interface {v1}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0
.end method

.method public static create(Landroid/content/Context;)Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    nop

    .line 107
    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    .line 108
    .local v0, "mediaMetricsManager":Landroid/media/metrics/MediaMetricsManager;
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 108
    :goto_0
    return-object v1
.end method

.method private finishCurrentSession()V
    .locals 8

    .line 612
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    if-eqz v0, :cond_3

    .line 613
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 614
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 615
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 616
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 617
    .local v0, "networkTimeMs":Ljava/lang/Long;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 619
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v5, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 620
    .local v2, "networkBytes":Ljava/lang/Long;
    iget-object v5, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v2, :cond_1

    move-wide v6, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    invoke-virtual {v5, v6, v7}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 622
    iget-object v5, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 623
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-lez v3, :cond_2

    .line 624
    const/4 v3, 0x1

    goto :goto_2

    .line 625
    :cond_2
    move v3, v1

    .line 622
    :goto_2
    invoke-virtual {v5, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 626
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v3

    .line 627
    .local v3, "playbackMetrics":Landroid/media/metrics/PlaybackMetrics;
    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackMetrics;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 629
    .end local v0    # "networkTimeMs":Ljava/lang/Long;
    .end local v2    # "networkBytes":Ljava/lang/Long;
    .end local v3    # "playbackMetrics":Landroid/media/metrics/PlaybackMetrics;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 630
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 631
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 632
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    .line 633
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    .line 634
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    .line 635
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    .line 636
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    .line 637
    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 638
    return-void
.end method

.method private static getDrmErrorCode(I)I
    .locals 1
    .param p0, "mediaDrmErrorCode"    # I

    .line 867
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 878
    const/16 v0, 0x1b

    return v0

    .line 873
    :pswitch_0
    const/16 v0, 0x1a

    return v0

    .line 871
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 875
    :pswitch_2
    const/16 v0, 0x1c

    return v0

    .line 869
    :pswitch_3
    const/16 v0, 0x18

    return v0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDrmInitData(Lcom/google/common/collect/ImmutableList;)Landroidx/media3/common/DrmInitData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;)",
            "Landroidx/media3/common/DrmInitData;"
        }
    .end annotation

    .line 834
    .local p0, "trackGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Tracks$Group;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 835
    .local v1, "trackGroup":Landroidx/media3/common/Tracks$Group;
    const/4 v2, 0x0

    .local v2, "trackIndex":I
    :goto_1
    iget v3, v1, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v2, v3, :cond_1

    .line 836
    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 838
    .local v3, "drmInitData":Landroidx/media3/common/DrmInitData;
    if-eqz v3, :cond_0

    .line 839
    return-object v3

    .line 835
    .end local v3    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 843
    .end local v1    # "trackGroup":Landroidx/media3/common/Tracks$Group;
    .end local v2    # "trackIndex":I
    :cond_1
    goto :goto_0

    .line 844
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDrmType(Landroidx/media3/common/DrmInitData;)I
    .locals 3
    .param p0, "drmInitData"    # Landroidx/media3/common/DrmInitData;

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_3

    .line 849
    invoke-virtual {p0, v0}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 850
    .local v1, "uuid":Ljava/util/UUID;
    sget-object v2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    const/4 v2, 0x3

    return v2

    .line 855
    :cond_0
    sget-object v2, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 856
    const/4 v2, 0x2

    return v2

    .line 858
    :cond_1
    sget-object v2, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    const/4 v2, 0x6

    return v2

    .line 848
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static getErrorInfo(Landroidx/media3/common/PlaybackException;Landroid/content/Context;Z)Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
    .locals 8
    .param p0, "error"    # Landroidx/media3/common/PlaybackException;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lastIoErrorForManifest"    # Z

    .line 708
    iget v0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 709
    new-instance v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v0

    .line 713
    :cond_0
    const/4 v0, 0x0

    .line 714
    .local v0, "isRendererExoPlaybackException":Z
    const/4 v1, 0x0

    .line 715
    .local v1, "rendererFormatSupport":I
    instance-of v3, p0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 716
    move-object v3, p0

    check-cast v3, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 717
    .local v3, "exoPlaybackException":Landroidx/media3/exoplayer/ExoPlaybackException;
    iget v5, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    move v0, v5

    .line 719
    iget v1, v3, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    .line 721
    .end local v3    # "exoPlaybackException":Landroidx/media3/exoplayer/ExoPlaybackException;
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 722
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v5, v3, Ljava/io/IOException;

    const/16 v6, 0x17

    const/4 v7, 0x3

    if-eqz v5, :cond_17

    .line 723
    instance-of v5, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v5, :cond_3

    .line 724
    move-object v2, v3

    check-cast v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 725
    .local v2, "responseCode":I
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 727
    .end local v2    # "responseCode":I
    :cond_3
    instance-of v5, v3, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v5, :cond_15

    instance-of v5, v3, Landroidx/media3/common/ParserException;

    if-eqz v5, :cond_4

    goto/16 :goto_2

    .line 734
    :cond_4
    instance-of v5, v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v5, :cond_10

    instance-of v5, v3, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v5, :cond_5

    goto/16 :goto_1

    .line 756
    :cond_5
    iget v4, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_6

    .line 757
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x15

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 759
    :cond_6
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    if-eqz v4, :cond_d

    .line 761
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Throwable;

    .line 762
    instance-of v4, v3, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v4, :cond_7

    .line 763
    move-object v2, v3

    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v2}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v4

    .line 765
    .local v4, "subErrorCode":I
    invoke-static {v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v5

    .line 766
    .local v5, "errorCode":I
    new-instance v6, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v6, v5, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v6

    .line 767
    .end local v2    # "diagnosticsInfo":Ljava/lang/String;
    .end local v4    # "subErrorCode":I
    .end local v5    # "errorCode":I
    :cond_7
    instance-of v4, v3, Landroid/media/MediaDrmResetException;

    if-eqz v4, :cond_8

    .line 768
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1b

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 769
    :cond_8
    instance-of v4, v3, Landroid/media/NotProvisionedException;

    if-eqz v4, :cond_9

    .line 770
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x18

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 772
    :cond_9
    instance-of v4, v3, Landroid/media/DeniedByServerException;

    if-eqz v4, :cond_a

    .line 773
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1d

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 774
    :cond_a
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v4, :cond_b

    .line 775
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 777
    :cond_b
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v4, :cond_c

    .line 778
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1c

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 780
    :cond_c
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 782
    :cond_d
    instance-of v4, v3, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v4, :cond_f

    .line 783
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_f

    .line 784
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 785
    .local v4, "notFoundCause":Ljava/lang/Throwable;
    instance-of v5, v4, Landroid/system/ErrnoException;

    if-eqz v5, :cond_e

    move-object v5, v4

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v6, :cond_e

    .line 787
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x20

    invoke-direct {v5, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 789
    :cond_e
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x1f

    invoke-direct {v5, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 792
    .end local v4    # "notFoundCause":Ljava/lang/Throwable;
    :cond_f
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x9

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 736
    :cond_10
    :goto_1
    invoke-static {p1}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result v5

    if-ne v5, v4, :cond_11

    .line 737
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v7, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 740
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 741
    .local v5, "detailedCause":Ljava/lang/Throwable;
    instance-of v6, v5, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_12

    .line 742
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x6

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 743
    :cond_12
    instance-of v6, v5, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_13

    .line 744
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x7

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 746
    :cond_13
    instance-of v6, v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v6, :cond_14

    move-object v6, v3

    check-cast v6, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v6, v6, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    if-ne v6, v4, :cond_14

    .line 749
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/4 v6, 0x4

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 752
    :cond_14
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0x8

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 729
    .end local v5    # "detailedCause":Ljava/lang/Throwable;
    :cond_15
    :goto_2
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 730
    if-eqz p2, :cond_16

    .line 731
    const/16 v5, 0xa

    goto :goto_3

    .line 732
    :cond_16
    const/16 v5, 0xb

    :goto_3
    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 729
    return-object v4

    .line 794
    :cond_17
    if-eqz v0, :cond_19

    if-eqz v1, :cond_18

    if-ne v1, v4, :cond_19

    .line 797
    :cond_18
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x23

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 799
    :cond_19
    if-eqz v0, :cond_1a

    if-ne v1, v7, :cond_1a

    .line 801
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 803
    :cond_1a
    if-eqz v0, :cond_1b

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1b

    .line 805
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 806
    :cond_1b
    instance-of v4, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v4, :cond_1c

    .line 808
    move-object v2, v3

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 810
    .restart local v2    # "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v2}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v4

    .line 811
    .local v4, "subErrorCode":I
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 812
    .end local v2    # "diagnosticsInfo":Ljava/lang/String;
    .end local v4    # "subErrorCode":I
    :cond_1c
    instance-of v4, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    const/16 v5, 0xe

    if-eqz v4, :cond_1d

    .line 813
    move-object v2, v3

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    iget v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    .line 814
    .local v2, "subErrorCode":I
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 815
    .end local v2    # "subErrorCode":I
    :cond_1d
    instance-of v4, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_1e

    .line 816
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 817
    :cond_1e
    instance-of v4, v3, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    if-eqz v4, :cond_1f

    .line 818
    move-object v2, v3

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 819
    .restart local v2    # "subErrorCode":I
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 820
    .end local v2    # "subErrorCode":I
    :cond_1f
    instance-of v4, v3, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    if-eqz v4, :cond_20

    .line 821
    move-object v2, v3

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    .line 822
    .restart local v2    # "subErrorCode":I
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x12

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4

    .line 823
    .end local v2    # "subErrorCode":I
    :cond_20
    instance-of v4, v3, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_21

    .line 824
    move-object v2, v3

    check-cast v2, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    .line 825
    .restart local v2    # "subErrorCode":I
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v4

    .line 826
    .local v4, "errorCode":I
    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {v5, v4, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v5

    .line 828
    .end local v2    # "subErrorCode":I
    .end local v4    # "errorCode":I
    :cond_21
    new-instance v4, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    const/16 v5, 0x16

    invoke-direct {v4, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object v4
.end method

.method private static getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p0, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 656
    const-string v0, "-"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private static getNetworkType(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 661
    invoke-static {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 681
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 673
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 671
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 675
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 669
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 667
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 665
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 663
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 677
    :pswitch_8
    const/16 v0, 0x9

    return v0

    .line 679
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getStreamType(Landroidx/media3/common/MediaItem;)I
    .locals 2
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 686
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x0

    return v0

    .line 690
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 691
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 693
    .local v0, "contentType":I
    packed-switch v0, :pswitch_data_0

    .line 702
    const/4 v1, 0x1

    return v1

    .line 695
    :pswitch_0
    const/4 v1, 0x4

    return v1

    .line 699
    :pswitch_1
    const/4 v1, 0x5

    return v1

    .line 697
    :pswitch_2
    const/4 v1, 0x3

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTrackChangeReason(I)I
    .locals 1
    .param p0, "trackSelectionReason"    # I

    .line 641
    packed-switch p0, :pswitch_data_0

    .line 651
    const/4 v0, 0x1

    return v0

    .line 645
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 647
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 643
    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeAddSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 5
    .param p1, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 327
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 328
    .local v1, "event":I
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    .line 329
    .local v2, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    if-nez v1, :cond_0

    .line 330
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    goto :goto_1

    .line 331
    :cond_0
    nop

    .line 334
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 331
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 332
    iget v4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->discontinuityReason:I

    invoke-interface {v3, v2, v4}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_1

    .line 334
    :cond_1
    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 326
    .end local v1    # "event":I
    .end local v2    # "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private maybeReportNetworkChange(J)V
    .locals 4
    .param p1, "realtimeMs"    # J

    .line 421
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 422
    .local v0, "networkType":I
    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    if-eq v0, v1, :cond_0

    .line 423
    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 424
    new-instance v1, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 426
    invoke-virtual {v1, v0}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v2, p1, v2

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v1

    .line 429
    .local v1, "networkEvent":Landroid/media/metrics/NetworkEvent;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 431
    .end local v1    # "networkEvent":Landroid/media/metrics/NetworkEvent;
    :cond_0
    return-void
.end method

.method private maybeReportPlaybackError(J)V
    .locals 7
    .param p1, "realtimeMs"    # J

    .line 358
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    .line 359
    .local v0, "error":Landroidx/media3/common/PlaybackException;
    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->ioErrorType:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getErrorInfo(Landroidx/media3/common/PlaybackException;Landroid/content/Context;Z)Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    move-result-object v1

    .line 365
    .local v1, "errorInfo":Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
    new-instance v2, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v5, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v5, p1, v5

    .line 367
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    iget v3, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->errorCode:I

    .line 368
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    iget v3, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->subErrorCode:I

    .line 369
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    .line 370
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    .line 372
    .local v2, "playbackErrorEvent":Landroid/media/metrics/PlaybackErrorEvent;
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 373
    iput-boolean v4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 374
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    .line 375
    return-void
.end method

.method private maybeReportPlaybackStateChange(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;J)V
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
    .param p3, "realtimeMs"    # J

    .line 434
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 435
    iput-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    .line 437
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 438
    iput-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    goto :goto_0

    .line 439
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    .line 442
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->resolveNewPlaybackState(Landroidx/media3/common/Player;)I

    move-result v0

    .line 443
    .local v0, "newPlaybackState":I
    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq v2, v0, :cond_3

    .line 444
    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 445
    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 446
    new-instance v1, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 448
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v2, p3, v2

    .line 449
    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v1

    .line 451
    .local v1, "playbackStateEvent":Landroid/media/metrics/PlaybackStateEvent;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackStateEvent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    .end local v1    # "playbackStateEvent":Landroid/media/metrics/PlaybackStateEvent;
    :cond_3
    return-void
.end method

.method private maybeReportTrackChanges(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;J)V
    .locals 6
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
    .param p3, "realtimeMs"    # J

    .line 378
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 379
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    .line 380
    .local v1, "tracks":Landroidx/media3/common/Tracks;
    invoke-virtual {v1, v0}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v0

    .line 381
    .local v0, "isVideoSelected":Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v3

    .line 382
    .local v3, "isAudioSelected":Z
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v4

    .line 383
    .local v4, "isTextSelected":Z
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    .line 385
    :cond_0
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 386
    invoke-direct {p0, p3, p4, v2, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLandroidx/media3/common/Format;I)V

    .line 388
    :cond_1
    if-nez v3, :cond_2

    .line 389
    invoke-direct {p0, p3, p4, v2, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLandroidx/media3/common/Format;I)V

    .line 391
    :cond_2
    if-nez v4, :cond_3

    .line 392
    invoke-direct {p0, p3, p4, v2, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLandroidx/media3/common/Format;I)V

    .line 396
    .end local v0    # "isVideoSelected":Z
    .end local v1    # "tracks":Landroidx/media3/common/Tracks;
    .end local v3    # "isAudioSelected":Z
    .end local v4    # "isTextSelected":Z
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 398
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLandroidx/media3/common/Format;I)V

    .line 400
    iput-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 402
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLandroidx/media3/common/Format;I)V

    .line 405
    iput-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 407
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLandroidx/media3/common/Format;I)V

    .line 410
    iput-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 412
    :cond_6
    return-void
.end method

.method private maybeUpdateAudioFormat(JLandroidx/media3/common/Format;I)V
    .locals 6
    .param p1, "realtimeMs"    # J
    .param p3, "audioFormat"    # Landroidx/media3/common/Format;
    .param p4, "trackSelectionReason"    # I

    .line 508
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 512
    const/4 p4, 0x1

    move v5, p4

    goto :goto_0

    .line 514
    :cond_1
    move v5, p4

    .end local p4    # "trackSelectionReason":I
    .local v5, "trackSelectionReason":I
    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    .line 515
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "realtimeMs":J
    .end local p3    # "audioFormat":Landroidx/media3/common/Format;
    .local v2, "realtimeMs":J
    .local v4, "audioFormat":Landroidx/media3/common/Format;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    .line 517
    return-void
.end method

.method private maybeUpdateMetricsBuilderValues(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 342
    .local v0, "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 346
    .end local v0    # "eventTime":Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmInitData(Lcom/google/common/collect/ImmutableList;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    .line 348
    .local v0, "drmInitData":Landroidx/media3/common/DrmInitData;
    if-eqz v0, :cond_1

    .line 349
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmType(Landroidx/media3/common/DrmInitData;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 352
    .end local v0    # "drmInitData":Landroidx/media3/common/DrmInitData;
    :cond_1
    const/16 v0, 0x3f3

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 355
    :cond_2
    return-void
.end method

.method private maybeUpdateTextFormat(JLandroidx/media3/common/Format;I)V
    .locals 6
    .param p1, "realtimeMs"    # J
    .param p3, "textFormat"    # Landroidx/media3/common/Format;
    .param p4, "trackSelectionReason"    # I

    .line 521
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 525
    const/4 p4, 0x1

    move v5, p4

    goto :goto_0

    .line 527
    :cond_1
    move v5, p4

    .end local p4    # "trackSelectionReason":I
    .local v5, "trackSelectionReason":I
    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    .line 528
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "realtimeMs":J
    .end local p3    # "textFormat":Landroidx/media3/common/Format;
    .local v2, "realtimeMs":J
    .local v4, "textFormat":Landroidx/media3/common/Format;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    .line 530
    return-void
.end method

.method private maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 6
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "metricsBuilder"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 590
    .local v0, "metricsBuilder":Landroid/media/metrics/PlaybackMetrics$Builder;
    if-nez p2, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 594
    .local v1, "periodIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 595
    return-void

    .line 597
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 598
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 599
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getStreamType(Landroidx/media3/common/MediaItem;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 600
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    .line 603
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 606
    :cond_2
    nop

    .line 607
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 606
    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 608
    iput-boolean v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 609
    return-void
.end method

.method private maybeUpdateVideoFormat(JLandroidx/media3/common/Format;I)V
    .locals 6
    .param p1, "realtimeMs"    # J
    .param p3, "videoFormat"    # Landroidx/media3/common/Format;
    .param p4, "trackSelectionReason"    # I

    .line 495
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 499
    const/4 p4, 0x1

    move v5, p4

    goto :goto_0

    .line 501
    :cond_1
    move v5, p4

    .end local p4    # "trackSelectionReason":I
    .local v5, "trackSelectionReason":I
    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    .line 502
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "realtimeMs":J
    .end local p3    # "videoFormat":Landroidx/media3/common/Format;
    .local v2, "realtimeMs":J
    .local v4, "videoFormat":Landroidx/media3/common/Format;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    .line 504
    return-void
.end method

.method private reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "realtimeMs"    # J
    .param p4, "format"    # Landroidx/media3/common/Format;
    .param p5, "trackSelectionReason"    # I

    .line 537
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v1, p2, v1

    .line 538
    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object v0

    .line 539
    .local v0, "builder":Landroid/media/metrics/TrackChangeEvent$Builder;
    const/4 v1, 0x1

    if-eqz p4, :cond_9

    .line 540
    invoke-virtual {v0, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 541
    invoke-static {p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getTrackChangeReason(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 542
    iget-object v2, p4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 546
    :cond_0
    iget-object v2, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 547
    iget-object v2, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 549
    :cond_1
    iget-object v2, p4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 550
    iget-object v2, p4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 552
    :cond_2
    iget v2, p4, Landroidx/media3/common/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 553
    iget v2, p4, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 555
    :cond_3
    iget v2, p4, Landroidx/media3/common/Format;->width:I

    if-eq v2, v3, :cond_4

    .line 556
    iget v2, p4, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 558
    :cond_4
    iget v2, p4, Landroidx/media3/common/Format;->height:I

    if-eq v2, v3, :cond_5

    .line 559
    iget v2, p4, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 561
    :cond_5
    iget v2, p4, Landroidx/media3/common/Format;->channelCount:I

    if-eq v2, v3, :cond_6

    .line 562
    iget v2, p4, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 564
    :cond_6
    iget v2, p4, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v2, v3, :cond_7

    .line 565
    iget v2, p4, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 567
    :cond_7
    iget-object v2, p4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 568
    iget-object v2, p4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 569
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 570
    .local v2, "languageAndRegion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 571
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 572
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 575
    .end local v2    # "languageAndRegion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iget v2, p4, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_a

    .line 576
    iget v2, p4, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_0

    .line 579
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 581
    :cond_a
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 582
    invoke-virtual {v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object v1

    .line 583
    .local v1, "trackChangeEvent":Landroid/media/metrics/TrackChangeEvent;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/TrackChangeEvent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method private resolveNewPlaybackState(Landroidx/media3/common/Player;)I
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 457
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 458
    .local v0, "playerPlaybackState":I
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x5

    return v1

    .line 461
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    if-eqz v1, :cond_1

    .line 462
    const/16 v1, 0xd

    return v1

    .line 463
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 464
    const/16 v1, 0xb

    return v1

    .line 465
    :cond_2
    const/16 v2, 0xc

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 466
    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 472
    const/4 v1, 0x7

    return v1

    .line 474
    :cond_4
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    const/16 v1, 0xa

    goto :goto_0

    .line 476
    :cond_5
    const/4 v1, 0x6

    .line 474
    :goto_0
    return v1

    .line 469
    :cond_6
    :goto_1
    return v3

    .line 477
    :cond_7
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 478
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 479
    return v1

    .line 481
    :cond_8
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_9

    .line 482
    const/16 v3, 0x9

    goto :goto_2

    .line 483
    :cond_9
    nop

    .line 481
    :goto_2
    return v3

    .line 484
    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v1, :cond_b

    .line 488
    return v2

    .line 490
    :cond_b
    iget v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    return v1
.end method


# virtual methods
.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$finishCurrentSession$4$androidx-media3-exoplayer-analytics-MediaMetricsListener(Landroid/media/metrics/PlaybackMetrics;)V
    .locals 1
    .param p1, "playbackMetrics"    # Landroid/media/metrics/PlaybackMetrics;

    .line 627
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method

.method synthetic lambda$maybeReportNetworkChange$1$androidx-media3-exoplayer-analytics-MediaMetricsListener(Landroid/media/metrics/NetworkEvent;)V
    .locals 1
    .param p1, "networkEvent"    # Landroid/media/metrics/NetworkEvent;

    .line 429
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method

.method synthetic lambda$maybeReportPlaybackError$0$androidx-media3-exoplayer-analytics-MediaMetricsListener(Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 1
    .param p1, "playbackErrorEvent"    # Landroid/media/metrics/PlaybackErrorEvent;

    .line 372
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method

.method synthetic lambda$maybeReportPlaybackStateChange$2$androidx-media3-exoplayer-analytics-MediaMetricsListener(Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 1
    .param p1, "playbackStateEvent"    # Landroid/media/metrics/PlaybackStateEvent;

    .line 452
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method synthetic lambda$reportTrackChangeEvent$3$androidx-media3-exoplayer-analytics-MediaMetricsListener(Landroid/media/metrics/TrackChangeEvent;)V
    .locals 1
    .param p1, "trackChangeEvent"    # Landroid/media/metrics/TrackChangeEvent;

    .line 583
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public onAdPlaybackStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "contentSessionId"    # Ljava/lang/String;
    .param p3, "adSessionId"    # Ljava/lang/String;

    .line 191
    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 8
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 230
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 233
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 232
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 235
    .local v1, "prevBandwidthBytes":Ljava/lang/Long;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 236
    .local v2, "prevBandwidthTimeMs":Ljava/lang/Long;
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    .line 237
    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 236
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 239
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    int-to-long v6, p2

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v0    # "sessionId":Ljava/lang/String;
    .end local v1    # "prevBandwidthBytes":Ljava/lang/Long;
    .end local v2    # "prevBandwidthTimeMs":Ljava/lang/Long;
    :cond_2
    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 6
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 245
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    .line 252
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    iget v2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    iget-object v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 255
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 254
    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;ILjava/lang/String;)V

    .line 256
    .local v0, "update":Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;
    iget v1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 266
    goto :goto_0

    .line 262
    :pswitch_1
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 263
    goto :goto_0

    .line 259
    :pswitch_2
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 260
    nop

    .line 270
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 308
    invoke-virtual {p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeAddSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 314
    .local v0, "realtimeMs":J
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateMetricsBuilderValues(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    .line 315
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeReportPlaybackError(J)V

    .line 316
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeReportTrackChanges(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;J)V

    .line 317
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeReportNetworkChange(J)V

    .line 318
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeReportPlaybackStateChange(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;J)V

    .line 320
    const/16 v2, 0x404

    invoke-virtual {p2, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    invoke-virtual {p2, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->finishAllSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 323
    :cond_1
    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 298
    iget v0, p3, Landroidx/media3/exoplayer/source/MediaLoadData;->dataType:I

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->ioErrorType:I

    .line 299
    return-void
.end method

.method public onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media3/common/PlaybackException;

    .line 303
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    .line 304
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 214
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 215
    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    .line 217
    :cond_0
    iput p4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->discontinuityReason:I

    .line 218
    return-void
.end method

.method public onSessionActive(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 176
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 181
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 182
    new-instance v0, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    .line 184
    const-string v1, "AndroidXMedia3"

    invoke-virtual {v0, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    .line 185
    const-string v1, "1.10.0"

    invoke-virtual {v0, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 186
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 187
    return-void
.end method

.method public onSessionCreated(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 172
    return-void
.end method

.method public onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "automaticTransitionToNextPlayback"    # Z

    .line 196
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 202
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 223
    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iget v1, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    .line 224
    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    iget v1, p2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    .line 225
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 5
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 274
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 275
    .local v0, "pendingVideoFormat":Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 276
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Landroidx/media3/common/Format;

    .line 279
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p2, Landroidx/media3/common/VideoSize;->width:I

    .line 280
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p2, Landroidx/media3/common/VideoSize;->height:I

    .line 281
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 283
    .local v1, "formatWithHeightAndWidth":Landroidx/media3/common/Format;
    new-instance v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;ILjava/lang/String;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 289
    .end local v1    # "formatWithHeightAndWidth":Landroidx/media3/common/Format;
    :cond_0
    return-void
.end method
